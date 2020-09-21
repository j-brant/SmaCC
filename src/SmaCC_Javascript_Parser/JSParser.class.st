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
#[ 0 22 0 209] 
#[ 0 14 1 205] 
#[ 0 30 0 34 0 38 0 42] 
#[ 0 14 4 45] 
#[ 1 218 1 222] 
#[ 1 226 1 230] 
#[ 1 234 1 238] 
#[ 1 246 1 250] 
#[ 1 254 2 2] 
#[ 1 254 2 2 2 6] 
#[ 2 30 2 34] 
#[ 2 50 2 54] 
#[ 2 102 2 106] 
#[ 2 110 2 114] 
#[ 2 118 2 122] 
#[ 2 126 2 130] 
#[ 2 158 8 173] 
#[ 2 162 8 177] 
#[ 1 114 2 170] 
#[ 3 70 5 65] 
#[ 3 70 5 137] 
#[ 3 70 5 141] 
#[ 0 205 3 70] 
#[ 0 18 3 70] 
#[ 3 70 5 81] 
#[ 0 134 3 74] 
#[ 0 134 9 121] 
#[ 0 14 11 137] 
#[ 3 158 4 62] 
#[ 4 114 4 118] 
#[ 4 122 4 126] 
#[ 4 142 4 146] 
#[ 2 142 3 74] 
#[ 1 114 4 246] 
#[ 1 114 4 250] 
#[ 5 6 10 169] 
#[ 3 114 5 66] 
#[ 5 134 14 121] 
#[ 5 134 13 105] 
#[ 0 14 14 173] 
#[ 0 22 6 162] 
#[ 2 142 4 238] 
#[ 0 206 16 89] 
#[ 5 210 6 238] 
#[ 0 134 17 21] 
#[ 4 170 5 54] 
#[ 7 74 8 177] 
#[ 1 114 7 78] 
#[ 0 134 5 90] 
#[ 5 150 7 146] 
#[ 5 134 7 206] 
#[ 5 134 9 121] 
#[ 5 134 18 149] 
#[ 0 46 0 189] 
#[ 0 50 0 189] 
#[ 10 158 15 33] 
#[ 10 110 11 34] 
#[ 10 118 11 42] 
#[ 11 162 12 14] 
#[ 12 86 12 186] 
#[ 12 106 12 190] 
#[ 11 166 12 26] 
#[ 13 14 13 102] 
#[ 13 18 13 106] 
#[ 3 94 17 201] 
#[ 13 174 13 230]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-09-21T17:30:32.47839+02:00'
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

default <arroba>
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
|   DecoratorExpression 
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


DecoratorExpression
: <arroba> CallExpression 'decorator' {{DecoratorExpression}}
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
:	DecoratorExpression 'decorator' ? AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}   ## changed ParameterList
|	DecoratorExpression 'decorator' ? AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <semicolon> 'semicolon' {{}}   ## changed ParameterList
;
PropertyMemberDeclaration
:	MemberVariableDeclaration
|	MemberFunctionDeclaration
|	MemberAccessorDeclaration
;
MemberVariableDeclaration
:	DecoratorExpression 'decorator'? AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' TypeAnnotation? Initializer? <semicolon> 'semicolon' {{}}
;
MemberFunctionDeclaration
:	DecoratorExpression 'decorator'? AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	DecoratorExpression 'decorator'? AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{}}
;
MemberAccessorDeclaration
:	DecoratorExpression 'decorator'? AccessibilityModifier 'modifier'? <static> 'staticToken'? GetAccessor 'accessor' {{}}
|	DecoratorExpression 'decorator'? AccessibilityModifier 'modifier'? <static> 'staticToken'? SetAccessor 'accessor' {{}}
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
	#(201 0 #reduceActionForStartStatementListItem1: 23376897 true ) 
	#(286 0 #reduceActionForModule1: 36631553 false ) 
	#(144 0 #reduceActionForValidationNotArrowFunction1: 11383809 true ) 
	#(153 0 #reduceActionForStartTemplateLiteral1: 12599297 true ) 
	#(332 0 #reduceActionForSwitchToJSX1: 41897985 true ) 
	#(284 0 #reduceActionForScript1: 36573185 false ) 
	#(427 0 #reduceActionForImplementationModule1: 57929729 false ) 
	#(423 0 #reduceActionForImplementationModule1: 57532417 false ) 
	#(419 0 #reduceActionForImplementationModule1: 56989697 false ) 
	#(430 0 #reduceActionForImplementationModule1: 58371073 false ) 
	#(203 1 #liftFirstValue: 23548930 false ) 
	#(203 1 #liftFirstValue: 23548929 false ) 
	#(289 1 #liftFirstValue: 36764675 false ) 
	#(200 1 #liftFirstValue: 23279618 false ) 
	#(133 1 #liftFirstValue: 8720385 false ) 
	#(286 1 #reduceActionForModule2: 36631554 false ) 
	#(287 1 #reduceActionForModuleBody1: 36660225 false ) 
	#(288 1 #reduceActionForModuleItemList1: 36690945 false ) 
	#(289 1 #liftFirstValue: 36764673 false ) 
	#(289 1 #liftFirstValue: 36764674 false ) 
	#(247 0 #reduceActionForFormalParameters1: 31537153 false ) 
	#(306 1 #liftFirstValue: 39236610 false ) 
	#(305 1 #liftFirstValue: 39213057 false ) 
	#(136 1 #reduceActionForPrimaryExpression1: 9127937 false ) 
	#(306 1 #liftFirstValue: 39236609 false ) 
	#(267 1 #reduceActionForYieldExpression1: 34125825 false ) 
	#(134 1 #reduceActionForIdentifier1: 8833025 false ) 
	#(307 1 #liftFirstValue: 39273473 false ) 
	#(308 1 #liftFirstValue: 39309313 false ) 
	#(309 1 #reduceActionForRegularExpressionLiteral1: 39347201 false ) 
	#(152 1 #reduceActionForTemplateLiteral1: 12443649 false ) 
	#(333 0 #reduceActionForSwitchToJSXText1: 41938945 true ) 
	#(136 1 #liftFirstValue: 9127938 false ) 
	#(255 1 #reduceActionForArrowParameterDeclaration1: 32183297 false ) 
	#(156 1 #liftFirstValue: 12869633 false ) 
	#(136 1 #liftFirstValue: 9127949 false ) 
	#(136 1 #liftFirstValue: 9127939 false ) 
	#(136 1 #liftFirstValue: 9127940 false ) 
	#(136 1 #liftFirstValue: 9127941 false ) 
	#(136 1 #liftFirstValue: 9127948 false ) 
	#(160 1 #liftFirstValue: 13767681 false ) 
	#(156 1 #liftFirstValue: 12869637 false ) 
	#(156 1 #liftFirstValue: 12869638 false ) 
	#(158 1 #liftFirstValue: 13636609 false ) 
	#(171 1 #liftFirstValue: 15974401 false ) 
	#(171 1 #liftFirstValue: 15974402 false ) 
	#(161 1 #liftFirstValue: 13857794 false ) 
	#(161 1 #liftFirstValue: 13857795 false ) 
	#(161 1 #liftFirstValue: 13857796 false ) 
	#(171 1 #liftFirstValue: 15974403 false ) 
	#(172 1 #liftFirstValue: 16056321 false ) 
	#(173 1 #liftFirstValue: 16424961 false ) 
	#(174 1 #liftFirstValue: 16877569 false ) 
	#(175 1 #liftFirstValue: 17047553 false ) 
	#(177 1 #liftFirstValue: 17307649 false ) 
	#(178 1 #liftFirstValue: 17605633 false ) 
	#(179 1 #liftFirstValue: 17990657 false ) 
	#(180 1 #liftFirstValue: 18728961 false ) 
	#(181 1 #liftFirstValue: 19259393 false ) 
	#(182 1 #liftFirstValue: 19423233 false ) 
	#(183 1 #liftFirstValue: 19591169 false ) 
	#(184 1 #liftFirstValue: 19758081 false ) 
	#(187 1 #liftFirstValue: 20255746 false ) 
	#(185 1 #liftFirstValue: 19928065 false ) 
	#(188 1 #liftFirstValue: 20329473 false ) 
	#(188 1 #liftFirstValue: 20329474 false ) 
	#(187 1 #liftFirstValue: 20255745 false ) 
	#(189 1 #liftFirstValue: 20403201 false ) 
	#(190 1 #liftFirstValue: 20630529 false ) 
	#(192 1 #liftFirstValue: 22358017 false ) 
	#(136 1 #liftFirstValue: 9127942 false ) 
	#(190 1 #liftFirstValue: 20630531 false ) 
	#(254 1 #reduceActionForArrowParameters1: 32093185 false ) 
	#(254 1 #reduceActionForArrowParameters2: 32093186 false ) 
	#(190 1 #liftFirstValue: 20630532 false ) 
	#(136 1 #liftFirstValue: 9127944 false ) 
	#(190 1 #liftFirstValue: 20630530 false ) 
	#(136 1 #liftFirstValue: 9127946 false ) 
	#(136 1 #liftFirstValue: 9127945 false ) 
	#(173 1 #liftFirstValue: 16424969 false ) 
	#(136 1 #liftFirstValue: 9127943 false ) 
	#(138 1 #reduceActionForLiteral1: 10228737 false ) 
	#(138 1 #reduceActionForLiteral2: 10228738 false ) 
	#(138 1 #reduceActionForLiteral4: 10228740 false ) 
	#(138 1 #reduceActionForLiteral3: 10228739 false ) 
	#(136 1 #liftFirstValue: 9127947 false ) 
	#(136 1 #liftFirstValue: 9127950 false ) 
	#(310 1 #liftFirstValue: 39599105 false ) 
	#(334 0 #reduceActionForStartJSXText1: 41988097 true ) 
	#(136 1 #liftFirstValue: 9127951 false ) 
	#(220 1 #reduceActionForEmptyStatement1: 25895937 false ) 
	#(228 0 #reduceActionForCheckEOL1: 29384705 true ) 
	#(193 1 #liftFirstValue: 22509574 false ) 
	#(193 1 #liftFirstValue: 22509569 false ) 
	#(197 1 #liftFirstValue: 23059457 false ) 
	#(193 1 #liftFirstValue: 22509570 false ) 
	#(193 1 #liftFirstValue: 22509571 false ) 
	#(193 1 #liftFirstValue: 22509572 false ) 
	#(193 1 #liftFirstValue: 22509573 false ) 
	#(196 1 #liftFirstValue: 22996993 false ) 
	#(193 1 #liftFirstValue: 22509575 false ) 
	#(193 1 #liftFirstValue: 22509576 false ) 
	#(193 1 #liftFirstValue: 22509577 false ) 
	#(193 1 #liftFirstValue: 22509578 false ) 
	#(196 1 #liftFirstValue: 22996994 false ) 
	#(193 1 #liftFirstValue: 22509579 false ) 
	#(193 1 #liftFirstValue: 22509580 false ) 
	#(193 1 #liftFirstValue: 22509581 false ) 
	#(193 1 #liftFirstValue: 22509582 false ) 
	#(285 1 #reduceActionForModuleBody1: 36601857 false ) 
	#(199 1 #reduceActionForModuleItemList1: 23182337 false ) 
	#(284 1 #reduceActionForScript2: 36573186 false ) 
	#(422 1 #liftFirstValue: 57272321 false ) 
	#(422 1 #liftFirstValue: 57272322 false ) 
	#(422 1 #liftFirstValue: 57272323 false ) 
	#(422 1 #liftFirstValue: 57272324 false ) 
	#(422 1 #liftFirstValue: 57272325 false ) 
	#(429 1 #liftFirstValue: 58129410 false ) 
	#(432 1 #liftFirstValue: 58552322 false ) 
	#(422 1 #liftFirstValue: 57272327 false ) 
	#(426 1 #liftFirstValue: 57790466 false ) 
	#(422 1 #liftFirstValue: 57272326 false ) 
	#(426 1 #liftFirstValue: 57790465 false ) 
	#(422 1 #liftFirstValue: 57272328 false ) 
	#(422 1 #liftFirstValue: 57272329 false ) 
	#(426 1 #liftFirstValue: 57790467 false ) 
	#(429 1 #liftFirstValue: 58129411 false ) 
	#(422 1 #liftFirstValue: 57272331 false ) 
	#(426 1 #liftFirstValue: 57790469 false ) 
	#(416 1 #reduceActionForSourceFile1: 56749057 false ) 
	#(416 1 #reduceActionForSourceFile1: 56749058 false ) 
	#(417 1 #reduceActionForModuleBody1: 56849409 false ) 
	#(419 1 #reduceActionForModuleBody1: 56989698 false ) 
	#(420 1 #reduceActionForModuleItemList1: 57046017 false ) 
	#(421 1 #liftFirstValue: 57189377 false ) 
	#(429 1 #liftFirstValue: 58129409 false ) 
	#(418 1 #reduceActionForModuleBody1: 56924161 false ) 
	#(423 1 #reduceActionForModuleBody1: 57532418 false ) 
	#(424 1 #reduceActionForModuleItemList1: 57582593 false ) 
	#(425 1 #liftFirstValue: 57713665 false ) 
	#(432 1 #liftFirstValue: 58552321 false ) 
	#(417 1 #reduceActionForModuleBody1: 56849410 false ) 
	#(427 1 #reduceActionForModuleBody1: 57929730 false ) 
	#(428 1 #reduceActionForModuleItemList1: 57986049 false ) 
	#(418 1 #reduceActionForModuleBody1: 56924162 false ) 
	#(430 1 #reduceActionForModuleBody1: 58371074 false ) 
	#(431 1 #reduceActionForModuleItemList1: 58421249 false ) 
	#(429 1 #liftFirstValue: 58129412 false ) 
	#(429 1 #liftFirstValue: 58129413 false ) 
	#(432 1 #liftFirstValue: 58552323 false ) 
	#(429 1 #liftFirstValue: 58129414 false ) 
	#(432 1 #liftFirstValue: 58552324 false ) 
	#(429 1 #liftFirstValue: 58129415 false ) 
	#(432 1 #liftFirstValue: 58552325 false ) 
	#(429 1 #liftFirstValue: 58129416 false ) 
	#(432 1 #liftFirstValue: 58552326 false ) 
	#(422 1 #liftFirstValue: 57272330 false ) 
	#(426 1 #liftFirstValue: 57790468 false ) 
	#(421 1 #liftFirstValue: 57189378 false ) 
	#(425 1 #liftFirstValue: 57713666 false ) 
	#(370 1 #reduceActionForThisType1: 45469697 false ) 
	#(352 1 #reduceActionForPredefinedType1: 43508737 false ) 
	#(354 1 #reduceActionForTypeName1: 43655169 false ) 
	#(355 1 #reduceActionForNamespaceName1: 43761665 false ) 
	#(350 1 #reduceActionForLiteralType1: 43345921 false ) 
	#(350 1 #reduceActionForLiteralType1: 43345922 false ) 
	#(345 1 #liftFirstValue: 42810369 false ) 
	#(346 1 #liftFirstValue: 42887170 false ) 
	#(347 1 #liftFirstValue: 42963970 false ) 
	#(348 1 #liftFirstValue: 43025409 false ) 
	#(349 1 #liftFirstValue: 43168777 false ) 
	#(349 1 #liftFirstValue: 43168769 false ) 
	#(349 1 #liftFirstValue: 43168770 false ) 
	#(349 1 #liftFirstValue: 43168771 false ) 
	#(349 1 #liftFirstValue: 43168772 false ) 
	#(349 1 #liftFirstValue: 43168773 false ) 
	#(349 1 #liftFirstValue: 43168774 false ) 
	#(346 1 #liftFirstValue: 42887169 false ) 
	#(347 1 #liftFirstValue: 42963969 false ) 
	#(345 1 #liftFirstValue: 42810370 false ) 
	#(345 1 #liftFirstValue: 42810371 false ) 
	#(349 1 #liftFirstValue: 43168775 false ) 
	#(349 1 #liftFirstValue: 43168776 false ) 
	#(301 1 #reduceActionForExportFromClause1: 38663169 false ) 
	#(300 2 #reduceActionForExportDeclaration4: 37979140 false ) 
	#(194 1 #liftFirstValue: 22792193 false ) 
	#(194 1 #liftFirstValue: 22792195 false ) 
	#(300 2 #reduceActionForExportDeclaration3: 37979139 false ) 
	#(195 1 #liftFirstValue: 22871041 false ) 
	#(195 1 #liftFirstValue: 22871042 false ) 
	#(195 1 #liftFirstValue: 22871044 false ) 
	#(195 1 #liftFirstValue: 22871043 false ) 
	#(194 1 #liftFirstValue: 22792194 false ) 
	#(301 1 #reduceActionForExportFromClause3: 38663171 false ) 
	#(299 1 #liftFirstValue: 37944321 false ) 
	#(291 1 #reduceActionForImportClause1: 37011457 false ) 
	#(291 1 #reduceActionForImportClause1: 37011458 false ) 
	#(291 1 #reduceActionForImportClause1: 37011459 false ) 
	#(292 1 #liftFirstValue: 37264385 false ) 
	#(298 1 #liftFirstValue: 37902337 false ) 
	#(200 2 #liftSecondValue: 23279617 false ) 
	#(205 1 #reduceActionForArrowParameterDeclaration1: 23678977 false ) 
	#(204 1 #reduceActionForNamespaceName1: 23580673 false ) 
	#(209 1 #liftFirstValue: 24225793 false ) 
	#(209 1 #liftFirstValue: 24225794 false ) 
	#(205 1 #liftFirstValue: 23678980 false ) 
	#(205 1 #liftFirstValue: 23678981 false ) 
	#(288 2 #reduceActionForModuleItemList2: 36690946 false ) 
	#(164 2 #reduceActionForDecoratorExpression1: 14579713 false ) 
	#(218 1 #reduceActionForArrowParameterDeclaration1: 25627649 false ) 
	#(217 1 #reduceActionForBindingElement2: 25517058 false ) 
	#(250 1 #liftFirstValue: 31906817 false ) 
	#(217 1 #liftFirstValue: 25517057 false ) 
	#(249 1 #liftFirstValue: 31860737 false ) 
	#(246 1 #reduceActionForModuleBody1: 31492097 false ) 
	#(247 1 #reduceActionForFormalParameters3: 31537155 false ) 
	#(247 1 #reduceActionForFormalParameters2: 31537154 false ) 
	#(248 1 #reduceActionForNamespaceName1: 31738881 false ) 
	#(374 0 #nil 46352388 false ) 
	#(139 2 #reduceActionForArrayLiteral1: 10411009 false ) 
	#(141 1 #reduceActionForModuleItemList1: 10890241 false ) 
	#(140 1 #reduceActionForNamespaceName1: 10672131 false ) 
	#(140 1 #reduceActionForNamespaceName1: 10672129 false ) 
	#(173 2 #reduceActionForUnaryExpression5: 16424965 false ) 
	#(172 2 #reduceActionForUpdateExpression4: 16056324 false ) 
	#(173 2 #reduceActionForUnaryExpression5: 16424966 false ) 
	#(172 2 #reduceActionForUpdateExpression4: 16056325 false ) 
	#(173 2 #reduceActionForUnaryExpression5: 16424967 false ) 
	#(173 2 #reduceActionForUnaryExpression5: 16424968 false ) 
	#(276 2 #reduceActionForAwaitExpression1: 35852289 false ) 
	#(278 2 #reduceActionForClassExpression1: 36049921 false ) 
	#(173 2 #reduceActionForUnaryExpression5: 16424962 false ) 
	#(160 2 #reduceActionForNewExpression2: 13767682 false ) 
	#(162 2 #reduceActionForSuperCall1: 14366721 false ) 
	#(173 2 #reduceActionForUnaryExpression5: 16424964 false ) 
	#(173 2 #reduceActionForUnaryExpression5: 16424963 false ) 
	#(267 2 #reduceActionForYieldExpression2: 34125826 false ) 
	#(156 2 #reduceActionForMemberExpression4: 12869636 false ) 
	#(161 2 #reduceActionForCallExpression1: 13857793 false ) 
	#(167 2 #reduceActionForOptionalExpression1: 15120385 false ) 
	#(161 2 #reduceActionForMemberExpression4: 13857800 false ) 
	#(161 2 #reduceActionForCallExpression1: 13857797 false ) 
	#(167 2 #reduceActionForOptionalExpression1: 15120386 false ) 
	#(167 2 #reduceActionForOptionalExpression1: 15120387 false ) 
	#(191 1 #liftFirstValue: 20835331 false ) 
	#(191 1 #liftFirstValue: 20835335 false ) 
	#(191 1 #liftFirstValue: 20835336 false ) 
	#(191 1 #liftFirstValue: 20835337 false ) 
	#(191 1 #liftFirstValue: 20835329 false ) 
	#(191 1 #liftFirstValue: 20835330 false ) 
	#(191 1 #liftFirstValue: 20835332 false ) 
	#(191 1 #liftFirstValue: 20835338 false ) 
	#(191 1 #liftFirstValue: 20835339 false ) 
	#(191 1 #liftFirstValue: 20835340 false ) 
	#(191 1 #liftFirstValue: 20835334 false ) 
	#(191 1 #liftFirstValue: 20835333 false ) 
	#(172 2 #reduceActionForUpdateExpression2: 16056322 false ) 
	#(172 2 #reduceActionForUpdateExpression2: 16056323 false ) 
	#(191 1 #liftFirstValue: 20835341 false ) 
	#(176 1 #liftFirstValue: 17250306 false ) 
	#(176 1 #liftFirstValue: 17250305 false ) 
	#(176 1 #liftFirstValue: 17250307 false ) 
	#(329 0 #reduceActionForImplementationModule1: 41583617 false ) 
	#(258 2 #reduceActionForArrowFormalParameters2: 32434178 false ) 
	#(198 2 #reduceActionForBlock1: 23085057 false ) 
	#(243 2 #reduceActionForDebuggerStatement1: 30983169 false ) 
	#(208 1 #reduceActionForArrowParameterDeclaration1: 24065025 false ) 
	#(207 1 #reduceActionForNamespaceName1: 23928833 false ) 
	#(221 2 #reduceActionForExpressionStatement1: 25946113 false ) 
	#(199 2 #reduceActionForModuleItemList2: 23182338 false ) 
	#(277 2 #reduceActionForClassExpression1: 35929089 false ) 
	#(451 1 #liftFirstValue: 63261697 false ) 
	#(440 2 #reduceActionForAmbientDeclaration1: 61190145 false ) 
	#(440 2 #reduceActionForAmbientDeclaration1: 61190146 false ) 
	#(440 2 #reduceActionForAmbientDeclaration1: 61190147 false ) 
	#(440 2 #reduceActionForAmbientDeclaration1: 61190148 false ) 
	#(440 2 #reduceActionForAmbientDeclaration1: 61190149 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006978 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006977 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006979 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006980 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006981 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006987 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006983 false ) 
	#(435 2 #reduceActionForExportDeclarationElement2: 59749378 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006982 false ) 
	#(435 2 #reduceActionForExportDeclarationElement2: 59749377 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006984 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006985 false ) 
	#(435 2 #reduceActionForExportDeclarationElement2: 59749380 false ) 
	#(434 2 #reduceActionForExportImplementationElement2: 59006986 false ) 
	#(435 2 #reduceActionForExportDeclarationElement2: 59749379 false ) 
	#(409 1 #reduceActionForNamespaceName1: 55235585 false ) 
	#(420 2 #reduceActionForModuleItemList2: 57046018 false ) 
	#(424 2 #reduceActionForModuleItemList2: 57582594 false ) 
	#(428 2 #reduceActionForModuleItemList2: 57986050 false ) 
	#(431 2 #reduceActionForModuleItemList2: 58421250 false ) 
	#(356 2 #reduceActionForObjectType1: 43866113 false ) 
	#(135 1 #reduceActionForIdentifier1: 9026561 false ) 
	#(148 1 #liftFirstValue: 12048385 false ) 
	#(371 1 #reduceActionForPropertySignature1: 45507585 false ) 
	#(147 1 #liftFirstValue: 11985921 false ) 
	#(147 1 #liftFirstValue: 11985922 false ) 
	#(148 1 #reduceActionForIdentifier1: 12048386 false ) 
	#(148 1 #reduceActionForIdentifier1: 12048387 false ) 
	#(357 1 #reduceActionForModuleBody1: 43948033 false ) 
	#(358 1 #reduceActionForNamespaceName1: 44044289 false ) 
	#(359 1 #liftFirstValue: 44198913 false ) 
	#(359 1 #liftFirstValue: 44198914 false ) 
	#(359 1 #liftFirstValue: 44198915 false ) 
	#(359 1 #liftFirstValue: 44198916 false ) 
	#(359 1 #liftFirstValue: 44198917 false ) 
	#(363 1 #liftFirstValue: 44637185 false ) 
	#(362 1 #reduceActionForNamespaceName1: 44528641 false ) 
	#(340 1 #reduceActionForTypeParameter1: 42496001 false ) 
	#(339 1 #reduceActionForNamespaceName1: 42383361 false ) 
	#(348 2 #reduceActionForPrefixType3: 43025411 false ) 
	#(348 2 #reduceActionForPrefixType2: 43025410 false ) 
	#(369 1 #reduceActionForTypeQueryExpression1: 45345793 false ) 
	#(368 2 #reduceActionForTypeQuery1: 45272065 false ) 
	#(353 2 #reduceActionForTypeReference1: 43560961 false ) 
	#(302 2 #reduceActionForNamedExports1: 38770689 false ) 
	#(304 1 #reduceActionForExportSpecifier1: 39091201 false ) 
	#(303 1 #reduceActionForNamespaceName1: 38986753 false ) 
	#(300 3 #reduceActionForExportDeclaration2: 37979138 false ) 
	#(194 2 #liftSecondValue: 22792197 false ) 
	#(194 2 #liftSecondValue: 22792196 false ) 
	#(194 2 #liftSecondValue: 22792198 false ) 
	#(294 2 #reduceActionForNamedImports1: 37389313 false ) 
	#(296 1 #reduceActionForNamespaceName1: 37671937 false ) 
	#(297 1 #reduceActionForImportSpecifier1: 37776385 false ) 
	#(290 3 #reduceActionForImportDeclaration2: 36839426 false ) 
	#(210 2 #reduceActionForObjectBindingPattern1: 24289281 false ) 
	#(213 1 #reduceActionForNamespaceName1: 25114625 false ) 
	#(216 1 #liftFirstValue: 25403393 false ) 
	#(211 2 #reduceActionForArrayBindingPattern1: 24677377 false ) 
	#(214 1 #reduceActionForBindingElementList1: 25233409 false ) 
	#(215 1 #reduceActionForBindingElisionElement1: 25341953 false ) 
	#(205 2 #reduceActionForLexicalBinding2: 23678978 false ) 
	#(202 3 #reduceActionForLexicalDeclaration1: 23459841 false ) 
	#(205 2 #reduceActionForLexicalBinding3: 23678979 false ) 
	#(219 2 #reduceActionForBindingRestElement1: 25713665 false ) 
	#(219 2 #reduceActionForBindingRestElement1: 25713666 false ) 
	#(218 2 #reduceActionForLexicalBinding2: 25627650 false ) 
	#(137 3 #reduceActionForParenthesizedExpression1: 9493505 false ) 
	#(217 2 #reduceActionForLexicalBinding3: 25517059 false ) 
	#(258 3 #reduceActionForArrowFormalParameters1: 32434177 false ) 
	#(247 2 #reduceActionForFormalParameters4: 31537156 false ) 
	#(375 1 #liftFirstValue: 47695874 false ) 
	#(375 1 #liftFirstValue: 47695875 false ) 
	#(375 1 #liftFirstValue: 47695873 false ) 
	#(374 1 #reduceActionForIdentifier1: 46352386 false ) 
	#(374 1 #liftFirstValue: 46352385 false ) 
	#(374 1 #liftFirstValue: 46352387 false ) 
	#(142 2 #reduceActionForSpreadElement1: 10945537 false ) 
	#(139 3 #reduceActionForArrayLiteral3: 10411011 false ) 
	#(139 3 #reduceActionForArrayLiteral2: 10411010 false ) 
	#(141 2 #reduceActionForModuleItemList2: 10890242 false ) 
	#(140 2 #reduceActionForElementList4: 10672132 false ) 
	#(140 2 #reduceActionForElementList4: 10672130 false ) 
	#(279 2 #reduceActionForClassTail1: 36129793 false ) 
	#(283 1 #reduceActionForEmptyStatement1: 36422659 false ) 
	#(283 1 #liftFirstValue: 36422657 false ) 
	#(261 1 #liftFirstValue: 32749570 false ) 
	#(261 1 #liftFirstValue: 32749572 false ) 
	#(261 1 #liftFirstValue: 32749571 false ) 
	#(281 1 #reduceActionForModuleBody1: 36302849 false ) 
	#(282 1 #reduceActionForModuleItemList1: 36334593 false ) 
	#(261 1 #liftFirstValue: 32749576 false ) 
	#(261 1 #liftFirstValue: 32749577 false ) 
	#(280 2 #reduceActionForClassHeritage1: 36221953 false ) 
	#(278 3 #reduceActionForClassExpression2: 36049922 false ) 
	#(280 2 #reduceActionForClassHeritage2: 36221954 false ) 
	#(159 3 #reduceActionForNewTarget1: 13664257 false ) 
	#(156 3 #reduceActionForMemberExpression7: 12869639 false ) 
	#(165 2 #reduceActionForArguments1: 14666753 false ) 
	#(166 1 #reduceActionForArgumentList1: 14852097 false ) 
	#(157 3 #reduceActionForSuperProperty2: 13371394 false ) 
	#(267 3 #reduceActionForYieldExpression3: 34125827 false ) 
	#(143 3 #reduceActionForObjectLiteral1: 11043841 false ) 
	#(146 1 #liftFirstValue: 11737089 false ) 
	#(145 1 #reduceActionForNamespaceName1: 11601921 false ) 
	#(146 1 #liftFirstValue: 11737090 false ) 
	#(146 1 #liftFirstValue: 11737092 false ) 
	#(156 3 #reduceActionForMemberExpression3: 12869635 false ) 
	#(170 1 #reduceActionForOptionalFirst3: 15709187 false ) 
	#(170 1 #reduceActionForOptionalFirst4: 15709188 false ) 
	#(170 1 #reduceActionForOptionalFirst1: 15709185 false ) 
	#(168 2 #reduceActionForOptionalChain1: 15298561 false ) 
	#(169 1 #reduceActionForOptionalFirst4: 15421444 false ) 
	#(169 1 #reduceActionForOptionalFirst1: 15421441 false ) 
	#(168 2 #reduceActionForOptionalChain2: 15298562 false ) 
	#(161 3 #reduceActionForMemberExpression3: 13857799 false ) 
	#(190 3 #reduceActionForAssignmentExpression5: 20630533 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 16877570 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17047554 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 17307650 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 17307651 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17605634 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17605635 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17605636 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 17990658 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 17990659 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 17990660 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 17990661 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 17990663 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 17990662 false ) 
	#(180 3 #reduceActionForExponentiationExpression2: 18728962 false ) 
	#(180 3 #reduceActionForExponentiationExpression2: 18728964 false ) 
	#(180 3 #reduceActionForExponentiationExpression2: 18728963 false ) 
	#(180 3 #reduceActionForExponentiationExpression2: 18728965 false ) 
	#(181 3 #reduceActionForExponentiationExpression2: 19259394 false ) 
	#(182 3 #reduceActionForExponentiationExpression2: 19423234 false ) 
	#(183 3 #reduceActionForExponentiationExpression2: 19591170 false ) 
	#(184 3 #reduceActionForExponentiationExpression2: 19758082 false ) 
	#(185 3 #reduceActionForExponentiationExpression2: 19928066 false ) 
	#(186 3 #reduceActionForExponentiationExpression2: 20098049 false ) 
	#(192 3 #reduceActionForExpression2: 22358018 false ) 
	#(252 0 #reduceActionForImplementationModule1: 31983617 false ) 
	#(257 1 #liftFirstValue: 32393217 false ) 
	#(253 3 #reduceActionForArrowFunction1: 32025601 false ) 
	#(256 1 #reduceActionForConciseBody1: 32278529 false ) 
	#(337 0 #reduceActionForSwitchToDefault1: 42149889 true ) 
	#(328 1 #reduceActionForModuleBody1: 41569281 false ) 
	#(315 1 #reduceActionForJSXElementName1: 40425473 false ) 
	#(315 1 #liftFirstValue: 40425474 false ) 
	#(315 1 #liftFirstValue: 40425475 false ) 
	#(319 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 40752129 false ) 
	#(198 3 #reduceActionForBlock2: 23085058 false ) 
	#(227 3 #reduceActionForBreakStatement1: 29277185 false ) 
	#(226 3 #reduceActionForContinueStatement1: 29162497 false ) 
	#(229 3 #reduceActionForReturnStatement1: 29419521 false ) 
	#(238 3 #reduceActionForThrowStatement1: 30436353 false ) 
	#(239 3 #reduceActionForTryStatement1: 30532609 false ) 
	#(239 3 #reduceActionForTryStatement2: 30532610 false ) 
	#(208 2 #reduceActionForLexicalBinding2: 24065026 false ) 
	#(206 3 #reduceActionForVariableStatement1: 23833601 false ) 
	#(208 2 #reduceActionForLexicalBinding3: 24065027 false ) 
	#(208 2 #liftSecondValue: 24065028 false ) 
	#(208 2 #liftSecondValue: 24065029 false ) 
	#(237 1 #liftFirstValue: 30342145 false ) 
	#(236 3 #reduceActionForLabelledStatement1: 30242817 false ) 
	#(277 3 #reduceActionForClassExpression2: 35929090 false ) 
	#(277 3 #reduceActionForClassDeclaration3: 35929091 false ) 
	#(443 1 #reduceActionForArrowParameterDeclaration1: 61987841 false ) 
	#(442 1 #reduceActionForNamespaceName1: 61875201 false ) 
	#(436 3 #reduceActionForExportDefaultImplementationElement1: 60043265 false ) 
	#(436 3 #reduceActionForExportDefaultImplementationElement1: 60043266 false ) 
	#(436 3 #reduceActionForExportDefaultImplementationElement1: 60043267 false ) 
	#(437 3 #reduceActionForExportDefaultDeclarationElement1: 60469249 false ) 
	#(437 3 #reduceActionForExportDefaultDeclarationElement1: 60469250 false ) 
	#(438 3 #reduceActionForExportListDeclaration3: 60804099 false ) 
	#(389 3 #reduceActionForInterfaceDeclaration1: 52127745 false ) 
	#(410 0 #reduceActionForImplementationModule1: 55341057 false ) 
	#(277 3 #reduceActionForClassDeclaration5: 35929093 false ) 
	#(351 3 #reduceActionForParenthesizedExpression1: 43420673 false ) 
	#(371 2 #reduceActionForPropertySignature3: 45507587 false ) 
	#(371 2 #reduceActionForPropertySignature2: 45507586 false ) 
	#(379 2 #reduceActionForMethodSignature1: 48930817 false ) 
	#(356 3 #reduceActionForObjectType2: 43866114 false ) 
	#(357 2 #reduceActionForOptionalChain2: 43948034 false ) 
	#(357 2 #reduceActionForOptionalChain2: 43948036 false ) 
	#(361 3 #reduceActionForTupleType1: 44413953 false ) 
	#(340 2 #reduceActionForTypeParameter2: 42496002 false ) 
	#(338 3 #reduceActionForTypeParameters1: 42304513 false ) 
	#(364 3 #reduceActionForUnionType1: 44663809 false ) 
	#(365 3 #reduceActionForIntersectionType1: 44784641 false ) 
	#(353 3 #reduceActionForTypeReference2: 43560962 false ) 
	#(354 3 #reduceActionForTypeName2: 43655170 false ) 
	#(355 3 #reduceActionForNamespaceName2: 43761666 false ) 
	#(302 3 #reduceActionForNamedExports2: 38770690 false ) 
	#(301 3 #reduceActionForExportFromClause2: 38663170 false ) 
	#(300 4 #reduceActionForExportDeclaration5: 37979141 false ) 
	#(295 2 #reduceActionForFromClause1: 37620737 false ) 
	#(300 4 #reduceActionForExportDeclaration1: 37979137 false ) 
	#(294 3 #reduceActionForNamedImports2: 37389314 false ) 
	#(293 3 #reduceActionForNameSpaceImport1: 37308417 false ) 
	#(290 4 #reduceActionForImportDeclaration1: 36839425 false ) 
	#(291 3 #reduceActionForImportClause4: 37011460 false ) 
	#(291 3 #reduceActionForImportClause4: 37011461 false ) 
	#(212 2 #reduceActionForBindingRestProperty1: 25042945 false ) 
	#(210 3 #reduceActionForObjectBindingPattern2: 24289282 false ) 
	#(210 3 #reduceActionForObjectBindingPattern3: 24289283 false ) 
	#(211 3 #reduceActionForArrayBindingPattern3: 24677379 false ) 
	#(215 2 #reduceActionForBindingElisionElement2: 25341954 false ) 
	#(211 3 #reduceActionForArrayBindingPattern5: 24677381 false ) 
	#(211 3 #reduceActionForArrayBindingPattern2: 24677378 false ) 
	#(151 2 #reduceActionForFromClause1: 12379137 false ) 
	#(204 3 #reduceActionForNamespaceName2: 23580674 false ) 
	#(387 3 #reduceActionForSimpleLexicalBinding1: 51585025 false ) 
	#(388 3 #reduceActionForDestructuringLexicalBinding1: 51694593 false ) 
	#(219 3 #reduceActionForBindingRestElement3: 25713667 false ) 
	#(247 3 #reduceActionForFormalParameters5: 31537157 false ) 
	#(248 3 #reduceActionForNamespaceName2: 31738882 false ) 
	#(218 3 #reduceActionForSingleNameBinding9: 25627657 false ) 
	#(218 3 #reduceActionForSimpleLexicalBinding1: 25627651 false ) 
	#(217 3 #reduceActionForSingleNameBinding9: 25517066 false ) 
	#(217 3 #reduceActionForSimpleLexicalBinding1: 25517060 false ) 
	#(218 3 #reduceActionForSingleNameBinding7: 25627655 false ) 
	#(217 3 #reduceActionForSingleNameBinding7: 25517064 false ) 
	#(139 4 #reduceActionForArrayLiteral4: 10411012 false ) 
	#(140 3 #reduceActionForElementList6: 10672134 false ) 
	#(140 3 #reduceActionForElementList6: 10672133 false ) 
	#(260 1 #reduceActionForConciseBody1: 32628737 false ) 
	#(259 4 #reduceActionForAsyncArrowFunction1: 32526337 false ) 
	#(283 2 #reduceActionForClassElement2: 36422658 false ) 
	#(279 3 #reduceActionForClassTail2: 36129794 false ) 
	#(282 2 #reduceActionForModuleItemList2: 36334594 false ) 
	#(399 0 #reduceActionForInitializer_1: 53835777 false ) 
	#(401 1 #reduceActionForMemberAccessorDeclaration1: 54293505 false ) 
	#(401 1 #reduceActionForMemberAccessorDeclaration1: 54293513 false ) 
	#(283 2 #liftSecondValue: 36422660 false ) 
	#(283 2 #liftSecondValue: 36422661 false ) 
	#(397 1 #liftFirstValue: 53562369 false ) 
	#(397 1 #liftFirstValue: 53562370 false ) 
	#(397 1 #liftFirstValue: 53562371 false ) 
	#(283 2 #liftSecondValue: 36422662 false ) 
	#(279 3 #reduceActionForClassTail3: 36129795 false ) 
	#(394 1 #liftFirstValue: 52784129 false ) 
	#(393 2 #reduceActionForFromClause1: 52724737 false ) 
	#(392 1 #liftFirstValue: 52499457 false ) 
	#(395 2 #reduceActionForImplementsClause1: 52826113 false ) 
	#(391 1 #reduceActionForNamespaceName1: 52368385 false ) 
	#(280 3 #reduceActionForClassHeritage3: 36221955 false ) 
	#(163 4 #reduceActionForImportCall1: 14437377 false ) 
	#(166 2 #reduceActionForArgumentList2: 14852098 false ) 
	#(165 3 #reduceActionForArguments2: 14666754 false ) 
	#(157 4 #reduceActionForSuperProperty1: 13371393 false ) 
	#(343 1 #reduceActionForNamespaceName1: 42681345 false ) 
	#(344 1 #liftFirstValue: 42787841 false ) 
	#(146 2 #reduceActionForPropertyDefinition5: 11737093 false ) 
	#(150 2 #reduceActionForCoverInitializedName1: 12296193 false ) 
	#(143 4 #reduceActionForObjectLiteral2: 11043842 false ) 
	#(154 1 #reduceActionForNamespaceName1: 12637185 false ) 
	#(152 4 #reduceActionForTemplateLiteral2: 12443650 false ) 
	#(156 4 #reduceActionForMemberExpression2: 12869634 false ) 
	#(169 2 #reduceActionForOptionalRest3: 15421443 false ) 
	#(161 4 #reduceActionForCallExpression6: 13857798 false ) 
	#(173 4 #reduceActionForUnaryExpression11: 16424971 false ) 
	#(252 1 #reduceActionForModuleBody1: 31983618 false ) 
	#(251 1 #reduceActionForModuleBody1: 31942657 false ) 
	#(310 4 #reduceActionForJSXElement2: 39599106 false ) 
	#(330 1 #reduceActionForJSXChild1: 41604097 false ) 
	#(330 1 #liftFirstValue: 41604098 false ) 
	#(329 2 #reduceActionForModuleItemList2: 41583618 false ) 
	#(318 2 #reduceActionForFromClause1: 40752129 false ) 
	#(335 0 #reduceActionForSwitchToJSXTextOrDefault11: 42016769 true ) 
	#(325 1 #reduceActionForJSXElementName1: 41176065 false ) 
	#(325 1 #liftFirstValue: 41176066 false ) 
	#(322 1 #reduceActionForModuleItemList1: 40879105 false ) 
	#(320 1 #reduceActionForModuleBody1: 40862721 false ) 
	#(321 1 #liftFirstValue: 40879105 false ) 
	#(321 1 #liftFirstValue: 40879106 false ) 
	#(324 1 #reduceActionForJSXAttribute1: 41093121 false ) 
	#(317 2 #reduceActionForJSXMemberExpression1: 40729601 false ) 
	#(319 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 40752130 false ) 
	#(227 4 #reduceActionForBreakStatement2: 29277186 false ) 
	#(226 4 #reduceActionForContinueStatement2: 29162498 false ) 
	#(225 1 #liftFirstValue: 29115393 false ) 
	#(225 1 #liftFirstValue: 29115394 false ) 
	#(224 2 #reduceActionForFromClause1: 29050881 false ) 
	#(229 4 #reduceActionForReturnStatement2: 29419522 false ) 
	#(240 2 #reduceActionForCatch2: 30703618 false ) 
	#(241 2 #reduceActionForFromClause1: 30871553 false ) 
	#(239 4 #reduceActionForTryStatement3: 30532611 false ) 
	#(207 3 #reduceActionForNamespaceName2: 23928834 false ) 
	#(385 2 #reduceActionForSimpleVariableDeclaration1: 51284993 false ) 
	#(277 4 #reduceActionForClassDeclaration4: 35929092 false ) 
	#(443 2 #reduceActionForAmbientBinding2: 61987842 false ) 
	#(441 3 #reduceActionForLexicalDeclaration1: 61579267 false ) 
	#(441 3 #reduceActionForLexicalDeclaration1: 61579266 false ) 
	#(453 0 #reduceActionForImplementationModule1: 63481857 false ) 
	#(441 3 #reduceActionForLexicalDeclaration1: 61579265 false ) 
	#(403 4 #reduceActionForEnumDeclaration1: 54661121 false ) 
	#(406 1 #reduceActionForEnumMember1: 54946817 false ) 
	#(404 1 #reduceActionForModuleBody1: 54808577 false ) 
	#(405 1 #reduceActionForNamespaceName1: 54854657 false ) 
	#(439 4 #reduceActionForExportAssignment1: 61058049 false ) 
	#(438 4 #reduceActionForExportListDeclaration1: 60804097 false ) 
	#(437 4 #reduceActionForExportDefaultDeclarationElement3: 60469251 false ) 
	#(436 4 #reduceActionForExportDefaultImplementationElement4: 60043268 false ) 
	#(438 4 #reduceActionForExportListDeclaration2: 60804098 false ) 
	#(415 1 #liftFirstValue: 56637441 false ) 
	#(390 2 #reduceActionForFromClause1: 52283393 false ) 
	#(389 4 #reduceActionForInterfaceDeclaration3: 52127747 false ) 
	#(389 4 #reduceActionForInterfaceDeclaration2: 52127746 false ) 
	#(412 1 #liftFirstValue: 55477249 false ) 
	#(412 1 #liftFirstValue: 55477250 false ) 
	#(412 1 #liftFirstValue: 55477251 false ) 
	#(412 1 #liftFirstValue: 55477252 false ) 
	#(412 1 #liftFirstValue: 55477253 false ) 
	#(412 1 #liftFirstValue: 55477255 false ) 
	#(412 1 #liftFirstValue: 55477254 false ) 
	#(412 1 #liftFirstValue: 55477256 false ) 
	#(412 1 #liftFirstValue: 55477257 false ) 
	#(410 1 #reduceActionForModuleBody1: 55341058 false ) 
	#(411 1 #reduceActionForModuleItemList1: 55378945 false ) 
	#(412 1 #liftFirstValue: 55477260 false ) 
	#(412 1 #liftFirstValue: 55477259 false ) 
	#(412 1 #liftFirstValue: 55477258 false ) 
	#(409 3 #reduceActionForNamespaceName2: 55235586 false ) 
	#(244 4 #reduceActionForFunctionDeclaration5: 31069189 false ) 
	#(277 4 #reduceActionForClassDeclaration6: 35929094 false ) 
	#(373 3 #reduceActionForCallSignature1: 45729793 false ) 
	#(149 3 #reduceActionForComputedPropertyName1: 12175361 false ) 
	#(371 3 #reduceActionForPropertySignature4: 45507588 false ) 
	#(379 3 #reduceActionForMethodSignature2: 48930818 false ) 
	#(372 2 #reduceActionForFromClause1: 45676545 false ) 
	#(358 3 #reduceActionForNamespaceName2: 44044290 false ) 
	#(358 3 #reduceActionForNamespaceName2: 44044291 false ) 
	#(361 4 #reduceActionForTupleType2: 44413954 false ) 
	#(362 3 #reduceActionForNamespaceName2: 44528642 false ) 
	#(341 2 #reduceActionForFromClause1: 42550273 false ) 
	#(339 3 #reduceActionForNamespaceName2: 42383362 false ) 
	#(369 3 #reduceActionForTypeQueryExpression2: 45345794 false ) 
	#(360 4 #reduceActionForArrayType1: 44306433 false ) 
	#(304 3 #reduceActionForExportSpecifier2: 39091202 false ) 
	#(302 4 #reduceActionForNamedExports3: 38770691 false ) 
	#(303 3 #reduceActionForNamespaceName2: 38986754 false ) 
	#(297 3 #reduceActionForImportSpecifier2: 37776386 false ) 
	#(294 4 #reduceActionForNamedImports3: 37389315 false ) 
	#(296 3 #reduceActionForNamespaceName2: 37671938 false ) 
	#(216 3 #reduceActionForBindingProperty2: 25403394 false ) 
	#(210 4 #reduceActionForObjectBindingPattern4: 24289284 false ) 
	#(213 3 #reduceActionForNamespaceName2: 25114626 false ) 
	#(211 4 #reduceActionForArrayBindingPattern4: 24677380 false ) 
	#(211 4 #reduceActionForArrayBindingPattern6: 24677382 false ) 
	#(214 3 #reduceActionForBindingElementList2: 25233410 false ) 
	#(387 4 #reduceActionForSimpleLexicalBinding2: 51585026 false ) 
	#(388 4 #reduceActionForDestructuringLexicalBinding2: 51694594 false ) 
	#(218 4 #reduceActionForSimpleLexicalBinding2: 25627652 false ) 
	#(217 4 #reduceActionForBindingElement11: 25517067 false ) 
	#(217 4 #reduceActionForSimpleLexicalBinding2: 25517061 false ) 
	#(218 4 #reduceActionForSingleNameBinding10: 25627658 false ) 
	#(218 4 #reduceActionForSingleNameBinding8: 25627656 false ) 
	#(218 4 #reduceActionForSingleNameBinding5: 25627653 false ) 
	#(217 4 #reduceActionForSingleNameBinding10: 25517068 false ) 
	#(217 4 #reduceActionForSingleNameBinding8: 25517065 false ) 
	#(217 4 #reduceActionForSingleNameBinding5: 25517062 false ) 
	#(275 1 #reduceActionForModuleBody1: 35816449 false ) 
	#(401 2 #reduceActionForMemberAccessorDeclaration2: 54293506 false ) 
	#(401 2 #reduceActionForMemberAccessorDeclaration2: 54293514 false ) 
	#(399 1 #reduceActionForModuleBody1: 53835778 false ) 
	#(401 2 #reduceActionForMemberAccessorDeclaration5: 54293509 false ) 
	#(401 2 #reduceActionForMemberAccessorDeclaration5: 54293517 false ) 
	#(401 2 #reduceActionForMemberAccessorDeclaration3: 54293507 false ) 
	#(401 2 #reduceActionForMemberAccessorDeclaration3: 54293515 false ) 
	#(402 2 #reduceActionForIndexMemberDeclaration1: 54569985 false ) 
	#(279 4 #reduceActionForClassTail4: 36129796 false ) 
	#(165 4 #reduceActionForArguments3: 14666755 false ) 
	#(166 3 #reduceActionForArgumentList3: 14852099 false ) 
	#(342 3 #reduceActionForTypeArguments1: 42603521 false ) 
	#(165 4 #reduceActionForArguments4: 14666756 false ) 
	#(143 5 #reduceActionForObjectLiteral3: 11043843 false ) 
	#(145 3 #reduceActionForNamespaceName2: 11601922 false ) 
	#(146 3 #reduceActionForPropertyDefinition3: 11737091 false ) 
	#(155 2 #reduceActionForTemplateMiddleList1: 12724225 false ) 
	#(154 2 #reduceActionForTemplateSpans2: 12637186 false ) 
	#(170 3 #reduceActionForOptionalFirst2: 15709186 false ) 
	#(169 3 #reduceActionForOptionalFirst2: 15421442 false ) 
	#(189 5 #reduceActionForConditionalExpression2: 20403202 false ) 
	#(256 3 #reduceActionForConciseBody2: 32278530 false ) 
	#(316 3 #reduceActionForJSXNamespacedName1: 40605697 false ) 
	#(322 2 #reduceActionForModuleItemList2: 40879106 false ) 
	#(324 2 #reduceActionForJSXAttribute2: 41093122 false ) 
	#(312 5 #reduceActionForJSXOpeningElement1: 39932929 false ) 
	#(381 4 #reduceActionForTypeCallSignature1: 49374209 false ) 
	#(173 5 #reduceActionForUnaryExpression10: 16424970 false ) 
	#(381 4 #reduceActionForTypeCallSignature3: 49374211 false ) 
	#(222 5 #reduceActionForIfStatement2: 26025986 false ) 
	#(231 5 #reduceActionForSwitchStatement1: 29665281 false ) 
	#(242 1 #liftFirstValue: 30931969 false ) 
	#(242 1 #liftFirstValue: 30931970 false ) 
	#(385 3 #reduceActionForSimpleVariableDeclaration2: 51284994 false ) 
	#(386 3 #reduceActionForDestructuringVariableDeclaration1: 51390465 false ) 
	#(223 5 #reduceActionForIterationStatement2: 26316802 false ) 
	#(230 5 #reduceActionForWithStatement1: 29533185 false ) 
	#(403 5 #reduceActionForEnumDeclaration3: 54661123 false ) 
	#(446 0 #reduceActionForImplementationModule1: 62424065 false ) 
	#(442 3 #reduceActionForNamespaceName2: 61875202 false ) 
	#(444 4 #reduceActionForAmbientFunctionDeclaration1: 62070785 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661059 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661065 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661071 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661057 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661061 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661063 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661067 false ) 
	#(455 1 #reduceActionForAmbientNamespaceElement3: 63661069 false ) 
	#(453 1 #reduceActionForModuleBody1: 63481858 false ) 
	#(454 1 #reduceActionForModuleItemList1: 63534081 false ) 
	#(403 5 #reduceActionForEnumDeclaration2: 54661122 false ) 
	#(404 2 #reduceActionForOptionalChain2: 54808578 false ) 
	#(414 5 #reduceActionForImportAliasDeclaration1: 56500225 false ) 
	#(389 5 #reduceActionForInterfaceDeclaration4: 52127748 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757826 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757825 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757827 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757828 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757829 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757831 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757830 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757832 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757833 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757835 false ) 
	#(413 2 #reduceActionForExportNamespaceElement2: 55757834 false ) 
	#(408 5 #reduceActionForNamespaceDeclaration1: 55094273 false ) 
	#(411 2 #reduceActionForModuleItemList2: 55378946 false ) 
	#(380 5 #reduceActionForTypeAliasDeclaration1: 49036289 false ) 
	#(244 5 #reduceActionForFunctionDeclaration6: 31069190 false ) 
	#(366 5 #reduceActionForFunctionType1: 44891137 false ) 
	#(373 4 #reduceActionForCallSignature2: 45729794 false ) 
	#(377 4 #reduceActionForConstructSignature1: 48437249 false ) 
	#(373 4 #reduceActionForCallSignature3: 45729795 false ) 
	#(210 5 #reduceActionForObjectBindingPattern5: 24289285 false ) 
	#(211 5 #reduceActionForArrayBindingPattern8: 24677384 false ) 
	#(211 5 #reduceActionForArrayBindingPattern7: 24677383 false ) 
	#(218 5 #reduceActionForSingleNameBinding6: 25627654 false ) 
	#(217 5 #reduceActionForBindingElement13: 25517069 false ) 
	#(217 5 #reduceActionForSingleNameBinding6: 25517063 false ) 
	#(260 3 #reduceActionForConciseBody2: 32628738 false ) 
	#(262 1 #liftFirstValue: 33347585 false ) 
	#(400 3 #reduceActionForMemberFunctionDeclaration9: 53880841 false ) 
	#(398 3 #reduceActionForMemberVariableDeclaration1: 53677057 false ) 
	#(401 3 #reduceActionForMemberAccessorDeclaration6: 54293510 false ) 
	#(401 3 #reduceActionForMemberAccessorDeclaration6: 54293518 false ) 
	#(401 3 #reduceActionForMemberAccessorDeclaration7: 54293511 false ) 
	#(401 3 #reduceActionForMemberAccessorDeclaration7: 54293519 false ) 
	#(401 3 #reduceActionForMemberAccessorDeclaration4: 54293508 false ) 
	#(401 3 #reduceActionForMemberAccessorDeclaration4: 54293516 false ) 
	#(391 3 #reduceActionForNamespaceName2: 52368386 false ) 
	#(166 4 #reduceActionForArgumentList4: 14852100 false ) 
	#(343 3 #reduceActionForNamespaceName2: 42681346 false ) 
	#(165 5 #reduceActionForArguments5: 14666757 false ) 
	#(155 3 #reduceActionForTemplateMiddleList2: 12724226 false ) 
	#(331 1 #liftFirstValue: 41836546 false ) 
	#(331 1 #liftFirstValue: 41836545 false ) 
	#(311 6 #reduceActionForJSXSelfClosingElement1: 39749633 false ) 
	#(312 6 #reduceActionForJSXOpeningElement2: 39932930 false ) 
	#(327 1 #reduceActionForLiteral4: 41340929 false ) 
	#(327 1 #liftFirstValue: 41340931 false ) 
	#(327 1 #liftFirstValue: 41340932 false ) 
	#(326 2 #reduceActionForFromClause1: 41267201 false ) 
	#(245 6 #reduceActionForFunctionExpression3: 31281155 false ) 
	#(381 5 #reduceActionForTypeCallSignature2: 49374210 false ) 
	#(223 6 #reduceActionForIterationStatement3: 26316803 false ) 
	#(223 6 #reduceActionForIterationStatement15: 26316815 false ) 
	#(232 2 #reduceActionForCaseBlock1: 29791233 false ) 
	#(233 1 #reduceActionForModuleItemList1: 29975553 false ) 
	#(403 6 #reduceActionForEnumDeclaration4: 54661124 false ) 
	#(448 1 #liftFirstValue: 62599171 false ) 
	#(446 1 #reduceActionForModuleBody1: 62424066 false ) 
	#(447 1 #reduceActionForModuleItemList1: 62472193 false ) 
	#(448 1 #liftFirstValue: 62599169 false ) 
	#(448 1 #liftFirstValue: 62599170 false ) 
	#(456 6 #reduceActionForAmbientModuleDeclaration1: 64433153 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661060 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661066 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661072 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661058 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661062 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661064 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661068 false ) 
	#(455 2 #reduceActionForExportNamespaceElement2: 63661070 false ) 
	#(452 5 #reduceActionForNamespaceDeclaration1: 63305729 false ) 
	#(454 2 #reduceActionForModuleItemList2: 63534082 false ) 
	#(407 1 #liftFirstValue: 55052289 false ) 
	#(406 3 #reduceActionForEnumMember2: 54946818 false ) 
	#(405 3 #reduceActionForNamespaceName2: 54854658 false ) 
	#(380 6 #reduceActionForTypeAliasDeclaration2: 49036290 false ) 
	#(244 6 #reduceActionForFunctionExpression3: 31069187 false ) 
	#(377 5 #reduceActionForConstructSignature2: 48437250 false ) 
	#(377 5 #reduceActionForConstructSignature3: 48437251 false ) 
	#(373 5 #reduceActionForCallSignature4: 45729796 false ) 
	#(367 6 #reduceActionForConstructorType1: 45071361 false ) 
	#(366 6 #reduceActionForFunctionType2: 44891138 false ) 
	#(211 6 #reduceActionForArrayBindingPattern9: 24677385 false ) 
	#(376 1 #liftFirstValue: 47758337 false ) 
	#(376 1 #liftFirstValue: 47758338 false ) 
	#(400 4 #reduceActionForMemberFunctionDeclaration10: 53880842 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration3: 53677059 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration2: 53677058 false ) 
	#(400 4 #reduceActionForMemberFunctionDeclaration13: 53880845 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration9: 53677065 false ) 
	#(401 4 #reduceActionForMemberAccessorDeclaration8: 54293512 false ) 
	#(401 4 #reduceActionForMemberAccessorDeclaration8: 54293520 false ) 
	#(400 4 #reduceActionForMemberFunctionDeclaration11: 53880843 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration5: 53677061 false ) 
	#(245 7 #reduceActionForFunctionExpression1: 31281153 false ) 
	#(266 1 #reduceActionForModuleBody1: 34094081 false ) 
	#(336 0 #reduceActionForSwitchToJSXTextOrDefault21: 42083329 true ) 
	#(330 4 #reduceActionForJSXChild3: 41604099 false ) 
	#(311 7 #reduceActionForJSXSelfClosingElement2: 39749634 false ) 
	#(245 7 #reduceActionForFunctionExpression4: 31281156 false ) 
	#(223 7 #reduceActionForIterationStatement1: 26316801 false ) 
	#(223 7 #reduceActionForIterationStatement4: 26316804 false ) 
	#(223 7 #reduceActionForIterationStatement5: 26316805 false ) 
	#(223 7 #reduceActionForIterationStatement19: 26316819 false ) 
	#(223 7 #reduceActionForIterationStatement22: 26316822 false ) 
	#(223 7 #reduceActionForIterationStatement7: 26316807 false ) 
	#(223 7 #reduceActionForIterationStatement16: 26316816 false ) 
	#(223 7 #reduceActionForIterationStatement17: 26316817 false ) 
	#(223 7 #reduceActionForIterationStatement21: 26316821 false ) 
	#(223 7 #reduceActionForIterationStatement24: 26316824 false ) 
	#(222 7 #reduceActionForIfStatement1: 26025985 false ) 
	#(235 2 #reduceActionForDefaultClause1: 30154753 false ) 
	#(232 3 #reduceActionForCaseBlock2: 29791234 false ) 
	#(233 2 #reduceActionForModuleItemList2: 29975554 false ) 
	#(232 3 #reduceActionForCaseBlock3: 29791235 false ) 
	#(240 5 #reduceActionForCatch1: 30703617 false ) 
	#(450 2 #reduceActionForAmbientPropertyMemberDeclaration1: 62918657 false ) 
	#(445 6 #reduceActionForAmbientClassDeclaration1: 62218241 false ) 
	#(447 2 #reduceActionForModuleItemList2: 62472194 false ) 
	#(244 7 #reduceActionForFunctionExpression1: 31069185 false ) 
	#(244 7 #reduceActionForFunctionExpression4: 31069188 false ) 
	#(378 6 #reduceActionForIndexSignature2: 48629762 false ) 
	#(378 6 #reduceActionForIndexSignature2: 48629761 false ) 
	#(377 6 #reduceActionForConstructSignature4: 48437252 false ) 
	#(367 7 #reduceActionForConstructorType2: 45071362 false ) 
	#(274 8 #reduceActionForAsyncFunctionExpression1: 35566593 false ) 
	#(271 1 #reduceActionForModuleBody1: 35060737 false ) 
	#(396 5 #reduceActionForConstructorDeclaration5: 53033989 false ) 
	#(384 2 #reduceActionForTypedPropertySetParameterList1: 50407425 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration4: 53677060 false ) 
	#(400 5 #reduceActionForMemberFunctionDeclaration1: 53880833 false ) 
	#(261 6 #reduceActionForMethodDefinition7: 32749575 false ) 
	#(400 5 #reduceActionForMemberFunctionDeclaration14: 53880846 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration11: 53677067 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration10: 53677066 false ) 
	#(400 5 #reduceActionForMemberFunctionDeclaration15: 53880847 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration13: 53677069 false ) 
	#(400 5 #reduceActionForMemberFunctionDeclaration12: 53880844 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration7: 53677063 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration6: 53677062 false ) 
	#(265 8 #reduceActionForGeneratorExpression1: 33858561 false ) 
	#(245 8 #reduceActionForFunctionExpression2: 31281154 false ) 
	#(330 5 #reduceActionForJSXChild4: 41604100 false ) 
	#(323 5 #reduceActionForJSXSpreadAttribute1: 40943617 false ) 
	#(223 8 #reduceActionForIterationStatement6: 26316806 false ) 
	#(223 8 #reduceActionForIterationStatement11: 26316811 false ) 
	#(223 8 #reduceActionForIterationStatement23: 26316823 false ) 
	#(223 8 #reduceActionForIterationStatement20: 26316820 false ) 
	#(223 8 #reduceActionForIterationStatement8: 26316808 false ) 
	#(223 8 #reduceActionForIterationStatement9: 26316809 false ) 
	#(223 8 #reduceActionForIterationStatement18: 26316818 false ) 
	#(223 8 #reduceActionForIterationStatement25: 26316825 false ) 
	#(223 8 #reduceActionForIterationStatement27: 26316827 false ) 
	#(234 3 #reduceActionForCaseClause1: 30048257 false ) 
	#(235 3 #reduceActionForDefaultClause2: 30154754 false ) 
	#(232 4 #reduceActionForCaseBlock5: 29791237 false ) 
	#(232 4 #reduceActionForCaseBlock4: 29791236 false ) 
	#(450 3 #reduceActionForAmbientPropertyMemberDeclaration3: 62918659 false ) 
	#(450 3 #reduceActionForAmbientPropertyMemberDeclaration2: 62918658 false ) 
	#(450 3 #reduceActionForAmbientPropertyMemberDeclaration9: 62918665 false ) 
	#(450 3 #reduceActionForAmbientPropertyMemberDeclaration5: 62918661 false ) 
	#(445 7 #reduceActionForAmbientClassDeclaration2: 62218242 false ) 
	#(264 8 #reduceActionForGeneratorExpression1: 33622017 false ) 
	#(244 8 #reduceActionForFunctionExpression2: 31069186 false ) 
	#(433 8 #reduceActionForImportRequireDeclaration1: 58787841 false ) 
	#(273 8 #reduceActionForAsyncFunctionExpression1: 35316737 false ) 
	#(270 9 #reduceActionForAsyncGeneratorExpression1: 34786305 false ) 
	#(274 9 #reduceActionForAsyncFunctionExpression2: 35566594 false ) 
	#(261 7 #reduceActionForMethodDefinition5: 32749573 false ) 
	#(261 7 #reduceActionForMethodDefinition1: 32749569 false ) 
	#(400 6 #reduceActionForMemberFunctionDeclaration2: 53880834 false ) 
	#(396 6 #reduceActionForConstructorDeclaration7: 53033991 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration12: 53677068 false ) 
	#(400 6 #reduceActionForMemberFunctionDeclaration5: 53880837 false ) 
	#(400 6 #reduceActionForMemberFunctionDeclaration16: 53880848 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration15: 53677071 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration14: 53677070 false ) 
	#(396 6 #reduceActionForConstructorDeclaration6: 53033990 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration8: 53677064 false ) 
	#(400 6 #reduceActionForMemberFunctionDeclaration3: 53880835 false ) 
	#(265 9 #reduceActionForGeneratorExpression2: 33858562 false ) 
	#(314 9 #reduceActionForJSXFragment1: 40237057 false ) 
	#(313 6 #reduceActionForJSXClosingElement1: 40077313 false ) 
	#(223 9 #reduceActionForIterationStatement12: 26316812 false ) 
	#(223 9 #reduceActionForIterationStatement13: 26316813 false ) 
	#(223 9 #reduceActionForIterationStatement10: 26316810 false ) 
	#(223 9 #reduceActionForIterationStatement26: 26316826 false ) 
	#(234 4 #reduceActionForCaseClause2: 30048258 false ) 
	#(232 5 #reduceActionForCaseBlock6: 29791238 false ) 
	#(450 4 #reduceActionForAmbientPropertyMemberDeclaration4: 62918660 false ) 
	#(450 4 #reduceActionForAmbientPropertyMemberDeclaration10: 62918666 false ) 
	#(450 4 #reduceActionForAmbientPropertyMemberDeclaration7: 62918663 false ) 
	#(450 4 #reduceActionForAmbientPropertyMemberDeclaration6: 62918662 false ) 
	#(450 4 #reduceActionForAmbientPropertyMemberDeclaration11: 62918667 false ) 
	#(264 9 #reduceActionForGeneratorExpression2: 33622018 false ) 
	#(269 9 #reduceActionForAsyncGeneratorExpression1: 34510849 false ) 
	#(273 9 #reduceActionForAsyncFunctionExpression2: 35316738 false ) 
	#(270 10 #reduceActionForAsyncGeneratorExpression2: 34786306 false ) 
	#(263 8 #reduceActionForGeneratorMethod1: 33405953 false ) 
	#(272 8 #reduceActionForAsyncMethod1: 35097601 false ) 
	#(261 8 #reduceActionForMethodDefinition6: 32749574 false ) 
	#(396 7 #reduceActionForConstructorDeclaration1: 53033985 false ) 
	#(400 7 #reduceActionForMemberFunctionDeclaration6: 53880838 false ) 
	#(396 7 #reduceActionForConstructorDeclaration8: 53033992 false ) 
	#(398 7 #reduceActionForMemberVariableDeclaration16: 53677072 false ) 
	#(400 7 #reduceActionForMemberFunctionDeclaration7: 53880839 false ) 
	#(400 7 #reduceActionForMemberFunctionDeclaration4: 53880836 false ) 
	#(327 5 #reduceActionForJSXChild4: 41340930 false ) 
	#(223 10 #reduceActionForIterationStatement14: 26316814 false ) 
	#(449 5 #reduceActionForAmbientConstructorDeclaration1: 62711809 false ) 
	#(450 5 #reduceActionForAmbientPropertyMemberDeclaration8: 62918664 false ) 
	#(450 5 #reduceActionForAmbientPropertyMemberDeclaration12: 62918668 false ) 
	#(269 10 #reduceActionForAsyncGeneratorExpression2: 34510850 false ) 
	#(268 9 #reduceActionForAsyncGeneratorMethod1: 34257921 false ) 
	#(382 9 #reduceActionForGetAccessor1: 49736705 false ) 
	#(383 9 #reduceActionForSetAccessor2: 49942530 false ) 
	#(396 8 #reduceActionForConstructorDeclaration3: 53033987 false ) 
	#(400 8 #reduceActionForMemberFunctionDeclaration8: 53880840 false ) 
	#(396 8 #reduceActionForConstructorDeclaration2: 53033986 false ) 
	#(383 10 #reduceActionForSetAccessor1: 49942529 false ) 
	#(383 10 #reduceActionForSetAccessor1: 49942531 false ) 
	#(396 9 #reduceActionForConstructorDeclaration4: 53033988 false )
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
	^ #('<arroba>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<questionQuestion>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'DecoratorExpression' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'Initializer?' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #JSDecoratorExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #OrderedCollection #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 37 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 7 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 0 49 0 133 0 81 0 200 0 57 0 201 0 81 0 202 0 65 0 203 0 49 1 30 0 73 1 31 0 77 1 32 0 81 1 33 0 81 1 34 0 81 1 44 0 6 1 203 0 10 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 1 109 0 189 1 109 0 190 1 109 0 192 0 249 0 245 1 109 0 253 1 121 0 254 1 125 0 255 1 129 1 2 1 109 1 3 0 249 1 9 1 109 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 2 17 0 193 2 17 0 196 2 17 0 197 2 17 0 198 2 17 0 206 2 17 0 220 2 17 0 221 2 17 0 222 2 17 0 223 2 17 0 226 2 17 0 227 2 17 0 229 2 17 0 230 2 17 0 231 2 17 0 236 2 17 0 238 2 17 0 239 2 17 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 2 89 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 2 97 1 28 2 101 1 29 0 6 1 203 0 26 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 37 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 7 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 0 81 0 200 0 57 0 201 0 81 0 202 0 65 0 203 2 105 1 30 0 73 1 31 0 77 1 32 0 81 1 33 0 81 1 34 0 81 1 44 0 6 1 203 0 10 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 2 109 0 58 2 113 0 59 2 117 0 60 1 217 0 62 1 221 0 63 2 121 0 64 0 141 0 66 1 225 0 67 2 125 0 69 2 129 0 70 1 165 0 72 1 229 0 74 2 133 0 76 1 233 0 78 2 137 0 79 2 141 0 84 0 65 0 86 2 145 0 88 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 2 149 0 107 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 2 221 0 193 2 221 0 196 2 221 0 197 2 221 0 198 2 221 0 202 0 65 0 203 2 221 0 206 2 221 0 220 2 221 0 221 2 221 0 222 2 221 0 223 2 221 0 226 2 221 0 227 2 221 0 229 2 221 0 230 2 221 0 231 2 221 0 236 2 221 0 238 2 221 0 239 2 221 0 243 2 221 0 244 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 2 221 1 8 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 2 221 1 21 0 249 1 22 2 173 1 34 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 2 177 1 124 2 181 1 133 2 221 1 147 2 189 1 152 2 193 1 158 2 197 1 160 2 201 1 161 2 205 1 162 2 209 1 163 2 213 1 164 2 217 1 165 2 221 1 166 2 225 1 167 2 229 1 168 2 233 1 169 2 237 1 170 2 241 1 171 2 245 1 172 2 249 1 173 2 253 1 174 3 1 1 175 3 5 1 176 2 249 1 177 2 249 1 178 3 5 1 179 2 249 1 180 3 5 1 181 3 29 1 182 3 33 1 183 3 37 1 184 3 41 1 200 3 45 1 203 0 19 1 204] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 3 105 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 3 105 1 110 3 105 1 111 3 121 1 112 3 121 1 114] 
#[0 0 46 0 4 0 6 0 118 1 203] 
#[1 3 185 0 4 3 189 0 26 3 193 0 53 3 197 0 58 2 113 0 59 0 65 0 60 3 201 0 65 3 205 0 76 0 65 0 86 1 253 0 109 3 209 0 194 3 209 0 195 3 209 0 202 0 65 0 203 3 221 0 206 3 209 0 244 3 209 1 8 3 209 1 13 3 209 1 17 3 209 1 21 3 245 1 45 3 249 1 46 3 253 1 203] 
#[1 4 1 0 4 4 5 0 26 0 189 0 118 4 29 0 121 4 17 0 134 4 13 1 35 4 17 1 36 4 21 1 37 4 25 1 38 4 29 1 42 4 17 1 43 4 29 1 51] 
#[0 0 50 0 4 0 6 0 118 1 203] 
#[0 0 0 1 204] 
#[0 0 54 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 4 41 0 193 4 41 0 196 4 41 0 197 4 41 0 198 4 41 0 206 4 41 0 220 4 41 0 221 4 41 0 222 4 41 0 223 4 41 0 226 4 41 0 227 4 41 0 229 4 41 0 230 4 41 0 231 4 41 0 236 4 41 0 238 4 41 0 239 4 41 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 0 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 4 53 0 134 4 57 0 204 4 61 0 205 4 65 0 209 4 65 0 210 4 65 0 211 4 61 1 131 4 61 1 132 4 85 1 203] 
#[0 0 62 1 204] 
#[0 0 66 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 37 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 7 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 4 89 0 200 0 57 0 201 4 89 0 202 0 65 0 203 4 89 1 33 4 89 1 34 4 89 1 44 0 6 1 203 0 70 1 204] 
#[0 0 74 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 78 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 82 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 4 97 0 53 0 137 0 58 1 165 0 72 0 149 0 76 0 153 0 79 4 101 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 4 109 0 134 4 109 0 136 4 109 0 137 4 109 0 138 4 109 0 139 4 109 0 143 0 237 0 144 4 109 0 152 0 245 0 153 4 109 0 156 4 109 0 157 4 109 0 158 4 109 0 159 4 113 0 161 4 113 0 162 4 113 0 163 4 113 0 164 4 109 0 245 4 109 1 9 4 109 1 14 4 109 1 18 4 109 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 4 109 1 53 4 109 1 54 4 109 1 55 1 189 1 56 4 109 1 58 1 197 1 76 4 117 1 203] 
#[1 0 93 0 1 0 97 0 2 0 86 0 3 0 23 0 4 4 121 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 4 125 0 114 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 4 129 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 4 133 0 189 4 133 0 190 4 133 0 192 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 0 249 0 245 4 153 0 246 4 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 4 133 0 253 1 121 0 254 1 125 0 255 1 129 1 2 4 133 1 3 0 249 1 9 4 133 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 173 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 4 177 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 4 181 0 114 4 185 0 115 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 4 189 0 140 4 193 0 141 4 197 0 142 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 4 201 0 189 4 201 0 190 0 249 0 245 4 201 0 253 1 121 0 254 1 125 0 255 1 129 1 2 4 201 1 3 0 249 1 9 4 201 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 4 209 0 172 4 209 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 4 209 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 4 217 0 172 4 217 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 4 217 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 4 221 0 172 4 221 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 4 221 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 4 225 0 172 4 225 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 4 225 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 4 229 0 172 4 229 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 4 229 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 4 233 0 172 4 233 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 4 233 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 4 237 0 2 4 241 0 76 0 189 0 118 4 245 0 134 4 249 0 254 1 125 0 255 1 129 1 2 4 253 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 5 1 0 172 5 1 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 5 1 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 5 5 0 4 5 9 0 71 0 189 0 118 5 13 0 134 5 17 1 23 5 21 1 24 5 25 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 5 29 0 172 5 29 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 5 29 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 33 0 2 5 37 0 26 0 189 0 118 5 41 0 134] 
#[0 5 45 0 2] 
#[1 4 93 0 2 0 14 0 4 0 101 0 6 5 49 0 22 4 97 0 53 0 137 0 58 1 165 0 72 0 149 0 76 0 157 0 89 1 161 0 90 5 53 0 100 0 169 0 103 1 165 0 105 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 5 57 0 134 5 57 0 136 5 57 0 137 5 57 0 138 5 57 0 139 5 57 0 143 0 237 0 144 5 57 0 152 0 245 0 153 5 57 0 156 5 57 0 157 5 57 0 158 5 57 0 159 5 61 0 160 5 57 0 245 5 57 1 9 5 57 1 14 5 57 1 18 5 57 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 5 57 1 53 5 57 1 54 5 57 1 55 1 189 1 56 5 57 1 58 1 197 1 76 4 117 1 203] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 65 0 2 5 69 0 6 5 73 0 22 5 77 0 165 5 81 1 203] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 5 85 0 172 5 85 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 5 85 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 5 89 0 172 5 89 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 5 89 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 0 97 0 2 0 106 0 3 0 14 0 4 0 106 0 5 0 101 0 6 0 106 0 7 0 106 0 8 5 93 0 26 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 106 0 92 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 106 0 115 0 106 0 116 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 106 0 127 0 106 0 128 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 5 97 0 189 5 97 0 190 0 249 0 245 5 97 0 253 1 121 0 254 1 125 0 255 1 129 1 2 5 97 1 3 0 249 1 9 5 97 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203 0 106 1 204] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 71 0 75 0 80 0 82 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 0 130 1 202 1 203 1 204] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 130 0 14 5 101 1 77] 
#[1 0 134 0 2 0 134 0 3 0 134 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 134 0 92 0 134 0 115 0 134 0 116 0 134 0 125 0 134 0 126 0 134 0 127 0 134 0 128 0 134 1 202 0 134 1 203 0 134 1 204] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 105 0 4] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 109 0 126] 
#[1 5 65 0 2 0 166 0 3 0 166 0 4 0 166 0 5 5 113 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 166 0 20 0 166 0 21 5 117 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 38 0 166 0 40 0 166 0 41 0 166 0 42 5 121 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 48 0 166 0 50 0 166 0 51 0 166 0 52 0 166 0 80 0 166 0 83 0 166 0 92 0 166 0 115 0 166 0 116 0 205 0 125 0 18 0 126 0 166 0 127 0 166 0 128 5 125 0 152 0 245 0 153 5 129 0 165 5 133 0 168 0 166 1 202 5 81 1 203 0 166 1 204] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 182 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 202 1 204] 
#[1 5 65 0 2 0 186 0 3 0 186 0 4 0 186 0 5 5 137 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 20 0 186 0 21 5 141 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 40 0 186 0 41 0 186 0 42 5 121 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 50 0 186 0 51 0 186 0 52 0 186 0 80 0 186 0 83 0 186 0 92 0 186 0 115 0 186 0 116 0 205 0 125 0 18 0 126 0 186 0 127 0 186 0 128 5 145 0 152 0 245 0 153 5 149 0 165 5 153 0 168 0 186 1 202 5 81 1 203 0 186 1 204] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 15 0 202 0 16 0 202 0 17 0 202 0 18 0 202 0 20 0 202 0 21 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 40 0 202 0 41 0 202 0 42 5 121 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 202 0 50 0 202 0 51 0 202 0 52 0 202 0 80 0 202 0 83 0 202 0 92 0 202 0 115 0 202 0 116 0 202 0 127 0 202 0 128 5 157 0 168 0 202 1 202 0 202 1 204] 
#[1 0 206 0 3 0 206 0 5 0 206 0 7 0 206 0 8 0 206 0 9 5 221 0 10 0 206 0 11 0 206 0 12 5 221 0 13 0 206 0 14 0 206 0 15 5 221 0 16 5 221 0 17 0 206 0 18 0 206 0 20 0 206 0 21 5 221 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 5 221 0 28 5 221 0 29 5 221 0 30 5 221 0 31 5 221 0 32 5 221 0 33 5 221 0 34 0 206 0 35 5 209 0 36 0 206 0 37 5 213 0 38 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 50 0 206 0 51 5 217 0 52 0 206 0 80 0 206 0 83 0 206 0 92 0 206 0 115 0 206 0 116 0 206 0 127 0 206 0 128 5 221 0 191 5 221 1 202 0 206 1 204] 
#[0 0 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 11 0 214 0 12 0 214 0 14 0 214 0 15 0 214 0 18 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 25 0 214 0 26 5 229 0 27 0 214 0 35 0 214 0 37 0 214 0 40 0 214 0 41 0 214 0 42 0 214 0 44 0 214 0 45 0 214 0 46 0 214 0 47 0 214 0 48 0 214 0 50 0 214 0 51 0 214 0 80 0 214 0 83 0 214 0 92 0 214 0 115 0 214 0 116 0 214 0 127 0 214 0 128 0 214 1 204] 
#[0 0 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 5 245 0 9 0 222 0 11 0 222 0 12 0 222 0 14 0 222 0 15 0 222 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 5 245 0 26 0 222 0 35 0 222 0 37 0 222 0 40 0 222 0 41 0 222 0 42 0 222 0 44 5 245 0 45 0 222 0 46 0 222 0 47 0 222 0 48 0 222 0 50 0 222 0 51 0 222 0 80 0 222 0 83 0 222 0 92 0 222 0 115 0 222 0 116 0 222 0 127 0 222 0 128 5 245 0 176 0 222 1 204] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 0 226 0 11 0 226 0 12 0 226 0 14 0 226 0 15 0 226 0 18 0 226 0 20 0 226 0 21 0 226 0 24 0 226 0 25 5 249 0 35 5 253 0 37 0 226 0 40 0 226 0 41 0 226 0 42 0 226 0 44 0 226 0 46 0 226 0 47 0 226 0 48 0 226 0 50 0 226 0 51 0 226 0 80 0 226 0 83 0 226 0 92 0 226 0 115 0 226 0 116 0 226 0 127 0 226 0 128 0 226 1 204] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 0 230 0 11 6 1 0 12 0 230 0 14 6 5 0 15 6 9 0 18 0 230 0 20 0 230 0 21 0 230 0 24 0 230 0 25 0 230 0 40 0 230 0 41 0 230 0 42 0 230 0 44 0 230 0 46 0 230 0 47 0 230 0 48 0 230 0 50 0 230 0 51 0 230 0 80 0 230 0 83 0 230 0 92 0 230 0 115 0 230 0 116 0 230 0 127 0 230 0 128 0 230 1 204] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 6 13 0 11 6 17 0 14 6 21 0 20 6 25 0 21 0 234 0 24 0 234 0 25 0 234 0 40 0 234 0 41 0 234 0 42 0 234 0 44 0 234 0 46 0 234 0 47 0 234 0 48 0 234 0 50 0 234 0 51 6 29 0 80 6 33 0 83 0 234 0 92 0 234 0 115 0 234 0 116 0 234 0 127 0 234 0 128 0 234 1 204] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 6 37 0 24 6 41 0 25 0 238 0 40 0 238 0 41 0 238 0 42 0 238 0 44 0 238 0 46 0 238 0 47 0 238 0 48 6 45 0 50 6 49 0 51 0 238 0 92 0 238 0 115 0 238 0 116 0 238 0 127 0 238 0 128 0 238 1 204] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 6 53 0 40 0 242 0 41 0 242 0 42 0 242 0 44 0 242 0 46 0 242 0 47 0 242 0 48 0 242 0 92 0 242 0 115 0 242 0 116 0 242 0 127 0 242 0 128 0 242 1 204] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 42 0 246 0 44 0 246 0 46 0 246 0 47 6 57 0 48 0 246 0 92 0 246 0 115 0 246 0 116 0 246 0 127 0 246 0 128 0 246 1 204] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 0 250 0 41 0 250 0 42 0 254 0 44 6 61 0 46 0 250 0 47 0 250 0 92 0 250 0 115 0 250 0 116 0 250 0 127 0 250 0 128 0 250 1 204] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 6 65 0 41 1 2 0 42 1 2 0 47 1 2 0 92 1 2 0 115 1 2 0 116 1 2 0 127 1 2 0 128 1 2 1 204] 
#[1 1 6 0 3 1 6 0 5 1 6 0 7 1 6 0 8 1 6 0 42 6 69 0 47 1 6 0 92 1 6 0 115 1 6 0 116 1 6 0 127 1 6 0 128 1 6 1 204] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 1 10 0 42 1 14 0 44 1 10 0 92 1 10 0 115 1 10 0 116 1 10 0 127 1 10 0 128 1 10 1 204] 
#[0 6 73 0 44] 
#[1 1 18 0 3 1 18 0 5 1 18 0 7 1 18 0 8 6 77 0 42 1 18 0 92 1 18 0 115 1 18 0 116 1 18 0 127 1 18 0 128 1 18 1 204] 
#[0 1 22 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 26 0 3 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 6 81 0 115 0 0 1 204] 
#[0 1 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 34 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 85 0 19] 
#[0 1 38 0 19] 
#[0 1 42 0 19] 
#[0 1 46 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 54 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 66 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[1 1 102 0 4 1 102 0 129 1 102 0 131 6 89 1 78] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 93 0 129] 
#[1 6 97 0 2 6 101 0 11 6 105 0 76 6 109 1 82 6 113 1 125] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 117 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 121 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 0 6 1 203] 
#[0 1 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 1 114 0 8 1 114 0 118 6 125 0 228] 
#[1 1 114 0 8 1 114 0 118 6 129 0 228] 
#[0 6 133 0 8] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 6 137 0 193 6 137 0 196 6 137 0 197 6 137 0 198 6 137 0 206 6 137 0 220 6 137 0 221 6 137 0 222 6 137 0 223 6 137 0 226 6 137 0 227 6 137 0 229 6 137 0 230 6 137 0 231 6 137 0 236 6 137 0 238 6 137 0 239 6 137 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 6 141 0 2 6 145 0 54] 
#[0 6 149 0 2] 
#[1 1 114 0 1 1 114 0 2 1 114 0 4 1 114 0 6 1 114 0 8 1 114 0 35 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 49 1 114 0 53 1 114 0 54 1 114 0 58 1 114 0 66 1 114 0 72 1 114 0 76 1 114 0 79 1 114 0 89 1 114 0 90 1 114 0 100 1 114 0 103 1 114 0 105 1 114 0 108 1 114 0 110 1 114 0 113 1 114 0 118 1 114 0 121 1 114 0 122 1 114 0 123 1 114 0 125 1 114 0 126 1 114 0 129 6 153 0 228 1 114 1 203] 
#[0 6 157 0 2] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 6 161 0 189 6 161 0 190 6 161 0 192 0 249 0 245 6 161 0 253 1 121 0 254 1 125 0 255 1 129 1 2 6 161 1 3 0 249 1 9 6 161 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 1 205 0 4 6 165 0 198] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 6 169 0 134 6 173 0 207 6 177 0 208 6 181 0 209 6 181 0 210 6 181 0 211 6 185 1 203] 
#[0 6 189 0 2] 
#[0 6 193 0 2] 
#[1 0 110 0 2 0 110 0 6 0 110 0 8 0 110 0 9 0 110 0 10 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 16 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 21 0 110 0 22 0 110 0 23 0 110 0 24 0 110 0 25 0 110 0 26 0 110 0 27 0 110 0 28 0 110 0 29 0 110 0 30 0 110 0 31 0 110 0 32 0 110 0 33 0 110 0 34 0 110 0 35 0 110 0 36 0 110 0 37 0 110 0 38 0 110 0 40 0 110 0 41 0 110 0 42 0 110 0 43 0 110 0 44 0 110 0 45 0 110 0 46 0 110 0 47 0 110 0 48 0 110 0 50 0 110 0 51 0 110 0 52 0 110 0 80 0 110 0 83 0 110 0 115 6 197 0 116 0 110 0 125 0 110 0 126 0 110 1 202 0 110 1 203] 
#[1 6 201 0 8 6 81 0 115] 
#[0 0 0 1 204] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 205 0 200 0 57 0 201 6 205 0 202 0 65 0 203 0 6 1 203 1 186 1 204] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 0 1 204] 
#[0 1 194 1 204] 
#[0 0 0 1 204] 
#[1 5 5 0 4 5 9 0 71 0 189 0 118 6 209 0 134 6 213 1 23 5 21 1 24 5 25 1 203] 
#[0 6 217 0 58] 
#[1 0 46 0 4 0 46 0 6 6 221 0 69 0 46 0 118 0 46 1 203] 
#[1 6 225 0 58 6 229 0 60 2 125 0 69 6 233 0 76 6 237 0 86 6 241 0 87 6 245 0 88 6 249 0 109 7 13 1 147 7 1 1 185 7 5 1 188 7 9 1 189 7 13 1 195 7 17 1 196] 
#[1 0 189 0 118 7 21 0 134] 
#[1 3 185 0 4 7 25 0 23 7 29 0 26 3 197 0 58 2 113 0 59 2 117 0 60 7 33 0 64 7 37 0 65 2 125 0 69 3 205 0 76 7 41 0 79 2 141 0 84 0 65 0 86 2 145 0 88 2 149 0 107 1 253 0 109 7 45 0 202 0 65 0 203 7 49 0 206 7 53 0 244 7 57 1 8 7 61 1 21 7 65 1 34 7 69 1 46 7 73 1 124 7 77 1 133 7 81 1 147 7 85 1 152 7 89 1 158 7 93 1 184 7 97 1 203] 
#[1 7 101 0 2 7 105 0 26 0 189 0 118 7 109 0 134] 
#[1 5 45 0 2 4 1 0 4 4 5 0 26 0 189 0 118 4 29 0 121 7 113 0 134 4 13 1 35 4 17 1 36 4 21 1 37 4 25 1 38 4 29 1 42 4 17 1 43 4 29 1 51] 
#[1 0 189 0 118 7 117 0 134] 
#[1 0 189 0 118 7 121 0 134 7 125 1 153] 
#[1 0 189 0 118 7 129 0 134] 
#[0 1 198 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 202 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 206 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 1 218 0 1 1 218 0 2 1 218 0 4 1 218 0 6 1 218 0 8 1 218 0 35 1 218 0 36 1 218 0 37 1 218 0 38 1 218 0 39 1 218 0 49 1 218 0 53 1 218 0 54 1 218 0 55 1 218 0 58 1 218 0 59 1 218 0 60 1 218 0 62 1 218 0 63 0 27 0 64 1 218 0 66 1 218 0 67 1 218 0 69 0 27 0 70 1 218 0 72 1 218 0 74 1 218 0 76 1 218 0 78 0 27 0 79 0 27 0 84 1 218 0 86 0 27 0 88 1 218 0 89 1 218 0 90 1 218 0 96 1 218 0 100 1 218 0 101 1 218 0 103 1 218 0 104 1 218 0 105 1 218 0 106 0 27 0 107 1 218 0 108 1 218 0 109 1 218 0 110 1 218 0 111 1 218 0 112 1 218 0 113 1 218 0 118 1 218 0 121 1 218 0 122 1 218 0 123 1 218 0 125 1 218 0 126 1 218 0 129 1 218 1 203 0 27 1 204] 
#[1 1 226 0 1 1 226 0 2 1 226 0 4 1 226 0 6 1 226 0 8 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 39 1 226 0 49 1 226 0 53 1 226 0 54 1 226 0 55 1 226 0 58 1 226 0 59 1 226 0 60 1 226 0 62 1 226 0 63 0 31 0 64 1 226 0 66 1 226 0 67 1 226 0 69 0 31 0 70 1 226 0 72 1 226 0 74 1 226 0 76 1 226 0 78 0 31 0 79 0 31 0 84 1 226 0 86 0 31 0 88 1 226 0 89 1 226 0 90 1 226 0 96 1 226 0 100 1 226 0 101 1 226 0 103 1 226 0 104 1 226 0 105 1 226 0 106 0 31 0 107 1 226 0 108 1 226 0 109 1 226 0 110 1 226 0 111 1 226 0 112 1 226 0 113 1 226 0 118 1 226 0 121 1 226 0 122 1 226 0 123 1 226 0 125 1 226 0 126 1 226 0 129 1 226 1 203 0 31 1 204] 
#[1 1 234 0 1 1 234 0 2 1 234 0 4 1 234 0 6 1 234 0 8 1 234 0 35 1 234 0 36 1 234 0 37 1 234 0 38 1 234 0 39 1 234 0 49 1 234 0 53 1 234 0 54 1 234 0 55 1 234 0 58 1 234 0 59 1 234 0 60 1 234 0 62 1 234 0 63 0 35 0 64 1 234 0 66 1 234 0 67 1 234 0 69 0 35 0 70 1 234 0 72 1 234 0 74 1 234 0 76 1 234 0 78 0 35 0 79 0 35 0 84 1 234 0 86 0 35 0 88 1 234 0 89 1 234 0 90 1 234 0 96 1 234 0 100 1 234 0 101 1 234 0 103 1 234 0 104 1 234 0 105 1 234 0 106 0 35 0 107 1 234 0 108 1 234 0 109 1 234 0 110 1 234 0 111 1 234 0 112 1 234 0 113 1 234 0 118 1 234 0 121 1 234 0 122 1 234 0 123 1 234 0 125 1 234 0 126 1 234 0 129 1 234 1 203 0 35 1 204] 
#[0 1 242 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 1 246 0 1 1 246 0 2 1 246 0 4 1 246 0 6 1 246 0 8 1 246 0 35 1 246 0 36 1 246 0 37 1 246 0 38 1 246 0 39 1 246 0 49 1 246 0 53 1 246 0 54 1 246 0 55 1 246 0 58 1 246 0 59 1 246 0 60 1 246 0 62 1 246 0 63 0 39 0 64 1 246 0 66 1 246 0 67 1 246 0 69 0 39 0 70 1 246 0 72 1 246 0 74 1 246 0 76 1 246 0 78 0 39 0 79 0 39 0 84 1 246 0 86 0 39 0 88 1 246 0 89 1 246 0 90 1 246 0 96 1 246 0 100 1 246 0 101 1 246 0 103 1 246 0 104 1 246 0 105 1 246 0 106 0 39 0 107 1 246 0 108 1 246 0 109 1 246 0 110 1 246 0 111 1 246 0 112 1 246 0 113 1 246 0 118 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 129 1 246 1 203 0 39 1 204] 
#[1 0 43 0 1 0 43 0 2 0 43 0 4 0 43 0 6 0 43 0 8 0 43 0 35 0 43 0 36 0 43 0 37 0 43 0 38 0 43 0 39 0 43 0 49 0 43 0 53 0 43 0 54 0 43 0 55 0 43 0 58 0 43 0 59 0 43 0 60 0 43 0 62 0 43 0 63 0 47 0 64 0 43 0 66 0 43 0 67 0 43 0 69 0 47 0 70 0 43 0 72 0 43 0 74 0 43 0 76 0 43 0 78 0 47 0 79 0 47 0 84 0 43 0 86 0 47 0 88 0 43 0 89 0 43 0 90 0 43 0 96 0 43 0 100 0 43 0 101 0 43 0 103 0 43 0 104 0 43 0 105 0 43 0 106 0 47 0 107 0 43 0 108 0 43 0 109 0 43 0 110 0 43 0 111 0 43 0 112 0 43 0 113 0 43 0 118 0 43 0 121 0 43 0 122 0 43 0 123 0 43 0 125 0 43 0 126 0 43 0 129 0 43 1 203 0 47 1 204] 
#[0 0 0 1 204] 
#[0 2 10 1 204] 
#[0 2 14 1 204] 
#[0 2 18 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 2 109 0 58 2 113 0 59 2 117 0 60 1 217 0 62 1 221 0 63 2 121 0 64 0 141 0 66 1 225 0 67 2 125 0 69 1 165 0 72 1 229 0 74 2 133 0 76 1 233 0 78 7 133 0 79 2 141 0 84 0 65 0 86 2 145 0 88 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 2 149 0 107 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 7 153 0 193 7 153 0 196 7 153 0 197 7 153 0 198 7 153 0 202 0 65 0 203 7 153 0 206 7 153 0 220 7 153 0 221 7 153 0 222 7 153 0 223 7 153 0 226 7 153 0 227 7 153 0 229 7 153 0 230 7 153 0 231 7 153 0 236 7 153 0 238 7 153 0 239 7 153 0 243 7 153 0 244 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 7 153 1 8 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 7 153 1 21 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 7 153 1 124 7 153 1 133 7 153 1 147 7 153 1 152 7 153 1 158 7 153 1 165 7 153 1 166 7 153 1 184 7 153 1 200 3 45 1 203 2 22 1 204] 
#[0 2 26 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 51 0 1 0 51 0 2 0 51 0 4 0 51 0 6 0 51 0 8 0 51 0 35 0 51 0 36 0 51 0 37 0 51 0 38 0 51 0 39 0 51 0 49 0 51 0 53 0 51 0 54 0 51 0 55 0 51 0 58 0 51 0 59 0 51 0 60 0 51 0 62 0 51 0 63 0 51 0 64 0 51 0 66 0 51 0 67 0 51 0 69 2 34 0 70 0 51 0 72 0 51 0 74 0 51 0 76 0 51 0 78 0 51 0 79 0 51 0 84 0 51 0 86 0 51 0 88 0 51 0 89 0 51 0 90 0 51 0 96 0 51 0 100 0 51 0 101 0 51 0 103 0 51 0 104 0 51 0 105 0 51 0 106 0 51 0 107 0 51 0 108 0 51 0 109 0 51 0 110 0 51 0 111 0 51 0 112 0 51 0 113 0 51 0 118 0 51 0 121 0 51 0 122 0 51 0 123 0 51 0 125 0 51 0 126 0 51 0 129 0 51 1 203 0 51 1 204] 
#[0 2 38 1 204] 
#[1 2 121 0 64 7 169 0 79 2 141 0 84 2 145 0 88 2 149 0 107 7 189 1 124 7 189 1 133 7 189 1 152 7 189 1 158 7 189 1 169 7 189 1 170 7 189 1 184 7 189 1 200 2 42 1 204] 
#[0 2 46 0 64 0 79 0 84 0 88 0 107 1 204] 
#[1 0 55 0 64 2 54 0 70 0 55 0 79 0 55 0 84 0 55 0 88 0 55 0 107 0 55 1 204] 
#[0 2 58 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 2 109 0 58 2 113 0 59 2 117 0 60 1 217 0 62 1 221 0 63 7 33 0 64 0 141 0 66 1 225 0 67 2 125 0 69 7 205 0 70 1 165 0 72 1 229 0 74 2 133 0 76 1 233 0 78 2 137 0 79 2 141 0 84 0 65 0 86 2 145 0 88 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 2 149 0 107 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 7 221 0 193 7 221 0 196 7 221 0 197 7 221 0 198 7 221 0 202 0 65 0 203 7 221 0 206 7 221 0 220 7 221 0 221 7 221 0 222 7 221 0 223 7 221 0 226 7 221 0 227 7 221 0 229 7 221 0 230 7 221 0 231 7 221 0 236 7 221 0 238 7 221 0 239 7 221 0 243 7 221 0 244 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 7 221 1 8 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 7 221 1 21 0 249 1 22 7 221 1 34 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 7 221 1 124 7 221 1 133 7 221 1 147 7 221 1 152 7 213 1 158 7 221 1 166 7 221 1 173 7 221 1 177 7 221 1 178 7 221 1 180 7 221 1 182 7 221 1 183 7 221 1 184 3 45 1 203 2 62 1 204] 
#[0 2 66 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 70 1 204] 
#[1 2 74 0 5 7 33 0 64 7 233 0 70 7 41 0 79 2 141 0 84 2 145 0 88 2 149 0 107 7 245 1 34 7 245 1 124 7 245 1 133 7 245 1 152 7 245 1 158 7 245 1 170 7 245 1 176 7 245 1 179 7 245 1 181 7 245 1 182 7 245 1 183 7 245 1 184 2 74 1 204] 
#[0 2 78 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 82 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 86 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 90 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 94 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 98 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 2 102 0 1 2 102 0 2 2 102 0 4 2 102 0 6 2 102 0 8 2 102 0 35 2 102 0 36 2 102 0 37 2 102 0 38 2 102 0 39 2 102 0 49 2 102 0 53 2 102 0 54 2 102 0 55 2 102 0 58 2 102 0 59 2 102 0 60 2 102 0 62 2 102 0 63 0 59 0 64 2 102 0 66 2 102 0 67 2 102 0 69 0 59 0 70 2 102 0 72 2 102 0 74 2 102 0 76 2 102 0 78 0 59 0 79 0 59 0 84 2 102 0 86 0 59 0 88 2 102 0 89 2 102 0 90 2 102 0 96 2 102 0 100 2 102 0 101 2 102 0 103 2 102 0 104 2 102 0 105 2 102 0 106 0 59 0 107 2 102 0 108 2 102 0 109 2 102 0 110 2 102 0 111 2 102 0 112 2 102 0 113 2 102 0 118 2 102 0 121 2 102 0 122 2 102 0 123 2 102 0 125 2 102 0 126 2 102 0 129 2 102 1 203 0 59 1 204] 
#[1 2 110 0 1 2 110 0 2 2 110 0 4 2 110 0 6 2 110 0 8 2 110 0 35 2 110 0 36 2 110 0 37 2 110 0 38 2 110 0 39 2 110 0 49 2 110 0 53 2 110 0 54 2 110 0 55 2 110 0 58 2 110 0 59 2 110 0 60 2 110 0 62 2 110 0 63 0 63 0 64 2 110 0 66 2 110 0 67 2 110 0 69 0 63 0 70 2 110 0 72 2 110 0 74 2 110 0 76 2 110 0 78 0 63 0 79 0 63 0 84 2 110 0 86 0 63 0 88 2 110 0 89 2 110 0 90 2 110 0 96 2 110 0 100 2 110 0 101 2 110 0 103 2 110 0 104 2 110 0 105 2 110 0 106 0 63 0 107 2 110 0 108 2 110 0 109 2 110 0 110 2 110 0 111 2 110 0 112 2 110 0 113 2 110 0 118 2 110 0 121 2 110 0 122 2 110 0 123 2 110 0 125 2 110 0 126 2 110 0 129 2 110 1 203 0 63 1 204] 
#[1 2 118 0 1 2 118 0 2 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 2 118 0 39 2 118 0 49 2 118 0 53 2 118 0 54 2 118 0 55 2 118 0 58 2 118 0 59 2 118 0 60 2 118 0 62 2 118 0 63 0 67 0 64 2 118 0 66 2 118 0 67 2 118 0 69 0 67 0 70 2 118 0 72 2 118 0 74 2 118 0 76 2 118 0 78 0 67 0 79 0 67 0 84 2 118 0 86 0 67 0 88 2 118 0 89 2 118 0 90 2 118 0 96 2 118 0 100 2 118 0 101 2 118 0 103 2 118 0 104 2 118 0 105 2 118 0 106 0 67 0 107 2 118 0 108 2 118 0 109 2 118 0 110 2 118 0 111 2 118 0 112 2 118 0 113 2 118 0 118 2 118 0 121 2 118 0 122 2 118 0 123 2 118 0 125 2 118 0 126 2 118 0 129 2 118 1 203 0 67 1 204] 
#[1 2 126 0 1 2 126 0 2 2 126 0 4 2 126 0 6 2 126 0 8 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 38 2 126 0 39 2 126 0 49 2 126 0 53 2 126 0 54 2 126 0 55 2 126 0 58 2 126 0 59 2 126 0 60 2 126 0 62 2 126 0 63 0 71 0 64 2 126 0 66 2 126 0 67 2 126 0 69 2 126 0 72 2 126 0 74 2 126 0 76 2 126 0 78 0 71 0 79 0 71 0 84 2 126 0 86 0 71 0 88 2 126 0 89 2 126 0 90 2 126 0 96 2 126 0 100 2 126 0 101 2 126 0 103 2 126 0 104 2 126 0 105 2 126 0 106 0 71 0 107 2 126 0 108 2 126 0 109 2 126 0 110 2 126 0 111 2 126 0 112 2 126 0 113 2 126 0 118 2 126 0 121 2 126 0 122 2 126 0 123 2 126 0 125 2 126 0 126 2 126 0 129 2 126 1 203 0 71 1 204] 
#[1 6 97 0 2 6 101 0 11 8 1 0 76 0 189 0 118 8 5 0 134 8 9 1 82 6 113 1 125] 
#[1 3 49 0 2 0 86 0 3 8 13 0 4 8 17 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 4 125 0 114 0 189 0 118 3 93 0 121 3 97 0 122 8 21 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 8 25 0 247 4 161 0 248 4 165 0 249 4 169 0 250 3 93 1 51 3 97 1 52 3 101 1 82 8 29 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 8 29 1 110 8 29 1 111 3 121 1 112 3 121 1 114 8 33 1 203] 
#[1 8 37 0 2 8 41 0 5 8 45 0 6 3 61 0 11 8 49 0 89 8 53 0 119 8 73 0 121 8 77 0 122 8 61 0 135 8 61 0 147 8 61 0 148 8 61 0 149 8 73 1 51 8 77 1 52 8 81 1 82 8 85 1 101 8 89 1 102 8 93 1 103 8 93 1 115 8 93 1 117 8 93 1 121 8 93 1 122 8 93 1 123] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 8 125 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 8 121 1 106 8 125 1 107 3 109 1 108 3 113 1 109 8 125 1 110 8 125 1 111 3 121 1 112 3 121 1 114] 
#[1 0 189 0 118 8 129 0 134 8 133 1 83 8 137 1 84] 
#[1 8 141 0 2 3 53 0 4 3 57 0 6 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 8 145 1 93 8 145 1 94 8 145 1 95 8 145 1 96 8 145 1 97 3 141 1 98 3 145 1 99 8 145 1 100 8 145 1 104 8 145 1 105 8 145 1 112 8 145 1 114] 
#[1 8 141 0 2 3 53 0 4 3 57 0 6 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 8 149 1 93 8 149 1 94 8 149 1 95 8 149 1 96 8 149 1 97 3 141 1 98 3 145 1 99 8 149 1 100 8 149 1 104 8 149 1 105 8 149 1 112 8 149 1 114] 
#[1 8 153 0 2 3 61 0 11 8 157 1 82] 
#[0 2 134 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 0 189 0 118 8 161 0 134 8 165 1 113] 
#[0 2 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 2 142 0 3 2 142 0 4 2 142 0 5 2 142 0 6 2 142 0 7 2 142 0 8 2 142 0 9 2 142 0 11 2 142 0 12 2 142 0 14 2 142 0 15 2 142 0 18 2 142 0 19 2 142 0 20 2 142 0 21 2 146 0 22 2 142 0 23 2 142 0 24 2 142 0 25 2 142 0 26 2 142 0 27 2 142 0 35 2 142 0 37 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 44 2 142 0 45 2 142 0 46 2 142 0 47 2 142 0 48 2 142 0 50 2 142 0 51 2 142 0 61 2 142 0 80 2 142 0 82 2 142 0 83 2 142 0 92 2 142 0 93 2 142 0 94 2 142 0 95 2 142 0 98 2 142 0 115 2 142 0 116 2 142 0 119 2 142 0 121 2 142 0 122 2 142 0 127 2 142 0 128 2 142 1 204] 
#[0 2 150 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 154 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 8 169 0 2] 
#[0 0 0 1 204] 
#[1 2 158 0 3 2 158 0 4 2 158 0 5 2 158 0 6 2 158 0 7 2 158 0 8 2 158 0 9 2 158 0 11 2 158 0 12 2 158 0 14 2 158 0 15 2 158 0 18 2 158 0 19 2 158 0 20 2 158 0 21 2 158 0 23 2 158 0 24 2 158 0 25 2 158 0 26 2 158 0 27 2 158 0 35 2 158 0 37 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 44 2 158 0 45 0 75 0 46 2 158 0 47 2 158 0 48 2 158 0 50 2 158 0 51 2 158 0 61 2 158 0 80 2 158 0 83 2 158 0 92 2 158 0 93 2 158 0 94 2 158 0 95 2 158 0 98 2 158 0 115 2 158 0 116 2 158 0 119 2 158 0 121 2 158 0 122 2 158 0 127 2 158 0 128 2 158 1 204] 
#[1 2 162 0 3 2 162 0 4 2 162 0 5 2 162 0 6 2 162 0 7 2 162 0 8 2 162 0 9 2 162 0 11 2 162 0 12 2 162 0 14 2 162 0 15 2 162 0 18 2 162 0 19 2 162 0 20 2 162 0 21 2 162 0 23 2 162 0 24 2 162 0 25 2 162 0 26 2 162 0 27 2 162 0 35 2 162 0 37 0 79 0 40 2 162 0 41 2 162 0 42 2 162 0 44 2 162 0 45 2 162 0 46 2 162 0 47 2 162 0 48 2 162 0 50 2 162 0 51 2 162 0 61 2 162 0 80 2 162 0 83 2 162 0 92 2 162 0 93 2 162 0 94 2 162 0 95 2 162 0 98 2 162 0 115 2 162 0 116 2 162 0 119 2 162 0 121 2 162 0 122 2 162 0 127 2 162 0 128 2 162 1 204] 
#[0 2 166 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 2 170 0 3 2 170 0 4 2 170 0 5 0 83 0 6 2 170 0 7 2 170 0 8 2 170 0 9 2 170 0 11 2 170 0 12 2 170 0 14 2 170 0 15 2 170 0 18 2 170 0 19 2 170 0 20 2 170 0 21 2 170 0 23 2 170 0 24 2 170 0 25 2 170 0 26 2 170 0 27 2 170 0 35 2 170 0 37 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 44 2 170 0 45 2 170 0 46 2 170 0 47 2 170 0 48 2 170 0 50 2 170 0 51 2 170 0 61 2 170 0 80 2 170 0 83 2 170 0 92 2 170 0 93 2 170 0 94 2 170 0 95 2 170 0 98 2 170 0 115 2 170 0 116 2 170 0 119 2 170 0 121 2 170 0 122 2 170 0 127 2 170 0 128 8 181 0 228 2 170 1 204] 
#[0 2 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 182 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 186 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 1 114 0 3 1 114 0 4 1 114 0 5 1 114 0 6 1 114 0 7 1 114 0 8 1 114 0 9 1 114 0 11 1 114 0 12 1 114 0 14 1 114 0 15 1 114 0 18 1 114 0 19 1 114 0 20 1 114 0 21 1 114 0 23 1 114 0 24 1 114 0 25 1 114 0 26 1 114 0 27 1 114 0 35 1 114 0 37 1 114 0 40 1 114 0 41 1 114 0 42 1 114 0 44 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 48 1 114 0 50 1 114 0 51 1 114 0 61 1 114 0 80 1 114 0 82 1 114 0 83 1 114 0 92 1 114 0 93 1 114 0 94 1 114 0 95 1 114 0 98 1 114 0 115 1 114 0 116 1 114 0 119 1 114 0 121 1 114 0 122 1 114 0 127 1 114 0 128 8 185 0 228 1 114 1 204] 
#[0 8 189 0 22] 
#[0 2 190 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 194 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 206 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 210 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 214 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 8 193 0 5 8 197 0 119 8 201 1 47 8 205 1 48] 
#[1 8 209 0 52 2 226 0 75] 
#[0 8 213 0 76] 
#[1 5 5 0 4 5 9 0 71 0 189 0 118 8 217 0 134 8 221 1 23 5 21 1 24 5 25 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 8 225 0 189 8 225 0 190 0 249 0 245 8 225 0 253 1 121 0 254 1 125 0 255 1 129 1 2 8 225 1 3 0 249 1 9 8 225 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 8 229 0 2 8 233 0 26 0 189 0 118 8 237 0 134] 
#[0 2 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 242 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 246 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 250 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 3 2 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 3 6 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 8 241 0 75 8 245 1 39] 
#[1 8 249 0 8 3 10 0 75] 
#[1 3 61 0 11 8 253 0 60 2 125 0 69 9 1 0 76 2 141 0 84 2 149 0 107 0 189 0 118 8 5 0 134 9 5 1 82 9 9 1 124 9 13 1 133 9 17 1 147] 
#[1 9 21 0 5 0 189 0 118 9 25 0 119 9 37 0 134 9 29 1 40 9 33 1 41 9 37 1 43] 
#[0 9 41 0 52] 
#[0 3 14 0 5 0 75 0 115] 
#[1 8 241 0 75 9 45 1 39] 
#[1 3 18 0 75 9 49 0 115] 
#[0 3 22 0 75] 
#[0 3 26 0 75] 
#[0 9 53 0 8] 
#[0 3 30 0 75 0 115] 
#[0 3 34 0 8] 
#[0 3 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 9 57 0 5 9 61 0 6 9 65 0 114 0 189 0 118 8 53 0 119 8 73 0 121 8 77 0 122 9 69 0 134 9 73 0 135 9 73 0 147 9 73 0 148 9 73 0 149 9 77 0 212 9 81 0 213 9 85 0 216 9 85 0 218 8 73 1 51 8 77 1 52 9 93 1 203] 
#[1 4 45 0 4 4 49 0 6 9 97 0 7 4 125 0 114 4 185 0 115 0 189 0 118 9 69 0 134 9 101 0 141 4 137 0 209 4 137 0 210 4 137 0 211 9 105 0 214 9 109 0 215 9 113 0 217 9 113 0 218 9 117 0 219 8 33 1 203] 
#[1 3 42 0 8 9 121 0 23 3 42 0 115 9 125 0 151] 
#[1 9 129 0 8 9 133 0 115] 
#[0 3 46 0 8 0 115] 
#[1 9 121 0 23 9 137 0 151] 
#[0 3 50 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 3 54 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 3 58 0 8 0 115] 
#[0 3 62 0 8 0 115] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 9 141 0 134 9 145 0 209 9 145 0 210 9 145 0 211] 
#[0 3 66 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 4 133 0 189 4 133 0 190 4 133 0 192 0 249 0 245 4 133 0 253 1 121 0 254 1 125 0 255 1 129 1 2 4 133 1 3 0 249 1 9 4 133 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 4 241 0 76] 
#[1 4 93 0 2 0 14 0 4 0 101 0 6 5 49 0 22 4 97 0 53 0 137 0 58 1 165 0 72 0 149 0 76 4 101 0 89 1 161 0 90 5 53 0 100 0 169 0 103 1 165 0 105 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 9 149 0 134 9 149 0 136 9 149 0 137 9 149 0 138 9 149 0 139 9 149 0 143 0 237 0 144 9 149 0 152 0 245 0 153 9 149 0 156 9 149 0 157 9 149 0 158 9 149 0 159 9 149 0 245 9 149 1 9 9 149 1 14 9 149 1 18 9 149 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 9 149 1 53 9 149 1 54 9 149 1 55 1 189 1 56 9 149 1 58 1 197 1 76 4 117 1 203] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 65 0 2 5 113 0 6 5 117 0 22 0 205 0 125 0 18 0 126 5 125 0 152 0 245 0 153 5 129 0 165 5 81 1 203] 
#[1 0 87 0 2 3 70 0 3 3 70 0 4 3 70 0 5 0 91 0 6 3 70 0 7 3 70 0 8 3 70 0 9 3 70 0 10 3 70 0 11 3 70 0 12 3 70 0 13 3 70 0 14 3 70 0 15 3 70 0 16 3 70 0 17 3 70 0 18 3 70 0 20 3 70 0 21 0 95 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 36 3 70 0 37 3 70 0 38 3 70 0 40 3 70 0 41 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 48 3 70 0 50 3 70 0 51 3 70 0 52 3 70 0 61 3 70 0 80 3 70 0 83 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 98 3 70 0 115 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 122 0 99 0 125 0 103 0 126 3 70 0 127 3 70 0 128 5 145 0 152 0 245 0 153 5 149 0 165 3 70 1 202 0 107 1 203 3 70 1 204] 
#[0 6 105 0 76] 
#[1 0 93 0 1 0 97 0 2 0 23 0 4 4 121 0 6 9 153 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 9 157 0 114 4 185 0 115 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 4 129 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 4 189 0 140 9 161 0 141 4 197 0 142 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 4 201 0 189 4 201 0 190 4 137 0 209 4 137 0 210 4 137 0 211 9 105 0 214 9 109 0 215 9 113 0 217 9 113 0 218 9 117 0 219 0 249 0 245 4 201 0 253 1 121 0 254 1 125 0 255 1 129 1 2 4 201 1 3 0 249 1 9 4 201 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 173 1 203] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 9 165 0 134 9 169 0 209 9 169 0 210 9 169 0 211] 
#[1 0 134 0 2 0 111 0 3 0 134 0 6 0 111 0 7 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 115 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 111 0 115 0 134 0 125 0 134 0 126 9 173 0 151 0 134 1 202 0 134 1 203] 
#[1 9 177 0 3 6 81 0 115] 
#[1 3 78 0 3 3 78 0 5 3 78 0 7 9 121 0 23 3 78 0 115 9 181 0 151] 
#[0 3 82 0 3 0 115] 
#[0 3 86 0 3 0 5 0 7 0 115] 
#[0 3 90 0 3] 
#[0 9 185 0 3] 
#[0 3 94 0 3] 
#[1 3 98 0 3 9 189 0 115] 
#[0 3 102 0 3] 
#[0 3 106 0 3 0 115] 
#[1 6 97 0 2 4 45 0 4 4 49 0 6 6 101 0 11 3 110 0 42 6 105 0 76 9 221 0 93 9 221 0 94 9 221 0 95 9 205 0 103 3 110 0 116 0 189 0 118 9 209 0 134 9 217 0 209 9 217 0 210 9 217 0 211 6 109 1 82 9 217 1 118 9 221 1 119 6 113 1 125] 
#[0 3 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 9 225 0 189 9 225 0 190 0 249 0 245 9 225 0 253 1 121 0 254 1 125 0 255 1 129 1 2 9 225 1 3 0 249 1 9 9 225 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 3 118 0 1 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 114 0 115 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 9 229 0 7 4 185 0 115 9 233 0 141] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 9 237 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 4 181 0 114 9 241 0 115 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 9 245 0 142 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 9 249 0 189 9 249 0 190 0 249 0 245 9 249 0 253 1 121 0 254 1 125 0 255 1 129 1 2 9 249 1 3 0 249 1 9 9 249 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 3 122 0 7 0 115] 
#[0 3 126 0 7 0 115] 
#[1 0 206 0 3 0 206 0 5 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 11 0 206 0 12 0 206 0 14 0 206 0 15 0 206 0 18 0 206 0 20 0 206 0 21 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 35 5 209 0 36 0 206 0 37 5 213 0 38 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 50 0 206 0 51 5 217 0 52 0 206 0 80 0 206 0 83 0 206 0 92 0 206 0 115 0 206 0 116 0 206 0 127 0 206 0 128 0 206 1 204] 
#[0 3 130 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 9 253 0 11 6 105 0 76] 
#[0 3 134 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 138 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 142 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 146 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 150 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 4 153 0 246 4 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 10 1 0 2 10 5 0 26 0 189 0 118 10 9 0 134] 
#[0 0 138 0 19] 
#[0 10 13 0 19] 
#[1 6 97 0 2 3 61 0 11 6 109 1 82 6 113 1 125] 
#[0 3 154 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 10 17 0 5 9 61 0 6 10 21 0 8 10 25 0 26 10 29 0 53 10 33 0 77 10 37 0 97 10 41 0 98 8 53 0 119 8 73 0 121 8 77 0 122 10 45 0 135 10 45 0 147 10 45 0 148 10 45 0 149 10 73 1 5 10 73 1 7 10 73 1 12 10 73 1 16 10 65 1 25 10 69 1 26 10 73 1 27 8 73 1 51 8 77 1 52 10 73 1 126 10 73 1 127 10 85 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 4 97 0 53 0 137 0 58 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 10 89 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 10 89 0 171 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 117 1 203] 
#[1 5 5 0 4 5 9 0 71 10 93 1 23 5 21 1 24 5 25 1 203] 
#[0 3 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 97 0 4] 
#[1 10 101 0 71 10 105 0 82 10 109 1 137 10 113 1 139] 
#[0 3 162 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 10 117 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 10 121 0 2 0 189 0 118 10 125 0 134] 
#[0 10 129 0 2] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 10 133 0 189 10 133 0 190 0 249 0 245 10 133 0 253 1 121 0 254 1 125 0 255 1 129 1 2 10 133 1 3 0 249 1 9 10 133 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 10 137 0 102] 
#[1 5 69 0 6 5 73 0 22] 
#[1 5 65 0 2 0 166 0 3 0 166 0 4 0 166 0 5 5 113 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 166 0 20 0 166 0 21 5 117 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 38 0 166 0 40 0 166 0 41 0 166 0 42 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 48 0 166 0 50 0 166 0 51 0 166 0 52 0 166 0 80 0 166 0 83 0 166 0 92 0 166 0 115 0 166 0 116 0 205 0 125 0 18 0 126 0 166 0 127 0 166 0 128 5 125 0 152 0 245 0 153 10 141 0 165 0 166 1 202 5 81 1 203 0 166 1 204] 
#[0 3 166 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 202 1 204] 
#[1 0 93 0 1 0 97 0 2 10 145 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 10 149 0 114 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 10 153 0 166 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 10 157 0 189 10 157 0 190 0 249 0 245 10 157 0 253 1 121 0 254 1 125 0 255 1 129 1 2 10 157 1 3 0 249 1 9 10 157 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 10 161 0 189 10 161 0 190 10 161 0 192 0 249 0 245 10 161 0 253 1 121 0 254 1 125 0 255 1 129 1 2 10 161 1 3 0 249 1 9 10 161 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 10 165 0 119] 
#[0 3 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 10 169 0 11 10 173 1 86] 
#[0 3 174 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 178 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 10 177 0 189 10 177 0 190 0 249 0 245 10 177 0 253 1 121 0 254 1 125 0 255 1 129 1 2 10 177 1 3 0 249 1 9 10 177 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 3 182 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 10 181 0 14] 
#[1 10 185 0 5 9 61 0 6 10 25 0 26 10 29 0 53 10 33 0 77 10 37 0 97 10 189 0 114 0 189 0 118 8 53 0 119 8 73 0 121 8 77 0 122 10 193 0 134 10 205 0 135 10 197 0 145 10 201 0 146 10 205 0 147 10 205 0 148 10 205 0 149 10 201 0 150 10 201 1 5 10 201 1 7 10 201 1 12 10 201 1 16 8 73 1 51 8 77 1 52 10 201 1 126 10 201 1 127 10 217 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 10 221 0 189 10 221 0 190 10 221 0 192 0 249 0 245 10 221 0 253 1 121 0 254 1 125 0 255 1 129 1 2 10 221 1 3 0 249 1 9 10 221 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 10 225 0 189 10 225 0 190 10 225 0 192 0 249 0 245 10 225 0 253 1 121 0 254 1 125 0 255 1 129 1 2 10 225 1 3 0 249 1 9 10 225 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 10 229 0 119] 
#[1 5 65 0 2 10 233 0 6 10 237 0 119 0 205 0 125 0 18 0 126 10 241 0 152 0 245 0 153 10 245 0 165 10 249 0 170 5 81 1 203] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 3 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 65 0 2 3 194 0 3 3 194 0 4 3 194 0 5 10 253 0 6 3 194 0 7 3 194 0 8 3 194 0 9 3 194 0 10 3 194 0 11 3 194 0 12 3 194 0 13 3 194 0 14 3 194 0 15 3 194 0 16 3 194 0 17 3 194 0 18 3 194 0 20 3 194 0 21 11 1 0 22 3 194 0 23 3 194 0 24 3 194 0 25 3 194 0 26 3 194 0 27 3 194 0 28 3 194 0 29 3 194 0 30 3 194 0 31 3 194 0 32 3 194 0 33 3 194 0 34 3 194 0 35 3 194 0 36 3 194 0 37 3 194 0 38 3 194 0 40 3 194 0 41 3 194 0 42 3 194 0 43 3 194 0 44 3 194 0 45 3 194 0 46 3 194 0 47 3 194 0 48 3 194 0 50 3 194 0 51 3 194 0 52 3 194 0 80 3 194 0 83 3 194 0 92 3 194 0 115 3 194 0 116 0 205 0 125 0 18 0 126 3 194 0 127 3 194 0 128 11 5 0 152 0 245 0 153 11 9 0 165 11 13 0 169 3 194 1 202 5 81 1 203 3 194 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 11 17 0 189 11 17 0 190 11 17 0 192 0 249 0 245 11 17 0 253 1 121 0 254 1 125 0 255 1 129 1 2 11 17 1 3 0 249 1 9 11 17 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 11 21 0 119] 
#[0 3 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 3 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 65 0 2 3 206 0 3 3 206 0 4 3 206 0 5 10 253 0 6 3 206 0 7 3 206 0 8 3 206 0 9 3 206 0 10 3 206 0 11 3 206 0 12 3 206 0 13 3 206 0 14 3 206 0 15 3 206 0 16 3 206 0 17 3 206 0 18 3 206 0 20 3 206 0 21 11 1 0 22 3 206 0 23 3 206 0 24 3 206 0 25 3 206 0 26 3 206 0 27 3 206 0 28 3 206 0 29 3 206 0 30 3 206 0 31 3 206 0 32 3 206 0 33 3 206 0 34 3 206 0 35 3 206 0 36 3 206 0 37 3 206 0 38 3 206 0 40 3 206 0 41 3 206 0 42 3 206 0 43 3 206 0 44 3 206 0 45 3 206 0 46 3 206 0 47 3 206 0 48 3 206 0 50 3 206 0 51 3 206 0 52 3 206 0 80 3 206 0 83 3 206 0 92 3 206 0 115 3 206 0 116 0 205 0 125 0 18 0 126 3 206 0 127 3 206 0 128 11 5 0 152 0 245 0 153 11 9 0 165 11 13 0 169 3 206 1 202 5 81 1 203 3 206 1 204] 
#[1 5 65 0 2 3 210 0 3 3 210 0 4 3 210 0 5 10 253 0 6 3 210 0 7 3 210 0 8 3 210 0 9 3 210 0 10 3 210 0 11 3 210 0 12 3 210 0 13 3 210 0 14 3 210 0 15 3 210 0 16 3 210 0 17 3 210 0 18 3 210 0 20 3 210 0 21 11 1 0 22 3 210 0 23 3 210 0 24 3 210 0 25 3 210 0 26 3 210 0 27 3 210 0 28 3 210 0 29 3 210 0 30 3 210 0 31 3 210 0 32 3 210 0 33 3 210 0 34 3 210 0 35 3 210 0 36 3 210 0 37 3 210 0 38 3 210 0 40 3 210 0 41 3 210 0 42 3 210 0 43 3 210 0 44 3 210 0 45 3 210 0 46 3 210 0 47 3 210 0 48 3 210 0 50 3 210 0 51 3 210 0 52 3 210 0 80 3 210 0 83 3 210 0 92 3 210 0 115 3 210 0 116 0 205 0 125 0 18 0 126 3 210 0 127 3 210 0 128 11 5 0 152 0 245 0 153 11 9 0 165 11 13 0 169 3 210 1 202 5 81 1 203 3 210 1 204] 
#[0 3 214 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 218 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 222 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 226 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 230 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 234 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 238 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 242 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 246 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 250 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 254 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 2 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 6 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 4 10 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 11 25 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 11 29 0 189 11 29 0 190 0 249 0 245 11 29 0 253 1 121 0 254 1 125 0 255 1 129 1 2 11 29 1 3 0 249 1 9 11 29 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 4 14 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 11 33 0 174 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[0 4 18 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 22 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 26 0 1 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 11 37 0 174 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 11 41 0 174 11 41 0 175 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 11 45 0 174 11 45 0 175 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 11 49 0 177 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 11 53 0 177 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 11 57 0 177 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 11 61 0 178 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 11 65 0 178 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 11 69 0 178 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 11 73 0 178 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 11 77 0 178 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 11 81 0 178 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 11 85 0 179 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 11 89 0 179 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 11 93 0 179 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 11 97 0 179 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 11 101 0 180 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 11 105 0 181 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 11 109 0 182 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 11 113 0 183 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 11 117 0 183 11 121 0 184 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 11 125 0 183 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 11 129 0 189 11 129 0 190 0 249 0 245 11 129 0 253 1 121 0 254 1 125 0 255 1 129 1 2 11 129 1 3 0 249 1 9 11 129 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 11 133 0 189 11 133 0 190 0 249 0 245 11 133 0 253 1 121 0 254 1 125 0 255 1 129 1 2 11 133 1 3 0 249 1 9 11 133 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 119 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 11 149 0 189 11 149 0 190 0 249 0 245 11 149 0 253 1 121 0 254 1 125 0 255 11 145 1 0 11 149 1 1 1 129 1 2 11 149 1 3 0 249 1 9 11 149 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 4 30 0 4 4 30 0 129 4 30 0 131 11 153 1 72 11 157 1 73] 
#[1 11 161 0 130 11 165 1 59 11 165 1 60 11 165 1 61 11 177 1 62 11 181 1 63] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 11 185 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 11 189 0 134 3 93 1 51 3 97 1 52 3 101 1 82 8 133 1 83 8 137 1 84 11 193 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 11 193 1 110 11 193 1 111 3 121 1 112 3 121 1 114] 
#[1 6 97 0 2 3 61 0 11 0 189 0 118 11 197 0 134 6 109 1 82 11 201 1 125] 
#[0 11 205 0 2] 
#[0 4 34 0 19] 
#[0 4 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 11 209 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 205 0 200 0 57 0 201 6 205 0 202 0 65 0 203 0 6 1 203] 
#[1 11 213 0 8 0 189 0 118 11 217 0 134] 
#[1 11 221 0 8 0 189 0 118 11 225 0 134] 
#[0 4 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 229 0 111] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 11 233 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 11 253 0 60 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 11 253 0 86 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 11 237 0 109 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 11 241 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 11 241 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 11 245 0 189 11 245 0 190 11 245 0 192 11 249 0 202 11 253 0 203 12 1 0 224 0 249 0 245 11 245 0 253 1 121 0 254 1 125 0 255 1 129 1 2 11 245 1 3 0 249 1 9 11 245 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 12 5 0 2] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 12 9 0 189 12 9 0 190 12 9 0 192 0 249 0 245 12 9 0 253 1 121 0 254 1 125 0 255 1 129 1 2 12 9 1 3 0 249 1 9 12 9 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 12 13 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 12 17 0 189 12 17 0 190 12 17 0 192 0 249 0 245 12 17 0 253 1 121 0 254 1 125 0 255 1 129 1 2 12 17 1 3 0 249 1 9 12 17 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 12 21 0 189 12 21 0 190 12 21 0 192 0 249 0 245 12 21 0 253 1 121 0 254 1 125 0 255 1 129 1 2 12 21 1 3 0 249 1 9 12 21 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 12 25 0 8 6 81 0 115] 
#[1 12 29 0 57 12 33 0 73 12 37 0 240 12 41 0 241] 
#[1 4 46 0 8 9 121 0 23 4 46 0 92 4 46 0 115 12 45 0 151] 
#[1 12 49 0 8 12 53 0 115] 
#[0 4 50 0 8 0 115] 
#[1 9 121 0 23 12 57 0 151] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 12 61 0 134 12 65 0 209 12 65 0 210 12 65 0 211 12 69 1 129 12 73 1 130] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 12 77 0 189 12 77 0 190 12 77 0 192 0 249 0 245 12 77 0 253 1 121 0 254 1 125 0 255 1 129 1 2 12 77 1 3 0 249 1 9 12 77 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 12 81 0 189 12 81 0 190 12 81 0 192 0 249 0 245 12 81 0 253 1 121 0 254 1 125 0 255 1 129 1 2 12 81 1 3 0 249 1 9 12 81 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 12 89 0 193 12 89 0 196 12 89 0 197 12 89 0 198 12 89 0 206 12 89 0 220 12 89 0 221 12 89 0 222 12 89 0 223 12 89 0 226 12 89 0 227 12 89 0 229 12 89 0 230 12 89 0 231 12 89 0 236 12 89 0 237 12 89 0 238 12 89 0 239 12 89 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 4 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 5 5 0 4 5 9 0 71 12 93 1 23 5 21 1 24 5 25 1 203] 
#[1 4 62 0 1 0 123 0 2 4 62 0 4 4 62 0 5 0 123 0 6 0 123 0 8 3 158 0 9 3 158 0 10 3 158 0 11 3 158 0 12 3 158 0 13 3 158 0 14 3 158 0 15 3 158 0 16 3 158 0 17 3 158 0 18 3 158 0 20 3 158 0 21 3 158 0 22 3 158 0 23 3 158 0 24 3 158 0 25 3 158 0 26 3 158 0 27 3 158 0 28 3 158 0 29 3 158 0 30 3 158 0 31 3 158 0 32 3 158 0 33 3 158 0 34 0 123 0 35 0 123 0 36 0 123 0 37 0 123 0 38 4 62 0 39 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 47 3 158 0 48 4 62 0 49 3 158 0 50 3 158 0 51 3 158 0 52 4 62 0 53 4 62 0 54 4 62 0 55 4 62 0 58 4 62 0 59 4 62 0 60 4 62 0 62 4 62 0 63 4 62 0 64 4 62 0 66 4 62 0 67 4 62 0 69 4 62 0 70 4 62 0 72 4 62 0 74 4 62 0 76 4 62 0 78 4 62 0 79 3 158 0 80 3 158 0 83 4 62 0 84 4 62 0 86 4 62 0 88 4 62 0 89 4 62 0 90 4 62 0 96 4 62 0 100 4 62 0 101 4 62 0 103 4 62 0 104 4 62 0 105 4 62 0 106 4 62 0 107 4 62 0 108 4 62 0 109 4 62 0 110 4 62 0 111 4 62 0 112 4 62 0 113 3 158 0 115 4 62 0 118 4 62 0 121 4 62 0 122 4 62 0 123 0 123 0 125 0 123 0 126 4 62 0 129 3 158 1 202 0 123 1 203 4 62 1 204] 
#[1 5 5 0 4 5 9 0 71 0 189 0 118 12 97 0 134 12 101 1 23 5 21 1 24 5 25 1 203] 
#[1 0 189 0 118 12 105 0 134] 
#[1 0 189 0 118 12 109 0 134] 
#[1 6 221 0 69 0 189 0 118 12 113 0 134 12 117 1 186 12 121 1 187] 
#[1 0 189 0 118 12 125 0 134] 
#[1 0 189 0 118 12 113 0 134 12 129 1 186 12 121 1 187] 
#[0 12 133 0 121 1 51] 
#[1 0 189 0 118 7 121 0 134 12 137 1 153] 
#[1 0 189 0 118 12 113 0 134 12 141 1 186 12 121 1 187] 
#[0 4 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 145 0 4] 
#[1 0 189 0 118 12 149 0 134] 
#[1 8 241 0 75 12 153 1 39] 
#[1 6 225 0 58 6 229 0 60 2 125 0 69 6 233 0 76 6 237 0 86 6 245 0 88 6 249 0 109 7 13 1 147 7 1 1 185 7 5 1 188 7 9 1 189 7 13 1 195 7 17 1 196] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 12 157 0 58 2 113 0 59 0 141 0 66 1 165 0 72 12 161 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 12 165 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 12 169 0 189 12 169 0 190 12 173 0 244 0 249 0 245 12 169 0 253 1 121 0 254 1 125 0 255 1 129 1 2 12 169 1 3 12 177 1 8 0 249 1 9 12 169 1 11 0 249 1 14 0 249 1 18 1 41 1 20 12 181 1 21 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 12 185 1 188 12 189 1 189 3 45 1 203] 
#[1 4 1 0 4 4 5 0 26 0 189 0 118 4 29 0 121 12 193 0 134 4 13 1 35 4 17 1 36 4 21 1 37 4 25 1 38 4 29 1 42 4 17 1 43 4 29 1 51] 
#[0 4 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 94 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 98 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 102 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 106 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 110 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 12 197 0 8 8 241 0 75 12 201 1 39] 
#[1 4 114 0 1 4 114 0 2 4 114 0 4 4 114 0 6 4 114 0 8 4 114 0 35 4 114 0 36 4 114 0 37 4 114 0 38 4 114 0 39 4 114 0 49 4 114 0 53 4 114 0 54 4 114 0 55 4 114 0 58 4 114 0 59 4 114 0 60 4 114 0 62 4 114 0 63 0 127 0 64 4 114 0 66 4 114 0 67 4 114 0 69 0 127 0 70 4 114 0 72 4 114 0 74 4 114 0 76 4 114 0 78 0 127 0 79 0 127 0 84 4 114 0 86 0 127 0 88 4 114 0 89 4 114 0 90 4 114 0 96 4 114 0 100 4 114 0 101 4 114 0 103 4 114 0 104 4 114 0 105 4 114 0 106 0 127 0 107 4 114 0 108 4 114 0 109 4 114 0 110 4 114 0 111 4 114 0 112 4 114 0 113 4 114 0 118 4 114 0 121 4 114 0 122 4 114 0 123 4 114 0 125 4 114 0 126 4 114 0 129 4 114 1 203 0 127 1 204] 
#[1 4 122 0 1 4 122 0 2 4 122 0 4 4 122 0 6 4 122 0 8 4 122 0 35 4 122 0 36 4 122 0 37 4 122 0 38 4 122 0 39 4 122 0 49 4 122 0 53 4 122 0 54 4 122 0 55 4 122 0 58 4 122 0 59 4 122 0 60 4 122 0 62 4 122 0 63 0 131 0 64 4 122 0 66 4 122 0 67 4 122 0 69 0 131 0 70 4 122 0 72 4 122 0 74 4 122 0 76 4 122 0 78 0 131 0 79 0 131 0 84 4 122 0 86 0 131 0 88 4 122 0 89 4 122 0 90 4 122 0 96 4 122 0 100 4 122 0 101 4 122 0 103 4 122 0 104 4 122 0 105 4 122 0 106 0 131 0 107 4 122 0 108 4 122 0 109 4 122 0 110 4 122 0 111 4 122 0 112 4 122 0 113 4 122 0 118 4 122 0 121 4 122 0 122 4 122 0 123 4 122 0 125 4 122 0 126 4 122 0 129 4 122 1 203 0 131 1 204] 
#[0 4 130 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 134 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 138 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 4 142 0 1 4 142 0 2 4 142 0 4 4 142 0 6 4 142 0 8 4 142 0 35 4 142 0 36 4 142 0 37 4 142 0 38 4 142 0 39 4 142 0 49 4 142 0 53 4 142 0 54 4 142 0 55 4 142 0 58 4 142 0 59 4 142 0 60 4 142 0 62 4 142 0 63 0 135 0 64 4 142 0 66 4 142 0 67 4 142 0 69 0 135 0 70 4 142 0 72 4 142 0 74 4 142 0 76 4 142 0 78 0 135 0 79 0 135 0 84 4 142 0 86 0 135 0 88 4 142 0 89 4 142 0 90 4 142 0 96 4 142 0 100 4 142 0 101 4 142 0 103 4 142 0 104 4 142 0 105 4 142 0 106 0 135 0 107 4 142 0 108 4 142 0 109 4 142 0 110 4 142 0 111 4 142 0 112 4 142 0 113 4 142 0 118 4 142 0 121 4 142 0 122 4 142 0 123 4 142 0 125 4 142 0 126 4 142 0 129 4 142 1 203 0 135 1 204] 
#[1 3 61 0 11 9 1 0 76 0 189 0 118 8 5 0 134 9 5 1 82] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 12 205 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 12 209 0 2 0 189 0 118 12 213 0 134] 
#[0 12 217 0 2] 
#[1 12 221 0 23 3 14 0 75 3 14 0 115] 
#[1 3 53 0 4 3 61 0 11 12 225 0 71 12 229 1 82 12 233 1 100 12 237 1 134] 
#[0 4 150 0 4 0 22] 
#[1 12 241 0 4 12 245 0 22] 
#[1 3 61 0 11 12 249 0 23 12 253 1 82] 
#[1 5 45 0 2 0 189 0 118 13 1 0 134] 
#[0 1 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 246 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 2 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 30 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 118 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 126 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 189 0 118 13 1 0 134] 
#[0 1 230 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 1 238 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 1 250 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 6 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 158 0 64 0 79 0 84 0 88 0 107 1 204] 
#[0 2 50 0 64 0 79 0 84 0 88 0 107 1 204] 
#[0 2 122 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 130 0 64 0 79 0 84 0 88 0 107 1 204] 
#[1 3 185 0 4 7 25 0 23 7 29 0 26 3 197 0 58 2 113 0 59 2 117 0 60 7 33 0 64 13 5 0 65 2 125 0 69 3 205 0 76 0 41 0 79 2 141 0 84 0 65 0 86 2 145 0 88 2 149 0 107 1 253 0 109 7 45 0 202 0 65 0 203 7 49 0 206 7 53 0 244 7 57 1 8 7 61 1 21 7 65 1 34 7 69 1 46 13 9 1 124 13 13 1 133 7 81 1 147 7 85 1 152 13 17 1 184 7 97 1 203] 
#[0 1 218 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 43 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 34 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 102 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 110 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 185 0 4 7 25 0 23 7 29 0 26 7 33 0 64 13 21 0 65 7 169 0 79 2 141 0 84 2 149 0 107 7 69 1 46 13 25 1 124 13 29 1 133 7 89 1 158 13 33 1 184] 
#[0 1 222 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 54 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 166 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 106 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 114 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 13 37 0 2 3 61 0 11 0 189 0 118 13 41 0 134 13 45 1 82 13 49 1 117 13 53 1 125] 
#[1 3 61 0 11 13 57 1 82] 
#[1 11 205 0 2 5 5 0 4 5 9 0 71 13 61 1 23 5 21 1 24 5 25 1 203] 
#[1 8 37 0 2 13 65 0 5 8 45 0 6 3 61 0 11 8 49 0 89 9 65 0 114 0 189 0 118 8 53 0 119 8 73 0 121 8 77 0 122 9 69 0 134 13 69 0 135 13 69 0 147 13 69 0 148 13 69 0 149 9 77 0 212 9 81 0 213 9 85 0 216 9 85 0 218 8 73 1 51 8 77 1 52 8 81 1 82 8 85 1 101 8 89 1 102 8 93 1 103 8 93 1 115 8 93 1 117 8 93 1 121 8 93 1 122 8 93 1 123 9 93 1 203] 
#[1 3 49 0 2 8 13 0 4 8 17 0 6 9 97 0 7 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 4 125 0 114 4 185 0 115 0 189 0 118 3 93 0 121 3 97 0 122 8 21 0 134 9 101 0 141 4 137 0 209 4 137 0 210 4 137 0 211 9 105 0 214 9 109 0 215 9 113 0 217 9 113 0 218 9 117 0 219 3 93 1 51 3 97 1 52 3 101 1 82 8 125 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 8 121 1 106 8 125 1 107 3 109 1 108 3 113 1 109 8 125 1 110 8 125 1 111 3 121 1 112 3 121 1 114 8 33 1 203] 
#[1 0 139 0 3 0 139 0 5 2 142 0 6 0 139 0 7 2 142 0 8 2 142 0 11 2 146 0 22 9 121 0 23 2 142 0 40 2 142 0 46 0 139 0 115 9 173 0 151] 
#[0 13 73 0 3] 
#[0 13 77 0 3] 
#[1 4 45 0 4 4 49 0 6 3 110 0 42 9 221 0 93 9 221 0 94 9 221 0 95 9 205 0 103 3 110 0 116 0 189 0 118 9 209 0 134 9 217 0 209 9 217 0 210 9 217 0 211 9 217 1 118 9 221 1 119] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 13 81 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 4 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 98 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 119 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 13 85 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 13 89 0 189 13 89 0 190 0 249 0 245 13 89 0 253 1 121 0 254 1 125 0 255 1 129 1 2 13 89 1 3 0 249 1 9 13 89 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 13 93 0 2 3 61 0 11 13 97 1 82] 
#[0 4 174 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 178 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[1 8 37 0 2 4 182 0 5 4 182 0 8 3 61 0 11 13 101 0 42 4 182 0 115 13 105 0 116 8 81 1 82 13 109 1 116 13 113 1 117] 
#[0 4 186 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 190 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 194 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 198 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 13 117 0 2] 
#[0 13 121 0 5] 
#[1 4 202 0 5 13 125 0 8 13 129 0 115] 
#[0 4 206 0 5 0 8 0 115] 
#[0 4 210 0 5 0 8 0 115] 
#[0 4 214 0 5 0 8 0 115] 
#[0 4 218 0 5 0 8 0 115] 
#[0 4 222 0 5 0 8 0 115] 
#[0 4 226 0 5 0 8 0 115] 
#[0 4 230 0 7 0 115] 
#[1 13 133 0 7 13 137 0 115] 
#[0 4 234 0 7 0 115] 
#[1 4 238 0 14 13 141 0 71 4 238 0 115 13 145 1 85] 
#[1 13 149 0 14 13 153 0 115] 
#[0 4 242 0 14 0 115] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 8 29 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 8 29 1 110 8 29 1 111 3 121 1 112 3 121 1 114] 
#[1 4 246 0 3 4 246 0 4 4 246 0 5 0 143 0 6 4 246 0 7 4 246 0 8 4 246 0 9 4 246 0 11 4 246 0 12 4 246 0 14 4 246 0 15 4 246 0 18 4 246 0 19 4 246 0 20 4 246 0 21 4 246 0 23 4 246 0 24 4 246 0 25 4 246 0 26 4 246 0 27 4 246 0 35 4 246 0 37 4 246 0 40 4 246 0 41 4 246 0 42 4 246 0 44 4 246 0 45 4 246 0 46 4 246 0 47 4 246 0 48 4 246 0 50 4 246 0 51 4 246 0 61 4 246 0 80 4 246 0 83 4 246 0 92 4 246 0 93 4 246 0 94 4 246 0 95 4 246 0 98 4 246 0 115 4 246 0 116 4 246 0 119 4 246 0 121 4 246 0 122 4 246 0 127 4 246 0 128 8 181 0 228 4 246 1 204] 
#[1 4 250 0 3 4 250 0 4 4 250 0 5 0 147 0 6 4 250 0 7 4 250 0 8 4 250 0 9 4 250 0 11 4 250 0 12 4 250 0 14 4 250 0 15 4 250 0 18 4 250 0 19 4 250 0 20 4 250 0 21 4 250 0 23 4 250 0 24 4 250 0 25 4 250 0 26 4 250 0 27 4 250 0 35 4 250 0 37 4 250 0 40 4 250 0 41 4 250 0 42 4 250 0 44 4 250 0 45 4 250 0 46 4 250 0 47 4 250 0 48 4 250 0 50 4 250 0 51 4 250 0 61 4 250 0 80 4 250 0 83 4 250 0 92 4 250 0 93 4 250 0 94 4 250 0 95 4 250 0 98 4 250 0 115 4 250 0 116 4 250 0 119 4 250 0 121 4 250 0 122 4 250 0 127 4 250 0 128 8 181 0 228 4 250 1 204] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 13 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 13 161 0 2] 
#[0 4 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 5 2 0 3 5 2 0 4 5 2 0 5 5 2 0 6 5 2 0 7 5 2 0 8 5 2 0 9 5 2 0 11 5 2 0 12 5 2 0 14 5 2 0 15 5 2 0 18 5 2 0 19 5 2 0 20 5 2 0 21 13 165 0 22 5 2 0 23 5 2 0 24 5 2 0 25 5 2 0 26 5 2 0 27 5 2 0 35 5 2 0 37 5 2 0 40 5 2 0 41 5 2 0 42 5 2 0 44 5 2 0 45 5 2 0 46 5 2 0 47 5 2 0 48 5 2 0 50 5 2 0 51 5 2 0 61 5 2 0 80 5 2 0 83 5 2 0 92 5 2 0 93 5 2 0 94 5 2 0 95 5 2 0 98 5 2 0 115 5 2 0 116 5 2 0 119 5 2 0 121 5 2 0 122 5 2 0 127 5 2 0 128 5 2 1 204] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 13 169 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 8 141 0 2 3 53 0 4 3 57 0 6 3 65 0 81 3 69 0 85 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 13 173 1 91 13 173 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 13 173 1 109 3 121 1 112 3 121 1 114] 
#[1 8 141 0 2 3 53 0 4 3 57 0 6 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 13 177 1 93 13 177 1 94 13 177 1 95 13 177 1 96 13 177 1 97 3 141 1 98 3 145 1 99 13 177 1 100 13 177 1 104 13 177 1 105 13 177 1 112 13 177 1 114] 
#[0 13 181 0 6] 
#[1 5 6 0 3 5 6 0 4 5 6 0 5 5 6 0 6 5 6 0 7 5 6 0 8 5 6 0 9 0 151 0 11 5 6 0 12 5 6 0 14 5 6 0 15 5 6 0 18 5 6 0 19 5 6 0 20 5 6 0 21 5 6 0 23 5 6 0 24 5 6 0 25 5 6 0 26 5 6 0 27 5 6 0 35 5 6 0 37 5 6 0 40 5 6 0 41 5 6 0 42 5 6 0 44 5 6 0 45 5 6 0 46 5 6 0 47 5 6 0 48 5 6 0 50 5 6 0 51 5 6 0 61 5 6 0 80 5 6 0 82 5 6 0 83 5 6 0 92 5 6 0 93 5 6 0 94 5 6 0 95 5 6 0 98 5 6 0 115 5 6 0 116 5 6 0 119 5 6 0 121 5 6 0 122 5 6 0 127 5 6 0 128 13 185 1 86 5 6 1 204] 
#[1 0 189 0 118 13 189 0 134] 
#[0 5 10 0 8 0 75] 
#[1 5 14 0 5 13 193 0 52 5 14 0 115] 
#[1 13 197 0 5 13 201 0 115] 
#[0 5 18 0 5 0 115] 
#[0 13 205 0 119] 
#[1 13 209 0 2 13 213 0 26 0 189 0 118 13 217 0 134] 
#[1 5 5 0 4 5 9 0 71 13 221 1 23 5 21 1 24 5 25 1 203] 
#[0 4 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 225 0 8] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 13 229 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 13 233 0 2 0 189 0 118 13 237 0 134] 
#[0 13 241 0 2] 
#[0 13 245 0 121 1 42 1 51] 
#[0 13 249 0 8] 
#[0 5 22 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 221 0 69] 
#[1 13 37 0 2 3 61 0 11 0 189 0 118 13 253 0 134 13 45 1 82 13 49 1 117 14 1 1 125] 
#[1 5 5 0 4 5 9 0 71 13 61 1 23 5 21 1 24 5 25 1 203] 
#[0 5 26 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 30 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 34 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 38 0 75] 
#[0 14 5 0 52] 
#[1 14 9 0 5 14 13 0 115] 
#[0 5 42 0 5 0 115] 
#[0 5 46 0 5 0 115] 
#[1 0 189 0 118 14 17 0 134 14 17 1 43] 
#[0 14 21 0 8] 
#[1 4 1 0 4 4 5 0 26 14 25 1 37 14 29 1 38] 
#[0 5 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 54 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 13 89 0 189 13 89 0 190 0 249 0 245 13 89 0 253 1 121 0 254 1 125 0 255 1 129 1 2 13 89 1 3 0 249 1 9 13 89 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 189 0 118 14 33 0 134] 
#[1 3 74 0 3 3 74 0 5 3 74 0 7 9 121 0 23 3 74 0 115 9 173 0 151] 
#[0 14 37 0 116] 
#[0 14 41 0 5] 
#[1 14 45 0 5 14 49 0 115] 
#[0 5 58 0 5 0 115] 
#[0 5 62 0 5 0 115] 
#[1 14 57 0 93 14 57 0 94 14 57 0 95 0 189 0 118 14 53 0 134 14 57 1 119] 
#[0 5 66 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 45 0 4 4 49 0 6 14 61 0 7 4 125 0 114 9 241 0 115 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 14 65 0 217 14 65 0 218 14 69 0 219 8 33 1 203] 
#[1 14 73 0 7 14 77 0 115] 
#[0 5 70 0 7 0 115] 
#[0 5 74 0 7 0 115] 
#[0 14 81 0 7] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 14 85 0 189 14 85 0 190 0 249 0 245 14 85 0 253 1 121 0 254 1 125 0 255 1 129 1 2 14 85 1 3 0 249 1 9 14 85 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 5 78 0 8 0 115] 
#[0 5 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 4 53 0 134 14 89 0 205 4 65 0 209 4 65 0 210 4 65 0 211 14 89 1 131 14 89 1 132 4 85 1 203] 
#[0 5 86 0 8 0 115] 
#[1 13 105 0 116 14 93 1 116] 
#[1 13 105 0 116 14 97 1 116] 
#[1 5 65 0 2 5 113 0 6 5 117 0 22 0 205 0 125 0 18 0 126 5 125 0 152 0 245 0 153 10 141 0 165 5 81 1 203] 
#[1 3 114 0 2 0 155 0 3 3 114 0 6 0 155 0 7 3 114 0 9 3 114 0 10 3 114 0 11 3 114 0 12 3 114 0 13 3 114 0 14 3 114 0 15 3 114 0 16 3 114 0 17 3 114 0 18 3 114 0 20 3 114 0 21 3 114 0 22 0 155 0 23 3 114 0 24 3 114 0 25 3 114 0 26 3 114 0 27 3 114 0 28 3 114 0 29 3 114 0 30 3 114 0 31 3 114 0 32 3 114 0 33 3 114 0 34 3 114 0 35 3 114 0 36 3 114 0 37 3 114 0 38 3 114 0 40 3 114 0 41 3 114 0 42 3 114 0 43 3 114 0 44 3 114 0 45 3 114 0 46 3 114 0 47 3 114 0 48 3 114 0 50 3 114 0 51 3 114 0 52 3 114 0 80 3 114 0 83 0 155 0 115 3 114 0 125 3 114 0 126 3 114 1 202 3 114 1 203] 
#[1 0 93 0 1 0 97 0 2 0 23 0 4 4 121 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 14 101 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 9 225 0 189 9 225 0 190 9 169 0 209 9 169 0 210 9 169 0 211 0 249 0 245 9 225 0 253 1 121 0 254 1 125 0 255 1 129 1 2 9 225 1 3 0 249 1 9 9 225 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 23 0 4 4 121 0 6 14 105 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 9 157 0 114 9 241 0 115 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 4 129 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 9 245 0 142 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 9 249 0 189 9 249 0 190 4 137 0 209 4 137 0 210 4 137 0 211 14 65 0 217 14 65 0 218 14 69 0 219 0 249 0 245 9 249 0 253 1 121 0 254 1 125 0 255 1 129 1 2 9 249 1 3 0 249 1 9 9 249 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 173 1 203] 
#[1 5 90 0 3 5 90 0 7 13 105 0 116 14 109 1 116] 
#[0 5 94 0 3 0 7] 
#[0 5 98 0 3 0 5 0 7 0 115] 
#[0 5 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 106 0 3 0 5 0 7 0 115] 
#[0 5 110 0 19] 
#[1 5 114 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 14 117 0 217 14 117 0 218 14 113 0 219 14 113 0 249 14 117 0 250 8 33 1 203] 
#[0 5 118 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[0 5 122 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[0 5 126 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[0 5 130 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[1 0 159 0 42 0 163 0 116 14 125 1 116] 
#[0 5 138 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[1 14 129 0 42 13 105 0 116 14 133 1 116] 
#[1 3 110 0 3 4 45 0 4 3 110 0 5 4 49 0 6 3 110 0 7 3 110 0 23 3 110 0 42 9 205 0 103 3 110 0 115 3 110 0 116 0 189 0 118 14 137 0 134 14 141 0 209 14 141 0 210 14 141 0 211 14 141 1 118] 
#[0 5 142 0 5 0 7 0 115] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 14 145 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 4 181 0 114 9 241 0 115 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 14 149 0 142 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 14 153 0 189 14 153 0 190 0 249 0 245 14 153 0 253 1 121 0 254 1 125 0 255 1 129 1 2 14 153 1 3 0 249 1 9 14 153 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 154 0 1 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 114 0 115 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 5 158 0 7 0 115] 
#[0 5 162 0 7 0 115] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 11 193 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 11 193 1 110 11 193 1 111 3 121 1 112 3 121 1 114] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 14 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 14 161 0 2 0 189 0 118 14 165 0 134] 
#[0 14 169 0 2] 
#[1 0 93 0 1 0 97 0 2 0 167 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 14 177 0 189 14 177 0 190 0 249 0 245 14 177 0 253 1 121 0 254 1 125 0 255 14 177 1 1 1 129 1 2 14 177 1 3 14 181 1 4 0 249 1 9 14 177 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 5 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 5 170 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 14 185 0 135 14 185 0 147 14 185 0 148 14 185 0 149 8 73 1 51 8 77 1 52] 
#[1 9 61 0 6 14 189 0 26 8 53 0 119 8 73 0 121 8 77 0 122 14 193 0 135 14 193 0 147 14 193 0 148 14 193 0 149 8 73 1 51 8 77 1 52] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 14 197 0 135 14 197 0 147 14 197 0 148 14 197 0 149 8 73 1 51 8 77 1 52] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 14 201 0 135 14 201 0 147 14 201 0 148 14 201 0 149 8 73 1 51 8 77 1 52] 
#[1 9 61 0 6 10 25 0 26 10 29 0 53 10 33 0 77 10 37 0 97 8 53 0 119 8 73 0 121 8 77 0 122 10 45 0 135 10 45 0 147 10 45 0 148 10 45 0 149 14 205 1 5 14 205 1 7 14 205 1 12 14 205 1 16 8 73 1 51 8 77 1 52 14 205 1 126 14 205 1 127 10 217 1 203] 
#[0 14 209 0 2] 
#[0 5 174 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 5 178 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 182 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 186 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 213 0 5] 
#[1 5 190 0 5 9 61 0 6 10 21 0 8 10 25 0 26 10 29 0 53 10 33 0 77 10 37 0 97 10 41 0 98 8 53 0 119 8 73 0 121 8 77 0 122 10 45 0 135 10 45 0 147 10 45 0 148 10 45 0 149 14 217 1 5 14 217 1 7 14 217 1 12 14 217 1 16 14 217 1 27 8 73 1 51 8 77 1 52 14 217 1 126 14 217 1 127 10 85 1 203] 
#[0 5 194 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 5 198 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 202 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 0 93 0 1 8 45 0 6 14 221 0 61 14 225 0 77 14 245 0 93 14 245 0 94 14 245 0 95 14 229 0 97 14 233 0 98 8 53 0 119 8 73 0 121 8 77 0 122 14 237 0 135 14 237 0 147 14 237 0 148 14 237 0 149 14 241 0 164 8 73 1 51 8 77 1 52 14 245 1 119 14 249 1 122 14 253 1 126 15 1 1 127 15 5 1 140 15 9 1 141 15 9 1 142 15 9 1 144 15 9 1 145 15 25 1 146 15 29 1 203] 
#[0 5 206 0 4] 
#[0 5 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 15 33 0 5 9 61 0 6 10 21 0 8 10 25 0 26 10 29 0 53 10 33 0 77 10 37 0 97 10 41 0 98 8 53 0 119 8 73 0 121 8 77 0 122 10 45 0 135 10 45 0 147 10 45 0 148 10 45 0 149 10 73 1 5 10 73 1 7 10 73 1 12 10 73 1 16 15 37 1 25 10 69 1 26 10 73 1 27 8 73 1 51 8 77 1 52 10 73 1 126 10 73 1 127 10 85 1 203] 
#[1 0 189 0 118 3 89 0 134 15 45 1 97 3 141 1 98 3 145 1 99 15 45 1 138] 
#[1 0 189 0 118 3 89 0 134 15 57 1 97 3 141 1 98 3 145 1 99 15 53 1 135 15 57 1 136] 
#[1 10 105 0 82 15 61 1 139] 
#[0 5 214 0 4] 
#[0 15 65 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 15 69 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 15 73 0 2] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 15 77 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 15 81 0 3] 
#[0 5 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 15 85 0 189 15 85 0 190 0 249 0 245 15 85 0 253 1 121 0 254 1 125 0 255 1 129 1 2 15 85 1 3 0 249 1 9 15 85 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 15 89 0 3 15 93 0 115] 
#[0 5 230 0 3 0 115] 
#[1 15 97 0 7 6 81 0 115] 
#[0 5 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 15 101 1 87 15 105 1 88 15 105 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 15 105 1 110 15 105 1 111 3 121 1 112 3 121 1 114] 
#[0 15 113 0 2] 
#[0 5 238 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 1 102 0 4 1 102 0 129 1 102 0 131 15 117 1 78] 
#[0 5 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 15 121 0 189 15 121 0 190 0 249 0 245 15 121 0 253 1 121 0 254 1 125 0 255 1 129 1 2 15 121 1 3 0 249 1 9 15 121 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 5 246 0 5 9 121 0 23 5 246 0 115 15 125 0 151] 
#[1 15 129 0 5 15 133 0 115] 
#[0 5 250 0 5 0 115] 
#[1 14 209 0 2 15 137 0 116] 
#[0 5 254 0 5 0 115] 
#[0 6 2 0 5 0 115] 
#[1 9 61 0 6 14 225 0 77 14 229 0 97 8 53 0 119 8 73 0 121 8 77 0 122 15 141 0 135 15 141 0 147 15 141 0 148 15 141 0 149 8 73 1 51 8 77 1 52] 
#[1 6 81 0 115 15 145 0 127 15 149 0 128 15 153 0 154 15 157 0 155] 
#[1 15 161 0 7 6 81 0 115] 
#[0 6 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 15 165 0 189 15 165 0 190 15 165 0 192 0 249 0 245 15 165 0 253 1 121 0 254 1 125 0 255 1 129 1 2 15 165 1 3 0 249 1 9 15 165 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 6 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 15 169 0 189 15 169 0 190 15 169 0 192 0 249 0 245 15 169 0 253 1 121 0 254 1 125 0 255 1 129 1 2 15 169 1 3 0 249 1 9 15 169 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 15 173 0 119] 
#[0 6 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 15 177 0 7 6 81 0 115] 
#[0 6 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 15 181 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 15 181 1 110 15 181 1 111 3 121 1 112 3 121 1 114] 
#[0 6 42 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 46 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 50 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 6 54 0 3 6 54 0 5 6 54 0 7 6 54 0 8 5 245 0 9 6 54 0 11 6 54 0 12 6 54 0 14 6 54 0 15 6 54 0 18 6 54 0 20 6 54 0 21 6 54 0 24 6 54 0 25 5 245 0 26 6 54 0 35 6 54 0 37 6 54 0 40 6 54 0 41 6 54 0 42 6 54 0 44 5 245 0 45 6 54 0 46 6 54 0 47 6 54 0 48 6 54 0 50 6 54 0 51 6 54 0 80 6 54 0 83 6 54 0 92 6 54 0 115 6 54 0 116 6 54 0 127 6 54 0 128 5 245 0 176 6 54 1 204] 
#[1 6 58 0 3 6 58 0 5 6 58 0 7 6 58 0 8 5 245 0 9 6 58 0 11 6 58 0 12 6 58 0 14 6 58 0 15 6 58 0 18 6 58 0 20 6 58 0 21 6 58 0 24 6 58 0 25 5 245 0 26 6 58 0 35 6 58 0 37 6 58 0 40 6 58 0 41 6 58 0 42 6 58 0 44 5 245 0 45 6 58 0 46 6 58 0 47 6 58 0 48 6 58 0 50 6 58 0 51 6 58 0 80 6 58 0 83 6 58 0 92 6 58 0 115 6 58 0 116 6 58 0 127 6 58 0 128 5 245 0 176 6 58 1 204] 
#[1 6 62 0 3 6 62 0 5 6 62 0 7 6 62 0 8 6 62 0 11 6 62 0 12 6 62 0 14 6 62 0 15 6 62 0 18 6 62 0 20 6 62 0 21 6 62 0 24 6 62 0 25 5 249 0 35 5 253 0 37 6 62 0 40 6 62 0 41 6 62 0 42 6 62 0 44 6 62 0 46 6 62 0 47 6 62 0 48 6 62 0 50 6 62 0 51 6 62 0 80 6 62 0 83 6 62 0 92 6 62 0 115 6 62 0 116 6 62 0 127 6 62 0 128 6 62 1 204] 
#[1 6 66 0 3 6 66 0 5 6 66 0 7 6 66 0 8 6 66 0 11 6 66 0 12 6 66 0 14 6 66 0 15 6 66 0 18 6 66 0 20 6 66 0 21 6 66 0 24 6 66 0 25 5 249 0 35 5 253 0 37 6 66 0 40 6 66 0 41 6 66 0 42 6 66 0 44 6 66 0 46 6 66 0 47 6 66 0 48 6 66 0 50 6 66 0 51 6 66 0 80 6 66 0 83 6 66 0 92 6 66 0 115 6 66 0 116 6 66 0 127 6 66 0 128 6 66 1 204] 
#[1 6 70 0 3 6 70 0 5 6 70 0 7 6 70 0 8 6 70 0 11 6 70 0 12 6 70 0 14 6 70 0 15 6 70 0 18 6 70 0 20 6 70 0 21 6 70 0 24 6 70 0 25 5 249 0 35 5 253 0 37 6 70 0 40 6 70 0 41 6 70 0 42 6 70 0 44 6 70 0 46 6 70 0 47 6 70 0 48 6 70 0 50 6 70 0 51 6 70 0 80 6 70 0 83 6 70 0 92 6 70 0 115 6 70 0 116 6 70 0 127 6 70 0 128 6 70 1 204] 
#[1 6 74 0 3 6 74 0 5 6 74 0 7 6 74 0 8 6 74 0 11 6 1 0 12 6 74 0 14 6 5 0 15 6 9 0 18 6 74 0 20 6 74 0 21 6 74 0 24 6 74 0 25 6 74 0 40 6 74 0 41 6 74 0 42 6 74 0 44 6 74 0 46 6 74 0 47 6 74 0 48 6 74 0 50 6 74 0 51 6 74 0 80 6 74 0 83 6 74 0 92 6 74 0 115 6 74 0 116 6 74 0 127 6 74 0 128 6 74 1 204] 
#[1 6 78 0 3 6 78 0 5 6 78 0 7 6 78 0 8 6 78 0 11 6 1 0 12 6 78 0 14 6 5 0 15 6 9 0 18 6 78 0 20 6 78 0 21 6 78 0 24 6 78 0 25 6 78 0 40 6 78 0 41 6 78 0 42 6 78 0 44 6 78 0 46 6 78 0 47 6 78 0 48 6 78 0 50 6 78 0 51 6 78 0 80 6 78 0 83 6 78 0 92 6 78 0 115 6 78 0 116 6 78 0 127 6 78 0 128 6 78 1 204] 
#[1 6 82 0 3 6 82 0 5 6 82 0 7 6 82 0 8 6 82 0 11 6 1 0 12 6 82 0 14 6 5 0 15 6 9 0 18 6 82 0 20 6 82 0 21 6 82 0 24 6 82 0 25 6 82 0 40 6 82 0 41 6 82 0 42 6 82 0 44 6 82 0 46 6 82 0 47 6 82 0 48 6 82 0 50 6 82 0 51 6 82 0 80 6 82 0 83 6 82 0 92 6 82 0 115 6 82 0 116 6 82 0 127 6 82 0 128 6 82 1 204] 
#[1 6 86 0 3 6 86 0 5 6 86 0 7 6 86 0 8 6 86 0 11 6 1 0 12 6 86 0 14 6 5 0 15 6 9 0 18 6 86 0 20 6 86 0 21 6 86 0 24 6 86 0 25 6 86 0 40 6 86 0 41 6 86 0 42 6 86 0 44 6 86 0 46 6 86 0 47 6 86 0 48 6 86 0 50 6 86 0 51 6 86 0 80 6 86 0 83 6 86 0 92 6 86 0 115 6 86 0 116 6 86 0 127 6 86 0 128 6 86 1 204] 
#[1 6 90 0 3 6 90 0 5 6 90 0 7 6 90 0 8 6 90 0 11 6 1 0 12 6 90 0 14 6 5 0 15 6 9 0 18 6 90 0 20 6 90 0 21 6 90 0 24 6 90 0 25 6 90 0 40 6 90 0 41 6 90 0 42 6 90 0 44 6 90 0 46 6 90 0 47 6 90 0 48 6 90 0 50 6 90 0 51 6 90 0 80 6 90 0 83 6 90 0 92 6 90 0 115 6 90 0 116 6 90 0 127 6 90 0 128 6 90 1 204] 
#[1 6 94 0 3 6 94 0 5 6 94 0 7 6 94 0 8 6 94 0 11 6 1 0 12 6 94 0 14 6 5 0 15 6 9 0 18 6 94 0 20 6 94 0 21 6 94 0 24 6 94 0 25 6 94 0 40 6 94 0 41 6 94 0 42 6 94 0 44 6 94 0 46 6 94 0 47 6 94 0 48 6 94 0 50 6 94 0 51 6 94 0 80 6 94 0 83 6 94 0 92 6 94 0 115 6 94 0 116 6 94 0 127 6 94 0 128 6 94 1 204] 
#[1 6 98 0 3 6 98 0 5 6 98 0 7 6 98 0 8 6 13 0 11 6 17 0 14 6 21 0 20 6 25 0 21 6 98 0 24 6 98 0 25 6 98 0 40 6 98 0 41 6 98 0 42 6 98 0 44 6 98 0 46 6 98 0 47 6 98 0 48 6 98 0 50 6 98 0 51 6 29 0 80 6 33 0 83 6 98 0 92 6 98 0 115 6 98 0 116 6 98 0 127 6 98 0 128 6 98 1 204] 
#[1 6 102 0 3 6 102 0 5 6 102 0 7 6 102 0 8 6 13 0 11 6 17 0 14 6 21 0 20 6 25 0 21 6 102 0 24 6 102 0 25 6 102 0 40 6 102 0 41 6 102 0 42 6 102 0 44 6 102 0 46 6 102 0 47 6 102 0 48 6 102 0 50 6 102 0 51 6 29 0 80 6 33 0 83 6 102 0 92 6 102 0 115 6 102 0 116 6 102 0 127 6 102 0 128 6 102 1 204] 
#[1 6 106 0 3 6 106 0 5 6 106 0 7 6 106 0 8 6 13 0 11 6 17 0 14 6 21 0 20 6 25 0 21 6 106 0 24 6 106 0 25 6 106 0 40 6 106 0 41 6 106 0 42 6 106 0 44 6 106 0 46 6 106 0 47 6 106 0 48 6 106 0 50 6 106 0 51 6 29 0 80 6 33 0 83 6 106 0 92 6 106 0 115 6 106 0 116 6 106 0 127 6 106 0 128 6 106 1 204] 
#[1 6 110 0 3 6 110 0 5 6 110 0 7 6 110 0 8 6 13 0 11 6 17 0 14 6 21 0 20 6 25 0 21 6 110 0 24 6 110 0 25 6 110 0 40 6 110 0 41 6 110 0 42 6 110 0 44 6 110 0 46 6 110 0 47 6 110 0 48 6 110 0 50 6 110 0 51 6 29 0 80 6 33 0 83 6 110 0 92 6 110 0 115 6 110 0 116 6 110 0 127 6 110 0 128 6 110 1 204] 
#[1 6 114 0 3 6 114 0 5 6 114 0 7 6 114 0 8 6 37 0 24 6 41 0 25 6 114 0 40 6 114 0 41 6 114 0 42 6 114 0 44 6 114 0 46 6 114 0 47 6 114 0 48 6 45 0 50 6 49 0 51 6 114 0 92 6 114 0 115 6 114 0 116 6 114 0 127 6 114 0 128 6 114 1 204] 
#[1 6 118 0 3 6 118 0 5 6 118 0 7 6 118 0 8 6 53 0 40 6 118 0 41 6 118 0 42 6 118 0 44 6 118 0 46 6 118 0 47 6 118 0 48 6 118 0 92 6 118 0 115 6 118 0 116 6 118 0 127 6 118 0 128 6 118 1 204] 
#[1 6 122 0 3 6 122 0 5 6 122 0 7 6 122 0 8 6 122 0 41 6 122 0 42 6 122 0 44 6 122 0 46 6 122 0 47 6 57 0 48 6 122 0 92 6 122 0 115 6 122 0 116 6 122 0 127 6 122 0 128 6 122 1 204] 
#[1 6 126 0 3 6 126 0 5 6 126 0 7 6 126 0 8 6 126 0 41 6 126 0 42 6 61 0 46 6 126 0 47 6 126 0 92 6 126 0 115 6 126 0 116 6 126 0 127 6 126 0 128 6 126 1 204] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 0 250 0 41 0 250 0 42 6 61 0 46 0 250 0 47 0 250 0 92 0 250 0 115 0 250 0 116 0 250 0 127 0 250 0 128 0 250 1 204] 
#[1 6 130 0 3 6 130 0 5 6 130 0 7 6 130 0 8 6 65 0 41 6 130 0 42 6 130 0 47 6 130 0 92 6 130 0 115 6 130 0 116 6 130 0 127 6 130 0 128 6 130 1 204] 
#[1 6 134 0 3 6 134 0 5 6 134 0 7 6 134 0 8 6 134 0 42 6 134 0 44 6 61 0 46 6 134 0 92 6 134 0 115 6 134 0 116 6 134 0 127 6 134 0 128 6 134 1 204] 
#[0 15 185 0 116] 
#[0 6 138 0 3 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 15 193 0 251 15 197 0 252 0 6 1 203] 
#[0 6 146 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 150 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 154 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 22 0 129 15 201 1 57 15 205 1 76] 
#[1 6 158 0 4 0 171 0 129 15 209 0 131 15 217 1 54 15 217 1 55 1 189 1 56 15 217 1 74 1 197 1 76 15 221 1 81] 
#[1 6 166 0 4 6 166 0 9 6 166 0 14 15 225 0 22 15 229 0 116 6 166 0 130] 
#[1 6 158 0 4 15 233 0 9 0 130 0 14 15 237 0 130 16 9 1 60 15 245 1 64 15 249 1 65 15 253 1 66 15 249 1 67 15 249 1 68 16 9 1 69 16 13 1 77 16 17 1 81] 
#[0 6 170 0 4 0 9 0 14 0 130] 
#[0 6 174 0 4 0 9 0 14 0 130] 
#[0 6 178 0 130] 
#[1 16 21 0 130 16 25 1 62] 
#[0 16 29 0 3] 
#[1 2 142 0 6 2 142 0 11 0 175 0 14 2 146 0 22 2 142 0 40 2 142 0 46 13 141 0 71 4 238 0 115 13 145 1 85] 
#[0 16 33 0 14] 
#[1 6 97 0 2 3 61 0 11 6 109 1 82 16 37 1 125] 
#[0 16 41 0 4] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 16 45 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 6 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 49 0 8] 
#[0 6 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 53 0 8] 
#[0 16 57 0 2] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 16 61 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 16 65 0 189 16 65 0 190 16 65 0 192 0 249 0 245 16 65 0 253 1 121 0 254 1 125 0 255 1 129 1 2 16 65 1 3 0 249 1 9 16 65 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 16 69 0 134 16 73 0 207 16 77 0 208 16 81 0 209 16 81 0 210 16 81 0 211 16 85 0 225 6 185 1 203] 
#[1 0 206 0 8 0 206 0 9 5 221 0 10 0 206 0 11 0 206 0 12 5 221 0 13 0 206 0 14 0 206 0 15 5 221 0 16 5 221 0 17 0 206 0 18 0 206 0 20 0 206 0 21 5 221 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 5 221 0 28 5 221 0 29 5 221 0 30 5 221 0 31 5 221 0 32 5 221 0 33 5 221 0 34 0 206 0 35 5 209 0 36 0 206 0 37 5 213 0 38 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 50 0 206 0 51 5 217 0 52 0 179 0 80 0 206 0 83 16 93 0 92 0 206 0 115 5 221 0 191 5 221 1 202] 
#[1 16 97 0 8 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 16 101 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 16 105 0 189 16 105 0 190 16 105 0 192 0 249 0 245 16 105 0 253 1 121 0 254 1 125 0 255 1 129 1 2 16 105 1 3 0 249 1 9 16 105 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 16 109 0 134 4 57 0 204 4 61 0 205 16 113 0 209 16 113 0 210 16 113 0 211 16 117 0 225 4 61 1 131 4 61 1 132 4 85 1 203] 
#[1 16 121 0 80 16 125 0 92] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 4 97 0 53 0 137 0 58 16 137 0 60 1 165 0 72 0 149 0 76 0 153 0 79 16 137 0 86 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 16 129 0 109 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 16 133 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 16 133 0 171 16 137 0 203 16 141 0 224 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 117 1 203] 
#[1 16 145 0 3 6 81 0 115] 
#[0 6 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 16 149 0 8 6 81 0 115] 
#[1 16 153 0 3 6 81 0 115] 
#[0 6 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 16 157 0 2 1 205 0 4 16 161 0 198] 
#[1 1 205 0 4 16 165 0 198] 
#[1 6 202 0 1 6 202 0 2 6 202 0 4 6 202 0 5 6 202 0 6 6 202 0 8 6 202 0 35 6 202 0 36 6 202 0 37 6 202 0 38 6 202 0 39 6 202 0 49 6 202 0 53 6 202 0 54 6 202 0 55 6 202 0 56 6 202 0 58 6 202 0 59 6 202 0 60 6 202 0 62 6 202 0 63 6 202 0 64 6 202 0 65 6 202 0 66 6 202 0 67 6 202 0 68 6 202 0 69 6 202 0 70 6 202 0 72 12 33 0 73 6 202 0 74 6 202 0 76 6 202 0 78 6 202 0 79 6 202 0 84 6 202 0 86 6 202 0 88 6 202 0 89 6 202 0 90 6 202 0 96 6 202 0 100 6 202 0 101 6 202 0 103 6 202 0 104 6 202 0 105 6 202 0 106 6 202 0 107 6 202 0 108 6 202 0 109 6 202 0 110 6 202 0 111 6 202 0 112 6 202 0 113 6 202 0 118 6 202 0 121 6 202 0 122 6 202 0 123 6 202 0 125 6 202 0 126 6 202 0 129 16 169 0 241 6 202 1 203 6 202 1 204] 
#[0 6 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 210 0 8 0 92 0 115] 
#[0 6 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 6 169 0 134 16 173 0 208 6 181 0 209 6 181 0 210 6 181 0 211 6 185 1 203] 
#[0 6 218 0 8 0 92 0 115] 
#[1 13 105 0 116 16 177 1 116] 
#[1 13 105 0 116 16 181 1 116] 
#[0 6 222 0 8 0 92 0 115] 
#[0 6 226 0 8 0 92 0 115] 
#[1 16 185 0 3 6 81 0 115] 
#[1 16 189 0 3 6 81 0 115] 
#[0 6 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 238 0 1 0 183 0 2 6 238 0 4 6 238 0 5 0 183 0 6 0 183 0 8 5 210 0 9 5 210 0 10 5 210 0 11 5 210 0 12 5 210 0 13 5 210 0 14 5 210 0 15 5 210 0 16 5 210 0 17 5 210 0 18 5 210 0 20 5 210 0 21 5 210 0 22 5 210 0 23 5 210 0 24 5 210 0 25 5 210 0 26 5 210 0 27 5 210 0 28 5 210 0 29 5 210 0 30 5 210 0 31 5 210 0 32 5 210 0 33 5 210 0 34 0 183 0 35 0 183 0 36 0 183 0 37 0 183 0 38 6 238 0 39 5 210 0 40 5 210 0 41 5 210 0 42 5 210 0 43 5 210 0 44 5 210 0 45 5 210 0 46 5 210 0 47 5 210 0 48 6 238 0 49 5 210 0 50 5 210 0 51 5 210 0 52 6 238 0 53 6 238 0 54 6 238 0 55 6 238 0 58 6 238 0 59 6 238 0 60 6 238 0 62 6 238 0 63 6 238 0 64 6 238 0 66 6 238 0 67 6 238 0 69 6 238 0 70 6 238 0 72 6 238 0 74 6 238 0 76 6 238 0 78 6 238 0 79 5 210 0 80 5 210 0 83 6 238 0 84 6 238 0 86 6 238 0 88 6 238 0 89 6 238 0 90 6 238 0 96 6 238 0 100 6 238 0 101 6 238 0 103 6 238 0 104 6 238 0 105 6 238 0 106 6 238 0 107 6 238 0 108 6 238 0 109 6 238 0 110 6 238 0 111 6 238 0 112 6 238 0 113 5 210 0 115 6 238 0 118 6 238 0 121 6 238 0 122 6 238 0 123 0 183 0 125 0 183 0 126 6 238 0 129 5 210 1 202 0 183 1 203 6 238 1 204] 
#[1 5 5 0 4 5 9 0 71 16 193 1 23 5 21 1 24 5 25 1 203] 
#[0 6 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 197 0 4] 
#[1 3 61 0 11 5 9 0 71 16 201 1 24 16 205 1 82 5 25 1 203] 
#[1 6 246 0 8 6 246 0 115 13 105 0 116 16 209 1 116] 
#[1 16 213 0 8 16 217 0 115] 
#[0 6 250 0 8 0 115] 
#[1 8 37 0 2 3 61 0 11 8 81 1 82 16 221 1 117] 
#[1 16 225 0 8 16 217 0 115] 
#[0 16 229 0 4] 
#[1 16 233 0 4 12 245 0 22] 
#[1 16 237 0 8 16 217 0 115] 
#[1 16 241 0 5 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 16 245 0 135 16 245 0 147 16 245 0 148 16 245 0 149 8 73 1 51 8 77 1 52 16 249 1 148 16 253 1 149 17 1 1 150] 
#[0 17 5 0 8] 
#[0 17 9 0 8] 
#[1 5 5 0 4 5 9 0 71 0 189 0 118 17 13 0 134 6 213 1 23 5 21 1 24 5 25 1 203] 
#[1 7 101 0 2 7 105 0 26 0 189 0 118 17 17 0 134] 
#[1 0 134 0 2 0 134 0 6 0 187 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 134 0 125 0 134 0 126 0 134 1 202 0 134 1 203] 
#[0 17 25 0 8] 
#[0 6 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 2 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 6 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 10 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 7 14 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 17 29 0 23 3 14 0 75 3 14 0 115] 
#[0 7 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 17 33 0 8] 
#[0 17 37 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 17 41 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 17 45 0 2] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 17 49 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 0 189 0 118 17 53 0 134 17 57 1 99 17 61 1 159 17 65 1 201] 
#[1 0 189 0 118 3 89 0 134 17 69 1 97 3 141 1 98 3 145 1 99 17 69 1 136] 
#[1 3 53 0 4 12 225 0 71 17 73 1 100 17 77 1 134] 
#[0 7 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 53 0 4 17 81 1 100] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 7 26 0 5 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 2 109 0 58 2 113 0 59 2 117 0 60 1 217 0 62 1 221 0 63 7 33 0 64 0 141 0 66 1 225 0 67 2 125 0 69 17 85 0 70 1 165 0 72 1 229 0 74 2 133 0 76 1 233 0 78 7 133 0 79 2 141 0 84 0 65 0 86 2 145 0 88 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 2 149 0 107 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 17 133 0 193 17 133 0 196 17 133 0 197 17 133 0 198 17 133 0 202 0 65 0 203 17 133 0 206 17 133 0 220 17 133 0 221 17 133 0 222 17 133 0 223 17 133 0 226 17 133 0 227 17 133 0 229 17 133 0 230 17 133 0 231 17 133 0 236 17 133 0 238 17 133 0 239 17 133 0 243 17 133 0 244 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 17 133 1 8 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 17 133 1 21 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 17 133 1 124 17 133 1 133 17 133 1 147 17 133 1 152 17 125 1 154 17 129 1 155 17 133 1 156 17 133 1 157 17 133 1 158 17 133 1 184 3 45 1 203] 
#[1 0 189 0 118 17 149 0 134] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 17 153 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 17 153 1 110 17 153 1 111 3 121 1 112 3 121 1 114] 
#[0 17 157 0 23] 
#[0 17 29 0 23] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 2 109 0 58 2 113 0 59 0 141 0 66 1 165 0 72 2 133 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 12 169 0 189 12 169 0 190 12 173 0 244 0 249 0 245 12 169 0 253 1 121 0 254 1 125 0 255 1 129 1 2 12 169 1 3 12 177 1 8 0 249 1 9 12 169 1 11 0 249 1 14 0 249 1 18 1 41 1 20 12 181 1 21 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 3 45 1 203] 
#[0 4 114 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 122 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 142 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 225 0 58 6 233 0 76 0 189 0 118 17 161 0 134 12 185 1 188 12 189 1 189] 
#[0 4 118 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 126 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 146 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 17 165 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 13 37 0 2 3 61 0 11 13 45 1 82 17 169 1 117 17 173 1 125] 
#[0 17 177 0 2] 
#[0 17 181 0 8] 
#[0 17 185 0 4] 
#[1 5 5 0 4 5 9 0 71 17 189 1 23 5 21 1 24 5 25 1 203] 
#[0 7 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 191 0 3 0 191 0 5 4 170 0 6 0 191 0 7 4 170 0 8 5 54 0 23 4 170 0 40 4 170 0 46 0 191 0 115] 
#[1 8 37 0 2 4 182 0 5 4 182 0 8 3 61 0 11 13 101 0 42 4 182 0 115 17 193 0 116 8 81 1 82 13 109 1 116 13 113 1 117] 
#[0 17 197 0 19] 
#[0 7 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 17 201 0 3] 
#[1 0 134 0 2 0 134 0 6 0 134 0 7 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 17 205 0 116 0 134 0 125 0 134 0 126 0 134 1 202 0 134 1 203] 
#[0 17 209 0 7] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 17 213 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 17 217 0 2] 
#[1 8 37 0 2 7 38 0 5 7 38 0 8 3 61 0 11 7 38 0 115 13 105 0 116 8 81 1 82 17 221 1 116 17 225 1 117] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 17 229 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 17 229 1 110 17 229 1 111 3 121 1 112 3 121 1 114] 
#[0 7 42 0 5 0 8 0 115] 
#[0 7 46 0 5 0 8 0 115] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 17 233 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 7 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 98 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 119 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 203 1 204] 
#[1 8 37 0 2 7 54 0 5 8 45 0 6 3 61 0 11 8 49 0 89 8 53 0 119 8 73 0 121 8 77 0 122 8 61 0 135 8 61 0 147 8 61 0 148 8 61 0 149 8 73 1 51 8 77 1 52 8 81 1 82 17 237 1 103 17 237 1 115 17 237 1 117 17 237 1 121 17 237 1 122 17 237 1 123] 
#[1 8 37 0 2 7 58 0 5 8 45 0 6 3 61 0 11 8 49 0 89 8 53 0 119 8 73 0 121 8 77 0 122 8 61 0 135 8 61 0 147 8 61 0 148 8 61 0 149 8 73 1 51 8 77 1 52 8 81 1 82 17 241 1 103 17 241 1 115 17 241 1 117 17 241 1 121 17 241 1 122 17 241 1 123] 
#[0 7 62 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 17 245 0 7 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 17 249 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 17 249 1 107 3 109 1 108 3 113 1 109 17 249 1 110 17 249 1 111 3 121 1 112 3 121 1 114] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 17 253 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 17 253 1 110 17 253 1 111 3 121 1 112 3 121 1 114] 
#[0 7 66 0 14 0 115] 
#[0 7 70 0 2 0 4 0 23 0 71 1 203] 
#[1 0 189 0 118 8 129 0 134 18 1 1 84] 
#[0 18 5 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 9 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 0 189 0 118 18 13 0 134] 
#[0 18 17 0 3] 
#[1 7 74 0 3 7 74 0 4 7 74 0 5 7 74 0 6 7 74 0 7 7 74 0 8 7 74 0 9 7 74 0 11 7 74 0 12 7 74 0 14 7 74 0 15 7 74 0 18 7 74 0 19 7 74 0 20 7 74 0 21 7 74 0 23 7 74 0 24 7 74 0 25 7 74 0 26 7 74 0 27 7 74 0 35 7 74 0 37 0 195 0 40 7 74 0 41 7 74 0 42 7 74 0 44 7 74 0 45 7 74 0 46 7 74 0 47 7 74 0 48 7 74 0 50 7 74 0 51 7 74 0 61 7 74 0 80 7 74 0 83 7 74 0 92 7 74 0 93 7 74 0 94 7 74 0 95 7 74 0 98 7 74 0 115 7 74 0 116 7 74 0 119 7 74 0 121 7 74 0 122 7 74 0 127 7 74 0 128 7 74 1 204] 
#[1 7 78 0 3 7 78 0 4 7 78 0 5 0 199 0 6 7 78 0 7 7 78 0 8 7 78 0 9 7 78 0 11 7 78 0 12 7 78 0 14 7 78 0 15 7 78 0 18 7 78 0 19 7 78 0 20 7 78 0 21 7 78 0 23 7 78 0 24 7 78 0 25 7 78 0 26 7 78 0 27 7 78 0 35 7 78 0 37 7 78 0 40 7 78 0 41 7 78 0 42 7 78 0 44 7 78 0 45 7 78 0 46 7 78 0 47 7 78 0 48 7 78 0 50 7 78 0 51 7 78 0 61 7 78 0 80 7 78 0 83 7 78 0 92 7 78 0 93 7 78 0 94 7 78 0 95 7 78 0 98 7 78 0 115 7 78 0 116 7 78 0 119 7 78 0 121 7 78 0 122 7 78 0 127 7 78 0 128 8 181 0 228 7 78 1 204] 
#[0 18 21 0 7] 
#[0 7 82 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 82 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 7 86 0 3 7 86 0 4 7 86 0 5 7 86 0 6 7 86 0 7 7 86 0 8 7 86 0 9 7 86 0 11 7 86 0 12 7 86 0 14 7 86 0 15 7 86 0 18 7 86 0 19 7 86 0 20 7 86 0 21 7 90 0 22 7 86 0 23 7 86 0 24 7 86 0 25 7 86 0 26 7 86 0 27 7 86 0 35 7 86 0 37 7 86 0 40 7 86 0 41 7 86 0 42 7 86 0 44 7 86 0 45 7 86 0 46 7 86 0 47 7 86 0 48 7 86 0 50 7 86 0 51 7 86 0 61 7 86 0 80 7 86 0 82 7 86 0 83 7 86 0 92 7 86 0 93 7 86 0 94 7 86 0 95 7 86 0 98 7 86 0 115 7 86 0 116 7 86 0 119 7 86 0 121 7 86 0 122 7 86 0 127 7 86 0 128 7 86 1 204] 
#[0 18 25 0 119] 
#[0 7 94 0 8 0 75] 
#[1 18 29 0 5 8 197 0 119 18 33 1 48] 
#[0 7 98 0 75] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 37 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 18 41 0 2 0 189 0 118 18 45 0 134] 
#[0 18 49 0 2] 
#[0 6 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 102 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 18 53 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 57 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 18 61 0 2] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 65 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 7 106 0 8] 
#[0 7 110 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 13 37 0 2 3 61 0 11 13 45 1 82 17 169 1 117 18 69 1 125] 
#[0 18 73 0 4] 
#[1 0 189 0 118 18 77 0 134 18 77 1 43] 
#[0 7 114 0 75] 
#[1 18 81 0 5 0 189 0 118 9 25 0 119 9 37 0 134 18 85 1 41 9 37 1 43] 
#[0 7 118 0 75] 
#[0 7 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 126 0 75] 
#[0 7 130 0 75] 
#[0 7 134 0 5] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 18 89 0 217 18 89 0 218 8 33 1 203] 
#[0 7 138 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 142 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 18 93 0 5 9 61 0 6 9 65 0 114 0 189 0 118 8 53 0 119 8 73 0 121 8 77 0 122 9 69 0 134 9 73 0 135 9 73 0 147 9 73 0 148 9 73 0 149 18 97 0 212 18 101 0 216 18 101 0 218 8 73 1 51 8 77 1 52 9 93 1 203] 
#[1 14 121 0 42 13 105 0 116 14 125 1 116] 
#[1 0 189 0 118 18 105 0 134] 
#[0 7 146 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 150 0 7 0 115] 
#[0 18 109 0 7] 
#[0 7 154 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 45 0 4 4 49 0 6 18 113 0 7 4 125 0 114 4 185 0 115 0 189 0 118 9 69 0 134 18 117 0 141 4 137 0 209 4 137 0 210 4 137 0 211 18 121 0 215 9 113 0 217 9 113 0 218 18 125 0 219 8 33 1 203] 
#[0 7 158 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 162 0 3 0 5 0 7 0 8 0 92 0 115] 
#[0 7 166 0 8 0 115] 
#[1 7 170 0 8 9 121 0 23 7 170 0 115 18 129 0 151] 
#[1 7 174 0 8 9 121 0 23 7 174 0 115 18 133 0 151] 
#[1 0 134 0 2 0 134 0 6 0 203 0 7 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 134 0 115 13 105 0 116 0 134 0 125 0 134 0 126 14 109 1 116 0 134 1 202 0 134 1 203] 
#[1 5 150 0 2 0 207 0 3 5 150 0 6 0 207 0 7 5 150 0 9 5 150 0 10 5 150 0 11 5 150 0 12 5 150 0 13 5 150 0 14 5 150 0 15 5 150 0 16 5 150 0 17 5 150 0 18 5 150 0 20 5 150 0 21 5 150 0 22 0 207 0 23 5 150 0 24 5 150 0 25 5 150 0 26 5 150 0 27 5 150 0 28 5 150 0 29 5 150 0 30 5 150 0 31 5 150 0 32 5 150 0 33 5 150 0 34 5 150 0 35 5 150 0 36 5 150 0 37 5 150 0 38 5 150 0 40 5 150 0 41 5 150 0 42 5 150 0 43 5 150 0 44 5 150 0 45 5 150 0 46 5 150 0 47 5 150 0 48 5 150 0 50 5 150 0 51 5 150 0 52 5 150 0 80 5 150 0 83 0 207 0 115 5 150 0 125 5 150 0 126 5 150 1 202 5 150 1 203] 
#[0 7 178 0 3 0 7] 
#[0 7 182 0 3] 
#[0 7 186 0 3 0 115] 
#[0 7 190 0 3 0 5 0 7 0 115] 
#[1 7 194 0 3 7 194 0 5 7 194 0 7 9 121 0 23 7 194 0 115 18 137 0 151] 
#[1 7 198 0 3 7 198 0 5 7 198 0 7 7 198 0 115 13 105 0 116 18 141 1 116] 
#[1 7 202 0 3 7 202 0 5 7 202 0 7 9 121 0 23 7 202 0 115 18 145 0 151] 
#[1 0 211 0 3 0 211 0 5 0 211 0 7 0 215 0 23 0 219 0 42 0 211 0 115 0 163 0 116 18 153 0 151 18 157 1 116] 
#[1 7 210 0 3 7 210 0 5 7 210 0 7 9 121 0 23 18 161 0 42 7 210 0 115 13 105 0 116 18 165 0 151 18 169 1 116] 
#[0 7 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 7 218 0 7 0 115] 
#[0 7 222 0 7 0 115] 
#[0 18 173 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 177 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 18 181 0 2] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 185 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 18 189 0 251 15 197 0 252 18 193 1 19 0 6 1 203] 
#[0 7 226 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 7 230 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 18 197 0 2] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 18 201 0 135 18 201 0 147 18 201 0 148 18 201 0 149 8 73 1 51 8 77 1 52] 
#[0 18 205 0 2] 
#[0 18 209 0 2] 
#[0 18 213 0 2] 
#[0 7 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 217 0 246 4 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 7 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 7 242 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 18 221 0 2] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 18 225 0 135 18 225 0 147 18 225 0 148 18 225 0 149 8 73 1 51 8 77 1 52] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 18 229 0 135 18 229 0 147 18 229 0 148 18 229 0 149 8 73 1 51 8 77 1 52] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 18 233 0 135 18 233 0 147 18 233 0 148 18 233 0 149 8 73 1 51 8 77 1 52 18 237 1 126 18 241 1 127 15 29 1 203] 
#[1 13 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 13 45 1 82 18 249 1 116 18 253 1 117 19 1 1 125 19 5 1 143] 
#[1 9 61 0 6 19 9 0 61 19 21 0 93 19 21 0 94 19 21 0 95 19 13 0 98 8 53 0 119 8 73 0 121 8 77 0 122 19 17 0 135 19 17 0 147 19 17 0 148 19 17 0 149 8 73 1 51 8 77 1 52 19 21 1 119 19 25 1 126 19 29 1 127 15 29 1 203] 
#[1 9 61 0 6 19 33 0 61 19 37 0 98 8 53 0 119 8 73 0 121 8 77 0 122 19 41 0 135 19 41 0 147 19 41 0 148 19 41 0 149 8 73 1 51 8 77 1 52 19 45 1 126 19 49 1 127 15 29 1 203] 
#[0 19 53 0 8] 
#[0 7 250 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 254 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 2 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 6 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 10 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 14 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 18 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 22 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 14 225 0 77 14 229 0 97] 
#[0 8 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 19 57 0 5] 
#[0 8 30 0 82] 
#[0 8 34 0 82] 
#[0 8 38 0 4 0 115] 
#[1 8 42 0 4 19 61 0 115] 
#[0 8 46 0 4 0 115] 
#[0 8 50 0 4] 
#[0 19 65 0 4] 
#[0 19 69 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 19 73 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 19 77 0 3] 
#[0 8 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 58 0 3 0 115] 
#[0 8 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 19 81 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 19 85 0 114 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 89 0 189 19 89 0 190 0 249 0 245 19 89 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 89 1 3 0 249 1 9 19 89 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 8 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 93 0 14 19 97 0 115] 
#[0 8 70 0 14 0 115] 
#[0 8 74 0 14 0 115] 
#[1 0 93 0 1 0 97 0 2 19 101 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 10 149 0 114 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 19 105 0 166 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 10 157 0 189 10 157 0 190 0 249 0 245 10 157 0 253 1 121 0 254 1 125 0 255 1 129 1 2 10 157 1 3 0 249 1 9 10 157 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 4 30 0 4 4 30 0 129 4 30 0 131 19 109 1 72 11 157 1 73] 
#[0 8 78 0 5 0 115] 
#[0 8 82 0 5 0 115] 
#[0 8 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 113 0 5 9 61 0 6 10 25 0 26 10 29 0 53 10 33 0 77 10 37 0 97 10 189 0 114 0 189 0 118 8 53 0 119 8 73 0 121 8 77 0 122 10 193 0 134 10 205 0 135 19 117 0 146 10 205 0 147 10 205 0 148 10 205 0 149 19 117 0 150 19 117 1 5 19 117 1 7 19 117 1 12 19 117 1 16 8 73 1 51 8 77 1 52 19 117 1 126 19 117 1 127 10 217 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 121 0 189 19 121 0 190 0 249 0 245 19 121 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 121 1 3 0 249 1 9 19 121 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 6 97 0 2 3 61 0 11 6 109 1 82 19 1 1 125] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 125 0 189 19 125 0 190 19 125 0 192 0 249 0 245 19 125 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 125 1 3 0 249 1 9 19 125 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 8 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 129 0 127 19 133 0 128] 
#[0 8 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 137 0 7 6 81 0 115] 
#[1 19 141 0 7 6 81 0 115] 
#[0 8 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 110 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 145 0 189 19 145 0 190 0 249 0 245 19 145 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 145 1 3 0 249 1 9 19 145 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 8 114 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 205 0 200 0 57 0 201 6 205 0 202 0 65 0 203 0 6 1 203] 
#[0 19 149 0 5] 
#[0 8 118 0 5] 
#[0 8 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 19 153 0 129] 
#[0 8 126 0 4 0 129 0 131] 
#[0 8 130 0 4 0 129 0 131] 
#[0 8 134 0 4 0 129 0 131] 
#[0 19 157 0 4] 
#[0 8 138 0 130] 
#[0 19 161 0 130] 
#[1 8 142 0 14 19 165 1 79] 
#[1 8 146 0 4 8 146 0 9 8 146 0 14 8 146 0 23 15 229 0 116 8 146 0 130] 
#[0 8 150 0 4 0 9 0 14 0 23 0 130] 
#[1 19 169 0 9 0 130 0 14 19 173 1 77] 
#[0 8 154 0 4 0 9 0 14 0 130] 
#[1 6 158 0 4 8 158 0 9 8 158 0 14 15 237 0 130 16 9 1 60 19 177 1 65 19 177 1 67 19 177 1 68 16 9 1 69 16 17 1 81] 
#[0 8 162 0 4 0 9 0 14 0 130] 
#[0 8 166 0 4 0 9 0 14 0 130] 
#[1 8 170 0 4 8 170 0 9 8 170 0 14 19 181 0 23 8 170 0 130 19 185 1 70] 
#[0 19 189 0 14] 
#[0 19 193 0 4] 
#[1 8 174 0 4 8 174 0 9 8 174 0 14 15 225 0 22 8 174 0 130] 
#[0 8 178 0 130] 
#[1 13 105 0 116 19 197 1 116] 
#[1 0 93 0 1 4 93 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 4 97 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 249 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 4 205 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 4 205 0 171 19 201 0 172 19 201 0 173 0 249 0 245 0 249 1 9 0 249 1 14 0 249 1 18 19 201 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 4 213 1 203] 
#[0 19 205 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 19 209 0 251 15 197 0 252 0 6 1 203] 
#[0 19 213 0 3] 
#[0 8 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 217 0 189 19 217 0 190 19 217 0 192 0 249 0 245 19 217 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 217 1 3 0 249 1 9 19 217 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 19 221 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 225 0 189 19 225 0 190 19 225 0 192 0 249 0 245 19 225 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 225 1 3 0 249 1 9 19 225 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 19 229 0 8 6 81 0 115] 
#[1 4 46 0 8 9 121 0 23 8 190 0 80 4 46 0 92 4 46 0 115 12 45 0 151] 
#[1 19 233 0 8 12 53 0 115] 
#[1 4 50 0 8 19 237 0 92 4 50 0 115] 
#[1 9 121 0 23 8 194 0 80 12 57 0 151] 
#[0 19 241 0 80] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 245 0 189 19 245 0 190 19 245 0 192 0 249 0 245 19 245 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 245 1 3 0 249 1 9 19 245 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 249 0 189 19 249 0 190 0 249 0 245 19 249 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 249 1 3 0 249 1 9 19 249 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 19 253 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 20 1 0 189 20 1 0 190 20 1 0 192 0 249 0 245 20 1 0 253 1 121 0 254 1 125 0 255 1 129 1 2 20 1 1 3 0 249 1 9 20 1 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 20 5 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 20 9 0 189 20 9 0 190 20 9 0 192 0 249 0 245 20 9 0 253 1 121 0 254 1 125 0 255 1 129 1 2 20 9 1 3 0 249 1 9 20 9 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 20 13 0 8 6 81 0 115] 
#[1 3 42 0 8 9 121 0 23 8 190 0 80 8 190 0 92 3 42 0 115 9 125 0 151] 
#[1 9 121 0 23 8 194 0 80 8 194 0 92 9 137 0 151] 
#[0 8 198 0 80 0 92] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 20 17 0 189 20 17 0 190 20 17 0 192 0 249 0 245 20 17 0 253 1 121 0 254 1 125 0 255 1 129 1 2 20 17 1 3 0 249 1 9 20 17 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 20 21 0 189 20 21 0 190 0 249 0 245 20 21 0 253 1 121 0 254 1 125 0 255 1 129 1 2 20 21 1 3 0 249 1 9 20 21 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 6 169 0 134 20 25 0 208 6 181 0 209 6 181 0 210 6 181 0 211 6 185 1 203] 
#[0 20 29 0 92] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 16 117 0 134 16 117 0 209 16 117 0 210 16 117 0 211 16 117 0 225] 
#[0 20 41 0 92] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 20 45 0 193 20 45 0 196 20 45 0 197 20 45 0 198 20 45 0 206 20 45 0 220 20 45 0 221 20 45 0 222 20 45 0 223 20 45 0 226 20 45 0 227 20 45 0 229 20 45 0 230 20 45 0 231 20 45 0 236 20 45 0 238 20 45 0 239 20 45 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 8 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 20 49 0 4 20 53 0 232] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 20 65 0 134 20 65 0 209 20 65 0 210 20 65 0 211 20 65 0 242] 
#[0 8 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 218 0 8 0 115] 
#[1 8 222 0 8 9 121 0 23 8 222 0 92 8 222 0 115 20 69 0 151] 
#[1 9 121 0 23 20 73 0 151] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 20 77 0 193 20 77 0 196 20 77 0 197 20 77 0 198 20 77 0 206 20 77 0 220 20 77 0 221 20 77 0 222 20 77 0 223 20 77 0 226 20 77 0 227 20 77 0 229 20 77 0 230 20 77 0 231 20 77 0 236 20 77 0 238 20 77 0 239 20 77 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 20 81 0 193 20 81 0 196 20 81 0 197 20 81 0 198 20 81 0 206 20 81 0 220 20 81 0 221 20 81 0 222 20 81 0 223 20 81 0 226 20 81 0 227 20 81 0 229 20 81 0 230 20 81 0 231 20 81 0 236 20 81 0 238 20 81 0 239 20 81 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 8 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 20 85 0 5 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 16 245 0 135 16 245 0 147 16 245 0 148 16 245 0 149 8 73 1 51 8 77 1 52 20 89 1 148 16 253 1 149 17 1 1 150] 
#[0 20 93 0 4] 
#[1 5 9 0 71 20 97 1 24 5 25 1 203] 
#[0 8 230 0 8 0 115] 
#[0 8 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 189 0 118 12 113 0 134 20 101 1 187] 
#[0 20 105 0 8] 
#[0 8 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 42 0 5 7 33 0 64 7 233 0 70 7 41 0 79 2 141 0 84 2 145 0 88 2 149 0 107 3 5 1 34 3 5 1 124 3 5 1 133 3 5 1 152 3 5 1 158 3 5 1 170 20 109 1 174 3 1 1 175 3 5 1 176 3 5 1 179 3 5 1 181 3 5 1 182 3 5 1 183 3 5 1 184] 
#[1 8 242 0 5 6 225 0 58 20 113 0 60 2 125 0 69 20 117 0 70 6 233 0 76 7 169 0 79 2 141 0 84 20 121 0 86 6 245 0 88 6 249 0 109 20 125 0 202 0 65 0 203 20 129 1 133 20 149 1 147 20 133 1 158 20 137 1 185 20 141 1 188 20 145 1 189 20 149 1 195 20 153 1 196 20 157 1 197 20 161 1 198 20 165 1 199] 
#[0 8 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 8 254 0 5 20 169 0 23 8 254 0 115] 
#[0 20 173 0 5] 
#[1 9 2 0 5 20 177 0 115] 
#[0 9 6 0 5 0 115] 
#[0 9 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 9 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 5 5 0 4 3 61 0 11 5 9 0 71 12 93 1 23 20 181 1 24 16 205 1 82 5 25 1 203] 
#[1 20 185 0 2 3 61 0 11 8 81 1 82 16 221 1 117] 
#[0 9 18 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 9 22 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 189 0 118 17 53 0 134 17 57 1 99 17 61 1 159] 
#[0 9 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 20 189 0 4] 
#[0 20 193 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 20 197 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 20 201 0 3] 
#[0 2 146 0 8 0 22] 
#[1 9 30 0 8 20 205 0 22] 
#[0 20 209 0 8] 
#[0 20 213 0 2] 
#[0 9 34 0 4] 
#[0 9 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 53 0 4 20 217 1 100] 
#[0 9 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 197 0 58 2 113 0 59 2 117 0 60 7 33 0 64 2 125 0 69 3 205 0 76 7 169 0 79 2 141 0 84 0 65 0 86 2 145 0 88 2 149 0 107 1 253 0 109 20 221 0 202 0 65 0 203 20 225 0 206 20 229 0 244 20 233 1 8 20 237 1 21 20 241 1 124 20 245 1 133 20 249 1 147 20 253 1 152 21 1 1 158 21 5 1 184 7 97 1 203] 
#[0 9 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 21 9 0 5] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 9 82 0 5 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 2 109 0 58 2 113 0 59 2 117 0 60 1 217 0 62 1 221 0 63 7 33 0 64 0 141 0 66 1 225 0 67 2 125 0 69 17 85 0 70 1 165 0 72 1 229 0 74 2 133 0 76 1 233 0 78 7 133 0 79 2 141 0 84 0 65 0 86 2 145 0 88 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 2 149 0 107 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 21 13 0 193 21 13 0 196 21 13 0 197 21 13 0 198 21 13 0 202 0 65 0 203 21 13 0 206 21 13 0 220 21 13 0 221 21 13 0 222 21 13 0 223 21 13 0 226 21 13 0 227 21 13 0 229 21 13 0 230 21 13 0 231 21 13 0 236 21 13 0 238 21 13 0 239 21 13 0 243 21 13 0 244 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 21 13 1 8 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 21 13 1 21 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 21 13 1 124 21 13 1 133 21 13 1 147 21 13 1 152 21 13 1 156 21 13 1 157 21 13 1 158 21 13 1 184 3 45 1 203] 
#[0 9 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 102 0 4 0 22] 
#[0 21 17 0 8] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 21 21 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 21 21 1 110 21 21 1 111 3 121 1 112 3 121 1 114] 
#[0 17 21 0 8] 
#[0 21 25 0 3] 
#[0 21 29 0 8] 
#[0 21 33 0 4] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 37 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 9 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 21 41 0 251 15 197 0 252 0 6 1 203] 
#[0 9 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 49 0 2 8 13 0 4 8 17 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 8 21 0 134 4 137 0 209 4 137 0 210 4 137 0 211 18 89 0 217 18 89 0 218 3 93 1 51 3 97 1 52 3 101 1 82 17 229 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 17 229 1 110 17 229 1 111 3 121 1 112 3 121 1 114 8 33 1 203] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 21 45 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 21 45 1 110 21 45 1 111 3 121 1 112 3 121 1 114] 
#[1 9 114 0 4 9 114 0 5 9 114 0 8 9 114 0 115 13 105 0 116 21 49 1 116] 
#[1 21 53 0 91 21 57 0 99] 
#[0 9 118 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 21 61 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 65 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 9 122 0 5 0 8 0 115] 
#[0 9 126 0 5 0 8 0 115] 
#[0 9 130 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 61 0 92 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 21 69 0 3] 
#[0 9 134 0 5 0 8 0 115] 
#[0 9 138 0 5 0 8 0 115] 
#[0 9 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 9 146 0 7 0 115] 
#[0 9 150 0 14 0 115] 
#[0 9 154 0 14 0 115] 
#[0 21 73 0 19] 
#[0 21 77 0 3] 
#[0 9 158 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 21 81 0 19] 
#[0 9 162 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 9 166 0 5 0 115] 
#[0 9 170 0 8 0 75] 
#[0 9 174 0 5 0 115] 
#[0 21 85 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 89 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 21 93 0 2] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 97 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 21 101 0 4] 
#[0 21 105 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 109 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 21 113 0 3] 
#[0 21 117 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 21 121 0 251 15 197 0 252 0 6 1 203] 
#[0 9 178 0 5 0 115] 
#[0 9 182 0 75] 
#[0 9 186 0 5 0 115] 
#[0 9 190 0 5 0 115] 
#[0 9 194 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 21 125 0 5] 
#[0 9 198 0 5 0 115] 
#[1 7 206 0 5 9 121 0 23 18 149 0 42 7 206 0 115 13 105 0 116 18 153 0 151 18 157 1 116] 
#[0 9 202 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 9 206 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 45 0 4 4 49 0 6 21 129 0 7 4 125 0 114 9 241 0 115 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 14 65 0 217 14 65 0 218 21 133 0 219 8 33 1 203] 
#[0 9 210 0 7 0 115] 
#[0 21 137 0 7] 
#[0 9 214 0 8 0 115] 
#[0 9 218 0 8 0 115] 
#[0 9 222 0 3 0 5 0 7 0 115] 
#[0 9 226 0 3 0 5 0 7 0 115] 
#[0 9 230 0 3 0 5 0 7 0 115] 
#[0 9 234 0 3 0 5 0 7 0 115] 
#[0 9 238 0 3 0 5 0 7 0 115] 
#[1 9 242 0 3 9 242 0 5 9 242 0 7 9 121 0 23 9 242 0 115 21 141 0 151] 
#[1 9 246 0 3 9 246 0 5 9 246 0 7 9 246 0 115 13 105 0 116 21 145 1 116] 
#[0 9 250 0 3 0 5 0 7 0 115] 
#[1 9 254 0 3 9 254 0 5 9 254 0 7 9 121 0 23 9 254 0 115 21 149 0 151] 
#[0 21 153 0 4] 
#[0 21 157 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 161 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 21 165 0 3] 
#[0 10 2 0 5] 
#[0 21 169 0 5] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 173 0 246 4 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 21 177 0 2] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 181 0 246 4 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 21 185 0 3] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 21 193 0 217 21 193 0 218 21 193 0 250 21 193 1 6 8 33 1 203] 
#[0 21 197 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 21 201 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 21 205 0 2] 
#[0 21 209 0 2] 
#[1 8 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 8 81 1 82 21 213 1 116 21 217 1 117 21 221 1 143] 
#[0 10 6 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 10 10 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 10 14 0 8] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 21 225 1 143] 
#[1 21 229 0 4 21 233 0 8] 
#[0 21 237 0 4] 
#[0 21 241 0 8] 
#[0 21 245 0 2] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 21 249 0 135 21 249 0 147 21 249 0 148 21 249 0 149 8 73 1 51 8 77 1 52 21 253 1 126 22 1 1 127 15 29 1 203] 
#[1 8 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 8 81 1 82 22 5 1 116 22 9 1 117 22 13 1 143] 
#[1 9 61 0 6 22 17 0 61 22 21 0 98 8 53 0 119 8 73 0 121 8 77 0 122 22 25 0 135 22 25 0 147 22 25 0 148 22 25 0 149 8 73 1 51 8 77 1 52 22 29 1 126 22 33 1 127 15 29 1 203] 
#[0 10 18 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 10 22 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 22 37 0 2] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 22 41 0 135 22 41 0 147 22 41 0 148 22 41 0 149 8 73 1 51 8 77 1 52 22 45 1 126 22 49 1 127 15 29 1 203] 
#[1 8 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 8 81 1 82 22 53 1 116 22 57 1 117 22 61 1 143] 
#[0 10 26 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 10 30 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 10 34 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 10 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[1 0 189 0 118 3 89 0 134 22 65 1 97 3 141 1 98 3 145 1 99 22 65 1 136] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 22 69 0 251 15 197 0 252 0 6 1 203] 
#[0 22 73 0 4] 
#[0 22 77 0 3] 
#[0 22 81 0 4] 
#[0 10 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 85 0 189 22 85 0 190 0 249 0 245 22 85 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 85 1 3 0 249 1 9 22 85 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 10 46 0 3 0 115] 
#[0 10 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 82 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 22 89 1 88 22 89 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 22 89 1 110 22 89 1 111 3 121 1 112 3 121 1 114] 
#[0 10 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 22 93 0 3 22 97 0 115] 
#[0 22 101 0 129] 
#[0 10 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 62 0 5 0 115] 
#[0 10 66 0 5 0 115] 
#[1 6 81 0 115 10 70 0 127 10 70 0 128] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 105 0 189 22 105 0 190 22 105 0 192 0 249 0 245 22 105 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 105 1 3 0 249 1 9 22 105 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 10 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 86 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 10 90 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 22 109 0 9] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 130 0 5 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 4 181 0 114 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 22 121 0 142 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 121 0 189 22 121 0 190 0 249 0 245 22 121 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 121 1 3 0 249 1 9 22 121 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 22 121 1 75 1 197 1 76 22 125 1 77 1 201 1 203] 
#[0 10 94 0 4 0 9 0 14 0 23 0 130] 
#[0 22 129 0 14] 
#[1 8 142 0 14 22 133 1 79] 
#[0 22 137 0 14] 
#[0 10 98 0 4 0 9 0 14 0 130] 
#[1 6 158 0 4 22 141 0 121 0 11 0 129 22 141 1 51 22 153 1 54 22 153 1 55 1 189 1 56 22 153 1 58 22 153 1 71 1 197 1 76 22 157 1 81] 
#[0 10 102 0 4 0 9 0 14 0 130] 
#[0 10 106 0 4 0 129 0 131] 
#[1 4 181 0 114 22 161 0 142] 
#[0 10 110 0 4 0 19] 
#[0 10 114 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 22 165 0 251 15 197 0 252 0 6 1 203] 
#[0 22 169 0 5] 
#[1 10 118 0 4 10 118 0 19 13 105 0 116 22 173 1 116] 
#[1 22 177 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 22 181 0 193 22 181 0 196 22 181 0 197 22 181 0 198 22 181 0 206 22 181 0 220 22 181 0 221 22 181 0 222 22 181 0 223 22 181 0 226 22 181 0 227 22 181 0 229 22 181 0 230 22 181 0 231 22 181 0 236 22 181 0 238 22 181 0 239 22 181 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 22 185 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 22 189 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 193 0 189 22 193 0 190 22 193 0 192 0 249 0 245 22 193 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 193 1 3 0 249 1 9 22 193 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 22 197 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 201 0 189 22 201 0 190 22 201 0 192 0 249 0 245 22 201 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 201 1 3 0 249 1 9 22 201 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 205 0 189 22 205 0 190 0 249 0 245 22 205 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 205 1 3 0 249 1 9 22 205 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 209 0 189 22 209 0 190 22 209 0 192 0 249 0 245 22 209 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 209 1 3 0 249 1 9 22 209 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 22 213 0 3 6 81 0 115] 
#[0 22 217 0 3] 
#[1 0 93 0 1 0 97 0 2 22 221 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 225 0 189 22 225 0 190 22 225 0 192 0 249 0 245 22 225 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 225 1 3 0 249 1 9 22 225 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 22 229 0 8 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 22 233 0 193 22 233 0 196 22 233 0 197 22 233 0 198 22 233 0 206 22 233 0 220 22 233 0 221 22 233 0 222 22 233 0 223 22 233 0 226 22 233 0 227 22 233 0 229 22 233 0 230 22 233 0 231 22 233 0 236 22 233 0 238 22 233 0 239 22 233 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 22 237 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 22 241 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 22 245 0 189 22 245 0 190 22 245 0 192 0 249 0 245 22 245 0 253 1 121 0 254 1 125 0 255 1 129 1 2 22 245 1 3 0 249 1 9 22 245 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 22 249 0 3 6 81 0 115] 
#[0 22 253 0 3] 
#[0 23 1 0 92] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 23 5 0 189 23 5 0 190 0 249 0 245 23 5 0 253 1 121 0 254 1 125 0 255 1 129 1 2 23 5 1 3 0 249 1 9 23 5 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 8 190 0 92] 
#[0 8 194 0 92] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 23 9 0 189 23 9 0 190 0 249 0 245 23 9 0 253 1 121 0 254 1 125 0 255 1 129 1 2 23 9 1 3 0 249 1 9 23 9 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 10 122 0 1 10 122 0 2 10 122 0 4 10 122 0 5 10 122 0 6 10 122 0 8 10 122 0 35 10 122 0 36 10 122 0 37 10 122 0 38 10 122 0 39 10 122 0 49 10 122 0 53 10 122 0 54 10 122 0 55 10 122 0 56 10 122 0 58 10 122 0 59 10 122 0 60 10 122 0 62 10 122 0 63 10 122 0 64 10 122 0 65 10 122 0 66 10 122 0 67 23 13 0 68 10 122 0 69 10 122 0 70 10 122 0 72 10 122 0 74 10 122 0 76 10 122 0 78 10 122 0 79 10 122 0 84 10 122 0 86 10 122 0 88 10 122 0 89 10 122 0 90 10 122 0 96 10 122 0 100 10 122 0 101 10 122 0 103 10 122 0 104 10 122 0 105 10 122 0 106 10 122 0 107 10 122 0 108 10 122 0 109 10 122 0 110 10 122 0 111 10 122 0 112 10 122 0 113 10 122 0 118 10 122 0 121 10 122 0 122 10 122 0 123 10 122 0 125 10 122 0 126 10 122 0 129 10 122 1 203 10 122 1 204] 
#[1 23 17 0 5 23 21 0 56 23 25 0 65 23 29 0 233 23 33 0 234 23 37 0 235] 
#[0 10 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 130 0 3] 
#[0 10 134 0 3] 
#[0 23 41 0 3] 
#[0 10 138 0 8 0 92 0 115] 
#[0 10 142 0 8 0 92 0 115] 
#[0 10 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 45 0 5] 
#[1 10 158 0 5 8 45 0 6 23 49 0 61 23 61 0 93 23 61 0 94 23 61 0 95 23 53 0 98 8 53 0 119 8 73 0 121 8 77 0 122 23 57 0 135 23 57 0 147 23 57 0 148 23 57 0 149 8 73 1 51 8 77 1 52 23 61 1 119 23 77 1 122 23 69 1 190 23 73 1 191 23 77 1 192 23 77 1 193 23 77 1 194] 
#[0 23 89 0 4] 
#[0 10 162 0 8 0 115] 
#[0 10 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 93 0 5] 
#[1 0 46 0 4 0 46 0 6 6 221 0 69 0 223 0 118 12 113 0 134 12 117 1 186 12 121 1 187 0 46 1 203] 
#[1 6 225 0 58 20 113 0 60 2 125 0 69 6 233 0 76 7 169 0 79 2 141 0 84 20 121 0 86 6 245 0 88 6 249 0 109 23 97 0 202 0 65 0 203 23 101 1 133 23 121 1 147 23 105 1 158 23 109 1 185 23 113 1 188 23 117 1 189 23 121 1 195 23 125 1 196] 
#[1 0 50 0 4 0 50 0 6 0 227 0 118 12 113 0 134 12 129 1 186 12 121 1 187 0 50 1 203] 
#[0 10 170 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 174 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 178 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 182 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 186 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 190 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 194 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 198 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 23 129 0 5] 
#[1 10 202 0 5 6 225 0 58 20 113 0 60 2 125 0 69 20 117 0 70 6 233 0 76 7 169 0 79 2 141 0 84 20 121 0 86 6 245 0 88 6 249 0 109 20 125 0 202 0 65 0 203 20 129 1 133 20 149 1 147 20 133 1 158 20 137 1 185 20 141 1 188 20 145 1 189 20 149 1 195 20 153 1 196 23 133 1 199] 
#[0 10 206 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 23 141 0 189 23 141 0 190 0 249 0 245 23 141 0 253 1 121 0 254 1 125 0 255 1 129 1 2 23 141 1 3 0 249 1 9 23 141 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 23 141 1 151 1 201 1 203] 
#[0 10 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 10 214 0 5 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 16 245 0 135 16 245 0 147 16 245 0 148 16 245 0 149 8 73 1 51 8 77 1 52 23 145 1 150] 
#[0 23 149 0 4] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 23 153 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 23 157 0 251 15 197 0 252 0 6 1 203] 
#[0 23 161 0 4] 
#[0 23 165 0 3] 
#[0 23 169 0 4] 
#[1 0 189 0 118 23 173 0 134] 
#[0 10 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 177 0 121 1 51] 
#[0 10 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 11 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 11 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 11 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 11 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 11 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 181 0 8] 
#[1 9 114 0 4 9 114 0 8 13 105 0 116 23 185 1 116] 
#[0 11 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 23 189 0 251 15 197 0 252 0 6 1 203] 
#[0 23 193 0 3] 
#[0 23 197 0 5] 
#[0 11 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 11 34 0 4 0 5 0 8 0 115] 
#[0 23 201 0 7] 
#[0 23 205 0 7] 
#[1 11 38 0 5 11 38 0 8 11 38 0 115 13 105 0 116 23 209 1 116] 
#[0 23 213 0 3] 
#[1 11 42 0 4 11 42 0 5 11 42 0 8 11 42 0 115 13 105 0 116 23 217 1 116] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 23 221 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 23 221 1 110 23 221 1 111 3 121 1 112 3 121 1 114] 
#[0 23 225 0 19] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 23 229 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 23 229 1 110 23 229 1 111 3 121 1 112 3 121 1 114] 
#[0 23 233 0 4] 
#[0 23 237 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 23 241 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 23 245 0 3] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 23 249 0 251 15 197 0 252 0 6 1 203] 
#[0 23 253 0 4] 
#[0 24 1 0 3] 
#[0 24 5 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 9 0 251 15 197 0 252 0 6 1 203] 
#[0 24 13 0 5] 
#[0 11 46 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 11 50 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 24 17 0 7] 
#[0 11 54 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 11 58 0 3 0 5 0 7 0 115] 
#[0 11 62 0 3 0 5 0 7 0 115] 
#[0 11 66 0 3 0 5 0 7 0 115] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 18 189 0 251 15 197 0 252 24 21 1 19 0 6 1 203] 
#[0 24 25 0 4] 
#[0 24 29 0 3] 
#[0 24 33 0 4] 
#[0 11 70 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 24 37 0 3] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 24 41 0 246 4 157 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[0 24 45 0 3] 
#[0 24 49 0 4] 
#[0 11 74 0 3] 
#[0 24 53 0 3] 
#[0 24 57 0 4] 
#[0 24 61 0 3] 
#[0 24 65 0 3] 
#[1 4 45 0 4 4 49 0 6 0 189 0 118 24 69 0 134 24 73 0 209 24 73 0 210 24 73 0 211 24 77 0 217 24 77 0 218 24 77 0 250 24 77 1 6 24 81 1 120 24 85 1 128 8 33 1 203] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 24 89 1 143] 
#[1 24 93 0 4 24 97 0 8] 
#[0 24 101 0 8] 
#[0 24 105 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 109 0 251 15 197 0 252 0 6 1 203] 
#[0 11 78 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 113 0 251 15 197 0 252 0 6 1 203] 
#[0 11 82 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 24 117 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 8 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 8 81 1 82 24 121 1 116 24 125 1 117 24 129 1 143] 
#[0 11 86 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 90 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 24 133 1 143] 
#[1 24 137 0 4 24 141 0 8] 
#[0 24 145 0 8] 
#[0 24 149 0 2] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 24 153 0 135 24 153 0 147 24 153 0 148 24 153 0 149 8 73 1 51 8 77 1 52 24 157 1 126 24 161 1 127 15 29 1 203] 
#[1 8 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 8 81 1 82 24 165 1 116 24 169 1 117 24 173 1 143] 
#[0 11 94 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 98 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 24 177 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 8 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 8 81 1 82 24 181 1 116 24 185 1 117 24 189 1 143] 
#[0 11 102 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 106 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 24 193 1 143] 
#[1 24 197 0 4 24 201 0 8] 
#[0 24 205 0 8] 
#[0 11 110 0 4 0 115] 
#[0 24 209 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 213 0 251 15 197 0 252 24 217 1 10 0 6 1 203] 
#[0 24 221 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 225 0 251 15 197 0 252 0 6 1 203] 
#[0 11 114 0 3 0 115] 
#[0 11 118 0 14 0 115] 
#[0 11 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 19 85 0 114 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 19 89 0 189 19 89 0 190 0 249 0 245 19 89 0 253 1 121 0 254 1 125 0 255 1 129 1 2 19 89 1 3 0 249 1 9 19 89 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 24 229 0 9] 
#[1 6 81 0 115 11 126 0 127 11 126 0 128] 
#[1 11 161 0 130 24 233 1 59 24 233 1 60 24 233 1 61 11 177 1 62 11 181 1 63] 
#[0 11 130 0 5] 
#[0 11 134 0 5] 
#[1 0 130 0 5 24 237 1 77] 
#[0 24 241 0 5] 
#[0 11 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 24 245 0 14] 
#[0 11 142 0 4 0 129 0 131] 
#[0 11 146 0 4 0 9 0 14 0 130] 
#[0 11 150 0 4 0 9 0 14 0 130] 
#[0 11 154 0 4 0 9 0 14 0 130] 
#[0 11 158 0 4 0 9 0 14 0 130] 
#[0 24 249 0 4] 
#[1 0 22 0 5 24 253 1 76] 
#[0 25 1 0 5] 
#[0 11 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 11 166 0 4 0 19] 
#[0 25 5 0 8] 
#[0 11 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 9 0 193 25 9 0 196 25 9 0 197 25 9 0 198 25 9 0 206 25 9 0 220 25 9 0 221 25 9 0 222 25 9 0 223 25 9 0 226 25 9 0 227 25 9 0 229 25 9 0 230 25 9 0 231 25 9 0 236 25 9 0 238 25 9 0 239 25 9 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 13 0 193 25 13 0 196 25 13 0 197 25 13 0 198 25 13 0 206 25 13 0 220 25 13 0 221 25 13 0 222 25 13 0 223 25 13 0 226 25 13 0 227 25 13 0 229 25 13 0 230 25 13 0 231 25 13 0 236 25 13 0 238 25 13 0 239 25 13 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 25 17 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 25 21 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 25 25 0 189 25 25 0 190 25 25 0 192 0 249 0 245 25 25 0 253 1 121 0 254 1 125 0 255 1 129 1 2 25 25 1 3 0 249 1 9 25 25 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 25 29 0 8 6 81 0 115] 
#[0 25 33 0 3] 
#[1 25 37 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 41 0 193 25 41 0 196 25 41 0 197 25 41 0 198 25 41 0 206 25 41 0 220 25 41 0 221 25 41 0 222 25 41 0 223 25 41 0 226 25 41 0 227 25 41 0 229 25 41 0 230 25 41 0 231 25 41 0 236 25 41 0 238 25 41 0 239 25 41 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 45 0 193 25 45 0 196 25 45 0 197 25 45 0 198 25 45 0 206 25 45 0 220 25 45 0 221 25 45 0 222 25 45 0 223 25 45 0 226 25 45 0 227 25 45 0 229 25 45 0 230 25 45 0 231 25 45 0 236 25 45 0 238 25 45 0 239 25 45 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 49 0 193 25 49 0 196 25 49 0 197 25 49 0 198 25 49 0 206 25 49 0 220 25 49 0 221 25 49 0 222 25 49 0 223 25 49 0 226 25 49 0 227 25 49 0 229 25 49 0 230 25 49 0 231 25 49 0 236 25 49 0 238 25 49 0 239 25 49 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 25 53 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 25 57 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 25 61 0 189 25 61 0 190 25 61 0 192 0 249 0 245 25 61 0 253 1 121 0 254 1 125 0 255 1 129 1 2 25 61 1 3 0 249 1 9 25 61 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 11 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 65 0 193 25 65 0 196 25 65 0 197 25 65 0 198 25 65 0 206 25 65 0 220 25 65 0 221 25 65 0 222 25 65 0 223 25 65 0 226 25 65 0 227 25 65 0 229 25 65 0 230 25 65 0 231 25 65 0 236 25 65 0 238 25 65 0 239 25 65 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 69 0 193 25 69 0 196 25 69 0 197 25 69 0 198 25 69 0 206 25 69 0 220 25 69 0 221 25 69 0 222 25 69 0 223 25 69 0 226 25 69 0 227 25 69 0 229 25 69 0 230 25 69 0 231 25 69 0 236 25 69 0 238 25 69 0 239 25 69 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 25 73 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 77 0 193 25 77 0 196 25 77 0 197 25 77 0 198 25 77 0 206 25 77 0 220 25 77 0 221 25 77 0 222 25 77 0 223 25 77 0 226 25 77 0 227 25 77 0 229 25 77 0 230 25 77 0 231 25 77 0 236 25 77 0 238 25 77 0 239 25 77 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 81 0 193 25 81 0 196 25 81 0 197 25 81 0 198 25 81 0 206 25 81 0 220 25 81 0 221 25 81 0 222 25 81 0 223 25 81 0 226 25 81 0 227 25 81 0 229 25 81 0 230 25 81 0 231 25 81 0 236 25 81 0 238 25 81 0 239 25 81 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 25 85 0 189 25 85 0 190 0 249 0 245 25 85 0 253 1 121 0 254 1 125 0 255 1 129 1 2 25 85 1 3 0 249 1 9 25 85 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 25 89 0 3] 
#[0 25 93 0 3] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 25 97 0 193 25 97 0 196 25 97 0 197 25 97 0 198 25 97 0 206 25 97 0 220 25 97 0 221 25 97 0 222 25 97 0 223 25 97 0 226 25 97 0 227 25 97 0 229 25 97 0 230 25 97 0 231 25 97 0 236 25 97 0 238 25 97 0 239 25 97 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 11 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 25 101 0 189 25 101 0 190 25 101 0 192 0 249 0 245 25 101 0 253 1 121 0 254 1 125 0 255 1 129 1 2 25 101 1 3 0 249 1 9 25 101 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 25 105 0 116] 
#[1 25 109 0 5 23 21 0 56 23 25 0 65 25 113 0 234 25 117 0 235] 
#[0 11 182 0 5 0 56 0 65] 
#[1 25 121 0 5 23 21 0 56 25 125 0 233 23 33 0 234] 
#[1 1 205 0 4 25 129 0 198] 
#[0 11 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 25 133 0 2] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 25 137 0 135 25 137 0 147 25 137 0 148 25 137 0 149 8 73 1 51 8 77 1 52] 
#[1 8 37 0 2 25 141 0 8 3 61 0 11 13 105 0 116 8 81 1 82 25 145 1 116 25 149 1 117] 
#[1 9 61 0 6 25 153 0 98 8 53 0 119 8 73 0 121 8 77 0 122 25 157 0 135 25 157 0 147 25 157 0 148 25 157 0 149 8 73 1 51 8 77 1 52] 
#[0 11 190 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 25 161 0 5] 
#[1 11 194 0 5 8 45 0 6 23 49 0 61 23 61 0 93 23 61 0 94 23 61 0 95 23 53 0 98 8 53 0 119 8 73 0 121 8 77 0 122 23 57 0 135 23 57 0 147 23 57 0 148 23 57 0 149 8 73 1 51 8 77 1 52 23 61 1 119 25 165 1 122 25 165 1 192 25 165 1 193 25 165 1 194] 
#[0 11 198 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 11 202 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 11 206 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[1 10 158 0 5 8 45 0 6 23 49 0 61 23 61 0 93 23 61 0 94 23 61 0 95 23 53 0 98 8 53 0 119 8 73 0 121 8 77 0 122 23 57 0 135 23 57 0 147 23 57 0 148 23 57 0 149 8 73 1 51 8 77 1 52 23 61 1 119 23 77 1 122 25 169 1 190 23 73 1 191 23 77 1 192 23 77 1 193 23 77 1 194] 
#[0 11 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 214 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 218 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 222 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 226 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 230 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 234 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 238 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 242 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 250 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 254 0 5 0 115] 
#[0 12 2 0 5 0 115] 
#[0 12 6 0 5 0 115] 
#[1 0 231 0 5 8 45 0 6 10 21 0 8 10 25 0 26 10 29 0 53 23 49 0 61 10 33 0 77 23 61 0 93 23 61 0 94 23 61 0 95 10 37 0 97 25 173 0 98 8 53 0 119 8 73 0 121 8 77 0 122 25 177 0 135 25 177 0 147 25 177 0 148 25 177 0 149 10 73 1 5 10 73 1 7 10 73 1 12 10 73 1 16 15 37 1 25 10 69 1 26 10 73 1 27 8 73 1 51 8 77 1 52 23 61 1 119 23 77 1 122 10 73 1 126 10 73 1 127 23 69 1 190 23 73 1 191 23 77 1 192 23 77 1 193 23 77 1 194 10 85 1 203] 
#[0 25 181 0 3] 
#[0 25 185 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 213 0 251 15 197 0 252 25 189 1 10 0 6 1 203] 
#[0 25 193 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 25 197 0 251 15 197 0 252 0 6 1 203] 
#[0 7 90 0 8 0 22] 
#[0 25 201 0 3] 
#[0 12 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 235 0 4 11 34 0 8] 
#[0 25 205 0 5] 
#[1 0 239 0 4 11 42 0 8 13 105 0 116 25 209 1 116] 
#[1 12 14 0 1 0 243 0 2 12 14 0 4 12 14 0 5 0 243 0 6 0 243 0 8 11 162 0 9 11 162 0 10 11 162 0 11 11 162 0 12 11 162 0 13 11 162 0 14 11 162 0 15 11 162 0 16 11 162 0 17 11 162 0 18 11 162 0 20 11 162 0 21 11 162 0 22 11 162 0 23 11 162 0 24 11 162 0 25 11 162 0 26 11 162 0 27 11 162 0 28 11 162 0 29 11 162 0 30 11 162 0 31 11 162 0 32 11 162 0 33 11 162 0 34 0 243 0 35 0 243 0 36 0 243 0 37 0 243 0 38 12 14 0 39 11 162 0 40 11 162 0 41 11 162 0 42 11 162 0 43 11 162 0 44 11 162 0 45 11 162 0 46 11 162 0 47 11 162 0 48 12 14 0 49 11 162 0 50 11 162 0 51 11 162 0 52 12 14 0 53 12 14 0 54 12 14 0 55 12 14 0 58 12 14 0 59 12 14 0 60 12 14 0 62 12 14 0 63 12 14 0 64 12 14 0 66 12 14 0 67 12 14 0 69 12 14 0 70 12 14 0 72 12 14 0 74 12 14 0 76 12 14 0 78 12 14 0 79 11 162 0 80 11 162 0 83 12 14 0 84 12 14 0 86 12 14 0 88 12 14 0 89 12 14 0 90 12 14 0 96 12 14 0 100 12 14 0 101 12 14 0 103 12 14 0 104 12 14 0 105 12 14 0 106 12 14 0 107 12 14 0 108 12 14 0 109 12 14 0 110 12 14 0 111 12 14 0 112 12 14 0 113 11 162 0 115 12 14 0 118 12 14 0 121 12 14 0 122 12 14 0 123 0 243 0 125 0 243 0 126 12 14 0 129 11 162 1 202 0 243 1 203 12 14 1 204] 
#[1 13 105 0 116 25 213 1 116] 
#[1 13 105 0 116 25 217 1 116] 
#[0 12 18 0 5 0 8 0 115] 
#[1 12 22 0 5 12 22 0 8 12 22 0 115 13 105 0 116 25 221 1 116] 
#[0 12 26 0 4 0 5 0 8 0 115] 
#[0 12 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 49 0 2 3 53 0 4 3 57 0 6 3 61 0 11 3 65 0 81 3 69 0 85 3 73 0 89 3 77 0 103 3 81 0 108 3 85 0 110 0 189 0 118 3 93 0 121 3 97 0 122 3 89 0 134 3 93 1 51 3 97 1 52 3 101 1 82 25 225 1 89 3 109 1 90 3 113 1 91 3 113 1 92 3 121 1 93 3 121 1 94 3 121 1 95 3 121 1 96 3 121 1 97 3 141 1 98 3 145 1 99 3 121 1 100 3 121 1 104 3 121 1 105 3 109 1 108 3 113 1 109 25 225 1 110 25 225 1 111 3 121 1 112 3 121 1 114] 
#[0 12 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 18 189 0 251 15 197 0 252 25 229 1 19 0 6 1 203] 
#[0 25 233 0 4] 
#[0 25 237 0 3] 
#[0 25 241 0 4] 
#[0 25 245 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 213 0 251 15 197 0 252 25 249 1 10 0 6 1 203] 
#[0 25 253 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 1 0 251 15 197 0 252 0 6 1 203] 
#[0 26 5 0 5] 
#[0 12 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 38 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 26 9 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 13 0 251 15 197 0 252 26 17 1 15 0 6 1 203] 
#[0 26 21 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 18 189 0 251 15 197 0 252 26 25 1 19 0 6 1 203] 
#[0 26 29 0 4] 
#[0 26 33 0 3] 
#[0 26 37 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 41 0 251 15 197 0 252 0 6 1 203] 
#[0 26 45 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 49 0 251 15 197 0 252 0 6 1 203] 
#[1 26 53 0 4 26 57 0 8] 
#[1 13 105 0 116 26 61 1 116] 
#[1 3 74 0 3 9 121 0 23 12 42 0 116 9 173 0 151] 
#[1 3 78 0 3 9 121 0 23 12 46 0 116 9 181 0 151] 
#[0 26 65 0 3] 
#[1 13 105 0 116 26 69 1 116] 
#[0 26 73 0 3] 
#[0 26 77 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 81 0 251 15 197 0 252 0 6 1 203] 
#[0 12 50 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 54 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 58 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 26 85 0 5] 
#[0 26 89 0 5] 
#[0 26 93 0 3] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 26 97 1 143] 
#[1 26 101 0 4 26 105 0 8] 
#[0 26 109 0 8] 
#[0 26 113 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 117 0 251 15 197 0 252 0 6 1 203] 
#[0 12 62 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 66 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 26 121 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 8 37 0 2 7 246 0 8 3 61 0 11 9 121 0 23 13 105 0 116 18 245 0 151 8 81 1 82 26 125 1 116 26 129 1 117 26 133 1 143] 
#[0 12 70 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 74 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 26 137 1 143] 
#[1 26 141 0 4 26 145 0 8] 
#[0 26 149 0 8] 
#[0 26 153 0 3] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 26 157 1 143] 
#[1 26 161 0 4 26 165 0 8] 
#[0 26 169 0 8] 
#[0 26 173 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 177 0 251 15 197 0 252 0 6 1 203] 
#[0 12 78 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 82 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 90 0 5] 
#[0 26 181 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 213 0 251 15 197 0 252 26 185 1 10 0 6 1 203] 
#[0 26 189 0 5] 
#[1 12 94 0 14 26 193 1 80] 
#[1 12 94 0 14 26 197 1 80] 
#[0 26 201 0 5] 
#[0 12 98 0 4 0 129 0 131] 
#[0 12 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 26 205 0 189 26 205 0 190 0 249 0 245 26 205 0 253 1 121 0 254 1 125 0 255 1 129 1 2 26 205 1 3 0 249 1 9 26 205 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 26 209 0 5] 
#[0 12 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 26 213 0 193 26 213 0 196 26 213 0 197 26 213 0 198 26 213 0 206 26 213 0 220 26 213 0 221 26 213 0 222 26 213 0 223 26 213 0 226 26 213 0 227 26 213 0 229 26 213 0 230 26 213 0 231 26 213 0 236 26 213 0 238 26 213 0 239 26 213 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 26 217 0 193 26 217 0 196 26 217 0 197 26 217 0 198 26 217 0 206 26 217 0 220 26 217 0 221 26 217 0 222 26 217 0 223 26 217 0 226 26 217 0 227 26 217 0 229 26 217 0 230 26 217 0 231 26 217 0 236 26 217 0 238 26 217 0 239 26 217 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 26 221 0 3 6 81 0 115] 
#[1 0 93 0 1 0 97 0 2 26 225 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 0 137 0 58 0 141 0 66 1 165 0 72 0 149 0 76 0 153 0 79 0 157 0 89 1 161 0 90 0 165 0 100 0 169 0 103 1 165 0 105 0 177 0 108 0 181 0 110 0 185 0 113 0 189 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 26 229 0 189 26 229 0 190 26 229 0 192 0 249 0 245 26 229 0 253 1 121 0 254 1 125 0 255 1 129 1 2 26 229 1 3 0 249 1 9 26 229 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 26 233 0 193 26 233 0 196 26 233 0 197 26 233 0 198 26 233 0 206 26 233 0 220 26 233 0 221 26 233 0 222 26 233 0 223 26 233 0 226 26 233 0 227 26 233 0 229 26 233 0 230 26 233 0 231 26 233 0 236 26 233 0 238 26 233 0 239 26 233 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 26 237 0 193 26 237 0 196 26 237 0 197 26 237 0 198 26 237 0 206 26 237 0 220 26 237 0 221 26 237 0 222 26 237 0 223 26 237 0 226 26 237 0 227 26 237 0 229 26 237 0 230 26 237 0 231 26 237 0 236 26 237 0 238 26 237 0 239 26 237 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 12 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 26 241 0 193 26 241 0 196 26 241 0 197 26 241 0 198 26 241 0 206 26 241 0 220 26 241 0 221 26 241 0 222 26 241 0 223 26 241 0 226 26 241 0 227 26 241 0 229 26 241 0 230 26 241 0 231 26 241 0 236 26 241 0 238 26 241 0 239 26 241 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 26 245 0 193 26 245 0 196 26 245 0 197 26 245 0 198 26 245 0 206 26 245 0 220 26 245 0 221 26 245 0 222 26 245 0 223 26 245 0 226 26 245 0 227 26 245 0 229 26 245 0 230 26 245 0 231 26 245 0 236 26 245 0 238 26 245 0 239 26 245 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 26 249 0 3 6 81 0 115] 
#[0 12 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 26 253 0 193 26 253 0 196 26 253 0 197 26 253 0 198 26 253 0 206 26 253 0 220 26 253 0 221 26 253 0 222 26 253 0 223 26 253 0 226 26 253 0 227 26 253 0 229 26 253 0 230 26 253 0 231 26 253 0 236 26 253 0 238 26 253 0 239 26 253 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 12 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 1 0 3] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 27 5 0 193 27 5 0 196 27 5 0 197 27 5 0 198 27 5 0 206 27 5 0 220 27 5 0 221 27 5 0 222 27 5 0 223 27 5 0 226 27 5 0 227 27 5 0 229 27 5 0 230 27 5 0 231 27 5 0 236 27 5 0 238 27 5 0 239 27 5 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 27 9 0 193 27 9 0 196 27 9 0 197 27 9 0 198 27 9 0 206 27 9 0 220 27 9 0 221 27 9 0 222 27 9 0 223 27 9 0 226 27 9 0 227 27 9 0 229 27 9 0 230 27 9 0 231 27 9 0 236 27 9 0 238 27 9 0 239 27 9 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 12 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 81 0 115 27 13 0 116] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 12 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 12 154 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 27 17 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 0 6 1 203] 
#[0 12 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 162 0 5 0 56 0 65] 
#[1 27 21 0 5 23 21 0 56 27 25 0 233 23 33 0 234] 
#[0 12 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 27 29 0 5 23 21 0 56 25 113 0 234] 
#[0 12 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 27 33 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 8 37 0 2 27 37 0 8 3 61 0 11 13 105 0 116 8 81 1 82 27 41 1 116 27 45 1 117] 
#[0 12 174 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 27 49 0 8] 
#[0 27 53 0 8] 
#[1 9 61 0 6 8 53 0 119 8 73 0 121 8 77 0 122 27 57 0 135 27 57 0 147 27 57 0 148 27 57 0 149 8 73 1 51 8 77 1 52] 
#[1 8 37 0 2 27 61 0 8 3 61 0 11 13 105 0 116 8 81 1 82 27 65 1 116 27 69 1 117] 
#[0 12 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 182 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 27 73 0 5] 
#[1 9 61 0 6 10 25 0 26 10 29 0 53 10 33 0 77 10 37 0 97 8 53 0 119 8 73 0 121 8 77 0 122 27 77 0 135 27 77 0 147 27 77 0 148 27 77 0 149 14 205 1 5 14 205 1 7 14 205 1 12 14 205 1 16 8 73 1 51 8 77 1 52 14 205 1 126 14 205 1 127 10 217 1 203] 
#[1 27 81 0 2 25 141 0 8 3 61 0 11 13 105 0 116 8 81 1 82 25 145 1 116 25 149 1 117] 
#[1 23 169 0 4 9 114 0 8 13 105 0 116 21 49 1 116] 
#[1 12 186 0 1 0 247 0 2 12 186 0 4 12 186 0 5 0 247 0 6 0 247 0 8 12 86 0 9 12 86 0 10 12 86 0 11 12 86 0 12 12 86 0 13 12 86 0 14 12 86 0 15 12 86 0 16 12 86 0 17 12 86 0 18 12 86 0 20 12 86 0 21 12 86 0 22 12 86 0 23 12 86 0 24 12 86 0 25 12 86 0 26 12 86 0 27 12 86 0 28 12 86 0 29 12 86 0 30 12 86 0 31 12 86 0 32 12 86 0 33 12 86 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 12 186 0 39 12 86 0 40 12 86 0 41 12 86 0 42 12 86 0 43 12 86 0 44 12 86 0 45 12 86 0 46 12 86 0 47 12 86 0 48 12 186 0 49 12 86 0 50 12 86 0 51 12 86 0 52 12 186 0 53 12 186 0 54 12 186 0 55 12 186 0 58 12 186 0 59 12 186 0 60 12 186 0 62 12 186 0 63 12 186 0 64 12 186 0 66 12 186 0 67 12 186 0 69 12 186 0 70 12 186 0 72 12 186 0 74 12 186 0 76 12 186 0 78 12 186 0 79 12 86 0 80 12 86 0 83 12 186 0 84 12 186 0 86 12 186 0 88 12 186 0 89 12 186 0 90 12 186 0 96 12 186 0 100 12 186 0 101 12 186 0 103 12 186 0 104 12 186 0 105 12 186 0 106 12 186 0 107 12 186 0 108 12 186 0 109 12 186 0 110 12 186 0 111 12 186 0 112 12 186 0 113 12 86 0 115 12 186 0 118 12 186 0 121 12 186 0 122 12 186 0 123 0 247 0 125 0 247 0 126 12 186 0 129 12 86 1 202 0 247 1 203 12 186 1 204] 
#[0 27 85 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 213 0 251 15 197 0 252 27 89 1 10 0 6 1 203] 
#[0 27 93 0 5] 
#[0 27 97 0 8] 
#[1 12 190 0 1 0 251 0 2 12 190 0 4 12 190 0 5 0 251 0 6 0 251 0 8 12 106 0 9 12 106 0 10 12 106 0 11 12 106 0 12 12 106 0 13 12 106 0 14 12 106 0 15 12 106 0 16 12 106 0 17 12 106 0 18 12 106 0 20 12 106 0 21 12 106 0 22 12 106 0 23 12 106 0 24 12 106 0 25 12 106 0 26 12 106 0 27 12 106 0 28 12 106 0 29 12 106 0 30 12 106 0 31 12 106 0 32 12 106 0 33 12 106 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 12 190 0 39 12 106 0 40 12 106 0 41 12 106 0 42 12 106 0 43 12 106 0 44 12 106 0 45 12 106 0 46 12 106 0 47 12 106 0 48 12 190 0 49 12 106 0 50 12 106 0 51 12 106 0 52 12 190 0 53 12 190 0 54 12 190 0 55 12 190 0 58 12 190 0 59 12 190 0 60 12 190 0 62 12 190 0 63 12 190 0 64 12 190 0 66 12 190 0 67 12 190 0 69 12 190 0 70 12 190 0 72 12 190 0 74 12 190 0 76 12 190 0 78 12 190 0 79 12 106 0 80 12 106 0 83 12 190 0 84 12 190 0 86 12 190 0 88 12 190 0 89 12 190 0 90 12 190 0 96 12 190 0 100 12 190 0 101 12 190 0 103 12 190 0 104 12 190 0 105 12 190 0 106 12 190 0 107 12 190 0 108 12 190 0 109 12 190 0 110 12 190 0 111 12 190 0 112 12 190 0 113 12 106 0 115 12 190 0 118 12 190 0 121 12 190 0 122 12 190 0 123 0 251 0 125 0 251 0 126 12 190 0 129 12 106 1 202 0 251 1 203 12 190 1 204] 
#[1 0 255 0 4 12 26 0 8] 
#[0 12 194 0 5 0 6 0 8 0 61 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 12 198 0 5 0 6 0 8 0 61 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 12 202 0 5 0 8 0 115] 
#[0 12 206 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 27 101 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 13 0 251 15 197 0 252 27 105 1 15 0 6 1 203] 
#[0 27 109 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 18 189 0 251 15 197 0 252 27 113 1 19 0 6 1 203] 
#[0 12 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 117 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 213 0 251 15 197 0 252 27 121 1 10 0 6 1 203] 
#[0 27 125 0 5] 
#[0 12 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 214 0 5] 
#[0 27 129 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 13 0 251 15 197 0 252 27 133 1 15 0 6 1 203] 
#[0 27 137 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 24 213 0 251 15 197 0 252 27 141 1 10 0 6 1 203] 
#[0 27 145 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 18 189 0 251 15 197 0 252 27 149 1 19 0 6 1 203] 
#[0 27 153 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 27 157 0 251 15 197 0 252 0 6 1 203] 
#[0 27 161 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 27 165 0 251 15 197 0 252 0 6 1 203] 
#[0 12 218 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 169 0 4] 
#[1 13 105 0 116 27 173 1 116] 
#[0 12 222 0 3] 
#[1 27 177 0 4 13 105 0 116 27 181 1 116] 
#[0 12 226 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 185 0 5] 
#[0 12 230 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 27 189 0 4 27 193 0 8] 
#[0 27 197 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 27 201 0 251 15 197 0 252 0 6 1 203] 
#[0 12 238 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 242 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 246 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 205 0 5] 
#[0 27 209 0 3] 
#[1 7 246 0 8 9 121 0 23 18 245 0 151 27 213 1 143] 
#[1 27 217 0 4 27 221 0 8] 
#[0 27 225 0 8] 
#[0 27 229 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 27 233 0 251 15 197 0 252 0 6 1 203] 
#[0 12 250 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 254 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 27 237 0 4 27 241 0 8] 
#[0 27 245 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 27 249 0 251 15 197 0 252 0 6 1 203] 
#[0 13 2 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 6 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 10 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 253 0 5] 
#[0 13 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 28 1 0 5] 
#[0 13 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 28 5 0 14] 
#[0 28 9 0 14] 
#[0 13 22 0 4 0 129 0 131] 
#[1 0 22 0 5 28 13 1 76] 
#[0 13 26 0 4 0 9 0 14 0 130] 
#[0 13 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 28 17 0 193 28 17 0 196 28 17 0 197 28 17 0 198 28 17 0 206 28 17 0 220 28 17 0 221 28 17 0 222 28 17 0 223 28 17 0 226 28 17 0 227 28 17 0 229 28 17 0 230 28 17 0 231 28 17 0 236 28 17 0 238 28 17 0 239 28 17 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 28 21 0 193 28 21 0 196 28 21 0 197 28 21 0 198 28 21 0 206 28 21 0 220 28 21 0 221 28 21 0 222 28 21 0 223 28 21 0 226 28 21 0 227 28 21 0 229 28 21 0 230 28 21 0 231 28 21 0 236 28 21 0 238 28 21 0 239 28 21 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[1 28 25 0 3 6 81 0 115] 
#[0 13 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 28 29 0 193 28 29 0 196 28 29 0 197 28 29 0 198 28 29 0 206 28 29 0 220 28 29 0 221 28 29 0 222 28 29 0 223 28 29 0 226 28 29 0 227 28 29 0 229 28 29 0 230 28 29 0 231 28 29 0 236 28 29 0 238 28 29 0 239 28 29 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 13 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 28 33 0 193 28 33 0 196 28 33 0 197 28 33 0 198 28 33 0 206 28 33 0 220 28 33 0 221 28 33 0 222 28 33 0 223 28 33 0 226 28 33 0 227 28 33 0 229 28 33 0 230 28 33 0 231 28 33 0 236 28 33 0 238 28 33 0 239 28 33 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 13 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 13 66 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 66 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 13 66 0 65 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 28 37 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 0 6 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 13 70 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 70 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 205 0 200 0 57 0 201 6 205 0 202 0 65 0 203 0 6 1 203] 
#[0 13 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 28 41 0 5 23 21 0 56 25 113 0 234] 
#[0 13 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 45 0 3] 
#[0 13 82 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 28 49 0 8] 
#[0 28 53 0 8] 
#[0 13 86 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 90 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[1 8 37 0 2 28 57 0 8 3 61 0 11 13 105 0 116 8 81 1 82 28 61 1 116 28 65 1 117] 
#[0 13 94 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 28 69 0 8] 
#[0 28 73 0 8] 
#[0 13 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 27 81 0 2 27 37 0 8 3 61 0 11 13 105 0 116 8 81 1 82 27 41 1 116 27 45 1 117] 
#[1 0 86 0 3 4 45 0 4 4 49 0 6 4 125 0 114 0 189 0 118 9 69 0 134 4 137 0 209 4 137 0 210 4 137 0 211 4 169 0 217 4 169 0 218 4 165 0 219 18 217 0 246 28 77 0 247 4 161 0 248 4 165 0 249 4 169 0 250 8 33 1 203] 
#[1 13 102 0 1 1 3 0 2 13 102 0 4 13 102 0 5 1 3 0 6 1 3 0 8 13 14 0 9 13 14 0 10 13 14 0 11 13 14 0 12 13 14 0 13 13 14 0 14 13 14 0 15 13 14 0 16 13 14 0 17 13 14 0 18 13 14 0 20 13 14 0 21 13 14 0 22 13 14 0 23 13 14 0 24 13 14 0 25 13 14 0 26 13 14 0 27 13 14 0 28 13 14 0 29 13 14 0 30 13 14 0 31 13 14 0 32 13 14 0 33 13 14 0 34 1 3 0 35 1 3 0 36 1 3 0 37 1 3 0 38 13 102 0 39 13 14 0 40 13 14 0 41 13 14 0 42 13 14 0 43 13 14 0 44 13 14 0 45 13 14 0 46 13 14 0 47 13 14 0 48 13 102 0 49 13 14 0 50 13 14 0 51 13 14 0 52 13 102 0 53 13 102 0 54 13 102 0 55 13 102 0 58 13 102 0 59 13 102 0 60 13 102 0 62 13 102 0 63 13 102 0 64 13 102 0 66 13 102 0 67 13 102 0 69 13 102 0 70 13 102 0 72 13 102 0 74 13 102 0 76 13 102 0 78 13 102 0 79 13 14 0 80 13 14 0 83 13 102 0 84 13 102 0 86 13 102 0 88 13 102 0 89 13 102 0 90 13 102 0 96 13 102 0 100 13 102 0 101 13 102 0 103 13 102 0 104 13 102 0 105 13 102 0 106 13 102 0 107 13 102 0 108 13 102 0 109 13 102 0 110 13 102 0 111 13 102 0 112 13 102 0 113 13 14 0 115 13 102 0 118 13 102 0 121 13 102 0 122 13 102 0 123 1 3 0 125 1 3 0 126 13 102 0 129 13 14 1 202 1 3 1 203 13 102 1 204] 
#[0 28 81 0 5] 
#[1 13 106 0 1 1 7 0 2 13 106 0 4 13 106 0 5 1 7 0 6 1 7 0 8 13 18 0 9 13 18 0 10 13 18 0 11 13 18 0 12 13 18 0 13 13 18 0 14 13 18 0 15 13 18 0 16 13 18 0 17 13 18 0 18 13 18 0 20 13 18 0 21 13 18 0 22 13 18 0 23 13 18 0 24 13 18 0 25 13 18 0 26 13 18 0 27 13 18 0 28 13 18 0 29 13 18 0 30 13 18 0 31 13 18 0 32 13 18 0 33 13 18 0 34 1 7 0 35 1 7 0 36 1 7 0 37 1 7 0 38 13 106 0 39 13 18 0 40 13 18 0 41 13 18 0 42 13 18 0 43 13 18 0 44 13 18 0 45 13 18 0 46 13 18 0 47 13 18 0 48 13 106 0 49 13 18 0 50 13 18 0 51 13 18 0 52 13 106 0 53 13 106 0 54 13 106 0 55 13 106 0 58 13 106 0 59 13 106 0 60 13 106 0 62 13 106 0 63 13 106 0 64 13 106 0 66 13 106 0 67 13 106 0 69 13 106 0 70 13 106 0 72 13 106 0 74 13 106 0 76 13 106 0 78 13 106 0 79 13 18 0 80 13 18 0 83 13 106 0 84 13 106 0 86 13 106 0 88 13 106 0 89 13 106 0 90 13 106 0 96 13 106 0 100 13 106 0 101 13 106 0 103 13 106 0 104 13 106 0 105 13 106 0 106 13 106 0 107 13 106 0 108 13 106 0 109 13 106 0 110 13 106 0 111 13 106 0 112 13 106 0 113 13 18 0 115 13 106 0 118 13 106 0 121 13 106 0 122 13 106 0 123 1 7 0 125 1 7 0 126 13 106 0 129 13 18 1 202 1 7 1 203 13 106 1 204] 
#[0 13 110 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 114 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 85 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 13 0 251 15 197 0 252 28 89 1 15 0 6 1 203] 
#[0 28 93 0 5] 
#[0 13 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 97 0 5] 
#[0 13 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 28 101 0 5] 
#[0 13 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 28 105 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 26 13 0 251 15 197 0 252 28 109 1 15 0 6 1 203] 
#[0 28 113 0 5] 
#[0 13 126 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 117 0 5] 
#[0 13 130 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 121 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 125 0 251 15 197 0 252 0 6 1 203] 
#[0 28 129 0 4] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 133 0 251 15 197 0 252 0 6 1 203] 
#[0 28 137 0 4] 
#[0 13 134 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 141 0 251 15 197 0 252 0 6 1 203] 
#[0 13 138 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 142 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 145 0 5] 
#[0 13 146 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 28 149 0 4 28 153 0 8] 
#[0 28 157 0 8] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 161 0 251 15 197 0 252 0 6 1 203] 
#[0 13 150 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 154 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 158 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 165 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 169 0 251 15 197 0 252 0 6 1 203] 
#[0 13 162 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 166 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 173 0 5] 
#[0 13 170 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 13 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 130 1 202 1 203 1 204] 
#[0 13 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 28 177 0 5] 
#[0 13 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 1 0 97 0 2 0 15 0 4 0 101 0 6 1 209 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 49 0 129 0 53 0 133 0 54 1 213 0 55 0 137 0 58 1 217 0 62 1 221 0 63 0 141 0 66 1 225 0 67 1 165 0 72 1 229 0 74 0 149 0 76 1 233 0 78 0 153 0 79 0 157 0 89 1 161 0 90 1 237 0 96 0 165 0 100 1 241 0 101 0 169 0 103 1 245 0 104 1 165 0 105 1 249 0 106 0 177 0 108 1 253 0 109 0 181 0 110 2 1 0 111 2 5 0 112 0 185 0 113 2 9 0 118 1 169 0 121 1 173 0 122 0 201 0 123 0 205 0 125 0 18 0 126 0 11 0 129 0 213 0 134 0 249 0 136 0 249 0 137 0 249 0 138 0 249 0 139 0 249 0 143 0 237 0 144 0 249 0 152 0 245 0 153 0 249 0 156 0 249 0 157 0 249 0 158 0 249 0 159 1 33 0 160 1 13 0 161 1 13 0 162 1 13 0 163 1 13 0 164 1 29 0 167 1 33 0 171 1 41 0 172 1 41 0 173 1 49 0 174 1 49 0 175 1 53 0 177 1 57 0 178 1 61 0 179 1 65 0 180 1 69 0 181 1 73 0 182 1 77 0 183 1 81 0 184 1 85 0 185 1 89 0 186 1 93 0 187 1 97 0 188 2 13 0 189 2 13 0 190 2 13 0 192 28 181 0 193 28 181 0 196 28 181 0 197 28 181 0 198 28 181 0 206 28 181 0 220 28 181 0 221 28 181 0 222 28 181 0 223 28 181 0 226 28 181 0 227 28 181 0 229 28 181 0 230 28 181 0 231 28 181 0 236 28 181 0 238 28 181 0 239 28 181 0 243 0 249 0 245 2 13 0 253 1 121 0 254 1 125 0 255 1 129 1 2 2 13 1 3 0 249 1 9 2 13 1 11 0 249 1 14 0 249 1 18 1 41 1 20 0 249 1 22 1 161 1 49 1 165 1 50 1 169 1 51 1 173 1 52 0 249 1 53 0 249 1 54 0 249 1 55 1 189 1 56 0 249 1 58 1 197 1 76 1 201 1 203] 
#[0 13 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 13 202 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 202 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 13 202 0 65 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 205 0 200 0 57 0 201 6 205 0 202 0 65 0 203 0 6 1 203] 
#[0 13 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 185 0 8] 
#[0 13 210 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 214 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 218 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 28 189 0 8] 
#[0 28 193 0 8] 
#[0 13 222 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 226 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 1 11 0 3] 
#[1 13 230 0 1 1 15 0 2 13 230 0 4 13 230 0 5 1 15 0 6 1 15 0 8 13 174 0 9 13 174 0 10 13 174 0 11 13 174 0 12 13 174 0 13 13 174 0 14 13 174 0 15 13 174 0 16 13 174 0 17 13 174 0 18 13 174 0 20 13 174 0 21 13 174 0 22 13 174 0 23 13 174 0 24 13 174 0 25 13 174 0 26 13 174 0 27 13 174 0 28 13 174 0 29 13 174 0 30 13 174 0 31 13 174 0 32 13 174 0 33 13 174 0 34 1 15 0 35 1 15 0 36 1 15 0 37 1 15 0 38 13 230 0 39 13 174 0 40 13 174 0 41 13 174 0 42 13 174 0 43 13 174 0 44 13 174 0 45 13 174 0 46 13 174 0 47 13 174 0 48 13 230 0 49 13 174 0 50 13 174 0 51 13 174 0 52 13 230 0 53 13 230 0 54 13 230 0 55 13 230 0 58 13 230 0 59 13 230 0 60 13 230 0 62 13 230 0 63 13 230 0 64 13 230 0 66 13 230 0 67 13 230 0 69 13 230 0 70 13 230 0 72 13 230 0 74 13 230 0 76 13 230 0 78 13 230 0 79 13 174 0 80 13 174 0 83 13 230 0 84 13 230 0 86 13 230 0 88 13 230 0 89 13 230 0 90 13 230 0 96 13 230 0 100 13 230 0 101 13 230 0 103 13 230 0 104 13 230 0 105 13 230 0 106 13 230 0 107 13 230 0 108 13 230 0 109 13 230 0 110 13 230 0 111 13 230 0 112 13 230 0 113 13 174 0 115 13 230 0 118 13 230 0 121 13 230 0 122 13 230 0 123 1 15 0 125 1 15 0 126 13 230 0 129 13 174 1 202 1 15 1 203 13 230 1 204] 
#[0 13 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 197 0 5] 
#[0 13 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 13 246 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 201 0 5] 
#[0 13 250 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 13 254 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 2 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 205 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 209 0 251 15 197 0 252 0 6 1 203] 
#[0 28 213 0 5] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 217 0 251 15 197 0 252 0 6 1 203] 
#[0 28 221 0 5] 
#[0 14 6 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 6 142 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 189 0 199 2 93 0 200 0 57 0 201 2 93 0 202 0 65 0 203 28 225 0 251 15 197 0 252 0 6 1 203] 
#[0 14 10 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 14 14 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 229 0 5] 
#[0 14 18 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 233 0 5] 
#[0 14 22 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 14 26 0 4 0 9 0 14 0 130] 
#[0 14 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 14 34 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 14 38 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 14 42 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 14 46 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 14 50 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 54 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 237 0 5] 
#[0 14 58 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 241 0 5] 
#[0 14 62 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 245 0 5] 
#[0 14 66 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 14 70 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 14 74 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 78 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 82 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203]
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
JSParser >> reduceActionForBindingElement2: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
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
JSParser >> reduceActionForCallExpression6: nodes [
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
JSParser >> reduceActionForClassDeclaration6: nodes [
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
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForConstructorDeclaration4: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForConstructorDeclaration5: nodes [
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
JSParser >> reduceActionForConstructorDeclaration6: nodes [
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
JSParser >> reduceActionForConstructorDeclaration7: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForConstructorDeclaration8: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForDecoratorExpression1: nodes [
	| result |
	result := JSDecoratorExpressionNode new.
	result decorator: (nodes at: 2).
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
JSParser >> reduceActionForInitializer_1: nodes [
	| result |
	result := Array new: 2.
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
JSParser >> reduceActionForMemberAccessorDeclaration5: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result decorator: (nodes at: 1).
	result accessor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration6: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result decorator: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result accessor: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration7: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result decorator: (nodes at: 1).
	result modifier: (nodes at: 2).
	result accessor: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration8: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForMemberFunctionDeclaration10: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration11: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration12: nodes [
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
JSParser >> reduceActionForMemberFunctionDeclaration13: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result decorator: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration14: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result decorator: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration15: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result decorator: (nodes at: 1).
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration16: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result decorator: (nodes at: 1).
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result signature: (nodes at: 5).
	result semicolon: (nodes at: 6).
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
	result decorator: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration6: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result decorator: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration7: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result decorator: (nodes at: 1).
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration8: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForMemberFunctionDeclaration9: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration10: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration11: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration12: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForMemberVariableDeclaration13: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration14: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
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
JSParser >> reduceActionForMemberVariableDeclaration15: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration16: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
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
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration2: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration3: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration4: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration5: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration6: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration7: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration8: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration9: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result decorator: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result value: ((nodes at: 3) at: 2).
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
