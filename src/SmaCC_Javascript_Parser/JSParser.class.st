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
#[ 0 30 2 121] 
#[ 0 34 0 38 0 42 0 46] 
#[ 0 14 4 41] 
#[ 1 218 1 222] 
#[ 1 226 1 230] 
#[ 1 234 1 238] 
#[ 1 246 1 250] 
#[ 1 254 2 2 2 6] 
#[ 1 254 2 2] 
#[ 2 30 2 34] 
#[ 2 50 2 54] 
#[ 2 102 2 106] 
#[ 2 110 2 114] 
#[ 2 118 2 122] 
#[ 2 126 2 130] 
#[ 0 30 7 53] 
#[ 2 158 8 121] 
#[ 2 162 8 125] 
#[ 1 114 2 170] 
#[ 0 138 3 70] 
#[ 0 138 9 65] 
#[ 0 30 9 133] 
#[ 0 30 9 137] 
#[ 0 30 9 141] 
#[ 0 30 0 185] 
#[ 0 14 11 69] 
#[ 3 150 4 54] 
#[ 2 142 3 70] 
#[ 1 114 4 186] 
#[ 1 114 4 190] 
#[ 4 202 10 101] 
#[ 3 106 5 6] 
#[ 0 14 14 133] 
#[ 0 30 7 241] 
#[ 0 30 7 249] 
#[ 0 30 0 189] 
#[ 0 30 0 193] 
#[ 0 22 6 98] 
#[ 2 142 4 178] 
#[ 0 206 16 17] 
#[ 5 142 6 174] 
#[ 0 138 6 202] 
#[ 5 121 6 206] 
#[ 5 65 6 206] 
#[ 6 234 6 238] 
#[ 6 242 6 246] 
#[ 7 6 7 10] 
#[ 4 106 4 250] 
#[ 4 166 5 6] 
#[ 3 110 13 89] 
#[ 7 58 8 125] 
#[ 1 114 7 62] 
#[ 0 138 5 30] 
#[ 5 82 7 130] 
#[ 0 138 20 217] 
#[ 0 50 0 185] 
#[ 0 54 0 185] 
#[ 11 130 11 238] 
#[ 12 70 12 170] 
#[ 10 110 14 225] 
#[ 12 90 12 174] 
#[ 12 250 13 82] 
#[ 12 254 13 86] 
#[ 13 142 13 198] 
#[ 3 90 17 197]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2021-10-21T15:21:48.188085-05:00'
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
:	<leftBracket> 'leftBracket' TupleElementTypes? <comma> 'comma'? <rightBracket> 'rightBracket' {{}}	##
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
:	DecoratorExpression 'decorator'* <export> 'exportToken' VariableStatement 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' LexicalDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' FunctionDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' GeneratorDeclaration 'declaration' {{}}
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
	#(200 0 #reduceActionForStartStatementListItem1: 23258113 true) 
	#(285 0 #reduceActionForModule1: 36494337 false) 
	#(144 0 #reduceActionForValidationNotArrowFunction1: 11379713 true) 
	#(153 0 #reduceActionForStartTemplateLiteral1: 12595201 true) 
	#(331 0 #reduceActionForSwitchToJSX1: 41760769 true) 
	#(283 0 #reduceActionForScript1: 36435969 false) 
	#(373 0 #reduceActionForDecoratorExpression__decorator__1: 45809665 false) 
	#(422 0 #reduceActionForDecoratorExpression__decorator__1: 57786369 false) 
	#(429 0 #reduceActionForDecoratorExpression__decorator__1: 58625025 false) 
	#(426 0 #reduceActionForDecoratorExpression__decorator__1: 58183681 false) 
	#(418 0 #reduceActionForDecoratorExpression__decorator__1: 57243649 false) 
	#(202 1 #liftFirstValue: 23430146 false) 
	#(202 1 #liftFirstValue: 23430145 false) 
	#(288 1 #liftFirstValue: 36627459 false) 
	#(199 1 #liftFirstValue: 23160834 false) 
	#(133 1 #liftFirstValue: 8716289 false) 
	#(285 1 #reduceActionForModule2: 36494338 false) 
	#(286 1 #reduceActionForModuleBody1: 36523009 false) 
	#(287 1 #reduceActionForModuleItemList1: 36553729 false) 
	#(288 1 #liftFirstValue: 36627457 false) 
	#(288 1 #liftFirstValue: 36627458 false) 
	#(246 0 #reduceActionForFormalParameters1: 31399937 false) 
	#(305 1 #liftFirstValue: 39099394 false) 
	#(304 1 #liftFirstValue: 39075841 false) 
	#(136 1 #reduceActionForPrimaryExpression1: 9123841 false) 
	#(305 1 #liftFirstValue: 39099393 false) 
	#(266 1 #reduceActionForYieldExpression1: 33988609 false) 
	#(134 1 #reduceActionForIdentifier1: 8828929 false) 
	#(306 1 #liftFirstValue: 39136257 false) 
	#(307 1 #liftFirstValue: 39172097 false) 
	#(308 1 #reduceActionForRegularExpressionLiteral1: 39209985 false) 
	#(152 1 #reduceActionForTemplateLiteral1: 12439553 false) 
	#(332 0 #reduceActionForSwitchToJSXText1: 41801729 true) 
	#(136 1 #liftFirstValue: 9123842 false) 
	#(254 1 #reduceActionForArrowParameterDeclaration1: 32046081 false) 
	#(156 1 #liftFirstValue: 12865537 false) 
	#(136 1 #liftFirstValue: 9123853 false) 
	#(136 1 #liftFirstValue: 9123843 false) 
	#(136 1 #liftFirstValue: 9123844 false) 
	#(136 1 #liftFirstValue: 9123845 false) 
	#(136 1 #liftFirstValue: 9123852 false) 
	#(160 1 #liftFirstValue: 13763585 false) 
	#(156 1 #liftFirstValue: 12865541 false) 
	#(156 1 #liftFirstValue: 12865542 false) 
	#(158 1 #liftFirstValue: 13632513 false) 
	#(170 1 #liftFirstValue: 15855617 false) 
	#(170 1 #liftFirstValue: 15855618 false) 
	#(161 1 #liftFirstValue: 13853698 false) 
	#(161 1 #liftFirstValue: 13853699 false) 
	#(170 1 #liftFirstValue: 15855619 false) 
	#(171 1 #liftFirstValue: 15937537 false) 
	#(172 1 #liftFirstValue: 16306177 false) 
	#(173 1 #liftFirstValue: 16758785 false) 
	#(174 1 #liftFirstValue: 16928769 false) 
	#(176 1 #liftFirstValue: 17188865 false) 
	#(177 1 #liftFirstValue: 17486849 false) 
	#(178 1 #liftFirstValue: 17871873 false) 
	#(179 1 #liftFirstValue: 18610177 false) 
	#(180 1 #liftFirstValue: 19140609 false) 
	#(181 1 #liftFirstValue: 19304449 false) 
	#(182 1 #liftFirstValue: 19472385 false) 
	#(183 1 #liftFirstValue: 19639297 false) 
	#(186 1 #liftFirstValue: 20136962 false) 
	#(184 1 #liftFirstValue: 19809281 false) 
	#(187 1 #liftFirstValue: 20210689 false) 
	#(187 1 #liftFirstValue: 20210690 false) 
	#(186 1 #liftFirstValue: 20136961 false) 
	#(188 1 #liftFirstValue: 20284417 false) 
	#(189 1 #liftFirstValue: 20511745 false) 
	#(191 1 #liftFirstValue: 22239233 false) 
	#(136 1 #liftFirstValue: 9123846 false) 
	#(189 1 #liftFirstValue: 20511747 false) 
	#(253 1 #reduceActionForArrowParameters1: 31955969 false) 
	#(253 1 #reduceActionForArrowParameters2: 31955970 false) 
	#(189 1 #liftFirstValue: 20511748 false) 
	#(136 1 #liftFirstValue: 9123848 false) 
	#(189 1 #liftFirstValue: 20511746 false) 
	#(136 1 #liftFirstValue: 9123850 false) 
	#(136 1 #liftFirstValue: 9123849 false) 
	#(172 1 #liftFirstValue: 16306185 false) 
	#(136 1 #liftFirstValue: 9123847 false) 
	#(138 1 #reduceActionForLiteral1: 10224641 false) 
	#(138 1 #reduceActionForLiteral2: 10224642 false) 
	#(138 1 #reduceActionForLiteral4: 10224644 false) 
	#(138 1 #reduceActionForLiteral3: 10224643 false) 
	#(136 1 #liftFirstValue: 9123851 false) 
	#(136 1 #liftFirstValue: 9123854 false) 
	#(309 1 #liftFirstValue: 39461889 false) 
	#(333 0 #reduceActionForStartJSXText1: 41850881 true) 
	#(136 1 #liftFirstValue: 9123855 false) 
	#(219 1 #reduceActionForEmptyStatement1: 25777153 false) 
	#(227 0 #reduceActionForCheckEOL1: 29247489 true) 
	#(192 1 #liftFirstValue: 22390790 false) 
	#(192 1 #liftFirstValue: 22390785 false) 
	#(196 1 #liftFirstValue: 22940673 false) 
	#(192 1 #liftFirstValue: 22390786 false) 
	#(192 1 #liftFirstValue: 22390787 false) 
	#(192 1 #liftFirstValue: 22390788 false) 
	#(192 1 #liftFirstValue: 22390789 false) 
	#(195 1 #liftFirstValue: 22878209 false) 
	#(192 1 #liftFirstValue: 22390791 false) 
	#(192 1 #liftFirstValue: 22390792 false) 
	#(192 1 #liftFirstValue: 22390793 false) 
	#(192 1 #liftFirstValue: 22390794 false) 
	#(195 1 #liftFirstValue: 22878210 false) 
	#(192 1 #liftFirstValue: 22390795 false) 
	#(192 1 #liftFirstValue: 22390796 false) 
	#(192 1 #liftFirstValue: 22390797 false) 
	#(192 1 #liftFirstValue: 22390798 false) 
	#(284 1 #reduceActionForModuleBody1: 36464641 false) 
	#(198 1 #reduceActionForModuleItemList1: 23063553 false) 
	#(283 1 #reduceActionForScript2: 36435970 false) 
	#(421 1 #liftFirstValue: 57526273 false) 
	#(421 1 #liftFirstValue: 57526274 false) 
	#(421 1 #liftFirstValue: 57526275 false) 
	#(421 1 #liftFirstValue: 57526276 false) 
	#(421 1 #liftFirstValue: 57526277 false) 
	#(431 1 #liftFirstValue: 58806274 false) 
	#(428 1 #liftFirstValue: 58383362 false) 
	#(421 1 #liftFirstValue: 57526279 false) 
	#(425 1 #liftFirstValue: 58044418 false) 
	#(421 1 #liftFirstValue: 57526278 false) 
	#(425 1 #liftFirstValue: 58044417 false) 
	#(421 1 #liftFirstValue: 57526280 false) 
	#(421 1 #liftFirstValue: 57526281 false) 
	#(425 1 #liftFirstValue: 58044419 false) 
	#(428 1 #liftFirstValue: 58383363 false) 
	#(421 1 #liftFirstValue: 57526283 false) 
	#(425 1 #liftFirstValue: 58044421 false) 
	#(415 1 #reduceActionForSourceFile1: 57003009 false) 
	#(415 1 #reduceActionForSourceFile1: 57003010 false) 
	#(416 1 #reduceActionForModuleBody1: 57103361 false) 
	#(418 1 #reduceActionForModuleBody1: 57243650 false) 
	#(419 1 #reduceActionForModuleItemList1: 57299969 false) 
	#(428 1 #liftFirstValue: 58383361 false) 
	#(420 1 #liftFirstValue: 57443329 false) 
	#(417 1 #reduceActionForModuleBody1: 57178113 false) 
	#(422 1 #reduceActionForModuleBody1: 57786370 false) 
	#(423 1 #reduceActionForModuleItemList1: 57836545 false) 
	#(431 1 #liftFirstValue: 58806273 false) 
	#(424 1 #liftFirstValue: 57967617 false) 
	#(416 1 #reduceActionForModuleBody1: 57103362 false) 
	#(426 1 #reduceActionForModuleBody1: 58183682 false) 
	#(427 1 #reduceActionForModuleItemList1: 58240001 false) 
	#(417 1 #reduceActionForModuleBody1: 57178114 false) 
	#(429 1 #reduceActionForModuleBody1: 58625026 false) 
	#(430 1 #reduceActionForModuleItemList1: 58675201 false) 
	#(428 1 #liftFirstValue: 58383364 false) 
	#(428 1 #liftFirstValue: 58383365 false) 
	#(431 1 #liftFirstValue: 58806275 false) 
	#(428 1 #liftFirstValue: 58383366 false) 
	#(431 1 #liftFirstValue: 58806276 false) 
	#(428 1 #liftFirstValue: 58383367 false) 
	#(431 1 #liftFirstValue: 58806277 false) 
	#(428 1 #liftFirstValue: 58383368 false) 
	#(431 1 #liftFirstValue: 58806278 false) 
	#(425 1 #liftFirstValue: 58044420 false) 
	#(421 1 #liftFirstValue: 57526282 false) 
	#(420 1 #liftFirstValue: 57443330 false) 
	#(424 1 #liftFirstValue: 57967618 false) 
	#(369 1 #reduceActionForThisType1: 45336577 false) 
	#(351 1 #reduceActionForPredefinedType1: 43371521 false) 
	#(353 1 #reduceActionForTypeName1: 43517953 false) 
	#(354 1 #reduceActionForNamespaceName1: 43624449 false) 
	#(349 1 #reduceActionForLiteralType1: 43208705 false) 
	#(349 1 #reduceActionForLiteralType1: 43208706 false) 
	#(344 1 #liftFirstValue: 42673153 false) 
	#(345 1 #liftFirstValue: 42749954 false) 
	#(346 1 #liftFirstValue: 42826754 false) 
	#(347 1 #liftFirstValue: 42888193 false) 
	#(348 1 #liftFirstValue: 43031561 false) 
	#(348 1 #liftFirstValue: 43031553 false) 
	#(348 1 #liftFirstValue: 43031554 false) 
	#(348 1 #liftFirstValue: 43031555 false) 
	#(348 1 #liftFirstValue: 43031556 false) 
	#(348 1 #liftFirstValue: 43031557 false) 
	#(348 1 #liftFirstValue: 43031558 false) 
	#(345 1 #liftFirstValue: 42749953 false) 
	#(346 1 #liftFirstValue: 42826753 false) 
	#(344 1 #liftFirstValue: 42673154 false) 
	#(344 1 #liftFirstValue: 42673155 false) 
	#(348 1 #liftFirstValue: 43031559 false) 
	#(348 1 #liftFirstValue: 43031560 false) 
	#(300 1 #reduceActionForExportFromClause1: 38525953 false) 
	#(299 2 #reduceActionForExportDeclaration4: 37841924 false) 
	#(193 1 #liftFirstValue: 22673409 false) 
	#(193 1 #liftFirstValue: 22673411 false) 
	#(299 2 #reduceActionForExportDeclaration3: 37841923 false) 
	#(194 1 #liftFirstValue: 22752257 false) 
	#(194 1 #liftFirstValue: 22752258 false) 
	#(194 1 #liftFirstValue: 22752260 false) 
	#(194 1 #liftFirstValue: 22752259 false) 
	#(193 1 #liftFirstValue: 22673410 false) 
	#(300 1 #reduceActionForExportFromClause3: 38525955 false) 
	#(298 1 #liftFirstValue: 37807105 false) 
	#(290 1 #reduceActionForImportClause1: 36874241 false) 
	#(290 1 #reduceActionForImportClause1: 36874242 false) 
	#(290 1 #reduceActionForImportClause1: 36874243 false) 
	#(291 1 #liftFirstValue: 37127169 false) 
	#(297 1 #liftFirstValue: 37765121 false) 
	#(199 2 #liftSecondValue: 23160833 false) 
	#(204 1 #reduceActionForArrowParameterDeclaration1: 23560193 false) 
	#(203 1 #reduceActionForNamespaceName1: 23461889 false) 
	#(208 1 #liftFirstValue: 24107009 false) 
	#(208 1 #liftFirstValue: 24107010 false) 
	#(204 1 #liftFirstValue: 23560196 false) 
	#(204 1 #liftFirstValue: 23560197 false) 
	#(287 2 #reduceActionForModuleItemList2: 36553730 false) 
	#(217 1 #reduceActionForArrowParameterDeclaration1: 25508865 false) 
	#(216 1 #reduceActionForBindingElement2: 25398274 false) 
	#(249 1 #liftFirstValue: 31769601 false) 
	#(216 1 #liftFirstValue: 25398273 false) 
	#(248 1 #liftFirstValue: 31723521 false) 
	#(245 1 #reduceActionForModuleBody1: 31354881 false) 
	#(246 1 #reduceActionForFormalParameters3: 31399939 false) 
	#(246 1 #reduceActionForFormalParameters2: 31399938 false) 
	#(247 1 #reduceActionForNamespaceName1: 31601665 false) 
	#(139 2 #reduceActionForArrayLiteral1: 10406913 false) 
	#(141 1 #reduceActionForModuleItemList1: 10886145 false) 
	#(140 1 #reduceActionForNamespaceName1: 10668035 false) 
	#(140 1 #reduceActionForNamespaceName1: 10668033 false) 
	#(172 2 #reduceActionForUnaryExpression5: 16306181 false) 
	#(171 2 #reduceActionForUpdateExpression4: 15937540 false) 
	#(172 2 #reduceActionForUnaryExpression5: 16306182 false) 
	#(171 2 #reduceActionForUpdateExpression4: 15937541 false) 
	#(172 2 #reduceActionForUnaryExpression5: 16306183 false) 
	#(172 2 #reduceActionForUnaryExpression5: 16306184 false) 
	#(275 2 #reduceActionForAwaitExpression1: 35715073 false) 
	#(277 2 #reduceActionForClassExpression1: 35912705 false) 
	#(172 2 #reduceActionForUnaryExpression5: 16306178 false) 
	#(160 2 #reduceActionForNewExpression2: 13763586 false) 
	#(162 2 #reduceActionForSuperCall1: 14337025 false) 
	#(172 2 #reduceActionForUnaryExpression5: 16306180 false) 
	#(172 2 #reduceActionForUnaryExpression5: 16306179 false) 
	#(266 2 #reduceActionForYieldExpression2: 33988610 false) 
	#(156 2 #reduceActionForMemberExpression4: 12865540 false) 
	#(161 2 #reduceActionForCallExpression1: 13853697 false) 
	#(166 2 #reduceActionForOptionalExpression1: 15001601 false) 
	#(161 2 #reduceActionForMemberExpression4: 13853703 false) 
	#(161 2 #reduceActionForCallExpression1: 13853700 false) 
	#(166 2 #reduceActionForOptionalExpression1: 15001602 false) 
	#(166 2 #reduceActionForOptionalExpression1: 15001603 false) 
	#(190 1 #liftFirstValue: 20716547 false) 
	#(190 1 #liftFirstValue: 20716551 false) 
	#(190 1 #liftFirstValue: 20716552 false) 
	#(190 1 #liftFirstValue: 20716553 false) 
	#(190 1 #liftFirstValue: 20716545 false) 
	#(190 1 #liftFirstValue: 20716546 false) 
	#(190 1 #liftFirstValue: 20716548 false) 
	#(190 1 #liftFirstValue: 20716554 false) 
	#(190 1 #liftFirstValue: 20716555 false) 
	#(190 1 #liftFirstValue: 20716556 false) 
	#(190 1 #liftFirstValue: 20716550 false) 
	#(190 1 #liftFirstValue: 20716549 false) 
	#(171 2 #reduceActionForUpdateExpression2: 15937538 false) 
	#(171 2 #reduceActionForUpdateExpression2: 15937539 false) 
	#(190 1 #liftFirstValue: 20716557 false) 
	#(175 1 #liftFirstValue: 17131522 false) 
	#(175 1 #liftFirstValue: 17131521 false) 
	#(175 1 #liftFirstValue: 17131523 false) 
	#(328 0 #reduceActionForDecoratorExpression__decorator__1: 41446401 false) 
	#(257 2 #reduceActionForArrowFormalParameters2: 32296962 false) 
	#(197 2 #reduceActionForBlock1: 22966273 false) 
	#(242 2 #reduceActionForDebuggerStatement1: 30845953 false) 
	#(207 1 #reduceActionForArrowParameterDeclaration1: 23946241 false) 
	#(206 1 #reduceActionForNamespaceName1: 23810049 false) 
	#(220 2 #reduceActionForExpressionStatement1: 25827329 false) 
	#(198 2 #reduceActionForModuleItemList2: 23063554 false) 
	#(276 2 #reduceActionForClassExpression1: 35791873 false) 
	#(450 1 #liftFirstValue: 64259073 false) 
	#(439 2 #reduceActionForAmbientDeclaration1: 62187521 false) 
	#(439 2 #reduceActionForAmbientDeclaration1: 62187522 false) 
	#(439 2 #reduceActionForAmbientDeclaration1: 62187523 false) 
	#(439 2 #reduceActionForAmbientDeclaration1: 62187524 false) 
	#(439 2 #reduceActionForAmbientDeclaration1: 62187525 false) 
	#(408 1 #reduceActionForNamespaceName1: 55491585 false) 
	#(373 2 #reduceActionForModuleItemList2: 45809666 false) 
	#(419 2 #reduceActionForModuleItemList2: 57299970 false) 
	#(423 2 #reduceActionForModuleItemList2: 57836546 false) 
	#(427 2 #reduceActionForModuleItemList2: 58240002 false) 
	#(430 2 #reduceActionForModuleItemList2: 58675202 false) 
	#(355 2 #reduceActionForObjectType1: 43728897 false) 
	#(135 1 #reduceActionForIdentifier1: 9022465 false) 
	#(148 1 #liftFirstValue: 12044289 false) 
	#(370 1 #reduceActionForPropertySignature1: 45374465 false) 
	#(147 1 #liftFirstValue: 11981825 false) 
	#(147 1 #liftFirstValue: 11981826 false) 
	#(148 1 #reduceActionForIdentifier1: 12044290 false) 
	#(148 1 #reduceActionForIdentifier1: 12044291 false) 
	#(356 1 #reduceActionForModuleBody1: 43810817 false) 
	#(357 1 #reduceActionForNamespaceName1: 43907073 false) 
	#(358 1 #liftFirstValue: 44061697 false) 
	#(358 1 #liftFirstValue: 44061698 false) 
	#(358 1 #liftFirstValue: 44061699 false) 
	#(358 1 #liftFirstValue: 44061700 false) 
	#(358 1 #liftFirstValue: 44061701 false) 
	#(360 2 #reduceActionForTupleType1: 44276737 false) 
	#(362 1 #liftFirstValue: 44504065 false) 
	#(361 1 #reduceActionForNamespaceName1: 44395521 false) 
	#(339 1 #reduceActionForTypeParameter1: 42358785 false) 
	#(338 1 #reduceActionForNamespaceName1: 42246145 false) 
	#(347 2 #reduceActionForPrefixType3: 42888195 false) 
	#(347 2 #reduceActionForPrefixType2: 42888194 false) 
	#(368 1 #reduceActionForTypeQueryExpression1: 45212673 false) 
	#(367 2 #reduceActionForTypeQuery1: 45138945 false) 
	#(352 2 #reduceActionForTypeReference1: 43423745 false) 
	#(301 2 #reduceActionForNamedExports1: 38633473 false) 
	#(303 1 #reduceActionForExportSpecifier1: 38953985 false) 
	#(302 1 #reduceActionForNamespaceName1: 38849537 false) 
	#(299 3 #reduceActionForExportDeclaration2: 37841922 false) 
	#(193 2 #liftSecondValue: 22673413 false) 
	#(193 2 #liftSecondValue: 22673412 false) 
	#(193 2 #liftSecondValue: 22673414 false) 
	#(293 2 #reduceActionForNamedImports1: 37252097 false) 
	#(295 1 #reduceActionForNamespaceName1: 37534721 false) 
	#(296 1 #reduceActionForImportSpecifier1: 37639169 false) 
	#(289 3 #reduceActionForImportDeclaration2: 36702210 false) 
	#(209 2 #reduceActionForObjectBindingPattern1: 24170497 false) 
	#(212 1 #reduceActionForNamespaceName1: 24995841 false) 
	#(215 1 #liftFirstValue: 25284609 false) 
	#(210 2 #reduceActionForArrayBindingPattern1: 24558593 false) 
	#(213 1 #reduceActionForBindingElementList1: 25114625 false) 
	#(214 1 #reduceActionForBindingElisionElement1: 25223169 false) 
	#(204 2 #reduceActionForLexicalBinding2: 23560194 false) 
	#(201 3 #reduceActionForLexicalDeclaration1: 23341057 false) 
	#(204 2 #reduceActionForLexicalBinding3: 23560195 false) 
	#(218 2 #reduceActionForBindingRestElement1: 25594881 false) 
	#(218 2 #reduceActionForBindingRestElement1: 25594882 false) 
	#(217 2 #reduceActionForLexicalBinding2: 25508866 false) 
	#(137 3 #reduceActionForParenthesizedExpression1: 9489409 false) 
	#(216 2 #reduceActionForLexicalBinding3: 25398275 false) 
	#(257 3 #reduceActionForArrowFormalParameters1: 32296961 false) 
	#(246 2 #reduceActionForFormalParameters4: 31399940 false) 
	#(375 1 #liftFirstValue: 47664130 false) 
	#(375 1 #liftFirstValue: 47664131 false) 
	#(375 1 #liftFirstValue: 47664129 false) 
	#(374 0 #nil 46320644 false) 
	#(142 2 #reduceActionForSpreadElement1: 10941441 false) 
	#(139 3 #reduceActionForArrayLiteral3: 10406915 false) 
	#(139 3 #reduceActionForArrayLiteral2: 10406914 false) 
	#(141 2 #reduceActionForModuleItemList2: 10886146 false) 
	#(140 2 #reduceActionForElementList4: 10668036 false) 
	#(140 2 #reduceActionForElementList4: 10668034 false) 
	#(278 2 #reduceActionForClassTail1: 35992577 false) 
	#(282 1 #reduceActionForEmptyStatement1: 36285443 false) 
	#(282 1 #liftFirstValue: 36285441 false) 
	#(260 1 #liftFirstValue: 32612354 false) 
	#(260 1 #liftFirstValue: 32612356 false) 
	#(260 1 #liftFirstValue: 32612355 false) 
	#(280 1 #reduceActionForModuleBody1: 36165633 false) 
	#(281 1 #reduceActionForModuleItemList1: 36197377 false) 
	#(260 1 #liftFirstValue: 32612360 false) 
	#(260 1 #liftFirstValue: 32612361 false) 
	#(279 2 #reduceActionForClassHeritage1: 36084737 false) 
	#(277 3 #reduceActionForClassExpression2: 35912706 false) 
	#(279 2 #reduceActionForClassHeritage4: 36084740 false) 
	#(279 2 #reduceActionForClassHeritage2: 36084738 false) 
	#(159 3 #reduceActionForNewTarget1: 13660161 false) 
	#(156 3 #reduceActionForMemberExpression7: 12865543 false) 
	#(164 2 #reduceActionForArguments1: 14547969 false) 
	#(165 1 #reduceActionForArgumentList1: 14733313 false) 
	#(157 3 #reduceActionForSuperProperty2: 13367298 false) 
	#(266 3 #reduceActionForYieldExpression3: 33988611 false) 
	#(143 3 #reduceActionForObjectLiteral1: 11039745 false) 
	#(146 1 #liftFirstValue: 11732993 false) 
	#(145 1 #reduceActionForNamespaceName1: 11597825 false) 
	#(146 1 #liftFirstValue: 11732994 false) 
	#(146 1 #liftFirstValue: 11732996 false) 
	#(156 3 #reduceActionForMemberExpression3: 12865539 false) 
	#(169 1 #reduceActionForOptionalFirst3: 15590403 false) 
	#(169 1 #reduceActionForOptionalFirst4: 15590404 false) 
	#(169 1 #reduceActionForOptionalFirst1: 15590401 false) 
	#(167 2 #reduceActionForOptionalChain1: 15179777 false) 
	#(168 1 #reduceActionForOptionalFirst4: 15302660 false) 
	#(168 1 #reduceActionForOptionalFirst1: 15302657 false) 
	#(167 2 #reduceActionForOptionalChain2: 15179778 false) 
	#(161 3 #reduceActionForMemberExpression3: 13853702 false) 
	#(189 3 #reduceActionForAssignmentExpression5: 20511749 false) 
	#(173 3 #reduceActionForExponentiationExpression2: 16758786 false) 
	#(174 3 #reduceActionForExponentiationExpression2: 16928770 false) 
	#(176 3 #reduceActionForExponentiationExpression2: 17188866 false) 
	#(176 3 #reduceActionForExponentiationExpression2: 17188867 false) 
	#(177 3 #reduceActionForExponentiationExpression2: 17486850 false) 
	#(177 3 #reduceActionForExponentiationExpression2: 17486851 false) 
	#(177 3 #reduceActionForExponentiationExpression2: 17486852 false) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871874 false) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871875 false) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871876 false) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871877 false) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871879 false) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871878 false) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610178 false) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610180 false) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610179 false) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610181 false) 
	#(180 3 #reduceActionForExponentiationExpression2: 19140610 false) 
	#(181 3 #reduceActionForExponentiationExpression2: 19304450 false) 
	#(182 3 #reduceActionForExponentiationExpression2: 19472386 false) 
	#(183 3 #reduceActionForExponentiationExpression2: 19639298 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19809282 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 19979265 false) 
	#(191 3 #reduceActionForExpression2: 22239234 false) 
	#(251 0 #reduceActionForDecoratorExpression__decorator__1: 31846401 false) 
	#(256 1 #liftFirstValue: 32256001 false) 
	#(252 3 #reduceActionForArrowFunction1: 31888385 false) 
	#(255 1 #reduceActionForConciseBody1: 32141313 false) 
	#(336 0 #reduceActionForSwitchToDefault1: 42012673 true) 
	#(327 1 #reduceActionForModuleBody1: 41432065 false) 
	#(314 1 #reduceActionForJSXElementName1: 40288257 false) 
	#(314 1 #liftFirstValue: 40288258 false) 
	#(314 1 #liftFirstValue: 40288259 false) 
	#(318 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 40614913 false) 
	#(197 3 #reduceActionForBlock2: 22966274 false) 
	#(226 3 #reduceActionForBreakStatement1: 29139969 false) 
	#(225 3 #reduceActionForContinueStatement1: 29025281 false) 
	#(228 3 #reduceActionForReturnStatement1: 29282305 false) 
	#(237 3 #reduceActionForThrowStatement1: 30299137 false) 
	#(238 3 #reduceActionForTryStatement1: 30395393 false) 
	#(238 3 #reduceActionForTryStatement2: 30395394 false) 
	#(207 2 #reduceActionForLexicalBinding2: 23946242 false) 
	#(205 3 #reduceActionForVariableStatement1: 23714817 false) 
	#(207 2 #reduceActionForLexicalBinding3: 23946243 false) 
	#(207 2 #liftSecondValue: 23946244 false) 
	#(207 2 #liftSecondValue: 23946245 false) 
	#(236 1 #liftFirstValue: 30204929 false) 
	#(235 3 #reduceActionForLabelledStatement1: 30105601 false) 
	#(276 3 #reduceActionForClassExpression2: 35791874 false) 
	#(276 3 #reduceActionForClassDeclaration3: 35791875 false) 
	#(442 1 #reduceActionForArrowParameterDeclaration1: 62985217 false) 
	#(441 1 #reduceActionForNamespaceName1: 62872577 false) 
	#(437 3 #reduceActionForExportListDeclaration3: 61801475 false) 
	#(389 3 #reduceActionForInterfaceDeclaration1: 52096001 false) 
	#(409 0 #reduceActionForDecoratorExpression__decorator__1: 55597057 false) 
	#(456 2 #reduceActionForDecoratorExpression2: 65606658 false) 
	#(456 2 #reduceActionForDecoratorExpression2: 65606657 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260930 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260929 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260931 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260932 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260933 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260939 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260935 false) 
	#(434 3 #reduceActionForExportDeclarationElement2: 60375042 false) 
	#(434 3 #reduceActionForExportDeclarationElement2: 60375041 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260934 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260936 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260937 false) 
	#(434 3 #reduceActionForExportDeclarationElement2: 60375044 false) 
	#(434 3 #reduceActionForExportDeclarationElement2: 60375043 false) 
	#(433 3 #reduceActionForExportImplementationElement2: 59260938 false) 
	#(350 3 #reduceActionForParenthesizedExpression1: 43283457 false) 
	#(370 2 #reduceActionForPropertySignature3: 45374467 false) 
	#(370 2 #reduceActionForPropertySignature2: 45374466 false) 
	#(379 2 #reduceActionForMethodSignature1: 48899073 false) 
	#(355 3 #reduceActionForObjectType2: 43728898 false) 
	#(356 2 #reduceActionForOptionalChain2: 43810818 false) 
	#(356 2 #reduceActionForOptionalChain2: 43810820 false) 
	#(360 3 #reduceActionForTupleType2: 44276738 false) 
	#(360 3 #reduceActionForTupleType3: 44276739 false) 
	#(339 2 #reduceActionForTypeParameter2: 42358786 false) 
	#(337 3 #reduceActionForTypeParameters1: 42167297 false) 
	#(363 3 #reduceActionForUnionType1: 44530689 false) 
	#(364 3 #reduceActionForIntersectionType1: 44651521 false) 
	#(352 3 #reduceActionForTypeReference2: 43423746 false) 
	#(353 3 #reduceActionForTypeName2: 43517954 false) 
	#(354 3 #reduceActionForNamespaceName2: 43624450 false) 
	#(301 3 #reduceActionForNamedExports2: 38633474 false) 
	#(300 3 #reduceActionForExportFromClause2: 38525954 false) 
	#(299 4 #reduceActionForExportDeclaration5: 37841925 false) 
	#(294 2 #reduceActionForFromClause1: 37483521 false) 
	#(299 4 #reduceActionForExportDeclaration1: 37841921 false) 
	#(293 3 #reduceActionForNamedImports2: 37252098 false) 
	#(292 3 #reduceActionForNameSpaceImport1: 37171201 false) 
	#(289 4 #reduceActionForImportDeclaration1: 36702209 false) 
	#(290 3 #reduceActionForImportClause4: 36874244 false) 
	#(290 3 #reduceActionForImportClause4: 36874245 false) 
	#(211 2 #reduceActionForBindingRestProperty1: 24924161 false) 
	#(209 3 #reduceActionForObjectBindingPattern2: 24170498 false) 
	#(209 3 #reduceActionForObjectBindingPattern3: 24170499 false) 
	#(210 3 #reduceActionForArrayBindingPattern3: 24558595 false) 
	#(214 2 #reduceActionForBindingElisionElement2: 25223170 false) 
	#(210 3 #reduceActionForArrayBindingPattern5: 24558597 false) 
	#(210 3 #reduceActionForArrayBindingPattern2: 24558594 false) 
	#(151 2 #reduceActionForFromClause1: 12375041 false) 
	#(203 3 #reduceActionForNamespaceName2: 23461890 false) 
	#(387 3 #reduceActionForSimpleLexicalBinding1: 51553281 false) 
	#(388 3 #reduceActionForDestructuringLexicalBinding1: 51662849 false) 
	#(218 3 #reduceActionForBindingRestElement3: 25594883 false) 
	#(246 3 #reduceActionForFormalParameters5: 31399941 false) 
	#(247 3 #reduceActionForNamespaceName2: 31601666 false) 
	#(217 3 #reduceActionForSingleNameBinding9: 25508873 false) 
	#(217 3 #reduceActionForSimpleLexicalBinding1: 25508867 false) 
	#(374 1 #reduceActionForIdentifier1: 46320642 false) 
	#(374 1 #liftFirstValue: 46320641 false) 
	#(374 1 #liftFirstValue: 46320643 false) 
	#(217 3 #reduceActionForSingleNameBinding7: 25508871 false) 
	#(139 4 #reduceActionForArrayLiteral4: 10406916 false) 
	#(140 3 #reduceActionForElementList6: 10668038 false) 
	#(140 3 #reduceActionForElementList6: 10668037 false) 
	#(259 1 #reduceActionForConciseBody1: 32491521 false) 
	#(258 4 #reduceActionForAsyncArrowFunction1: 32389121 false) 
	#(282 2 #reduceActionForClassElement2: 36285442 false) 
	#(278 3 #reduceActionForClassTail2: 35992578 false) 
	#(281 2 #reduceActionForModuleItemList2: 36197378 false) 
	#(282 2 #liftSecondValue: 36285444 false) 
	#(282 2 #liftSecondValue: 36285445 false) 
	#(397 1 #liftFirstValue: 53818369 false) 
	#(397 1 #liftFirstValue: 53818370 false) 
	#(397 1 #liftFirstValue: 53818371 false) 
	#(282 2 #liftSecondValue: 36285446 false) 
	#(278 3 #reduceActionForClassTail3: 35992579 false) 
	#(394 1 #liftFirstValue: 53042177 false) 
	#(393 2 #reduceActionForFromClause1: 52982785 false) 
	#(392 1 #liftFirstValue: 52467713 false) 
	#(395 2 #reduceActionForImplementsClause1: 53084161 false) 
	#(391 1 #reduceActionForNamespaceName1: 52336641 false) 
	#(279 3 #reduceActionForClassHeritage3: 36084739 false) 
	#(163 4 #reduceActionForImportCall1: 14407681 false) 
	#(165 2 #reduceActionForArgumentList2: 14733314 false) 
	#(164 3 #reduceActionForArguments2: 14547970 false) 
	#(157 4 #reduceActionForSuperProperty1: 13367297 false) 
	#(342 1 #reduceActionForNamespaceName1: 42544129 false) 
	#(343 1 #liftFirstValue: 42650625 false) 
	#(146 2 #reduceActionForPropertyDefinition5: 11732997 false) 
	#(150 2 #reduceActionForCoverInitializedName1: 12292097 false) 
	#(143 4 #reduceActionForObjectLiteral2: 11039746 false) 
	#(154 1 #reduceActionForNamespaceName1: 12633089 false) 
	#(152 4 #reduceActionForTemplateLiteral2: 12439554 false) 
	#(156 4 #reduceActionForMemberExpression2: 12865538 false) 
	#(168 2 #reduceActionForOptionalRest3: 15302659 false) 
	#(161 4 #reduceActionForCallExpression5: 13853701 false) 
	#(172 4 #reduceActionForUnaryExpression11: 16306187 false) 
	#(251 1 #reduceActionForModuleBody1: 31846402 false) 
	#(250 1 #reduceActionForModuleBody1: 31805441 false) 
	#(309 4 #reduceActionForJSXElement2: 39461890 false) 
	#(329 1 #reduceActionForJSXChild1: 41466881 false) 
	#(329 1 #liftFirstValue: 41466882 false) 
	#(328 2 #reduceActionForModuleItemList2: 41446402 false) 
	#(317 2 #reduceActionForFromClause1: 40614913 false) 
	#(334 0 #reduceActionForSwitchToJSXTextOrDefault11: 41879553 true) 
	#(324 1 #reduceActionForJSXElementName1: 41038849 false) 
	#(324 1 #liftFirstValue: 41038850 false) 
	#(321 1 #reduceActionForModuleItemList1: 40741889 false) 
	#(319 1 #reduceActionForModuleBody1: 40725505 false) 
	#(320 1 #liftFirstValue: 40741889 false) 
	#(320 1 #liftFirstValue: 40741890 false) 
	#(323 1 #reduceActionForJSXAttribute1: 40955905 false) 
	#(316 2 #reduceActionForJSXMemberExpression1: 40592385 false) 
	#(318 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 40614914 false) 
	#(226 4 #reduceActionForBreakStatement2: 29139970 false) 
	#(225 4 #reduceActionForContinueStatement2: 29025282 false) 
	#(224 1 #liftFirstValue: 28978177 false) 
	#(224 1 #liftFirstValue: 28978178 false) 
	#(223 2 #reduceActionForFromClause1: 28913665 false) 
	#(228 4 #reduceActionForReturnStatement2: 29282306 false) 
	#(239 2 #reduceActionForCatch2: 30566402 false) 
	#(240 2 #reduceActionForFromClause1: 30734337 false) 
	#(238 4 #reduceActionForTryStatement3: 30395395 false) 
	#(206 3 #reduceActionForNamespaceName2: 23810050 false) 
	#(385 2 #reduceActionForSimpleVariableDeclaration1: 51253249 false) 
	#(276 4 #reduceActionForClassDeclaration4: 35791876 false) 
	#(442 2 #reduceActionForAmbientBinding2: 62985218 false) 
	#(440 3 #reduceActionForLexicalDeclaration1: 62576643 false) 
	#(440 3 #reduceActionForLexicalDeclaration1: 62576642 false) 
	#(452 0 #reduceActionForDecoratorExpression__decorator__1: 64479233 false) 
	#(440 3 #reduceActionForLexicalDeclaration1: 62576641 false) 
	#(402 4 #reduceActionForEnumDeclaration1: 54917121 false) 
	#(405 1 #reduceActionForEnumMember1: 55202817 false) 
	#(403 1 #reduceActionForModuleBody1: 55064577 false) 
	#(404 1 #reduceActionForNamespaceName1: 55110657 false) 
	#(438 4 #reduceActionForExportAssignment1: 62055425 false) 
	#(437 4 #reduceActionForExportListDeclaration1: 61801473 false) 
	#(437 4 #reduceActionForExportListDeclaration2: 61801474 false) 
	#(414 1 #reduceActionForModuleBody1: 56891393 false) 
	#(390 2 #reduceActionForFromClause1: 52251649 false) 
	#(389 4 #reduceActionForInterfaceDeclaration3: 52096003 false) 
	#(389 4 #reduceActionForInterfaceDeclaration2: 52096002 false) 
	#(411 1 #liftFirstValue: 55733249 false) 
	#(411 1 #liftFirstValue: 55733250 false) 
	#(411 1 #liftFirstValue: 55733251 false) 
	#(411 1 #liftFirstValue: 55733252 false) 
	#(411 1 #liftFirstValue: 55733253 false) 
	#(411 1 #liftFirstValue: 55733255 false) 
	#(411 1 #liftFirstValue: 55733254 false) 
	#(411 1 #liftFirstValue: 55733256 false) 
	#(411 1 #liftFirstValue: 55733257 false) 
	#(409 1 #reduceActionForModuleBody1: 55597058 false) 
	#(410 1 #reduceActionForModuleItemList1: 55634945 false) 
	#(411 1 #liftFirstValue: 55733260 false) 
	#(411 1 #liftFirstValue: 55733259 false) 
	#(411 1 #liftFirstValue: 55733258 false) 
	#(408 3 #reduceActionForNamespaceName2: 55491586 false) 
	#(435 4 #reduceActionForExportDefaultImplementationElement1: 60804097 false) 
	#(435 4 #reduceActionForExportDefaultImplementationElement1: 60804098 false) 
	#(435 4 #reduceActionForExportDefaultImplementationElement1: 60804099 false) 
	#(436 4 #reduceActionForExportDefaultDeclarationElement1: 61365249 false) 
	#(436 4 #reduceActionForExportDefaultDeclarationElement1: 61365250 false) 
	#(243 4 #reduceActionForFunctionDeclaration5: 30931973 false) 
	#(372 3 #reduceActionForCallSignature1: 45596673 false) 
	#(149 3 #reduceActionForComputedPropertyName1: 12171265 false) 
	#(370 3 #reduceActionForPropertySignature4: 45374468 false) 
	#(379 3 #reduceActionForMethodSignature2: 48899074 false) 
	#(371 2 #reduceActionForFromClause1: 45543425 false) 
	#(357 3 #reduceActionForNamespaceName2: 43907074 false) 
	#(357 3 #reduceActionForNamespaceName2: 43907075 false) 
	#(360 4 #reduceActionForTupleType4: 44276740 false) 
	#(361 3 #reduceActionForNamespaceName2: 44395522 false) 
	#(340 2 #reduceActionForFromClause1: 42413057 false) 
	#(338 3 #reduceActionForNamespaceName2: 42246146 false) 
	#(368 3 #reduceActionForTypeQueryExpression2: 45212674 false) 
	#(359 4 #reduceActionForArrayType1: 44169217 false) 
	#(303 3 #reduceActionForExportSpecifier2: 38953986 false) 
	#(301 4 #reduceActionForNamedExports3: 38633475 false) 
	#(302 3 #reduceActionForNamespaceName2: 38849538 false) 
	#(296 3 #reduceActionForImportSpecifier2: 37639170 false) 
	#(293 4 #reduceActionForNamedImports3: 37252099 false) 
	#(295 3 #reduceActionForNamespaceName2: 37534722 false) 
	#(215 3 #reduceActionForBindingProperty2: 25284610 false) 
	#(209 4 #reduceActionForObjectBindingPattern4: 24170500 false) 
	#(212 3 #reduceActionForNamespaceName2: 24995842 false) 
	#(210 4 #reduceActionForArrayBindingPattern4: 24558596 false) 
	#(210 4 #reduceActionForArrayBindingPattern6: 24558598 false) 
	#(213 3 #reduceActionForBindingElementList2: 25114626 false) 
	#(387 4 #reduceActionForSimpleLexicalBinding2: 51553282 false) 
	#(388 4 #reduceActionForDestructuringLexicalBinding2: 51662850 false) 
	#(217 4 #reduceActionForSimpleLexicalBinding2: 25508868 false) 
	#(216 4 #reduceActionForBindingElement10: 25398282 false) 
	#(216 4 #reduceActionForBindingElement4: 25398276 false) 
	#(216 4 #reduceActionForBindingElement8: 25398280 false) 
	#(217 4 #reduceActionForSingleNameBinding10: 25508874 false) 
	#(217 4 #reduceActionForSingleNameBinding8: 25508872 false) 
	#(217 4 #reduceActionForSingleNameBinding5: 25508869 false) 
	#(274 1 #reduceActionForModuleBody1: 35679233 false) 
	#(400 2 #reduceActionForMemberAccessorDeclaration1: 54549505 false) 
	#(400 2 #reduceActionForMemberAccessorDeclaration1: 54549509 false) 
	#(401 2 #reduceActionForIndexMemberDeclaration1: 54825985 false) 
	#(278 4 #reduceActionForClassTail4: 35992580 false) 
	#(164 4 #reduceActionForArguments3: 14547971 false) 
	#(165 3 #reduceActionForArgumentList3: 14733315 false) 
	#(341 3 #reduceActionForTypeArguments1: 42466305 false) 
	#(164 4 #reduceActionForArguments4: 14547972 false) 
	#(143 5 #reduceActionForObjectLiteral3: 11039747 false) 
	#(145 3 #reduceActionForNamespaceName2: 11597826 false) 
	#(146 3 #reduceActionForPropertyDefinition3: 11732995 false) 
	#(155 2 #reduceActionForTemplateMiddleList1: 12720129 false) 
	#(154 2 #reduceActionForTemplateSpans2: 12633090 false) 
	#(169 3 #reduceActionForOptionalFirst2: 15590402 false) 
	#(168 3 #reduceActionForOptionalFirst2: 15302658 false) 
	#(188 5 #reduceActionForConditionalExpression2: 20284418 false) 
	#(255 3 #reduceActionForConciseBody2: 32141314 false) 
	#(315 3 #reduceActionForJSXNamespacedName1: 40468481 false) 
	#(321 2 #reduceActionForModuleItemList2: 40741890 false) 
	#(323 2 #reduceActionForJSXAttribute2: 40955906 false) 
	#(311 5 #reduceActionForJSXOpeningElement1: 39795713 false) 
	#(381 4 #reduceActionForTypeCallSignature1: 49342465 false) 
	#(172 5 #reduceActionForUnaryExpression10: 16306186 false) 
	#(381 4 #reduceActionForTypeCallSignature3: 49342467 false) 
	#(221 5 #reduceActionForIfStatement2: 25907202 false) 
	#(230 5 #reduceActionForSwitchStatement1: 29528065 false) 
	#(241 1 #liftFirstValue: 30794753 false) 
	#(241 1 #liftFirstValue: 30794754 false) 
	#(385 3 #reduceActionForSimpleVariableDeclaration2: 51253250 false) 
	#(386 3 #reduceActionForDestructuringVariableDeclaration1: 51358721 false) 
	#(222 5 #reduceActionForIterationStatement2: 26198018 false) 
	#(229 5 #reduceActionForWithStatement1: 29395969 false) 
	#(402 5 #reduceActionForEnumDeclaration3: 54917123 false) 
	#(445 0 #reduceActionForDecoratorExpression__decorator__1: 63421441 false) 
	#(441 3 #reduceActionForNamespaceName2: 62872578 false) 
	#(443 4 #reduceActionForAmbientFunctionDeclaration1: 63068161 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658435 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658441 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658447 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658433 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658437 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658439 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658443 false) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 64658445 false) 
	#(452 1 #reduceActionForModuleBody1: 64479234 false) 
	#(453 1 #reduceActionForModuleItemList1: 64531457 false) 
	#(402 5 #reduceActionForEnumDeclaration2: 54917122 false) 
	#(403 2 #reduceActionForOptionalChain2: 55064578 false) 
	#(413 5 #reduceActionForImportAliasDeclaration1: 56756225 false) 
	#(389 5 #reduceActionForInterfaceDeclaration4: 52096004 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013826 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013825 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013827 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013828 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013829 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013831 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013830 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013832 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013833 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013835 false) 
	#(412 2 #reduceActionForExportNamespaceElement2: 56013834 false) 
	#(407 5 #reduceActionForNamespaceDeclaration1: 55350273 false) 
	#(410 2 #reduceActionForModuleItemList2: 55634946 false) 
	#(380 5 #reduceActionForTypeAliasDeclaration1: 49004545 false) 
	#(436 5 #reduceActionForExportDefaultDeclarationElement3: 61365251 false) 
	#(435 5 #reduceActionForExportDefaultImplementationElement4: 60804100 false) 
	#(243 5 #reduceActionForFunctionDeclaration6: 30931974 false) 
	#(276 5 #reduceActionForClassDeclaration5: 35791877 false) 
	#(276 5 #reduceActionForClassDeclaration9: 35791881 false) 
	#(365 5 #reduceActionForFunctionType1: 44758017 false) 
	#(372 4 #reduceActionForCallSignature2: 45596674 false) 
	#(377 4 #reduceActionForConstructSignature1: 48405505 false) 
	#(372 4 #reduceActionForCallSignature3: 45596675 false) 
	#(209 5 #reduceActionForObjectBindingPattern5: 24170501 false) 
	#(210 5 #reduceActionForArrayBindingPattern8: 24558600 false) 
	#(210 5 #reduceActionForArrayBindingPattern7: 24558599 false) 
	#(216 5 #reduceActionForBindingElement11: 25398283 false) 
	#(216 5 #reduceActionForBindingElement5: 25398277 false) 
	#(216 5 #reduceActionForBindingElement12: 25398284 false) 
	#(216 5 #reduceActionForBindingElement9: 25398281 false) 
	#(216 5 #reduceActionForBindingElement6: 25398278 false) 
	#(217 5 #reduceActionForSingleNameBinding6: 25508870 false) 
	#(259 3 #reduceActionForConciseBody2: 32491522 false) 
	#(261 1 #liftFirstValue: 33210369 false) 
	#(400 3 #reduceActionForMemberAccessorDeclaration2: 54549506 false) 
	#(400 3 #reduceActionForMemberAccessorDeclaration2: 54549510 false) 
	#(398 3 #reduceActionForMemberVariableDeclaration1: 53933057 false) 
	#(400 3 #reduceActionForMemberAccessorDeclaration3: 54549507 false) 
	#(400 3 #reduceActionForMemberAccessorDeclaration3: 54549511 false) 
	#(391 3 #reduceActionForNamespaceName2: 52336642 false) 
	#(165 4 #reduceActionForArgumentList4: 14733316 false) 
	#(342 3 #reduceActionForNamespaceName2: 42544130 false) 
	#(164 5 #reduceActionForArguments5: 14547973 false) 
	#(155 3 #reduceActionForTemplateMiddleList2: 12720130 false) 
	#(330 1 #liftFirstValue: 41699330 false) 
	#(330 1 #liftFirstValue: 41699329 false) 
	#(310 6 #reduceActionForJSXSelfClosingElement1: 39612417 false) 
	#(311 6 #reduceActionForJSXOpeningElement2: 39795714 false) 
	#(326 1 #reduceActionForLiteral4: 41203713 false) 
	#(326 1 #liftFirstValue: 41203715 false) 
	#(326 1 #liftFirstValue: 41203716 false) 
	#(325 2 #reduceActionForFromClause1: 41129985 false) 
	#(244 6 #reduceActionForFunctionExpression3: 31143939 false) 
	#(381 5 #reduceActionForTypeCallSignature2: 49342466 false) 
	#(222 6 #reduceActionForIterationStatement3: 26198019 false) 
	#(222 6 #reduceActionForIterationStatement15: 26198031 false) 
	#(231 2 #reduceActionForCaseBlock1: 29654017 false) 
	#(232 1 #reduceActionForModuleItemList1: 29838337 false) 
	#(402 6 #reduceActionForEnumDeclaration4: 54917124 false) 
	#(447 1 #liftFirstValue: 63596547 false) 
	#(445 1 #reduceActionForModuleBody1: 63421442 false) 
	#(446 1 #reduceActionForModuleItemList1: 63469569 false) 
	#(447 1 #liftFirstValue: 63596545 false) 
	#(447 1 #liftFirstValue: 63596546 false) 
	#(455 6 #reduceActionForAmbientModuleDeclaration1: 65430529 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658436 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658442 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658448 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658434 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658438 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658440 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658444 false) 
	#(454 2 #reduceActionForExportNamespaceElement2: 64658446 false) 
	#(451 5 #reduceActionForNamespaceDeclaration1: 64303105 false) 
	#(453 2 #reduceActionForModuleItemList2: 64531458 false) 
	#(406 1 #liftFirstValue: 55308289 false) 
	#(405 3 #reduceActionForEnumMember2: 55202818 false) 
	#(404 3 #reduceActionForNamespaceName2: 55110658 false) 
	#(380 6 #reduceActionForTypeAliasDeclaration2: 49004546 false) 
	#(243 6 #reduceActionForFunctionExpression3: 30931971 false) 
	#(276 6 #reduceActionForClassDeclaration6: 35791878 false) 
	#(276 6 #reduceActionForClassDeclaration7: 35791879 false) 
	#(276 6 #reduceActionForClassDeclaration10: 35791882 false) 
	#(276 6 #reduceActionForClassDeclaration11: 35791883 false) 
	#(377 5 #reduceActionForConstructSignature2: 48405506 false) 
	#(377 5 #reduceActionForConstructSignature3: 48405507 false) 
	#(372 5 #reduceActionForCallSignature4: 45596676 false) 
	#(366 6 #reduceActionForConstructorType1: 44938241 false) 
	#(365 6 #reduceActionForFunctionType2: 44758018 false) 
	#(210 6 #reduceActionForArrayBindingPattern9: 24558601 false) 
	#(216 6 #reduceActionForBindingElement13: 25398285 false) 
	#(216 6 #reduceActionForBindingElement7: 25398279 false) 
	#(376 1 #liftFirstValue: 47726593 false) 
	#(376 1 #liftFirstValue: 47726594 false) 
	#(398 4 #reduceActionForMemberVariableDeclaration5: 53933061 false) 
	#(398 4 #reduceActionForMemberVariableDeclaration2: 53933058 false) 
	#(398 4 #reduceActionForMemberVariableDeclaration3: 53933059 false) 
	#(399 4 #reduceActionForMemberFunctionDeclaration5: 54136837 false) 
	#(400 4 #reduceActionForMemberAccessorDeclaration4: 54549508 false) 
	#(400 4 #reduceActionForMemberAccessorDeclaration4: 54549512 false) 
	#(398 4 #reduceActionForMemberVariableDeclaration9: 53933065 false) 
	#(244 7 #reduceActionForFunctionExpression1: 31143937 false) 
	#(265 1 #reduceActionForModuleBody1: 33956865 false) 
	#(335 0 #reduceActionForSwitchToJSXTextOrDefault21: 41946113 true) 
	#(329 4 #reduceActionForJSXChild3: 41466883 false) 
	#(310 7 #reduceActionForJSXSelfClosingElement2: 39612418 false) 
	#(244 7 #reduceActionForFunctionExpression4: 31143940 false) 
	#(222 7 #reduceActionForIterationStatement1: 26198017 false) 
	#(222 7 #reduceActionForIterationStatement4: 26198020 false) 
	#(222 7 #reduceActionForIterationStatement5: 26198021 false) 
	#(222 7 #reduceActionForIterationStatement19: 26198035 false) 
	#(222 7 #reduceActionForIterationStatement22: 26198038 false) 
	#(222 7 #reduceActionForIterationStatement7: 26198023 false) 
	#(222 7 #reduceActionForIterationStatement16: 26198032 false) 
	#(222 7 #reduceActionForIterationStatement17: 26198033 false) 
	#(222 7 #reduceActionForIterationStatement21: 26198037 false) 
	#(222 7 #reduceActionForIterationStatement24: 26198040 false) 
	#(221 7 #reduceActionForIfStatement1: 25907201 false) 
	#(234 2 #reduceActionForDefaultClause1: 30017537 false) 
	#(231 3 #reduceActionForCaseBlock2: 29654018 false) 
	#(232 2 #reduceActionForModuleItemList2: 29838338 false) 
	#(231 3 #reduceActionForCaseBlock3: 29654019 false) 
	#(239 5 #reduceActionForCatch1: 30566401 false) 
	#(449 2 #reduceActionForAmbientPropertyMemberDeclaration1: 63916033 false) 
	#(444 6 #reduceActionForAmbientClassDeclaration1: 63215617 false) 
	#(446 2 #reduceActionForModuleItemList2: 63469570 false) 
	#(243 7 #reduceActionForFunctionExpression1: 30931969 false) 
	#(243 7 #reduceActionForFunctionExpression4: 30931972 false) 
	#(276 7 #reduceActionForClassDeclaration8: 35791880 false) 
	#(276 7 #reduceActionForClassDeclaration12: 35791884 false) 
	#(378 6 #reduceActionForIndexSignature2: 48598018 false) 
	#(378 6 #reduceActionForIndexSignature2: 48598017 false) 
	#(377 6 #reduceActionForConstructSignature4: 48405508 false) 
	#(366 7 #reduceActionForConstructorType2: 44938242 false) 
	#(273 8 #reduceActionForAsyncFunctionExpression1: 35429377 false) 
	#(270 1 #reduceActionForModuleBody1: 34923521 false) 
	#(384 2 #reduceActionForTypedPropertySetParameterList1: 50375681 false) 
	#(260 6 #reduceActionForMethodDefinition7: 32612359 false) 
	#(398 5 #reduceActionForMemberVariableDeclaration6: 53933062 false) 
	#(398 5 #reduceActionForMemberVariableDeclaration7: 53933063 false) 
	#(399 5 #reduceActionForMemberFunctionDeclaration6: 54136838 false) 
	#(398 5 #reduceActionForMemberVariableDeclaration4: 53933060 false) 
	#(398 5 #reduceActionForMemberVariableDeclaration13: 53933069 false) 
	#(398 5 #reduceActionForMemberVariableDeclaration10: 53933066 false) 
	#(398 5 #reduceActionForMemberVariableDeclaration11: 53933067 false) 
	#(399 5 #reduceActionForMemberFunctionDeclaration7: 54136839 false) 
	#(264 8 #reduceActionForGeneratorExpression1: 33721345 false) 
	#(244 8 #reduceActionForFunctionExpression2: 31143938 false) 
	#(329 5 #reduceActionForJSXChild4: 41466884 false) 
	#(322 5 #reduceActionForJSXSpreadAttribute1: 40806401 false) 
	#(222 8 #reduceActionForIterationStatement6: 26198022 false) 
	#(222 8 #reduceActionForIterationStatement11: 26198027 false) 
	#(222 8 #reduceActionForIterationStatement20: 26198036 false) 
	#(222 8 #reduceActionForIterationStatement23: 26198039 false) 
	#(222 8 #reduceActionForIterationStatement8: 26198024 false) 
	#(222 8 #reduceActionForIterationStatement9: 26198025 false) 
	#(222 8 #reduceActionForIterationStatement18: 26198034 false) 
	#(222 8 #reduceActionForIterationStatement25: 26198041 false) 
	#(222 8 #reduceActionForIterationStatement27: 26198043 false) 
	#(233 3 #reduceActionForCaseClause1: 29911041 false) 
	#(234 3 #reduceActionForDefaultClause2: 30017538 false) 
	#(231 4 #reduceActionForCaseBlock5: 29654021 false) 
	#(231 4 #reduceActionForCaseBlock4: 29654020 false) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration3: 63916035 false) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration2: 63916034 false) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration9: 63916041 false) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration5: 63916037 false) 
	#(444 7 #reduceActionForAmbientClassDeclaration2: 63215618 false) 
	#(263 8 #reduceActionForGeneratorExpression1: 33484801 false) 
	#(243 8 #reduceActionForFunctionExpression2: 30931970 false) 
	#(432 8 #reduceActionForImportRequireDeclaration1: 59041793 false) 
	#(272 8 #reduceActionForAsyncFunctionExpression1: 35179521 false) 
	#(269 9 #reduceActionForAsyncGeneratorExpression1: 34649089 false) 
	#(273 9 #reduceActionForAsyncFunctionExpression2: 35429378 false) 
	#(260 7 #reduceActionForMethodDefinition5: 32612357 false) 
	#(260 7 #reduceActionForMethodDefinition1: 32612353 false) 
	#(396 6 #reduceActionForConstructorDeclaration3: 53292035 false) 
	#(398 6 #reduceActionForMemberVariableDeclaration8: 53933064 false) 
	#(399 6 #reduceActionForMemberFunctionDeclaration1: 54136833 false) 
	#(398 6 #reduceActionForMemberVariableDeclaration14: 53933070 false) 
	#(398 6 #reduceActionForMemberVariableDeclaration15: 53933071 false) 
	#(399 6 #reduceActionForMemberFunctionDeclaration8: 54136840 false) 
	#(398 6 #reduceActionForMemberVariableDeclaration12: 53933068 false) 
	#(264 9 #reduceActionForGeneratorExpression2: 33721346 false) 
	#(313 9 #reduceActionForJSXFragment1: 40099841 false) 
	#(312 6 #reduceActionForJSXClosingElement1: 39940097 false) 
	#(222 9 #reduceActionForIterationStatement12: 26198028 false) 
	#(222 9 #reduceActionForIterationStatement13: 26198029 false) 
	#(222 9 #reduceActionForIterationStatement10: 26198026 false) 
	#(222 9 #reduceActionForIterationStatement26: 26198042 false) 
	#(233 4 #reduceActionForCaseClause2: 29911042 false) 
	#(231 5 #reduceActionForCaseBlock6: 29654022 false) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration4: 63916036 false) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration10: 63916042 false) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration7: 63916039 false) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration6: 63916038 false) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration11: 63916043 false) 
	#(263 9 #reduceActionForGeneratorExpression2: 33484802 false) 
	#(268 9 #reduceActionForAsyncGeneratorExpression1: 34373633 false) 
	#(272 9 #reduceActionForAsyncFunctionExpression2: 35179522 false) 
	#(269 10 #reduceActionForAsyncGeneratorExpression2: 34649090 false) 
	#(262 8 #reduceActionForGeneratorMethod1: 33268737 false) 
	#(271 8 #reduceActionForAsyncMethod1: 34960385 false) 
	#(260 8 #reduceActionForMethodDefinition6: 32612358 false) 
	#(399 7 #reduceActionForMemberFunctionDeclaration2: 54136834 false) 
	#(396 7 #reduceActionForConstructorDeclaration4: 53292036 false) 
	#(398 7 #reduceActionForMemberVariableDeclaration16: 53933072 false) 
	#(399 7 #reduceActionForMemberFunctionDeclaration3: 54136835 false) 
	#(326 5 #reduceActionForJSXChild4: 41203714 false) 
	#(222 10 #reduceActionForIterationStatement14: 26198030 false) 
	#(448 5 #reduceActionForAmbientConstructorDeclaration1: 63709185 false) 
	#(449 5 #reduceActionForAmbientPropertyMemberDeclaration8: 63916040 false) 
	#(449 5 #reduceActionForAmbientPropertyMemberDeclaration12: 63916044 false) 
	#(268 10 #reduceActionForAsyncGeneratorExpression2: 34373634 false) 
	#(267 9 #reduceActionForAsyncGeneratorMethod1: 34120705 false) 
	#(382 9 #reduceActionForGetAccessor1: 49704961 false) 
	#(383 9 #reduceActionForSetAccessor2: 49910786 false) 
	#(396 8 #reduceActionForConstructorDeclaration1: 53292033 false) 
	#(399 8 #reduceActionForMemberFunctionDeclaration4: 54136836 false) 
	#(383 10 #reduceActionForSetAccessor1: 49910785 false) 
	#(383 10 #reduceActionForSetAccessor1: 49910787 false) 
	#(396 9 #reduceActionForConstructorDeclaration2: 53292034 false)
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
#[1 0 30 0 1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 2 113 0 64 0 137 0 66 1 217 0 67 2 117 0 69 0 19 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 2 129 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 2 217 0 192 2 217 0 195 2 217 0 196 2 217 0 197 2 217 0 201 0 65 0 202 2 217 0 205 2 217 0 219 2 217 0 220 2 217 0 221 2 217 0 222 2 217 0 225 2 217 0 226 2 217 0 228 2 217 0 229 2 217 0 230 2 217 0 235 2 217 0 237 2 217 0 238 2 217 0 242 2 217 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 2 217 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 2 217 1 20 0 245 1 21 2 165 1 33 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 2 169 1 117 2 173 1 124 2 177 1 133 2 217 1 146 2 185 1 151 2 189 1 157 2 193 1 159 2 197 1 160 2 201 1 161 2 205 1 162 2 209 1 163 2 213 1 164 2 217 1 165 2 221 1 166 2 225 1 167 2 229 1 168 2 233 1 169 2 237 1 170 2 241 1 171 2 245 1 172 2 249 1 173 2 253 1 174 3 1 1 175 2 245 1 176 2 245 1 177 3 1 1 178 2 245 1 179 3 1 1 180 3 25 1 181 3 29 1 182 3 33 1 183 3 37 1 199 3 41 1 203 0 23 1 204] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 3 101 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 3 101 1 109 3 101 1 110 3 117 1 111 3 117 1 113] 
#[0 0 50 0 4 0 6 0 118 1 203] 
#[1 3 181 0 4 3 185 0 26 3 189 0 53 3 193 0 58 2 105 0 59 0 65 0 60 3 197 0 65 3 201 0 76 0 65 0 86 1 245 0 109 3 205 0 193 3 205 0 194 3 205 0 201 0 65 0 202 3 217 0 205 3 205 0 243 3 205 1 7 3 205 1 12 3 205 1 16 3 205 1 20 3 241 1 44 3 245 1 45 3 249 1 203] 
#[1 3 253 0 4 4 1 0 26 0 185 0 118 4 25 0 121 4 13 0 134 4 9 1 34 4 13 1 35 4 17 1 36 4 21 1 37 4 25 1 41 4 13 1 42 4 25 1 50] 
#[0 0 54 0 4 0 6 0 118 1 203] 
#[0 0 0 1 204] 
#[0 0 58 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 4 37 0 192 4 37 0 195 4 37 0 196 4 37 0 197 4 37 0 205 4 37 0 219 4 37 0 220 4 37 0 221 4 37 0 222 4 37 0 225 4 37 0 226 4 37 0 228 4 37 0 229 4 37 0 230 4 37 0 235 4 37 0 237 4 37 0 238 4 37 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 0 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 4 49 0 134 4 53 0 203 4 57 0 204 4 61 0 208 4 61 0 209 4 61 0 210 4 57 1 131 4 57 1 132 4 81 1 203] 
#[0 0 66 1 204] 
#[0 0 70 1 204] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 37 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 7 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 4 85 0 199 0 57 0 200 4 85 0 201 0 65 0 202 4 85 1 32 4 85 1 33 4 85 1 43 0 6 1 203 0 74 1 204] 
#[0 0 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 86 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 90 0 3 0 27 0 4 4 89 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 93 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 4 97 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 101 0 188 4 101 0 189 4 101 0 191 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 0 245 0 244 4 121 0 245 4 125 0 246 4 129 0 247 4 133 0 248 4 137 0 249 4 101 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 101 1 2 0 245 1 8 4 101 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 141 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 4 145 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 149 0 114 4 153 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 4 157 0 140 4 161 0 141 4 165 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 169 0 188 4 169 0 189 0 245 0 244 4 169 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 169 1 2 0 245 1 8 4 169 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 4 189 0 171 4 189 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 189 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 4 197 0 171 4 197 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 197 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 4 201 0 171 4 201 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 201 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 4 205 0 171 4 205 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 205 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 4 209 0 171 4 209 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 209 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 4 213 0 171 4 213 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 213 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 217 0 2 4 221 0 76 0 185 0 118 4 225 0 134 4 229 0 253 1 117 0 254 1 121 1 1 4 233 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 4 237 0 171 4 237 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 237 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 241 0 4 4 245 0 71 0 185 0 118 4 249 0 134 4 253 1 22 5 1 1 23 5 5 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 5 9 0 171 5 9 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 5 9 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 13 0 2 5 17 0 26 0 185 0 118 5 21 0 134] 
#[0 5 25 0 2] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 5 29 0 22 4 177 0 53 0 133 0 58 1 157 0 72 0 145 0 76 0 153 0 89 1 153 0 90 5 33 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 5 37 0 134 5 37 0 136 5 37 0 137 5 37 0 138 5 37 0 139 5 37 0 143 0 233 0 144 5 37 0 152 0 241 0 153 5 37 0 156 5 37 0 157 5 37 0 158 5 37 0 159 5 41 0 160 5 37 0 244 5 37 1 8 5 37 1 13 5 37 1 17 5 37 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 5 37 1 52 5 37 1 53 5 37 1 54 1 181 1 55 5 37 1 57 1 189 1 75 5 45 1 203] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 49 0 2 5 53 0 6 5 57 0 22 5 61 0 164 5 65 1 203] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 5 69 0 171 5 69 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 5 69 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 5 73 0 171 5 73 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 5 73 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 0 93 0 2 0 110 0 3 0 14 0 4 0 110 0 5 0 97 0 6 0 110 0 7 0 110 0 8 5 77 0 26 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 110 0 115 0 110 0 116 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 110 0 127 0 110 0 128 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 5 81 0 188 5 81 0 189 0 245 0 244 5 81 0 252 1 113 0 253 1 117 0 254 1 121 1 1 5 81 1 2 0 245 1 8 5 81 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203 0 110 1 204] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 71 0 75 0 80 0 82 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 0 130 1 202 1 203 1 204] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 134 0 14 5 85 1 76] 
#[1 0 138 0 2 0 138 0 3 0 138 0 5 0 138 0 6 0 138 0 7 0 138 0 8 0 138 0 9 0 138 0 10 0 138 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 15 0 138 0 16 0 138 0 17 0 138 0 18 0 142 0 19 0 138 0 20 0 138 0 21 0 138 0 22 0 138 0 23 0 138 0 24 0 138 0 25 0 138 0 26 0 138 0 27 0 138 0 28 0 138 0 29 0 138 0 30 0 138 0 31 0 138 0 32 0 138 0 33 0 138 0 34 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 38 0 138 0 40 0 138 0 41 0 138 0 42 0 138 0 43 0 138 0 44 0 138 0 45 0 138 0 46 0 138 0 47 0 138 0 48 0 138 0 50 0 138 0 51 0 138 0 52 0 138 0 80 0 138 0 83 0 138 0 92 0 138 0 115 0 138 0 116 0 138 0 125 0 138 0 126 0 138 0 127 0 138 0 128 0 138 1 202 0 138 1 203 0 138 1 204] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 89 0 4] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 93 0 126] 
#[1 5 49 0 2 0 170 0 3 0 170 0 4 0 170 0 5 5 97 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 11 0 170 0 12 0 170 0 13 0 170 0 14 0 170 0 15 0 170 0 16 0 170 0 17 0 170 0 18 0 170 0 20 0 170 0 21 5 101 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 27 0 170 0 28 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 34 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 40 0 170 0 41 0 170 0 42 5 105 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 48 0 170 0 50 0 170 0 51 0 170 0 52 0 170 0 80 0 170 0 83 0 170 0 92 0 170 0 115 0 170 0 116 0 201 0 125 0 18 0 126 0 170 0 127 0 170 0 128 5 109 0 152 0 241 0 153 5 113 0 164 5 117 0 167 0 170 1 202 5 65 1 203 0 170 1 204] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 186 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 202 1 204] 
#[1 5 49 0 2 0 190 0 3 0 190 0 4 0 190 0 5 5 121 0 6 0 190 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 15 0 190 0 16 0 190 0 17 0 190 0 18 0 190 0 20 0 190 0 21 5 125 0 22 0 190 0 23 0 190 0 24 0 190 0 25 0 190 0 26 0 190 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 0 190 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 40 0 190 0 41 0 190 0 42 5 105 0 43 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 47 0 190 0 48 0 190 0 50 0 190 0 51 0 190 0 52 0 190 0 80 0 190 0 83 0 190 0 92 0 190 0 115 0 190 0 116 0 201 0 125 0 18 0 126 0 190 0 127 0 190 0 128 5 129 0 152 0 241 0 153 5 133 0 164 5 137 0 167 0 190 1 202 5 65 1 203 0 190 1 204] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 15 0 202 0 16 0 202 0 17 0 202 0 18 0 202 0 20 0 202 0 21 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 40 0 202 0 41 0 202 0 42 5 105 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 202 0 50 0 202 0 51 0 202 0 52 0 202 0 80 0 202 0 83 0 202 0 92 0 202 0 115 0 202 0 116 0 202 0 127 0 202 0 128 5 141 0 167 0 202 1 202 0 202 1 204] 
#[1 0 206 0 3 0 206 0 5 0 206 0 7 0 206 0 8 0 206 0 9 5 205 0 10 0 206 0 11 0 206 0 12 5 205 0 13 0 206 0 14 0 206 0 15 5 205 0 16 5 205 0 17 0 206 0 18 0 206 0 20 0 206 0 21 5 205 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 5 205 0 28 5 205 0 29 5 205 0 30 5 205 0 31 5 205 0 32 5 205 0 33 5 205 0 34 0 206 0 35 5 193 0 36 0 206 0 37 5 197 0 38 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 50 0 206 0 51 5 201 0 52 0 206 0 80 0 206 0 83 0 206 0 115 0 206 0 116 0 206 0 127 0 206 0 128 5 205 0 190 5 205 1 202 0 206 1 204] 
#[0 0 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 11 0 214 0 12 0 214 0 14 0 214 0 15 0 214 0 18 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 25 0 214 0 26 5 213 0 27 0 214 0 35 0 214 0 37 0 214 0 40 0 214 0 41 0 214 0 42 0 214 0 44 0 214 0 45 0 214 0 46 0 214 0 47 0 214 0 48 0 214 0 50 0 214 0 51 0 214 0 80 0 214 0 83 0 214 0 115 0 214 0 116 0 214 0 127 0 214 0 128 0 214 1 204] 
#[0 0 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 5 229 0 9 0 222 0 11 0 222 0 12 0 222 0 14 0 222 0 15 0 222 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 5 229 0 26 0 222 0 35 0 222 0 37 0 222 0 40 0 222 0 41 0 222 0 42 0 222 0 44 5 229 0 45 0 222 0 46 0 222 0 47 0 222 0 48 0 222 0 50 0 222 0 51 0 222 0 80 0 222 0 83 0 222 0 115 0 222 0 116 0 222 0 127 0 222 0 128 5 229 0 175 0 222 1 204] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 0 226 0 11 0 226 0 12 0 226 0 14 0 226 0 15 0 226 0 18 0 226 0 20 0 226 0 21 0 226 0 24 0 226 0 25 5 233 0 35 5 237 0 37 0 226 0 40 0 226 0 41 0 226 0 42 0 226 0 44 0 226 0 46 0 226 0 47 0 226 0 48 0 226 0 50 0 226 0 51 0 226 0 80 0 226 0 83 0 226 0 115 0 226 0 116 0 226 0 127 0 226 0 128 0 226 1 204] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 0 230 0 11 5 241 0 12 0 230 0 14 5 245 0 15 5 249 0 18 0 230 0 20 0 230 0 21 0 230 0 24 0 230 0 25 0 230 0 40 0 230 0 41 0 230 0 42 0 230 0 44 0 230 0 46 0 230 0 47 0 230 0 48 0 230 0 50 0 230 0 51 0 230 0 80 0 230 0 83 0 230 0 115 0 230 0 116 0 230 0 127 0 230 0 128 0 230 1 204] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 5 253 0 11 6 1 0 14 6 5 0 20 6 9 0 21 0 234 0 24 0 234 0 25 0 234 0 40 0 234 0 41 0 234 0 42 0 234 0 44 0 234 0 46 0 234 0 47 0 234 0 48 0 234 0 50 0 234 0 51 6 13 0 80 6 17 0 83 0 234 0 115 0 234 0 116 0 234 0 127 0 234 0 128 0 234 1 204] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 6 21 0 24 6 25 0 25 0 238 0 40 0 238 0 41 0 238 0 42 0 238 0 44 0 238 0 46 0 238 0 47 0 238 0 48 6 29 0 50 6 33 0 51 0 238 0 115 0 238 0 116 0 238 0 127 0 238 0 128 0 238 1 204] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 6 37 0 40 0 242 0 41 0 242 0 42 0 242 0 44 0 242 0 46 0 242 0 47 0 242 0 48 0 242 0 115 0 242 0 116 0 242 0 127 0 242 0 128 0 242 1 204] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 42 0 246 0 44 0 246 0 46 0 246 0 47 6 41 0 48 0 246 0 115 0 246 0 116 0 246 0 127 0 246 0 128 0 246 1 204] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 0 250 0 41 0 250 0 42 0 254 0 44 6 45 0 46 0 250 0 47 0 250 0 115 0 250 0 116 0 250 0 127 0 250 0 128 0 250 1 204] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 6 49 0 41 1 2 0 42 1 2 0 47 1 2 0 115 1 2 0 116 1 2 0 127 1 2 0 128 1 2 1 204] 
#[1 1 6 0 3 1 6 0 5 1 6 0 7 1 6 0 8 1 6 0 42 6 53 0 47 1 6 0 115 1 6 0 116 1 6 0 127 1 6 0 128 1 6 1 204] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 1 10 0 42 1 14 0 44 1 10 0 115 1 10 0 116 1 10 0 127 1 10 0 128 1 10 1 204] 
#[0 6 57 0 44] 
#[1 1 18 0 3 1 18 0 5 1 18 0 7 1 18 0 8 6 61 0 42 1 18 0 115 1 18 0 116 1 18 0 127 1 18 0 128 1 18 1 204] 
#[0 1 22 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 1 26 0 3 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 6 65 0 115 0 0 1 204] 
#[0 1 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 34 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 6 69 0 19] 
#[0 1 38 0 19] 
#[0 1 42 0 19] 
#[0 1 46 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 54 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 66 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[1 1 102 0 4 1 102 0 129 1 102 0 131 6 73 1 77] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 77 0 129] 
#[1 6 81 0 2 6 85 0 11 6 89 0 76 6 93 1 81 6 97 1 125] 
#[1 0 6 0 2 0 6 0 4 6 101 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 105 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 0 6 1 203] 
#[0 1 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 1 114 0 8 1 114 0 118 6 109 0 227] 
#[1 1 114 0 8 1 114 0 118 6 113 0 227] 
#[0 6 117 0 8] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 6 121 0 192 6 121 0 195 6 121 0 196 6 121 0 197 6 121 0 205 6 121 0 219 6 121 0 220 6 121 0 221 6 121 0 222 6 121 0 225 6 121 0 226 6 121 0 228 6 121 0 229 6 121 0 230 6 121 0 235 6 121 0 237 6 121 0 238 6 121 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 6 125 0 2 6 129 0 54] 
#[0 6 133 0 2] 
#[1 1 114 0 2 1 114 0 4 1 114 0 6 1 114 0 8 1 114 0 35 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 49 1 114 0 53 1 114 0 54 1 114 0 58 1 114 0 66 1 114 0 72 1 114 0 76 1 114 0 79 1 114 0 89 1 114 0 90 1 114 0 100 1 114 0 103 1 114 0 105 1 114 0 108 1 114 0 110 1 114 0 113 1 114 0 118 1 114 0 121 1 114 0 122 1 114 0 123 1 114 0 125 1 114 0 126 1 114 0 129 6 137 0 227 1 114 1 203] 
#[0 6 141 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 6 145 0 188 6 145 0 189 6 145 0 191 0 245 0 244 6 145 0 252 1 113 0 253 1 117 0 254 1 121 1 1 6 145 1 2 0 245 1 8 6 145 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 1 197 0 4 6 149 0 197] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 6 153 0 134 6 157 0 206 6 161 0 207 6 165 0 208 6 165 0 209 6 165 0 210 6 169 1 203] 
#[0 6 173 0 2] 
#[0 6 177 0 2] 
#[1 0 114 0 2 0 114 0 6 0 114 0 8 0 114 0 9 0 114 0 10 0 114 0 11 0 114 0 12 0 114 0 13 0 114 0 14 0 114 0 15 0 114 0 16 0 114 0 17 0 114 0 18 0 114 0 19 0 114 0 20 0 114 0 21 0 114 0 22 0 114 0 23 0 114 0 24 0 114 0 25 0 114 0 26 0 114 0 27 0 114 0 28 0 114 0 29 0 114 0 30 0 114 0 31 0 114 0 32 0 114 0 33 0 114 0 34 0 114 0 35 0 114 0 36 0 114 0 37 0 114 0 38 0 114 0 40 0 114 0 41 0 114 0 42 0 114 0 43 0 114 0 44 0 114 0 45 0 114 0 46 0 114 0 47 0 114 0 48 0 114 0 50 0 114 0 51 0 114 0 52 0 114 0 80 0 114 0 83 0 114 0 115 6 181 0 116 0 114 0 125 0 114 0 126 0 114 1 202 0 114 1 203] 
#[1 6 185 0 8 6 65 0 115] 
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
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 189 0 199 0 57 0 200 6 189 0 201 0 65 0 202 0 6 1 203 1 186 1 204] 
#[0 1 190 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 0 1 204] 
#[0 1 194 1 204] 
#[0 0 0 1 204] 
#[1 4 241 0 4 4 245 0 71 0 185 0 118 6 193 0 134 6 197 1 22 5 1 1 23 5 5 1 203] 
#[0 6 201 0 58] 
#[1 0 50 0 4 0 50 0 6 6 205 0 69 0 50 0 118 0 50 1 203] 
#[1 6 209 0 58 6 213 0 60 2 117 0 69 6 217 0 76 6 221 0 86 6 225 0 87 6 229 0 88 6 233 0 109 6 253 1 146 6 241 1 184 6 245 1 187 6 249 1 188 6 253 1 194 7 1 1 195] 
#[1 0 185 0 118 7 5 0 134] 
#[1 3 181 0 4 7 9 0 23 7 13 0 26 7 17 1 45] 
#[1 7 21 0 2 7 25 0 26 0 185 0 118 7 29 0 134] 
#[1 5 25 0 2 3 253 0 4 4 1 0 26 0 185 0 118 4 25 0 121 7 33 0 134 4 9 1 34 4 13 1 35 4 17 1 36 4 21 1 37 4 25 1 41 4 13 1 42 4 25 1 50] 
#[1 0 185 0 118 7 37 0 134] 
#[1 0 185 0 118 7 41 0 134 7 45 1 152] 
#[1 0 185 0 118 7 49 0 134] 
#[0 1 198 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 202 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 206 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 31 0 1 1 222 0 2 1 222 0 4 1 222 0 6 1 222 0 8 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 39 1 222 0 49 1 222 0 53 1 222 0 54 1 222 0 55 1 222 0 58 1 222 0 59 1 222 0 60 1 222 0 62 1 222 0 63 0 31 0 64 1 222 0 66 1 222 0 67 1 222 0 69 0 31 0 70 1 222 0 72 1 222 0 74 1 222 0 76 1 222 0 78 0 31 0 79 0 31 0 84 1 222 0 86 0 31 0 88 1 222 0 89 1 222 0 90 1 222 0 96 1 222 0 100 1 222 0 101 1 222 0 103 1 222 0 104 1 222 0 105 1 222 0 106 0 31 0 107 1 222 0 108 1 222 0 109 1 222 0 110 1 222 0 111 1 222 0 112 1 222 0 113 1 222 0 118 1 222 0 121 1 222 0 122 1 222 0 123 1 222 0 125 1 222 0 126 1 222 0 129 1 222 1 203 0 31 1 204] 
#[1 7 53 0 1 7 57 0 70 7 61 1 200] 
#[1 0 35 0 1 1 226 0 2 1 226 0 4 1 226 0 6 1 226 0 8 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 39 1 226 0 49 1 226 0 53 1 226 0 54 1 226 0 55 1 226 0 58 1 226 0 59 1 226 0 60 1 226 0 62 1 226 0 63 0 35 0 64 1 226 0 66 1 226 0 67 1 226 0 69 0 35 0 70 1 226 0 72 1 226 0 74 1 226 0 76 1 226 0 78 0 35 0 79 0 35 0 84 1 226 0 86 0 35 0 88 1 226 0 89 1 226 0 90 1 226 0 96 1 226 0 100 1 226 0 101 1 226 0 103 1 226 0 104 1 226 0 105 1 226 0 106 0 35 0 107 1 226 0 108 1 226 0 109 1 226 0 110 1 226 0 111 1 226 0 112 1 226 0 113 1 226 0 118 1 226 0 121 1 226 0 122 1 226 0 123 1 226 0 125 1 226 0 126 1 226 0 129 1 226 1 203 0 35 1 204] 
#[1 0 39 0 1 1 234 0 2 1 234 0 4 1 234 0 6 1 234 0 8 1 234 0 35 1 234 0 36 1 234 0 37 1 234 0 38 1 234 0 39 1 234 0 49 1 234 0 53 1 234 0 54 1 234 0 55 1 234 0 58 1 234 0 59 1 234 0 60 1 234 0 62 1 234 0 63 0 39 0 64 1 234 0 66 1 234 0 67 1 234 0 69 0 39 0 70 1 234 0 72 1 234 0 74 1 234 0 76 1 234 0 78 0 39 0 79 0 39 0 84 1 234 0 86 0 39 0 88 1 234 0 89 1 234 0 90 1 234 0 96 1 234 0 100 1 234 0 101 1 234 0 103 1 234 0 104 1 234 0 105 1 234 0 106 0 39 0 107 1 234 0 108 1 234 0 109 1 234 0 110 1 234 0 111 1 234 0 112 1 234 0 113 1 234 0 118 1 234 0 121 1 234 0 122 1 234 0 123 1 234 0 125 1 234 0 126 1 234 0 129 1 234 1 203 0 39 1 204] 
#[0 1 242 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 43 0 1 1 246 0 2 1 246 0 4 1 246 0 6 1 246 0 8 1 246 0 35 1 246 0 36 1 246 0 37 1 246 0 38 1 246 0 39 1 246 0 49 1 246 0 53 1 246 0 54 1 246 0 55 1 246 0 58 1 246 0 59 1 246 0 60 1 246 0 62 1 246 0 63 0 43 0 64 1 246 0 66 1 246 0 67 1 246 0 69 0 43 0 70 1 246 0 72 1 246 0 74 1 246 0 76 1 246 0 78 0 43 0 79 0 43 0 84 1 246 0 86 0 43 0 88 1 246 0 89 1 246 0 90 1 246 0 96 1 246 0 100 1 246 0 101 1 246 0 103 1 246 0 104 1 246 0 105 1 246 0 106 0 43 0 107 1 246 0 108 1 246 0 109 1 246 0 110 1 246 0 111 1 246 0 112 1 246 0 113 1 246 0 118 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 129 1 246 1 203 0 43 1 204] 
#[1 0 47 0 1 0 51 0 2 0 51 0 4 0 51 0 6 0 51 0 8 0 51 0 35 0 51 0 36 0 51 0 37 0 51 0 38 0 51 0 39 0 51 0 49 0 51 0 53 0 51 0 54 0 51 0 55 0 51 0 58 0 51 0 59 0 51 0 60 0 51 0 62 0 51 0 63 0 47 0 64 0 51 0 66 0 51 0 67 0 51 0 69 0 47 0 70 0 51 0 72 0 51 0 74 0 51 0 76 0 51 0 78 0 47 0 79 0 47 0 84 0 51 0 86 0 47 0 88 0 51 0 89 0 51 0 90 0 51 0 96 0 51 0 100 0 51 0 101 0 51 0 103 0 51 0 104 0 51 0 105 0 51 0 106 0 47 0 107 0 51 0 108 0 51 0 109 0 51 0 110 0 51 0 111 0 51 0 112 0 51 0 113 0 51 0 118 0 51 0 121 0 51 0 122 0 51 0 123 0 51 0 125 0 51 0 126 0 51 0 129 0 51 1 203 0 47 1 204] 
#[0 0 0 1 204] 
#[0 2 10 1 204] 
#[0 2 14 1 204] 
#[0 2 18 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 2 113 0 64 0 137 0 66 1 217 0 67 2 117 0 69 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 7 65 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 7 85 0 192 7 85 0 195 7 85 0 196 7 85 0 197 7 85 0 201 0 65 0 202 7 85 0 205 7 85 0 219 7 85 0 220 7 85 0 221 7 85 0 222 7 85 0 225 7 85 0 226 7 85 0 228 7 85 0 229 7 85 0 230 7 85 0 235 7 85 0 237 7 85 0 238 7 85 0 242 7 85 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 7 85 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 7 85 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 7 85 1 124 7 85 1 133 7 85 1 146 7 85 1 151 7 85 1 157 7 85 1 164 7 85 1 165 7 85 1 183 7 85 1 199 3 41 1 203 2 22 1 204] 
#[0 2 26 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 2 30 0 1 0 55 0 2 0 55 0 4 0 55 0 6 0 55 0 8 0 55 0 35 0 55 0 36 0 55 0 37 0 55 0 38 0 55 0 39 0 55 0 49 0 55 0 53 0 55 0 54 0 55 0 55 0 55 0 58 0 55 0 59 0 55 0 60 0 55 0 62 0 55 0 63 0 55 0 64 0 55 0 66 0 55 0 67 0 55 0 69 2 30 0 70 0 55 0 72 0 55 0 74 0 55 0 76 0 55 0 78 0 55 0 79 0 55 0 84 0 55 0 86 0 55 0 88 0 55 0 89 0 55 0 90 0 55 0 96 0 55 0 100 0 55 0 101 0 55 0 103 0 55 0 104 0 55 0 105 0 55 0 106 0 55 0 107 0 55 0 108 0 55 0 109 0 55 0 110 0 55 0 111 0 55 0 112 0 55 0 113 0 55 0 118 0 55 0 121 0 55 0 122 0 55 0 123 0 55 0 125 0 55 0 126 0 55 0 129 0 55 1 203 0 55 1 204] 
#[0 2 38 1 204] 
#[1 2 113 0 64 7 101 0 79 2 133 0 84 2 137 0 88 2 141 0 107 7 121 1 124 7 121 1 133 7 121 1 151 7 121 1 157 7 121 1 168 7 121 1 169 7 121 1 183 7 121 1 199 2 42 1 204] 
#[0 2 46 0 64 0 79 0 84 0 88 0 107 1 204] 
#[1 2 50 0 1 0 59 0 64 2 50 0 70 0 59 0 79 0 59 0 84 0 59 0 88 0 59 0 107 0 59 1 204] 
#[0 2 58 1 204] 
#[1 0 30 0 1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 7 137 0 64 0 137 0 66 1 217 0 67 2 117 0 69 0 19 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 2 129 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 7 157 0 192 7 157 0 195 7 157 0 196 7 157 0 197 7 157 0 201 0 65 0 202 7 157 0 205 7 157 0 219 7 157 0 220 7 157 0 221 7 157 0 222 7 157 0 225 7 157 0 226 7 157 0 228 7 157 0 229 7 157 0 230 7 157 0 235 7 157 0 237 7 157 0 238 7 157 0 242 7 157 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 7 157 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 7 157 1 20 0 245 1 21 7 157 1 33 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 7 145 1 117 7 157 1 124 7 157 1 133 7 157 1 146 7 157 1 151 7 149 1 157 7 157 1 165 7 157 1 172 7 157 1 176 7 157 1 177 7 157 1 179 7 157 1 181 7 157 1 182 7 157 1 183 3 41 1 203 2 62 1 204] 
#[0 2 66 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 70 1 204] 
#[1 0 30 0 1 2 74 0 5 7 137 0 64 0 19 0 70 7 169 0 79 2 133 0 84 2 137 0 88 2 141 0 107 7 185 1 33 7 177 1 117 7 185 1 124 7 185 1 133 7 185 1 151 7 185 1 157 7 185 1 169 7 185 1 175 7 185 1 178 7 185 1 180 7 185 1 181 7 185 1 182 7 185 1 183 2 74 1 204] 
#[0 2 78 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 82 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 86 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 90 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 94 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 98 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 0 63 0 1 2 102 0 2 2 102 0 4 2 102 0 6 2 102 0 8 2 102 0 35 2 102 0 36 2 102 0 37 2 102 0 38 2 102 0 39 2 102 0 49 2 102 0 53 2 102 0 54 2 102 0 55 2 102 0 58 2 102 0 59 2 102 0 60 2 102 0 62 2 102 0 63 0 63 0 64 2 102 0 66 2 102 0 67 2 102 0 69 0 63 0 70 2 102 0 72 2 102 0 74 2 102 0 76 2 102 0 78 0 63 0 79 0 63 0 84 2 102 0 86 0 63 0 88 2 102 0 89 2 102 0 90 2 102 0 96 2 102 0 100 2 102 0 101 2 102 0 103 2 102 0 104 2 102 0 105 2 102 0 106 0 63 0 107 2 102 0 108 2 102 0 109 2 102 0 110 2 102 0 111 2 102 0 112 2 102 0 113 2 102 0 118 2 102 0 121 2 102 0 122 2 102 0 123 2 102 0 125 2 102 0 126 2 102 0 129 2 102 1 203 0 63 1 204] 
#[1 0 67 0 1 2 110 0 2 2 110 0 4 2 110 0 6 2 110 0 8 2 110 0 35 2 110 0 36 2 110 0 37 2 110 0 38 2 110 0 39 2 110 0 49 2 110 0 53 2 110 0 54 2 110 0 55 2 110 0 58 2 110 0 59 2 110 0 60 2 110 0 62 2 110 0 63 0 67 0 64 2 110 0 66 2 110 0 67 2 110 0 69 0 67 0 70 2 110 0 72 2 110 0 74 2 110 0 76 2 110 0 78 0 67 0 79 0 67 0 84 2 110 0 86 0 67 0 88 2 110 0 89 2 110 0 90 2 110 0 96 2 110 0 100 2 110 0 101 2 110 0 103 2 110 0 104 2 110 0 105 2 110 0 106 0 67 0 107 2 110 0 108 2 110 0 109 2 110 0 110 2 110 0 111 2 110 0 112 2 110 0 113 2 110 0 118 2 110 0 121 2 110 0 122 2 110 0 123 2 110 0 125 2 110 0 126 2 110 0 129 2 110 1 203 0 67 1 204] 
#[1 0 71 0 1 2 122 0 2 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 2 122 0 39 2 122 0 49 2 122 0 53 2 122 0 54 2 122 0 55 2 122 0 58 2 122 0 59 2 122 0 60 2 122 0 62 2 122 0 63 0 71 0 64 2 122 0 66 2 122 0 67 2 122 0 69 0 71 0 70 2 122 0 72 2 122 0 74 2 122 0 76 2 122 0 78 0 71 0 79 0 71 0 84 2 122 0 86 0 71 0 88 2 122 0 89 2 122 0 90 2 122 0 96 2 122 0 100 2 122 0 101 2 122 0 103 2 122 0 104 2 122 0 105 2 122 0 106 0 71 0 107 2 122 0 108 2 122 0 109 2 122 0 110 2 122 0 111 2 122 0 112 2 122 0 113 2 122 0 118 2 122 0 121 2 122 0 122 2 122 0 123 2 122 0 125 2 122 0 126 2 122 0 129 2 122 1 203 0 71 1 204] 
#[1 2 126 0 2 2 126 0 4 2 126 0 6 2 126 0 8 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 38 2 126 0 39 2 126 0 49 2 126 0 53 2 126 0 54 2 126 0 55 2 126 0 58 2 126 0 59 2 126 0 60 2 126 0 62 2 126 0 63 0 75 0 64 2 126 0 66 2 126 0 67 2 126 0 69 2 126 0 72 2 126 0 74 2 126 0 76 2 126 0 78 0 75 0 79 0 75 0 84 2 126 0 86 0 75 0 88 2 126 0 89 2 126 0 90 2 126 0 96 2 126 0 100 2 126 0 101 2 126 0 103 2 126 0 104 2 126 0 105 2 126 0 106 0 75 0 107 2 126 0 108 2 126 0 109 2 126 0 110 2 126 0 111 2 126 0 112 2 126 0 113 2 126 0 118 2 126 0 121 2 126 0 122 2 126 0 123 2 126 0 125 2 126 0 126 2 126 0 129 2 126 1 203 0 75 1 204] 
#[1 0 79 0 1 6 81 0 2 6 85 0 11 0 30 0 58 0 30 0 59 7 197 0 76 6 93 1 81 7 201 1 117 6 97 1 125 7 205 1 200] 
#[1 3 45 0 2 0 90 0 3 7 209 0 4 7 213 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 4 93 0 114 0 185 0 118 3 89 0 121 3 93 0 122 7 217 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 7 221 0 246 4 129 0 247 4 133 0 248 4 137 0 249 3 89 1 50 3 93 1 51 3 97 1 81 7 225 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 7 225 1 109 7 225 1 110 3 117 1 111 3 117 1 113 7 229 1 203] 
#[1 7 233 0 2 7 237 0 5 7 241 0 6 3 57 0 11 7 245 0 89 7 249 0 119 8 13 0 121 8 17 0 122 8 1 0 135 8 1 0 147 8 1 0 148 8 1 0 149 8 13 1 50 8 17 1 51 8 21 1 81 8 25 1 100 8 29 1 101 8 33 1 102 8 33 1 114 8 33 1 116 8 33 1 121 8 33 1 122 8 33 1 123] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 8 57 0 7 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 8 61 0 115 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 8 73 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 8 69 1 105 8 73 1 106 3 105 1 107 3 109 1 108 8 73 1 109 8 73 1 110 3 117 1 111 3 117 1 113] 
#[1 0 185 0 118 8 77 0 134 8 81 1 82 8 85 1 83] 
#[1 8 89 0 2 3 49 0 4 3 53 0 6 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 8 93 1 92 8 93 1 93 8 93 1 94 8 93 1 95 8 93 1 96 3 137 1 97 3 141 1 98 8 93 1 99 8 93 1 103 8 93 1 104 8 93 1 111 8 93 1 113] 
#[1 8 89 0 2 3 49 0 4 3 53 0 6 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 8 97 1 92 8 97 1 93 8 97 1 94 8 97 1 95 8 97 1 96 3 137 1 97 3 141 1 98 8 97 1 99 8 97 1 103 8 97 1 104 8 97 1 111 8 97 1 113] 
#[1 8 101 0 2 3 57 0 11 8 105 1 81] 
#[0 2 134 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 0 185 0 118 8 109 0 134 8 113 1 112] 
#[0 2 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 2 142 0 3 2 142 0 4 2 142 0 5 2 142 0 6 2 142 0 7 2 142 0 8 2 142 0 9 2 142 0 11 2 142 0 12 2 142 0 14 2 142 0 15 2 142 0 18 2 142 0 19 2 142 0 20 2 142 0 21 2 146 0 22 2 142 0 23 2 142 0 24 2 142 0 25 2 142 0 26 2 142 0 27 2 142 0 35 2 142 0 37 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 44 2 142 0 45 2 142 0 46 2 142 0 47 2 142 0 48 2 142 0 50 2 142 0 51 2 142 0 61 2 142 0 80 2 142 0 82 2 142 0 83 2 142 0 93 2 142 0 94 2 142 0 95 2 142 0 98 2 142 0 115 2 142 0 116 2 142 0 119 2 142 0 121 2 142 0 122 2 142 0 127 2 142 0 128 2 142 1 204] 
#[0 2 150 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 154 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 8 117 0 2] 
#[0 0 0 1 204] 
#[1 2 158 0 3 2 158 0 4 2 158 0 5 2 158 0 6 2 158 0 7 2 158 0 8 2 158 0 9 2 158 0 11 2 158 0 12 2 158 0 14 2 158 0 15 2 158 0 18 2 158 0 19 2 158 0 20 2 158 0 21 2 158 0 23 2 158 0 24 2 158 0 25 2 158 0 26 2 158 0 27 2 158 0 35 2 158 0 37 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 44 2 158 0 45 0 83 0 46 2 158 0 47 2 158 0 48 2 158 0 50 2 158 0 51 2 158 0 61 2 158 0 80 2 158 0 83 2 158 0 93 2 158 0 94 2 158 0 95 2 158 0 98 2 158 0 115 2 158 0 116 2 158 0 119 2 158 0 121 2 158 0 122 2 158 0 127 2 158 0 128 2 158 1 204] 
#[1 2 162 0 3 2 162 0 4 2 162 0 5 2 162 0 6 2 162 0 7 2 162 0 8 2 162 0 9 2 162 0 11 2 162 0 12 2 162 0 14 2 162 0 15 2 162 0 18 2 162 0 19 2 162 0 20 2 162 0 21 2 162 0 23 2 162 0 24 2 162 0 25 2 162 0 26 2 162 0 27 2 162 0 35 2 162 0 37 0 87 0 40 2 162 0 41 2 162 0 42 2 162 0 44 2 162 0 45 2 162 0 46 2 162 0 47 2 162 0 48 2 162 0 50 2 162 0 51 2 162 0 61 2 162 0 80 2 162 0 83 2 162 0 93 2 162 0 94 2 162 0 95 2 162 0 98 2 162 0 115 2 162 0 116 2 162 0 119 2 162 0 121 2 162 0 122 2 162 0 127 2 162 0 128 2 162 1 204] 
#[0 2 166 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 2 170 0 3 2 170 0 4 2 170 0 5 0 91 0 6 2 170 0 7 2 170 0 8 2 170 0 9 2 170 0 11 2 170 0 12 2 170 0 14 2 170 0 15 2 170 0 18 2 170 0 19 2 170 0 20 2 170 0 21 2 170 0 23 2 170 0 24 2 170 0 25 2 170 0 26 2 170 0 27 2 170 0 35 2 170 0 37 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 44 2 170 0 45 2 170 0 46 2 170 0 47 2 170 0 48 2 170 0 50 2 170 0 51 2 170 0 61 2 170 0 80 2 170 0 83 2 170 0 93 2 170 0 94 2 170 0 95 2 170 0 98 2 170 0 115 2 170 0 116 2 170 0 119 2 170 0 121 2 170 0 122 2 170 0 127 2 170 0 128 8 129 0 227 2 170 1 204] 
#[0 2 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 182 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 186 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 1 114 0 3 1 114 0 4 1 114 0 5 1 114 0 6 1 114 0 7 1 114 0 8 1 114 0 9 1 114 0 11 1 114 0 12 1 114 0 14 1 114 0 15 1 114 0 18 1 114 0 19 1 114 0 20 1 114 0 21 1 114 0 23 1 114 0 24 1 114 0 25 1 114 0 26 1 114 0 27 1 114 0 35 1 114 0 37 1 114 0 40 1 114 0 41 1 114 0 42 1 114 0 44 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 48 1 114 0 50 1 114 0 51 1 114 0 61 1 114 0 80 1 114 0 82 1 114 0 83 1 114 0 93 1 114 0 94 1 114 0 95 1 114 0 98 1 114 0 115 1 114 0 116 1 114 0 119 1 114 0 121 1 114 0 122 1 114 0 127 1 114 0 128 8 133 0 227 1 114 1 204] 
#[0 8 137 0 22] 
#[0 2 190 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 194 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 206 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 210 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 214 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 8 141 0 5 8 145 0 119 8 149 1 46 8 153 1 47] 
#[1 8 157 0 52 2 226 0 75] 
#[0 8 161 0 76] 
#[1 4 241 0 4 4 245 0 71 0 185 0 118 8 165 0 134 8 169 1 22 5 1 1 23 5 5 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 8 173 0 188 8 173 0 189 0 245 0 244 8 173 0 252 1 113 0 253 1 117 0 254 1 121 1 1 8 173 1 2 0 245 1 8 8 173 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 8 177 0 2 8 181 0 26 0 185 0 118 8 185 0 134] 
#[0 2 230 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 234 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 238 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 242 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 246 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 250 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 254 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 3 2 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 3 6 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 8 189 0 75 8 193 1 38] 
#[1 8 197 0 8 3 10 0 75] 
#[1 0 79 0 1 0 30 0 58 0 30 0 59 8 201 0 60 2 117 0 69 8 205 0 76 2 133 0 84 2 141 0 107 7 201 1 117 8 209 1 124 8 213 1 133 8 217 1 146 7 205 1 200] 
#[1 8 221 0 5 0 185 0 118 8 225 0 119 8 237 0 134 8 229 1 39 8 233 1 40 8 237 1 42] 
#[0 8 241 0 52] 
#[0 3 14 0 5 0 75 0 115] 
#[1 8 189 0 75 8 245 1 38] 
#[1 3 18 0 75 8 249 0 115] 
#[0 3 22 0 75] 
#[0 3 26 0 75] 
#[0 8 253 0 8] 
#[0 3 30 0 75 0 115] 
#[0 3 34 0 8] 
#[0 3 38 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 9 1 0 5 9 5 0 6 9 9 0 114 0 185 0 118 7 249 0 119 8 13 0 121 8 17 0 122 9 13 0 134 9 17 0 135 9 17 0 147 9 17 0 148 9 17 0 149 9 21 0 211 9 25 0 212 9 29 0 215 9 29 0 217 8 13 1 50 8 17 1 51 9 37 1 203] 
#[1 4 41 0 4 4 45 0 6 9 41 0 7 4 93 0 114 4 153 0 115 0 185 0 118 9 13 0 134 9 45 0 141 4 105 0 208 4 105 0 209 4 105 0 210 9 49 0 213 9 53 0 214 9 57 0 216 9 57 0 217 9 61 0 218 7 229 1 203] 
#[1 3 42 0 8 9 65 0 23 3 42 0 115 9 69 0 151] 
#[1 9 73 0 8 9 77 0 115] 
#[0 3 46 0 8 0 115] 
#[1 9 65 0 23 9 81 0 151] 
#[0 3 50 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 3 54 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 3 58 0 8 0 115] 
#[0 3 62 0 8 0 115] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 9 85 0 134 9 89 0 208 9 89 0 209 9 89 0 210] 
#[0 3 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 27 0 4 4 89 0 6 9 93 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 9 97 0 114 4 153 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 4 97 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 4 157 0 140 9 101 0 141 4 165 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 169 0 188 4 169 0 189 4 105 0 208 4 105 0 209 4 105 0 210 9 49 0 213 9 53 0 214 9 57 0 216 9 57 0 217 9 61 0 218 0 245 0 244 4 169 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 169 1 2 0 245 1 8 4 169 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 141 1 203] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 9 105 0 134 9 109 0 208 9 109 0 209 9 109 0 210] 
#[1 0 138 0 2 0 95 0 3 0 138 0 6 0 95 0 7 0 138 0 9 0 138 0 10 0 138 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 15 0 138 0 16 0 138 0 17 0 138 0 18 0 142 0 19 0 138 0 20 0 138 0 21 0 138 0 22 0 99 0 23 0 138 0 24 0 138 0 25 0 138 0 26 0 138 0 27 0 138 0 28 0 138 0 29 0 138 0 30 0 138 0 31 0 138 0 32 0 138 0 33 0 138 0 34 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 38 0 138 0 40 0 138 0 41 0 138 0 42 0 138 0 43 0 138 0 44 0 138 0 45 0 138 0 46 0 138 0 47 0 138 0 48 0 138 0 50 0 138 0 51 0 138 0 52 0 138 0 80 0 138 0 83 0 95 0 115 0 138 0 125 0 138 0 126 9 113 0 151 0 138 1 202 0 138 1 203] 
#[1 9 117 0 3 6 65 0 115] 
#[1 3 74 0 3 3 74 0 5 3 74 0 7 9 65 0 23 3 74 0 115 9 121 0 151] 
#[0 3 78 0 3 0 115] 
#[0 3 82 0 3 0 5 0 7 0 115] 
#[0 3 86 0 3] 
#[0 9 125 0 3] 
#[0 3 90 0 3] 
#[1 3 94 0 3 9 129 0 115] 
#[0 3 98 0 3] 
#[0 3 102 0 3 0 115] 
#[1 0 30 0 1 6 81 0 2 0 30 0 4 0 30 0 6 6 85 0 11 0 30 0 42 6 89 0 76 0 103 0 93 0 107 0 94 0 111 0 95 0 30 0 103 0 30 0 116 0 115 0 118 9 145 0 134 6 93 1 81 9 149 1 117 9 153 1 119 6 97 1 125] 
#[0 3 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 157 0 188 9 157 0 189 0 245 0 244 9 157 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 157 1 2 0 245 1 8 9 157 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 3 110 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 114 0 115 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 9 161 0 7 4 153 0 115 9 165 0 141] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 9 169 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 149 0 114 9 173 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 9 177 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 181 0 188 9 181 0 189 0 245 0 244 9 181 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 181 1 2 0 245 1 8 9 181 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 3 114 0 7 0 115] 
#[0 3 118 0 7 0 115] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 101 0 188 4 101 0 189 4 101 0 191 0 245 0 244 4 101 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 101 1 2 0 245 1 8 4 101 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 4 221 0 76] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 206 0 3 0 206 0 5 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 11 0 206 0 12 0 206 0 14 0 206 0 15 0 206 0 18 0 206 0 20 0 206 0 21 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 35 5 193 0 36 0 206 0 37 5 197 0 38 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 50 0 206 0 51 5 201 0 52 0 206 0 80 0 206 0 83 0 206 0 115 0 206 0 116 0 206 0 127 0 206 0 128 0 206 1 204] 
#[0 3 122 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 9 185 0 11 6 89 0 76] 
#[0 3 126 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 3 130 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 3 134 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 3 138 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 3 142 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 4 121 0 245 4 125 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 9 189 0 2 9 193 0 26 0 185 0 118 9 197 0 134] 
#[0 0 142 0 19] 
#[0 9 201 0 19] 
#[1 6 81 0 2 3 57 0 11 6 93 1 81 6 97 1 125] 
#[0 3 146 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 9 205 0 5 9 5 0 6 9 209 0 8 9 213 0 26 9 217 0 53 9 221 0 77 9 225 0 97 9 229 0 98 7 249 0 119 8 13 0 121 8 17 0 122 9 233 0 135 9 233 0 147 9 233 0 148 9 233 0 149 10 5 1 4 10 5 1 6 10 5 1 11 10 5 1 15 9 253 1 24 10 1 1 25 10 5 1 26 8 13 1 50 8 17 1 51 10 5 1 126 10 5 1 127 10 17 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 4 177 0 53 0 133 0 58 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 10 21 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 10 21 0 170 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 5 45 1 203] 
#[1 4 241 0 4 4 245 0 71 10 25 1 22 5 1 1 23 5 5 1 203] 
#[0 3 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 29 0 4] 
#[1 10 33 0 71 10 37 0 82 10 41 1 137 10 45 1 139] 
#[0 3 154 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 10 49 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 10 53 0 2 0 185 0 118 10 57 0 134] 
#[0 10 61 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 65 0 188 10 65 0 189 0 245 0 244 10 65 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 65 1 2 0 245 1 8 10 65 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 69 0 102] 
#[1 5 53 0 6 5 57 0 22] 
#[1 5 49 0 2 0 170 0 3 0 170 0 4 0 170 0 5 5 97 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 11 0 170 0 12 0 170 0 13 0 170 0 14 0 170 0 15 0 170 0 16 0 170 0 17 0 170 0 18 0 170 0 20 0 170 0 21 5 101 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 27 0 170 0 28 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 34 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 48 0 170 0 50 0 170 0 51 0 170 0 52 0 170 0 80 0 170 0 83 0 170 0 92 0 170 0 115 0 170 0 116 0 201 0 125 0 18 0 126 0 170 0 127 0 170 0 128 5 109 0 152 0 241 0 153 10 73 0 164 0 170 1 202 5 65 1 203 0 170 1 204] 
#[0 3 158 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 202 1 204] 
#[0 6 89 0 76] 
#[1 0 93 0 2 10 77 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 10 81 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 10 85 0 165 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 89 0 188 10 89 0 189 0 245 0 244 10 89 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 89 1 2 0 245 1 8 10 89 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 93 0 188 10 93 0 189 10 93 0 191 0 245 0 244 10 93 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 93 1 2 0 245 1 8 10 93 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 97 0 119] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 10 101 0 11 10 105 1 85] 
#[0 3 166 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 3 170 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 109 0 188 10 109 0 189 0 245 0 244 10 109 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 109 1 2 0 245 1 8 10 109 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 3 174 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 10 113 0 14] 
#[1 10 117 0 5 9 5 0 6 9 213 0 26 9 217 0 53 9 221 0 77 9 225 0 97 10 121 0 114 0 185 0 118 7 249 0 119 8 13 0 121 8 17 0 122 10 125 0 134 10 137 0 135 10 129 0 145 10 133 0 146 10 137 0 147 10 137 0 148 10 137 0 149 10 133 0 150 10 133 1 4 10 133 1 6 10 133 1 11 10 133 1 15 8 13 1 50 8 17 1 51 10 133 1 126 10 133 1 127 10 149 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 153 0 188 10 153 0 189 10 153 0 191 0 245 0 244 10 153 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 153 1 2 0 245 1 8 10 153 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 157 0 188 10 157 0 189 10 157 0 191 0 245 0 244 10 157 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 157 1 2 0 245 1 8 10 157 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 161 0 119] 
#[1 5 49 0 2 10 165 0 6 10 169 0 119 0 201 0 125 0 18 0 126 10 173 0 152 0 241 0 153 10 177 0 164 10 181 0 169 5 65 1 203] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 49 0 2 3 186 0 3 3 186 0 4 3 186 0 5 10 185 0 6 3 186 0 7 3 186 0 8 3 186 0 9 3 186 0 10 3 186 0 11 3 186 0 12 3 186 0 13 3 186 0 14 3 186 0 15 3 186 0 16 3 186 0 17 3 186 0 18 3 186 0 20 3 186 0 21 10 189 0 22 3 186 0 23 3 186 0 24 3 186 0 25 3 186 0 26 3 186 0 27 3 186 0 28 3 186 0 29 3 186 0 30 3 186 0 31 3 186 0 32 3 186 0 33 3 186 0 34 3 186 0 35 3 186 0 36 3 186 0 37 3 186 0 38 3 186 0 40 3 186 0 41 3 186 0 42 3 186 0 43 3 186 0 44 3 186 0 45 3 186 0 46 3 186 0 47 3 186 0 48 3 186 0 50 3 186 0 51 3 186 0 52 3 186 0 80 3 186 0 83 3 186 0 92 3 186 0 115 3 186 0 116 0 201 0 125 0 18 0 126 3 186 0 127 3 186 0 128 10 193 0 152 0 241 0 153 10 197 0 164 10 201 0 168 3 186 1 202 5 65 1 203 3 186 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 205 0 188 10 205 0 189 10 205 0 191 0 245 0 244 10 205 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 205 1 2 0 245 1 8 10 205 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 209 0 119] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 49 0 2 3 198 0 3 3 198 0 4 3 198 0 5 10 185 0 6 3 198 0 7 3 198 0 8 3 198 0 9 3 198 0 10 3 198 0 11 3 198 0 12 3 198 0 13 3 198 0 14 3 198 0 15 3 198 0 16 3 198 0 17 3 198 0 18 3 198 0 20 3 198 0 21 10 189 0 22 3 198 0 23 3 198 0 24 3 198 0 25 3 198 0 26 3 198 0 27 3 198 0 28 3 198 0 29 3 198 0 30 3 198 0 31 3 198 0 32 3 198 0 33 3 198 0 34 3 198 0 35 3 198 0 36 3 198 0 37 3 198 0 38 3 198 0 40 3 198 0 41 3 198 0 42 3 198 0 43 3 198 0 44 3 198 0 45 3 198 0 46 3 198 0 47 3 198 0 48 3 198 0 50 3 198 0 51 3 198 0 52 3 198 0 80 3 198 0 83 3 198 0 92 3 198 0 115 3 198 0 116 0 201 0 125 0 18 0 126 3 198 0 127 3 198 0 128 10 193 0 152 0 241 0 153 10 197 0 164 10 201 0 168 3 198 1 202 5 65 1 203 3 198 1 204] 
#[1 5 49 0 2 3 202 0 3 3 202 0 4 3 202 0 5 10 185 0 6 3 202 0 7 3 202 0 8 3 202 0 9 3 202 0 10 3 202 0 11 3 202 0 12 3 202 0 13 3 202 0 14 3 202 0 15 3 202 0 16 3 202 0 17 3 202 0 18 3 202 0 20 3 202 0 21 10 189 0 22 3 202 0 23 3 202 0 24 3 202 0 25 3 202 0 26 3 202 0 27 3 202 0 28 3 202 0 29 3 202 0 30 3 202 0 31 3 202 0 32 3 202 0 33 3 202 0 34 3 202 0 35 3 202 0 36 3 202 0 37 3 202 0 38 3 202 0 40 3 202 0 41 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 50 3 202 0 51 3 202 0 52 3 202 0 80 3 202 0 83 3 202 0 92 3 202 0 115 3 202 0 116 0 201 0 125 0 18 0 126 3 202 0 127 3 202 0 128 10 193 0 152 0 241 0 153 10 197 0 164 10 201 0 168 3 202 1 202 5 65 1 203 3 202 1 204] 
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
#[0 3 254 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 4 2 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 10 213 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 217 0 188 10 217 0 189 0 245 0 244 10 217 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 217 1 2 0 245 1 8 10 217 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 4 6 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 10 221 0 173 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[0 4 10 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 14 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 18 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 10 225 0 173 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 10 229 0 173 10 229 0 174 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 10 233 0 173 10 233 0 174 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 10 237 0 176 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 10 241 0 176 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 10 245 0 176 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 10 249 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 10 253 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 1 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 5 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 9 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 13 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 17 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 21 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 25 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 29 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 11 33 0 179 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 11 37 0 180 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 11 41 0 181 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 11 45 0 182 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 11 49 0 182 11 53 0 183 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 11 57 0 182 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 61 0 188 11 61 0 189 0 245 0 244 11 61 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 61 1 2 0 245 1 8 11 61 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 65 0 188 11 65 0 189 0 245 0 244 11 65 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 65 1 2 0 245 1 8 11 65 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 119 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 81 0 188 11 81 0 189 0 245 0 244 11 81 0 252 1 113 0 253 1 117 0 254 11 77 0 255 11 81 1 0 1 121 1 1 11 81 1 2 0 245 1 8 11 81 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 22 0 4 4 22 0 129 4 22 0 131 11 85 1 71 11 89 1 72] 
#[1 11 93 0 130 11 97 1 58 11 97 1 59 11 97 1 60 11 109 1 61 11 113 1 62] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 11 117 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 11 121 0 134 3 89 1 50 3 93 1 51 3 97 1 81 8 81 1 82 8 85 1 83 11 125 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 11 125 1 109 11 125 1 110 3 117 1 111 3 117 1 113] 
#[1 6 81 0 2 3 57 0 11 0 185 0 118 11 129 0 134 6 93 1 81 11 133 1 125] 
#[0 11 137 0 2] 
#[0 4 26 0 19] 
#[0 4 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 11 141 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 189 0 199 0 57 0 200 6 189 0 201 0 65 0 202 0 6 1 203] 
#[1 11 145 0 8 0 185 0 118 11 149 0 134] 
#[1 11 153 0 8 0 185 0 118 11 157 0 134] 
#[0 4 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 161 0 111] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 11 165 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 11 185 0 60 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 11 185 0 86 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 11 169 0 109 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 11 173 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 11 173 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 177 0 188 11 177 0 189 11 177 0 191 11 181 0 201 11 185 0 202 11 189 0 223 0 245 0 244 11 177 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 177 1 2 0 245 1 8 11 177 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 11 193 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 197 0 188 11 197 0 189 11 197 0 191 0 245 0 244 11 197 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 197 1 2 0 245 1 8 11 197 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 11 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 205 0 188 11 205 0 189 11 205 0 191 0 245 0 244 11 205 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 205 1 2 0 245 1 8 11 205 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 209 0 188 11 209 0 189 11 209 0 191 0 245 0 244 11 209 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 209 1 2 0 245 1 8 11 209 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 11 213 0 8 6 65 0 115] 
#[1 11 217 0 57 11 221 0 73 11 225 0 239 11 229 0 240] 
#[1 4 38 0 8 9 65 0 23 4 38 0 115 11 233 0 151] 
#[1 11 237 0 8 11 241 0 115] 
#[0 4 42 0 8 0 115] 
#[1 9 65 0 23 11 245 0 151] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 11 249 0 134 11 253 0 208 11 253 0 209 11 253 0 210 12 1 1 129 12 5 1 130] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 12 9 0 188 12 9 0 189 12 9 0 191 0 245 0 244 12 9 0 252 1 113 0 253 1 117 0 254 1 121 1 1 12 9 1 2 0 245 1 8 12 9 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 12 13 0 188 12 13 0 189 12 13 0 191 0 245 0 244 12 13 0 252 1 113 0 253 1 117 0 254 1 121 1 1 12 13 1 2 0 245 1 8 12 13 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 12 21 0 192 12 21 0 195 12 21 0 196 12 21 0 197 12 21 0 205 12 21 0 219 12 21 0 220 12 21 0 221 12 21 0 222 12 21 0 225 12 21 0 226 12 21 0 228 12 21 0 229 12 21 0 230 12 21 0 235 12 21 0 236 12 21 0 237 12 21 0 238 12 21 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 4 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 50 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 241 0 4 4 245 0 71 12 25 1 22 5 1 1 23 5 5 1 203] 
#[1 4 54 0 1 0 123 0 2 4 54 0 4 4 54 0 5 0 123 0 6 0 123 0 8 3 150 0 9 3 150 0 10 3 150 0 11 3 150 0 12 3 150 0 13 3 150 0 14 3 150 0 15 3 150 0 16 3 150 0 17 3 150 0 18 3 150 0 20 3 150 0 21 3 150 0 22 3 150 0 23 3 150 0 24 3 150 0 25 3 150 0 26 3 150 0 27 3 150 0 28 3 150 0 29 3 150 0 30 3 150 0 31 3 150 0 32 3 150 0 33 3 150 0 34 0 123 0 35 0 123 0 36 0 123 0 37 0 123 0 38 4 54 0 39 3 150 0 40 3 150 0 41 3 150 0 42 3 150 0 43 3 150 0 44 3 150 0 45 3 150 0 46 3 150 0 47 3 150 0 48 4 54 0 49 3 150 0 50 3 150 0 51 3 150 0 52 4 54 0 53 4 54 0 54 4 54 0 55 4 54 0 58 4 54 0 59 4 54 0 60 4 54 0 62 4 54 0 63 4 54 0 64 4 54 0 66 4 54 0 67 4 54 0 69 4 54 0 70 4 54 0 72 4 54 0 74 4 54 0 76 4 54 0 78 4 54 0 79 3 150 0 80 3 150 0 83 4 54 0 84 4 54 0 86 4 54 0 88 4 54 0 89 4 54 0 90 4 54 0 96 4 54 0 100 4 54 0 101 4 54 0 103 4 54 0 104 4 54 0 105 4 54 0 106 4 54 0 107 4 54 0 108 4 54 0 109 4 54 0 110 4 54 0 111 4 54 0 112 4 54 0 113 3 150 0 115 4 54 0 118 4 54 0 121 4 54 0 122 4 54 0 123 0 123 0 125 0 123 0 126 4 54 0 129 3 150 1 202 0 123 1 203 4 54 1 204] 
#[1 4 241 0 4 4 245 0 71 0 185 0 118 12 29 0 134 12 33 1 22 5 1 1 23 5 5 1 203] 
#[1 0 185 0 118 12 37 0 134] 
#[1 0 185 0 118 12 41 0 134] 
#[1 6 205 0 69 0 185 0 118 12 45 0 134 12 49 1 185 12 53 1 186] 
#[1 0 185 0 118 12 57 0 134] 
#[1 0 185 0 118 12 45 0 134 12 61 1 185 12 53 1 186] 
#[0 12 65 0 121 1 50] 
#[1 0 185 0 118 7 41 0 134 12 69 1 152] 
#[1 0 185 0 118 12 45 0 134 12 73 1 185 12 53 1 186] 
#[0 4 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 77 0 4] 
#[1 0 185 0 118 12 81 0 134] 
#[1 8 189 0 75 12 85 1 38] 
#[1 12 89 0 8 8 189 0 75 12 93 1 38] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 12 97 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 12 101 0 2 0 185 0 118 12 105 0 134] 
#[0 12 109 0 2] 
#[1 12 113 0 23 3 14 0 75 3 14 0 115] 
#[1 3 49 0 4 3 57 0 11 12 117 0 71 12 121 1 81 12 125 1 99 12 129 1 134] 
#[0 4 82 0 4 0 22] 
#[1 12 133 0 4 12 137 0 22] 
#[1 3 57 0 11 12 141 0 23 12 145 1 81] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 4 177 0 53 0 133 0 58 1 157 0 72 0 145 0 76 0 149 0 79 12 149 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 12 153 0 134 12 157 0 136 12 157 0 137 12 157 0 138 12 157 0 139 12 157 0 143 0 233 0 144 12 157 0 152 0 241 0 153 12 157 0 156 12 157 0 157 12 157 0 158 12 157 0 159 12 161 0 161 12 161 0 162 12 161 0 163 12 157 0 244 12 157 1 8 12 157 1 13 12 157 1 17 12 157 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 12 157 1 52 12 157 1 53 12 157 1 54 1 181 1 55 12 157 1 57 1 189 1 75 5 45 1 203] 
#[1 3 193 0 58 2 105 0 59 2 109 0 60 7 137 0 64 12 165 0 65 2 117 0 69 3 201 0 76 7 169 0 79 2 133 0 84 0 65 0 86 2 137 0 88 2 141 0 107 1 245 0 109 12 169 0 201 0 65 0 202 12 173 0 205 12 177 0 243 12 181 1 7 12 185 1 20 12 189 1 33 12 193 1 124 12 197 1 133 12 201 1 146 12 205 1 151 12 209 1 157 12 213 1 183 12 217 1 203] 
#[0 4 86 0 1 0 4 0 6 0 42 0 58 0 59 0 61 0 70 0 93 0 94 0 95 0 98 0 103 0 116 0 118 0 119 0 121 0 122 1 203] 
#[1 5 25 0 2 0 185 0 118 12 221 0 134] 
#[0 1 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 246 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 2 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 90 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 34 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 122 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 126 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 185 0 118 12 221 0 134] 
#[0 1 230 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 1 238 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 1 250 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 6 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 94 0 64 0 79 0 84 0 88 0 107 1 204] 
#[0 2 54 0 64 0 79 0 84 0 88 0 107 1 204] 
#[0 2 118 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 130 0 64 0 79 0 84 0 88 0 107 1 204] 
#[1 6 209 0 58 6 213 0 60 2 117 0 69 6 217 0 76 6 221 0 86 6 229 0 88 6 233 0 109 6 253 1 146 6 241 1 184 6 245 1 187 6 249 1 188 6 253 1 194 7 1 1 195] 
#[0 1 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 7 53 0 1 12 225 0 70 7 61 1 200] 
#[0 0 51 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 30 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 98 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 102 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 110 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 253 0 4 4 1 0 26 0 185 0 118 4 25 0 121 12 229 0 134 4 9 1 34 4 13 1 35 4 17 1 36 4 21 1 37 4 25 1 41 4 13 1 42 4 25 1 50] 
#[0 1 218 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 7 53 0 1 12 233 0 70 7 61 1 200] 
#[0 2 50 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 102 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 106 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 114 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 12 237 0 2 3 57 0 11 0 185 0 118 12 241 0 134 12 245 1 81 12 249 1 116 12 253 1 125] 
#[1 7 53 0 1 13 1 0 58 13 5 0 59 7 61 1 200] 
#[1 0 30 0 1 0 30 0 58 0 30 0 59 13 9 1 117] 
#[1 7 233 0 2 13 13 0 5 7 241 0 6 3 57 0 11 7 245 0 89 9 9 0 114 0 185 0 118 7 249 0 119 8 13 0 121 8 17 0 122 9 13 0 134 13 17 0 135 13 17 0 147 13 17 0 148 13 17 0 149 9 21 0 211 9 25 0 212 9 29 0 215 9 29 0 217 8 13 1 50 8 17 1 51 8 21 1 81 8 25 1 100 8 29 1 101 8 33 1 102 8 33 1 114 8 33 1 116 8 33 1 121 8 33 1 122 8 33 1 123 9 37 1 203] 
#[1 3 45 0 2 7 209 0 4 7 213 0 6 13 21 0 7 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 4 93 0 114 13 25 0 115 0 185 0 118 3 89 0 121 3 93 0 122 7 217 0 134 9 45 0 141 4 105 0 208 4 105 0 209 4 105 0 210 9 49 0 213 9 53 0 214 9 57 0 216 9 57 0 217 9 61 0 218 3 89 1 50 3 93 1 51 3 97 1 81 8 73 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 8 69 1 105 8 73 1 106 3 105 1 107 3 109 1 108 8 73 1 109 8 73 1 110 3 117 1 111 3 117 1 113 7 229 1 203] 
#[1 0 127 0 3 0 127 0 5 2 142 0 6 0 127 0 7 2 142 0 8 2 142 0 11 2 146 0 22 9 65 0 23 2 142 0 40 2 142 0 46 0 127 0 115 9 113 0 151] 
#[0 13 29 0 3] 
#[0 13 33 0 3] 
#[1 0 30 0 1 0 30 0 4 0 30 0 6 0 30 0 42 0 103 0 93 0 107 0 94 0 111 0 95 0 30 0 103 0 30 0 116 0 115 0 118 9 145 0 134 9 149 1 117 9 153 1 119] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 13 37 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 4 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 93 0 94 0 95 0 96 0 98 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 119 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 13 41 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 13 45 0 188 13 45 0 189 0 245 0 244 13 45 0 252 1 113 0 253 1 117 0 254 1 121 1 1 13 45 1 2 0 245 1 8 13 45 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 13 49 0 2 3 57 0 11 13 53 1 81] 
#[0 4 110 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 114 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[1 7 233 0 2 4 118 0 5 4 118 0 8 3 57 0 11 13 57 0 42 4 118 0 115 13 61 0 116 8 21 1 81 13 65 1 115 13 69 1 116] 
#[0 4 122 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 126 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 130 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 134 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 13 73 0 2] 
#[0 13 77 0 5] 
#[1 4 138 0 5 13 81 0 8 13 85 0 115] 
#[0 4 142 0 5 0 8 0 115] 
#[0 4 146 0 5 0 8 0 115] 
#[0 4 150 0 5 0 8 0 115] 
#[0 4 154 0 5 0 8 0 115] 
#[0 4 158 0 5 0 8 0 115] 
#[0 4 162 0 5 0 8 0 115] 
#[0 4 166 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 13 89 0 7] 
#[0 4 170 0 7 0 115] 
#[1 13 93 0 7 13 97 0 115] 
#[0 4 174 0 7 0 115] 
#[1 4 178 0 14 13 101 0 71 4 178 0 115 13 105 1 84] 
#[1 13 109 0 14 13 113 0 115] 
#[0 4 182 0 14 0 115] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 7 225 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 7 225 1 109 7 225 1 110 3 117 1 111 3 117 1 113] 
#[1 4 186 0 3 4 186 0 4 4 186 0 5 0 131 0 6 4 186 0 7 4 186 0 8 4 186 0 9 4 186 0 11 4 186 0 12 4 186 0 14 4 186 0 15 4 186 0 18 4 186 0 19 4 186 0 20 4 186 0 21 4 186 0 23 4 186 0 24 4 186 0 25 4 186 0 26 4 186 0 27 4 186 0 35 4 186 0 37 4 186 0 40 4 186 0 41 4 186 0 42 4 186 0 44 4 186 0 45 4 186 0 46 4 186 0 47 4 186 0 48 4 186 0 50 4 186 0 51 4 186 0 61 4 186 0 80 4 186 0 83 4 186 0 93 4 186 0 94 4 186 0 95 4 186 0 98 4 186 0 115 4 186 0 116 4 186 0 119 4 186 0 121 4 186 0 122 4 186 0 127 4 186 0 128 8 129 0 227 4 186 1 204] 
#[1 4 190 0 3 4 190 0 4 4 190 0 5 0 135 0 6 4 190 0 7 4 190 0 8 4 190 0 9 4 190 0 11 4 190 0 12 4 190 0 14 4 190 0 15 4 190 0 18 4 190 0 19 4 190 0 20 4 190 0 21 4 190 0 23 4 190 0 24 4 190 0 25 4 190 0 26 4 190 0 27 4 190 0 35 4 190 0 37 4 190 0 40 4 190 0 41 4 190 0 42 4 190 0 44 4 190 0 45 4 190 0 46 4 190 0 47 4 190 0 48 4 190 0 50 4 190 0 51 4 190 0 61 4 190 0 80 4 190 0 83 4 190 0 93 4 190 0 94 4 190 0 95 4 190 0 98 4 190 0 115 4 190 0 116 4 190 0 119 4 190 0 121 4 190 0 122 4 190 0 127 4 190 0 128 8 129 0 227 4 190 1 204] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 13 117 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 13 121 0 2] 
#[0 4 194 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 4 198 0 3 4 198 0 4 4 198 0 5 4 198 0 6 4 198 0 7 4 198 0 8 4 198 0 9 4 198 0 11 4 198 0 12 4 198 0 14 4 198 0 15 4 198 0 18 4 198 0 19 4 198 0 20 4 198 0 21 13 125 0 22 4 198 0 23 4 198 0 24 4 198 0 25 4 198 0 26 4 198 0 27 4 198 0 35 4 198 0 37 4 198 0 40 4 198 0 41 4 198 0 42 4 198 0 44 4 198 0 45 4 198 0 46 4 198 0 47 4 198 0 48 4 198 0 50 4 198 0 51 4 198 0 61 4 198 0 80 4 198 0 83 4 198 0 93 4 198 0 94 4 198 0 95 4 198 0 98 4 198 0 115 4 198 0 116 4 198 0 119 4 198 0 121 4 198 0 122 4 198 0 127 4 198 0 128 4 198 1 204] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 13 129 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 8 89 0 2 3 49 0 4 3 53 0 6 3 61 0 81 3 65 0 85 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 13 133 1 90 13 133 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 13 133 1 108 3 117 1 111 3 117 1 113] 
#[1 8 89 0 2 3 49 0 4 3 53 0 6 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 13 137 1 92 13 137 1 93 13 137 1 94 13 137 1 95 13 137 1 96 3 137 1 97 3 141 1 98 13 137 1 99 13 137 1 103 13 137 1 104 13 137 1 111 13 137 1 113] 
#[0 13 141 0 6] 
#[1 4 202 0 3 4 202 0 4 4 202 0 5 4 202 0 6 4 202 0 7 4 202 0 8 4 202 0 9 0 139 0 11 4 202 0 12 4 202 0 14 4 202 0 15 4 202 0 18 4 202 0 19 4 202 0 20 4 202 0 21 4 202 0 23 4 202 0 24 4 202 0 25 4 202 0 26 4 202 0 27 4 202 0 35 4 202 0 37 4 202 0 40 4 202 0 41 4 202 0 42 4 202 0 44 4 202 0 45 4 202 0 46 4 202 0 47 4 202 0 48 4 202 0 50 4 202 0 51 4 202 0 61 4 202 0 80 4 202 0 82 4 202 0 83 4 202 0 93 4 202 0 94 4 202 0 95 4 202 0 98 4 202 0 115 4 202 0 116 4 202 0 119 4 202 0 121 4 202 0 122 4 202 0 127 4 202 0 128 13 145 1 85 4 202 1 204] 
#[1 0 185 0 118 13 149 0 134] 
#[0 4 206 0 8 0 75] 
#[1 4 210 0 5 13 153 0 52 4 210 0 115] 
#[1 13 157 0 5 13 161 0 115] 
#[0 4 214 0 5 0 115] 
#[0 13 165 0 119] 
#[1 13 169 0 2 13 173 0 26 0 185 0 118 13 177 0 134] 
#[1 4 241 0 4 4 245 0 71 13 181 1 22 5 1 1 23 5 5 1 203] 
#[0 4 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 185 0 8] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 13 189 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 13 193 0 2 0 185 0 118 13 197 0 134] 
#[0 13 201 0 2] 
#[0 13 205 0 121 1 41 1 50] 
#[0 13 209 0 8] 
#[0 4 218 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 205 0 69] 
#[1 12 237 0 2 3 57 0 11 0 185 0 118 13 213 0 134 12 245 1 81 12 249 1 116 13 217 1 125] 
#[0 4 222 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 226 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 230 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 234 0 75] 
#[0 13 221 0 52] 
#[1 13 225 0 5 13 229 0 115] 
#[0 4 238 0 5 0 115] 
#[0 4 242 0 5 0 115] 
#[1 0 185 0 118 13 233 0 134 13 233 1 42] 
#[0 13 237 0 8] 
#[1 3 253 0 4 4 1 0 26 13 241 1 36 13 245 1 37] 
#[0 4 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 250 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 13 45 0 188 13 45 0 189 0 245 0 244 13 45 0 252 1 113 0 253 1 117 0 254 1 121 1 1 13 45 1 2 0 245 1 8 13 45 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 185 0 118 13 249 0 134] 
#[1 3 70 0 3 3 70 0 5 3 70 0 7 9 65 0 23 3 70 0 115 9 113 0 151] 
#[0 13 253 0 116] 
#[0 14 1 0 5] 
#[1 14 5 0 5 14 9 0 115] 
#[0 4 254 0 5 0 115] 
#[0 5 2 0 5 0 115] 
#[1 9 153 0 93 9 153 0 94 9 153 0 95 0 185 0 118 9 145 0 134 9 153 1 119] 
#[0 5 6 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 41 0 4 4 45 0 6 14 13 0 7 4 93 0 114 9 173 0 115 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 14 17 0 216 14 17 0 217 14 21 0 218 7 229 1 203] 
#[1 14 25 0 7 14 29 0 115] 
#[0 5 10 0 7 0 115] 
#[0 5 14 0 7 0 115] 
#[0 14 33 0 7] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 14 37 0 188 14 37 0 189 0 245 0 244 14 37 0 252 1 113 0 253 1 117 0 254 1 121 1 1 14 37 1 2 0 245 1 8 14 37 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 18 0 8 0 115] 
#[0 5 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 4 49 0 134 14 41 0 204 4 61 0 208 4 61 0 209 4 61 0 210 14 41 1 131 14 41 1 132 4 81 1 203] 
#[0 5 26 0 8 0 115] 
#[1 13 61 0 116 14 45 1 115] 
#[1 13 61 0 116 14 49 1 115] 
#[1 3 106 0 2 0 143 0 3 3 106 0 6 0 143 0 7 3 106 0 9 3 106 0 10 3 106 0 11 3 106 0 12 3 106 0 13 3 106 0 14 3 106 0 15 3 106 0 16 3 106 0 17 3 106 0 18 3 106 0 20 3 106 0 21 3 106 0 22 0 143 0 23 3 106 0 24 3 106 0 25 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 29 3 106 0 30 3 106 0 31 3 106 0 32 3 106 0 33 3 106 0 34 3 106 0 35 3 106 0 36 3 106 0 37 3 106 0 38 3 106 0 40 3 106 0 41 3 106 0 42 3 106 0 43 3 106 0 44 3 106 0 45 3 106 0 46 3 106 0 47 3 106 0 48 3 106 0 50 3 106 0 51 3 106 0 52 3 106 0 80 3 106 0 83 0 143 0 115 3 106 0 125 3 106 0 126 3 106 1 202 3 106 1 203] 
#[1 0 93 0 2 0 27 0 4 4 89 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 14 53 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 157 0 188 9 157 0 189 9 109 0 208 9 109 0 209 9 109 0 210 0 245 0 244 9 157 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 157 1 2 0 245 1 8 9 157 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 27 0 4 4 89 0 6 14 57 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 9 97 0 114 9 173 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 4 97 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 9 177 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 181 0 188 9 181 0 189 4 105 0 208 4 105 0 209 4 105 0 210 14 17 0 216 14 17 0 217 14 21 0 218 0 245 0 244 9 181 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 181 1 2 0 245 1 8 9 181 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 141 1 203] 
#[1 5 30 0 3 5 30 0 7 13 61 0 116 14 61 1 115] 
#[0 5 34 0 3 0 7] 
#[0 5 38 0 3 0 5 0 7 0 115] 
#[0 5 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 46 0 3 0 5 0 7 0 115] 
#[0 5 50 0 19] 
#[1 5 54 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 14 69 0 216 14 69 0 217 14 65 0 218 14 65 0 248 14 69 0 249 7 229 1 203] 
#[0 5 58 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[0 5 62 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[0 5 66 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[1 14 73 0 42 13 61 0 116 14 77 1 115] 
#[1 7 53 0 1 4 41 0 4 4 45 0 6 5 70 0 42 14 97 0 93 14 97 0 94 14 97 0 95 14 81 0 103 5 70 0 116 0 185 0 118 14 93 0 134 14 93 0 208 14 93 0 209 14 93 0 210 14 93 1 118 14 97 1 119 7 61 1 200] 
#[1 0 185 0 118 14 101 0 134] 
#[0 5 74 0 5 0 7 0 115] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 14 105 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 149 0 114 9 173 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 14 109 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 14 113 0 188 14 113 0 189 0 245 0 244 14 113 0 252 1 113 0 253 1 117 0 254 1 121 1 1 14 113 1 2 0 245 1 8 14 113 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 86 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 114 0 115 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 5 90 0 7 0 115] 
#[0 5 94 0 7 0 115] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 11 125 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 11 125 1 109 11 125 1 110 3 117 1 111 3 117 1 113] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 14 117 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 14 121 0 2 0 185 0 118 14 125 0 134] 
#[0 14 129 0 2] 
#[1 0 93 0 2 0 147 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 14 137 0 188 14 137 0 189 0 245 0 244 14 137 0 252 1 113 0 253 1 117 0 254 14 137 1 0 1 121 1 1 14 137 1 2 14 141 1 3 0 245 1 8 14 137 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 5 102 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 14 145 0 135 14 145 0 147 14 145 0 148 14 145 0 149 8 13 1 50 8 17 1 51] 
#[1 9 5 0 6 14 149 0 26 7 249 0 119 8 13 0 121 8 17 0 122 14 153 0 135 14 153 0 147 14 153 0 148 14 153 0 149 8 13 1 50 8 17 1 51] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 14 157 0 135 14 157 0 147 14 157 0 148 14 157 0 149 8 13 1 50 8 17 1 51] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 14 161 0 135 14 161 0 147 14 161 0 148 14 161 0 149 8 13 1 50 8 17 1 51] 
#[1 9 5 0 6 9 213 0 26 9 217 0 53 9 221 0 77 9 225 0 97 7 249 0 119 8 13 0 121 8 17 0 122 9 233 0 135 9 233 0 147 9 233 0 148 9 233 0 149 14 165 1 4 14 165 1 6 14 165 1 11 14 165 1 15 8 13 1 50 8 17 1 51 14 165 1 126 14 165 1 127 10 149 1 203] 
#[0 14 169 0 2] 
#[0 5 106 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 5 110 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 114 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 118 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 173 0 5] 
#[1 5 122 0 5 9 5 0 6 9 209 0 8 9 213 0 26 9 217 0 53 9 221 0 77 9 225 0 97 9 229 0 98 7 249 0 119 8 13 0 121 8 17 0 122 9 233 0 135 9 233 0 147 9 233 0 148 9 233 0 149 14 177 1 4 14 177 1 6 14 177 1 11 14 177 1 15 14 177 1 26 8 13 1 50 8 17 1 51 14 177 1 126 14 177 1 127 10 17 1 203] 
#[0 5 126 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 5 130 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 134 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 0 30 0 1 0 151 0 6 0 30 0 61 14 181 0 77 0 30 0 93 0 30 0 94 0 30 0 95 14 185 0 97 0 30 0 98 0 155 0 119 0 159 0 121 0 163 0 122 14 189 0 135 14 189 0 147 14 189 0 148 14 189 0 149 8 13 1 50 8 17 1 51 14 193 1 117 14 197 1 122 14 201 1 140 14 205 1 141 14 205 1 142 14 205 1 143 14 205 1 144 14 221 1 145 0 30 1 203] 
#[0 5 138 0 4] 
#[0 5 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 14 225 0 5 9 5 0 6 9 209 0 8 9 213 0 26 9 217 0 53 9 221 0 77 9 225 0 97 9 229 0 98 7 249 0 119 8 13 0 121 8 17 0 122 9 233 0 135 9 233 0 147 9 233 0 148 9 233 0 149 10 5 1 4 10 5 1 6 10 5 1 11 10 5 1 15 14 229 1 24 10 1 1 25 10 5 1 26 8 13 1 50 8 17 1 51 10 5 1 126 10 5 1 127 10 17 1 203] 
#[1 0 185 0 118 3 85 0 134 14 237 1 96 3 137 1 97 3 141 1 98 14 237 1 138] 
#[1 0 185 0 118 3 85 0 134 14 249 1 96 3 137 1 97 3 141 1 98 14 245 1 135 14 249 1 136] 
#[1 5 146 0 4 10 37 0 82 14 253 1 139] 
#[0 5 150 0 4] 
#[0 15 1 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 15 5 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 15 9 0 2] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 15 13 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 15 17 0 3] 
#[0 5 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 21 0 188 15 21 0 189 0 245 0 244 15 21 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 21 1 2 0 245 1 8 15 21 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 15 25 0 3 15 29 0 115] 
#[0 5 166 0 3 0 115] 
#[1 15 33 0 7 6 65 0 115] 
#[0 5 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 15 37 1 86 15 41 1 87 15 41 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 15 41 1 109 15 41 1 110 3 117 1 111 3 117 1 113] 
#[0 15 49 0 2] 
#[0 5 174 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 1 102 0 4 1 102 0 129 1 102 0 131 15 53 1 77] 
#[0 5 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 57 0 188 15 57 0 189 0 245 0 244 15 57 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 57 1 2 0 245 1 8 15 57 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 5 182 0 5 9 65 0 23 5 182 0 115 15 61 0 151] 
#[1 15 65 0 5 15 69 0 115] 
#[0 5 186 0 5 0 115] 
#[1 14 169 0 2 15 73 0 116] 
#[0 5 190 0 5 0 115] 
#[0 5 194 0 5 0 115] 
#[1 9 5 0 6 14 181 0 77 14 185 0 97 7 249 0 119 8 13 0 121 8 17 0 122 14 189 0 135 14 189 0 147 14 189 0 148 14 189 0 149 8 13 1 50 8 17 1 51] 
#[1 6 65 0 115 15 77 0 127 15 81 0 128 15 85 0 154 15 89 0 155] 
#[1 15 93 0 7 6 65 0 115] 
#[0 5 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 97 0 188 15 97 0 189 15 97 0 191 0 245 0 244 15 97 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 97 1 2 0 245 1 8 15 97 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 101 0 188 15 101 0 189 15 101 0 191 0 245 0 244 15 101 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 101 1 2 0 245 1 8 15 101 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 15 105 0 119] 
#[0 5 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 15 109 0 7 6 65 0 115] 
#[0 5 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 15 113 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 15 113 1 109 15 113 1 110 3 117 1 111 3 117 1 113] 
#[0 5 234 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 5 238 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[0 5 242 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 5 246 0 3 5 246 0 5 5 246 0 7 5 246 0 8 5 229 0 9 5 246 0 11 5 246 0 12 5 246 0 14 5 246 0 15 5 246 0 18 5 246 0 20 5 246 0 21 5 246 0 24 5 246 0 25 5 229 0 26 5 246 0 35 5 246 0 37 5 246 0 40 5 246 0 41 5 246 0 42 5 246 0 44 5 229 0 45 5 246 0 46 5 246 0 47 5 246 0 48 5 246 0 50 5 246 0 51 5 246 0 80 5 246 0 83 5 246 0 115 5 246 0 116 5 246 0 127 5 246 0 128 5 229 0 175 5 246 1 204] 
#[1 5 250 0 3 5 250 0 5 5 250 0 7 5 250 0 8 5 229 0 9 5 250 0 11 5 250 0 12 5 250 0 14 5 250 0 15 5 250 0 18 5 250 0 20 5 250 0 21 5 250 0 24 5 250 0 25 5 229 0 26 5 250 0 35 5 250 0 37 5 250 0 40 5 250 0 41 5 250 0 42 5 250 0 44 5 229 0 45 5 250 0 46 5 250 0 47 5 250 0 48 5 250 0 50 5 250 0 51 5 250 0 80 5 250 0 83 5 250 0 115 5 250 0 116 5 250 0 127 5 250 0 128 5 229 0 175 5 250 1 204] 
#[1 5 254 0 3 5 254 0 5 5 254 0 7 5 254 0 8 5 254 0 11 5 254 0 12 5 254 0 14 5 254 0 15 5 254 0 18 5 254 0 20 5 254 0 21 5 254 0 24 5 254 0 25 5 233 0 35 5 237 0 37 5 254 0 40 5 254 0 41 5 254 0 42 5 254 0 44 5 254 0 46 5 254 0 47 5 254 0 48 5 254 0 50 5 254 0 51 5 254 0 80 5 254 0 83 5 254 0 115 5 254 0 116 5 254 0 127 5 254 0 128 5 254 1 204] 
#[1 6 2 0 3 6 2 0 5 6 2 0 7 6 2 0 8 6 2 0 11 6 2 0 12 6 2 0 14 6 2 0 15 6 2 0 18 6 2 0 20 6 2 0 21 6 2 0 24 6 2 0 25 5 233 0 35 5 237 0 37 6 2 0 40 6 2 0 41 6 2 0 42 6 2 0 44 6 2 0 46 6 2 0 47 6 2 0 48 6 2 0 50 6 2 0 51 6 2 0 80 6 2 0 83 6 2 0 115 6 2 0 116 6 2 0 127 6 2 0 128 6 2 1 204] 
#[1 6 6 0 3 6 6 0 5 6 6 0 7 6 6 0 8 6 6 0 11 6 6 0 12 6 6 0 14 6 6 0 15 6 6 0 18 6 6 0 20 6 6 0 21 6 6 0 24 6 6 0 25 5 233 0 35 5 237 0 37 6 6 0 40 6 6 0 41 6 6 0 42 6 6 0 44 6 6 0 46 6 6 0 47 6 6 0 48 6 6 0 50 6 6 0 51 6 6 0 80 6 6 0 83 6 6 0 115 6 6 0 116 6 6 0 127 6 6 0 128 6 6 1 204] 
#[1 6 10 0 3 6 10 0 5 6 10 0 7 6 10 0 8 6 10 0 11 5 241 0 12 6 10 0 14 5 245 0 15 5 249 0 18 6 10 0 20 6 10 0 21 6 10 0 24 6 10 0 25 6 10 0 40 6 10 0 41 6 10 0 42 6 10 0 44 6 10 0 46 6 10 0 47 6 10 0 48 6 10 0 50 6 10 0 51 6 10 0 80 6 10 0 83 6 10 0 115 6 10 0 116 6 10 0 127 6 10 0 128 6 10 1 204] 
#[1 6 14 0 3 6 14 0 5 6 14 0 7 6 14 0 8 6 14 0 11 5 241 0 12 6 14 0 14 5 245 0 15 5 249 0 18 6 14 0 20 6 14 0 21 6 14 0 24 6 14 0 25 6 14 0 40 6 14 0 41 6 14 0 42 6 14 0 44 6 14 0 46 6 14 0 47 6 14 0 48 6 14 0 50 6 14 0 51 6 14 0 80 6 14 0 83 6 14 0 115 6 14 0 116 6 14 0 127 6 14 0 128 6 14 1 204] 
#[1 6 18 0 3 6 18 0 5 6 18 0 7 6 18 0 8 6 18 0 11 5 241 0 12 6 18 0 14 5 245 0 15 5 249 0 18 6 18 0 20 6 18 0 21 6 18 0 24 6 18 0 25 6 18 0 40 6 18 0 41 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 48 6 18 0 50 6 18 0 51 6 18 0 80 6 18 0 83 6 18 0 115 6 18 0 116 6 18 0 127 6 18 0 128 6 18 1 204] 
#[1 6 22 0 3 6 22 0 5 6 22 0 7 6 22 0 8 6 22 0 11 5 241 0 12 6 22 0 14 5 245 0 15 5 249 0 18 6 22 0 20 6 22 0 21 6 22 0 24 6 22 0 25 6 22 0 40 6 22 0 41 6 22 0 42 6 22 0 44 6 22 0 46 6 22 0 47 6 22 0 48 6 22 0 50 6 22 0 51 6 22 0 80 6 22 0 83 6 22 0 115 6 22 0 116 6 22 0 127 6 22 0 128 6 22 1 204] 
#[1 6 26 0 3 6 26 0 5 6 26 0 7 6 26 0 8 6 26 0 11 5 241 0 12 6 26 0 14 5 245 0 15 5 249 0 18 6 26 0 20 6 26 0 21 6 26 0 24 6 26 0 25 6 26 0 40 6 26 0 41 6 26 0 42 6 26 0 44 6 26 0 46 6 26 0 47 6 26 0 48 6 26 0 50 6 26 0 51 6 26 0 80 6 26 0 83 6 26 0 115 6 26 0 116 6 26 0 127 6 26 0 128 6 26 1 204] 
#[1 6 30 0 3 6 30 0 5 6 30 0 7 6 30 0 8 6 30 0 11 5 241 0 12 6 30 0 14 5 245 0 15 5 249 0 18 6 30 0 20 6 30 0 21 6 30 0 24 6 30 0 25 6 30 0 40 6 30 0 41 6 30 0 42 6 30 0 44 6 30 0 46 6 30 0 47 6 30 0 48 6 30 0 50 6 30 0 51 6 30 0 80 6 30 0 83 6 30 0 115 6 30 0 116 6 30 0 127 6 30 0 128 6 30 1 204] 
#[1 6 34 0 3 6 34 0 5 6 34 0 7 6 34 0 8 5 253 0 11 6 1 0 14 6 5 0 20 6 9 0 21 6 34 0 24 6 34 0 25 6 34 0 40 6 34 0 41 6 34 0 42 6 34 0 44 6 34 0 46 6 34 0 47 6 34 0 48 6 34 0 50 6 34 0 51 6 13 0 80 6 17 0 83 6 34 0 115 6 34 0 116 6 34 0 127 6 34 0 128 6 34 1 204] 
#[1 6 38 0 3 6 38 0 5 6 38 0 7 6 38 0 8 5 253 0 11 6 1 0 14 6 5 0 20 6 9 0 21 6 38 0 24 6 38 0 25 6 38 0 40 6 38 0 41 6 38 0 42 6 38 0 44 6 38 0 46 6 38 0 47 6 38 0 48 6 38 0 50 6 38 0 51 6 13 0 80 6 17 0 83 6 38 0 115 6 38 0 116 6 38 0 127 6 38 0 128 6 38 1 204] 
#[1 6 42 0 3 6 42 0 5 6 42 0 7 6 42 0 8 5 253 0 11 6 1 0 14 6 5 0 20 6 9 0 21 6 42 0 24 6 42 0 25 6 42 0 40 6 42 0 41 6 42 0 42 6 42 0 44 6 42 0 46 6 42 0 47 6 42 0 48 6 42 0 50 6 42 0 51 6 13 0 80 6 17 0 83 6 42 0 115 6 42 0 116 6 42 0 127 6 42 0 128 6 42 1 204] 
#[1 6 46 0 3 6 46 0 5 6 46 0 7 6 46 0 8 5 253 0 11 6 1 0 14 6 5 0 20 6 9 0 21 6 46 0 24 6 46 0 25 6 46 0 40 6 46 0 41 6 46 0 42 6 46 0 44 6 46 0 46 6 46 0 47 6 46 0 48 6 46 0 50 6 46 0 51 6 13 0 80 6 17 0 83 6 46 0 115 6 46 0 116 6 46 0 127 6 46 0 128 6 46 1 204] 
#[1 6 50 0 3 6 50 0 5 6 50 0 7 6 50 0 8 6 21 0 24 6 25 0 25 6 50 0 40 6 50 0 41 6 50 0 42 6 50 0 44 6 50 0 46 6 50 0 47 6 50 0 48 6 29 0 50 6 33 0 51 6 50 0 115 6 50 0 116 6 50 0 127 6 50 0 128 6 50 1 204] 
#[1 6 54 0 3 6 54 0 5 6 54 0 7 6 54 0 8 6 37 0 40 6 54 0 41 6 54 0 42 6 54 0 44 6 54 0 46 6 54 0 47 6 54 0 48 6 54 0 115 6 54 0 116 6 54 0 127 6 54 0 128 6 54 1 204] 
#[1 6 58 0 3 6 58 0 5 6 58 0 7 6 58 0 8 6 58 0 41 6 58 0 42 6 58 0 44 6 58 0 46 6 58 0 47 6 41 0 48 6 58 0 115 6 58 0 116 6 58 0 127 6 58 0 128 6 58 1 204] 
#[1 6 62 0 3 6 62 0 5 6 62 0 7 6 62 0 8 6 62 0 41 6 62 0 42 6 45 0 46 6 62 0 47 6 62 0 115 6 62 0 116 6 62 0 127 6 62 0 128 6 62 1 204] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 0 250 0 41 0 250 0 42 6 45 0 46 0 250 0 47 0 250 0 115 0 250 0 116 0 250 0 127 0 250 0 128 0 250 1 204] 
#[1 6 66 0 3 6 66 0 5 6 66 0 7 6 66 0 8 6 49 0 41 6 66 0 42 6 66 0 47 6 66 0 115 6 66 0 116 6 66 0 127 6 66 0 128 6 66 1 204] 
#[1 6 70 0 3 6 70 0 5 6 70 0 7 6 70 0 8 6 70 0 42 6 70 0 44 6 45 0 46 6 70 0 115 6 70 0 116 6 70 0 127 6 70 0 128 6 70 1 204] 
#[0 15 117 0 116] 
#[0 6 74 0 3 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 15 125 0 250 15 129 0 251 0 6 1 203] 
#[0 6 82 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 6 86 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 6 90 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 0 22 0 129 15 133 1 56 15 137 1 75] 
#[1 6 94 0 4 0 167 0 129 15 141 0 131 15 149 1 53 15 149 1 54 1 181 1 55 15 149 1 73 1 189 1 75 15 153 1 80] 
#[1 6 102 0 4 6 102 0 9 6 102 0 14 15 157 0 22 15 161 0 116 6 102 0 130] 
#[1 6 94 0 4 15 165 0 9 0 134 0 14 15 169 0 130 15 197 1 59 15 177 1 63 15 181 1 64 15 185 1 65 15 181 1 66 15 181 1 67 15 197 1 68 15 201 1 76 15 205 1 80] 
#[0 6 106 0 4 0 9 0 14 0 130] 
#[0 6 110 0 4 0 9 0 14 0 130] 
#[0 6 114 0 130] 
#[1 15 209 0 130 15 213 1 61] 
#[0 15 217 0 3] 
#[1 2 142 0 6 2 142 0 11 0 171 0 14 2 146 0 22 2 142 0 40 2 142 0 46 13 101 0 71 4 178 0 115 13 105 1 84] 
#[0 15 221 0 14] 
#[1 6 81 0 2 3 57 0 11 6 93 1 81 15 225 1 125] 
#[0 15 229 0 4] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 15 233 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 6 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 15 237 0 8] 
#[0 6 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 15 241 0 8] 
#[0 15 245 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 15 249 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 253 0 188 15 253 0 189 15 253 0 191 0 245 0 244 15 253 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 253 1 2 0 245 1 8 15 253 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 16 1 0 134 16 5 0 206 6 161 0 207 16 9 0 208 16 9 0 209 16 9 0 210 16 13 0 224 6 169 1 203] 
#[1 0 206 0 8 0 206 0 9 5 205 0 10 0 206 0 11 0 206 0 12 5 205 0 13 0 206 0 14 0 206 0 15 5 205 0 16 5 205 0 17 0 206 0 18 0 206 0 20 0 206 0 21 5 205 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 5 205 0 28 5 205 0 29 5 205 0 30 5 205 0 31 5 205 0 32 5 205 0 33 5 205 0 34 0 206 0 35 5 193 0 36 0 206 0 37 5 197 0 38 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 50 0 206 0 51 5 201 0 52 0 175 0 80 0 206 0 83 16 21 0 92 0 206 0 115 5 205 0 190 5 205 1 202] 
#[1 16 25 0 8 6 65 0 115] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 16 29 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 16 33 0 188 16 33 0 189 16 33 0 191 0 245 0 244 16 33 0 252 1 113 0 253 1 117 0 254 1 121 1 1 16 33 1 2 0 245 1 8 16 33 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 16 37 0 134 4 53 0 203 4 57 0 204 16 41 0 208 16 41 0 209 16 41 0 210 16 45 0 224 4 57 1 131 4 57 1 132 4 81 1 203] 
#[1 16 49 0 80 16 53 0 92] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 4 177 0 53 0 133 0 58 16 65 0 60 1 157 0 72 0 145 0 76 0 149 0 79 16 65 0 86 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 16 57 0 109 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 16 61 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 16 61 0 170 16 65 0 202 16 69 0 223 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 5 45 1 203] 
#[1 16 73 0 3 6 65 0 115] 
#[0 6 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 16 77 0 8 6 65 0 115] 
#[1 16 81 0 3 6 65 0 115] 
#[0 6 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 16 85 0 2 1 197 0 4 16 89 0 197] 
#[1 1 197 0 4 16 93 0 197] 
#[1 6 138 0 1 6 138 0 2 6 138 0 4 6 138 0 5 6 138 0 6 6 138 0 8 6 138 0 35 6 138 0 36 6 138 0 37 6 138 0 38 6 138 0 39 6 138 0 49 6 138 0 53 6 138 0 54 6 138 0 55 6 138 0 56 6 138 0 58 6 138 0 59 6 138 0 60 6 138 0 62 6 138 0 63 6 138 0 64 6 138 0 65 6 138 0 66 6 138 0 67 6 138 0 68 6 138 0 69 6 138 0 70 6 138 0 72 11 221 0 73 6 138 0 74 6 138 0 76 6 138 0 78 6 138 0 79 6 138 0 84 6 138 0 86 6 138 0 88 6 138 0 89 6 138 0 90 6 138 0 96 6 138 0 100 6 138 0 101 6 138 0 103 6 138 0 104 6 138 0 105 6 138 0 106 6 138 0 107 6 138 0 108 6 138 0 109 6 138 0 110 6 138 0 111 6 138 0 112 6 138 0 113 6 138 0 118 6 138 0 121 6 138 0 122 6 138 0 123 6 138 0 125 6 138 0 126 6 138 0 129 16 97 0 240 6 138 1 203 6 138 1 204] 
#[0 6 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 146 0 8 0 115] 
#[0 6 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 6 153 0 134 16 101 0 207 6 165 0 208 6 165 0 209 6 165 0 210 6 169 1 203] 
#[0 6 154 0 8 0 115] 
#[1 13 61 0 116 16 105 1 115] 
#[1 13 61 0 116 16 109 1 115] 
#[0 6 158 0 8 0 115] 
#[0 6 162 0 8 0 115] 
#[1 16 113 0 3 6 65 0 115] 
#[1 16 117 0 3 6 65 0 115] 
#[0 6 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 174 0 1 0 179 0 2 6 174 0 4 6 174 0 5 0 179 0 6 0 179 0 8 5 142 0 9 5 142 0 10 5 142 0 11 5 142 0 12 5 142 0 13 5 142 0 14 5 142 0 15 5 142 0 16 5 142 0 17 5 142 0 18 5 142 0 20 5 142 0 21 5 142 0 22 5 142 0 23 5 142 0 24 5 142 0 25 5 142 0 26 5 142 0 27 5 142 0 28 5 142 0 29 5 142 0 30 5 142 0 31 5 142 0 32 5 142 0 33 5 142 0 34 0 179 0 35 0 179 0 36 0 179 0 37 0 179 0 38 6 174 0 39 5 142 0 40 5 142 0 41 5 142 0 42 5 142 0 43 5 142 0 44 5 142 0 45 5 142 0 46 5 142 0 47 5 142 0 48 6 174 0 49 5 142 0 50 5 142 0 51 5 142 0 52 6 174 0 53 6 174 0 54 6 174 0 55 6 174 0 58 6 174 0 59 6 174 0 60 6 174 0 62 6 174 0 63 6 174 0 64 6 174 0 66 6 174 0 67 6 174 0 69 6 174 0 70 6 174 0 72 6 174 0 74 6 174 0 76 6 174 0 78 6 174 0 79 5 142 0 80 5 142 0 83 6 174 0 84 6 174 0 86 6 174 0 88 6 174 0 89 6 174 0 90 6 174 0 96 6 174 0 100 6 174 0 101 6 174 0 103 6 174 0 104 6 174 0 105 6 174 0 106 6 174 0 107 6 174 0 108 6 174 0 109 6 174 0 110 6 174 0 111 6 174 0 112 6 174 0 113 5 142 0 115 6 174 0 118 6 174 0 121 6 174 0 122 6 174 0 123 0 179 0 125 0 179 0 126 6 174 0 129 5 142 1 202 0 179 1 203 6 174 1 204] 
#[1 4 241 0 4 4 245 0 71 16 121 1 22 5 1 1 23 5 5 1 203] 
#[0 6 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 125 0 4] 
#[1 3 57 0 11 4 245 0 71 16 129 1 23 16 133 1 81 5 5 1 203] 
#[1 6 182 0 8 6 182 0 115 13 61 0 116 16 137 1 115] 
#[1 16 141 0 8 16 145 0 115] 
#[0 6 186 0 8 0 115] 
#[1 7 233 0 2 3 57 0 11 8 21 1 81 16 149 1 116] 
#[1 16 153 0 8 16 145 0 115] 
#[0 16 157 0 4] 
#[1 16 161 0 4 12 137 0 22] 
#[1 16 165 0 8 16 145 0 115] 
#[1 16 169 0 5 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 16 173 0 135 16 173 0 147 16 173 0 148 16 173 0 149 8 13 1 50 8 17 1 51 16 177 1 147 16 181 1 148 16 185 1 149] 
#[0 16 189 0 8] 
#[0 16 193 0 8] 
#[0 6 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 197 0 8] 
#[0 16 201 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 16 205 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 16 209 0 2] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 16 213 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 0 185 0 118 16 217 0 134 16 221 1 98 16 225 1 158 16 229 1 201] 
#[1 0 185 0 118 3 85 0 134 16 233 1 96 3 137 1 97 3 141 1 98 16 233 1 136] 
#[1 3 49 0 4 12 117 0 71 16 237 1 99 16 241 1 134] 
#[0 6 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 49 0 4 16 245 1 99] 
#[1 0 93 0 2 0 15 0 4 6 198 0 5 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 7 137 0 64 0 137 0 66 1 217 0 67 2 117 0 69 16 249 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 7 65 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 17 41 0 192 17 41 0 195 17 41 0 196 17 41 0 197 17 41 0 201 0 65 0 202 17 41 0 205 17 41 0 219 17 41 0 220 17 41 0 221 17 41 0 222 17 41 0 225 17 41 0 226 17 41 0 228 17 41 0 229 17 41 0 230 17 41 0 235 17 41 0 237 17 41 0 238 17 41 0 242 17 41 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 17 41 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 17 41 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 17 41 1 124 17 41 1 133 17 41 1 146 17 41 1 151 17 33 1 153 17 37 1 154 17 41 1 155 17 41 1 156 17 41 1 157 17 41 1 183 3 41 1 203] 
#[1 0 185 0 118 17 57 0 134] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 17 61 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 17 61 1 109 17 61 1 110 3 117 1 111 3 117 1 113] 
#[0 17 65 0 23] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 5 29 0 22 4 177 0 53 0 133 0 58 1 157 0 72 0 145 0 76 12 149 0 89 1 153 0 90 5 33 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 17 69 0 134 17 69 0 136 17 69 0 137 17 69 0 138 17 69 0 139 17 69 0 143 0 233 0 144 17 69 0 152 0 241 0 153 17 69 0 156 17 69 0 157 17 69 0 158 17 69 0 159 17 69 0 244 17 69 1 8 17 69 1 13 17 69 1 17 17 69 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 17 69 1 52 17 69 1 53 17 69 1 54 1 181 1 55 17 69 1 57 1 189 1 75 5 45 1 203] 
#[1 6 202 0 1 0 138 0 2 6 202 0 4 0 183 0 6 0 138 0 22 6 202 0 42 6 202 0 58 6 202 0 59 6 202 0 61 6 202 0 70 6 202 0 93 6 202 0 94 6 202 0 95 6 202 0 98 6 202 0 103 6 202 0 116 6 202 0 118 6 202 0 119 6 202 0 121 6 202 0 122 0 138 0 125 0 138 0 126 0 183 1 203] 
#[1 5 49 0 2 5 97 0 6 5 101 0 22 0 201 0 125 0 18 0 126 5 109 0 152 0 241 0 153 5 113 0 164 5 65 1 203] 
#[1 6 206 0 1 5 49 0 2 6 206 0 4 0 187 0 6 5 125 0 22 6 206 0 42 6 206 0 58 6 206 0 59 6 206 0 61 6 206 0 70 6 206 0 93 6 206 0 94 6 206 0 95 6 206 0 98 6 206 0 103 6 206 0 116 6 206 0 118 6 206 0 119 6 206 0 121 6 206 0 122 0 201 0 125 0 18 0 126 5 129 0 152 0 241 0 153 5 133 0 164 0 191 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 17 73 0 58 2 105 0 59 0 137 0 66 1 157 0 72 17 77 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 17 81 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 17 85 0 188 17 85 0 189 17 89 0 243 0 245 0 244 17 85 0 252 1 113 0 253 1 117 0 254 1 121 1 1 17 85 1 2 17 93 1 7 0 245 1 8 17 85 1 10 0 245 1 13 0 245 1 17 1 33 1 19 17 97 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 17 101 1 187 17 105 1 188 3 41 1 203] 
#[0 6 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 218 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 195 0 1 6 234 0 2 6 234 0 4 6 234 0 6 6 234 0 8 6 234 0 35 6 234 0 36 6 234 0 37 6 234 0 38 6 234 0 39 6 234 0 49 6 234 0 53 6 234 0 54 6 234 0 55 6 234 0 58 6 234 0 59 6 234 0 60 6 234 0 62 6 234 0 63 0 195 0 64 6 234 0 66 6 234 0 67 6 234 0 69 0 195 0 70 6 234 0 72 6 234 0 74 6 234 0 76 6 234 0 78 0 195 0 79 0 195 0 84 6 234 0 86 0 195 0 88 6 234 0 89 6 234 0 90 6 234 0 96 6 234 0 100 6 234 0 101 6 234 0 103 6 234 0 104 6 234 0 105 6 234 0 106 0 195 0 107 6 234 0 108 6 234 0 109 6 234 0 110 6 234 0 111 6 234 0 112 6 234 0 113 6 234 0 118 6 234 0 121 6 234 0 122 6 234 0 123 6 234 0 125 6 234 0 126 6 234 0 129 6 234 1 203 0 195 1 204] 
#[1 0 199 0 1 6 246 0 2 6 246 0 4 6 246 0 6 6 246 0 8 6 246 0 35 6 246 0 36 6 246 0 37 6 246 0 38 6 246 0 39 6 246 0 49 6 246 0 53 6 246 0 54 6 246 0 55 6 246 0 58 6 246 0 59 6 246 0 60 6 246 0 62 6 246 0 63 0 199 0 64 6 246 0 66 6 246 0 67 6 246 0 69 0 199 0 70 6 246 0 72 6 246 0 74 6 246 0 76 6 246 0 78 0 199 0 79 0 199 0 84 6 246 0 86 0 199 0 88 6 246 0 89 6 246 0 90 6 246 0 96 6 246 0 100 6 246 0 101 6 246 0 103 6 246 0 104 6 246 0 105 6 246 0 106 0 199 0 107 6 246 0 108 6 246 0 109 6 246 0 110 6 246 0 111 6 246 0 112 6 246 0 113 6 246 0 118 6 246 0 121 6 246 0 122 6 246 0 123 6 246 0 125 6 246 0 126 6 246 0 129 6 246 1 203 0 199 1 204] 
#[0 6 250 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 2 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 0 203 0 1 7 10 0 2 7 10 0 4 7 10 0 6 7 10 0 8 7 10 0 35 7 10 0 36 7 10 0 37 7 10 0 38 7 10 0 39 7 10 0 49 7 10 0 53 7 10 0 54 7 10 0 55 7 10 0 58 7 10 0 59 7 10 0 60 7 10 0 62 7 10 0 63 0 203 0 64 7 10 0 66 7 10 0 67 7 10 0 69 0 203 0 70 7 10 0 72 7 10 0 74 7 10 0 76 7 10 0 78 0 203 0 79 0 203 0 84 7 10 0 86 0 203 0 88 7 10 0 89 7 10 0 90 7 10 0 96 7 10 0 100 7 10 0 101 7 10 0 103 7 10 0 104 7 10 0 105 7 10 0 106 0 203 0 107 7 10 0 108 7 10 0 109 7 10 0 110 7 10 0 111 7 10 0 112 7 10 0 113 7 10 0 118 7 10 0 121 7 10 0 122 7 10 0 123 7 10 0 125 7 10 0 126 7 10 0 129 7 10 1 203 0 203 1 204] 
#[1 0 79 0 1 0 30 0 58 0 30 0 59 8 205 0 76 7 201 1 117 7 205 1 200] 
#[0 17 109 0 23] 
#[1 3 193 0 58 2 105 0 59 2 109 0 60 7 137 0 64 17 113 0 65 2 117 0 69 3 201 0 76 0 41 0 79 2 133 0 84 0 65 0 86 2 137 0 88 2 141 0 107 1 245 0 109 12 169 0 201 0 65 0 202 12 173 0 205 12 177 0 243 12 181 1 7 12 185 1 20 12 189 1 33 17 117 1 124 17 121 1 133 12 201 1 146 12 205 1 151 17 125 1 183 12 217 1 203] 
#[1 17 109 0 23 3 14 0 75 3 14 0 115] 
#[1 7 137 0 64 17 129 0 65 7 101 0 79 2 133 0 84 2 141 0 107 17 133 1 124 17 137 1 133 12 209 1 157 17 141 1 183] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 17 145 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 12 237 0 2 3 57 0 11 12 245 1 81 17 149 1 116 17 153 1 125] 
#[0 17 157 0 2] 
#[0 17 161 0 8] 
#[0 17 165 0 4] 
#[1 3 57 0 11 0 185 0 118 17 169 0 134 17 173 1 81] 
#[0 17 177 0 58] 
#[1 7 53 0 1 17 181 0 58 17 185 0 59 7 61 1 200] 
#[1 0 207 0 3 0 207 0 5 4 106 0 6 0 207 0 7 4 106 0 8 4 250 0 23 4 106 0 40 4 106 0 46 0 207 0 115] 
#[1 7 233 0 2 4 118 0 5 4 118 0 8 3 57 0 11 13 57 0 42 4 118 0 115 17 189 0 116 8 21 1 81 13 65 1 115 13 69 1 116] 
#[1 0 211 0 3 0 211 0 5 4 166 0 6 0 211 0 7 4 166 0 8 5 6 0 23 4 166 0 40 4 166 0 46 0 211 0 115] 
#[1 3 110 0 4 3 110 0 6 0 215 0 7 3 110 0 114 3 110 0 115 3 110 0 118 3 110 1 203] 
#[0 17 193 0 19] 
#[0 7 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 17 197 0 3] 
#[1 0 138 0 2 0 138 0 6 0 138 0 7 0 138 0 9 0 138 0 10 0 138 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 15 0 138 0 16 0 138 0 17 0 138 0 18 0 142 0 19 0 138 0 20 0 138 0 21 0 138 0 22 0 138 0 23 0 138 0 24 0 138 0 25 0 138 0 26 0 138 0 27 0 138 0 28 0 138 0 29 0 138 0 30 0 138 0 31 0 138 0 32 0 138 0 33 0 138 0 34 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 38 0 138 0 40 0 138 0 41 0 138 0 42 0 138 0 43 0 138 0 44 0 138 0 45 0 138 0 46 0 138 0 47 0 138 0 48 0 138 0 50 0 138 0 51 0 138 0 52 0 138 0 80 0 138 0 83 17 201 0 116 0 138 0 125 0 138 0 126 0 138 1 202 0 138 1 203] 
#[0 17 205 0 7] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 17 209 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 17 213 0 2] 
#[1 7 233 0 2 7 18 0 5 7 18 0 8 3 57 0 11 7 18 0 115 13 61 0 116 8 21 1 81 17 217 1 115 17 221 1 116] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 17 225 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 17 225 1 109 17 225 1 110 3 117 1 111 3 117 1 113] 
#[0 7 22 0 5 0 8 0 115] 
#[0 7 26 0 5 0 8 0 115] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 17 229 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 7 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 93 0 94 0 95 0 96 0 98 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 119 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 203 1 204] 
#[1 7 233 0 2 7 34 0 5 7 241 0 6 3 57 0 11 7 245 0 89 7 249 0 119 8 13 0 121 8 17 0 122 8 1 0 135 8 1 0 147 8 1 0 148 8 1 0 149 8 13 1 50 8 17 1 51 8 21 1 81 17 233 1 102 17 233 1 114 17 233 1 116 17 233 1 121 17 233 1 122 17 233 1 123] 
#[1 7 233 0 2 7 38 0 5 7 241 0 6 3 57 0 11 7 245 0 89 7 249 0 119 8 13 0 121 8 17 0 122 8 1 0 135 8 1 0 147 8 1 0 148 8 1 0 149 8 13 1 50 8 17 1 51 8 21 1 81 17 237 1 102 17 237 1 114 17 237 1 116 17 237 1 121 17 237 1 122 17 237 1 123] 
#[0 7 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 7 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 17 241 0 7 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 17 245 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 17 245 1 106 3 105 1 107 3 109 1 108 17 245 1 109 17 245 1 110 3 117 1 111 3 117 1 113] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 17 249 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 17 249 1 109 17 249 1 110 3 117 1 111 3 117 1 113] 
#[0 7 50 0 14 0 115] 
#[0 7 54 0 2 0 4 0 23 0 71 1 203] 
#[1 0 185 0 118 8 77 0 134 17 253 1 83] 
#[0 18 1 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 5 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 0 185 0 118 18 9 0 134] 
#[0 18 13 0 3] 
#[1 7 58 0 3 7 58 0 4 7 58 0 5 7 58 0 6 7 58 0 7 7 58 0 8 7 58 0 9 7 58 0 11 7 58 0 12 7 58 0 14 7 58 0 15 7 58 0 18 7 58 0 19 7 58 0 20 7 58 0 21 7 58 0 23 7 58 0 24 7 58 0 25 7 58 0 26 7 58 0 27 7 58 0 35 7 58 0 37 0 219 0 40 7 58 0 41 7 58 0 42 7 58 0 44 7 58 0 45 7 58 0 46 7 58 0 47 7 58 0 48 7 58 0 50 7 58 0 51 7 58 0 61 7 58 0 80 7 58 0 83 7 58 0 93 7 58 0 94 7 58 0 95 7 58 0 98 7 58 0 115 7 58 0 116 7 58 0 119 7 58 0 121 7 58 0 122 7 58 0 127 7 58 0 128 7 58 1 204] 
#[1 7 62 0 3 7 62 0 4 7 62 0 5 0 223 0 6 7 62 0 7 7 62 0 8 7 62 0 9 7 62 0 11 7 62 0 12 7 62 0 14 7 62 0 15 7 62 0 18 7 62 0 19 7 62 0 20 7 62 0 21 7 62 0 23 7 62 0 24 7 62 0 25 7 62 0 26 7 62 0 27 7 62 0 35 7 62 0 37 7 62 0 40 7 62 0 41 7 62 0 42 7 62 0 44 7 62 0 45 7 62 0 46 7 62 0 47 7 62 0 48 7 62 0 50 7 62 0 51 7 62 0 61 7 62 0 80 7 62 0 83 7 62 0 93 7 62 0 94 7 62 0 95 7 62 0 98 7 62 0 115 7 62 0 116 7 62 0 119 7 62 0 121 7 62 0 122 7 62 0 127 7 62 0 128 8 129 0 227 7 62 1 204] 
#[0 18 17 0 7] 
#[0 7 66 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 82 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 7 70 0 3 7 70 0 4 7 70 0 5 7 70 0 6 7 70 0 7 7 70 0 8 7 70 0 9 7 70 0 11 7 70 0 12 7 70 0 14 7 70 0 15 7 70 0 18 7 70 0 19 7 70 0 20 7 70 0 21 7 74 0 22 7 70 0 23 7 70 0 24 7 70 0 25 7 70 0 26 7 70 0 27 7 70 0 35 7 70 0 37 7 70 0 40 7 70 0 41 7 70 0 42 7 70 0 44 7 70 0 45 7 70 0 46 7 70 0 47 7 70 0 48 7 70 0 50 7 70 0 51 7 70 0 61 7 70 0 80 7 70 0 82 7 70 0 83 7 70 0 93 7 70 0 94 7 70 0 95 7 70 0 98 7 70 0 115 7 70 0 116 7 70 0 119 7 70 0 121 7 70 0 122 7 70 0 127 7 70 0 128 7 70 1 204] 
#[0 18 21 0 119] 
#[0 7 78 0 8 0 75] 
#[1 18 25 0 5 8 145 0 119 18 29 1 47] 
#[0 7 82 0 75] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 33 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 18 37 0 2 0 185 0 118 18 41 0 134] 
#[0 18 45 0 2] 
#[0 6 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 86 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 18 49 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 53 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 18 57 0 2] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 61 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 7 90 0 8] 
#[0 7 94 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 12 237 0 2 3 57 0 11 12 245 1 81 17 149 1 116 18 65 1 125] 
#[0 18 69 0 4] 
#[1 0 185 0 118 18 73 0 134 18 73 1 42] 
#[0 7 98 0 75] 
#[1 18 77 0 5 0 185 0 118 8 225 0 119 8 237 0 134 18 81 1 40 8 237 1 42] 
#[0 7 102 0 75] 
#[0 7 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 110 0 75] 
#[0 7 114 0 75] 
#[0 7 118 0 5] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 18 85 0 216 18 85 0 217 7 229 1 203] 
#[0 7 122 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 126 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 18 89 0 5 9 5 0 6 9 9 0 114 0 185 0 118 7 249 0 119 8 13 0 121 8 17 0 122 9 13 0 134 9 17 0 135 9 17 0 147 9 17 0 148 9 17 0 149 18 93 0 211 18 97 0 215 18 97 0 217 8 13 1 50 8 17 1 51 9 37 1 203] 
#[0 7 130 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 134 0 7 0 115] 
#[0 18 101 0 7] 
#[0 7 138 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 41 0 4 4 45 0 6 18 105 0 7 4 93 0 114 4 153 0 115 0 185 0 118 9 13 0 134 18 109 0 141 4 105 0 208 4 105 0 209 4 105 0 210 18 113 0 214 9 57 0 216 9 57 0 217 18 117 0 218 7 229 1 203] 
#[0 7 142 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 146 0 3 0 5 0 7 0 8 0 115] 
#[0 7 150 0 8 0 115] 
#[1 7 154 0 8 9 65 0 23 7 154 0 115 18 121 0 151] 
#[1 7 158 0 8 9 65 0 23 7 158 0 115 18 125 0 151] 
#[1 0 138 0 2 0 138 0 6 0 227 0 7 0 138 0 9 0 138 0 10 0 138 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 15 0 138 0 16 0 138 0 17 0 138 0 18 0 142 0 19 0 138 0 20 0 138 0 21 0 138 0 22 0 138 0 23 0 138 0 24 0 138 0 25 0 138 0 26 0 138 0 27 0 138 0 28 0 138 0 29 0 138 0 30 0 138 0 31 0 138 0 32 0 138 0 33 0 138 0 34 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 38 0 138 0 40 0 138 0 41 0 138 0 42 0 138 0 43 0 138 0 44 0 138 0 45 0 138 0 46 0 138 0 47 0 138 0 48 0 138 0 50 0 138 0 51 0 138 0 52 0 138 0 80 0 138 0 83 0 138 0 115 13 61 0 116 0 138 0 125 0 138 0 126 14 61 1 115 0 138 1 202 0 138 1 203] 
#[1 5 82 0 2 0 231 0 3 5 82 0 6 0 231 0 7 5 82 0 9 5 82 0 10 5 82 0 11 5 82 0 12 5 82 0 13 5 82 0 14 5 82 0 15 5 82 0 16 5 82 0 17 5 82 0 18 5 82 0 20 5 82 0 21 5 82 0 22 0 231 0 23 5 82 0 24 5 82 0 25 5 82 0 26 5 82 0 27 5 82 0 28 5 82 0 29 5 82 0 30 5 82 0 31 5 82 0 32 5 82 0 33 5 82 0 34 5 82 0 35 5 82 0 36 5 82 0 37 5 82 0 38 5 82 0 40 5 82 0 41 5 82 0 42 5 82 0 43 5 82 0 44 5 82 0 45 5 82 0 46 5 82 0 47 5 82 0 48 5 82 0 50 5 82 0 51 5 82 0 52 5 82 0 80 5 82 0 83 0 231 0 115 5 82 0 125 5 82 0 126 5 82 1 202 5 82 1 203] 
#[0 7 162 0 3 0 7] 
#[0 7 166 0 3] 
#[0 7 170 0 3 0 115] 
#[0 7 174 0 3 0 5 0 7 0 115] 
#[1 7 178 0 3 7 178 0 5 7 178 0 7 9 65 0 23 7 178 0 115 18 129 0 151] 
#[0 7 182 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[0 7 186 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[0 7 190 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[1 18 133 0 42 13 61 0 116 18 137 1 115] 
#[1 5 70 0 3 4 41 0 4 5 70 0 5 4 45 0 6 5 70 0 7 5 70 0 23 5 70 0 42 14 81 0 103 5 70 0 115 5 70 0 116 0 185 0 118 18 141 0 134 18 141 0 208 18 141 0 209 18 141 0 210 18 141 1 118] 
#[1 7 194 0 3 7 194 0 5 7 194 0 7 9 65 0 23 18 145 0 42 7 194 0 115 13 61 0 116 18 149 0 151 18 153 1 115] 
#[0 7 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 7 202 0 7 0 115] 
#[0 7 206 0 7 0 115] 
#[0 18 157 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 161 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 18 165 0 2] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 169 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 173 0 250 15 129 0 251 18 177 1 18 0 6 1 203] 
#[0 7 210 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 7 214 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 18 181 0 2] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 18 185 0 135 18 185 0 147 18 185 0 148 18 185 0 149 8 13 1 50 8 17 1 51] 
#[0 18 189 0 2] 
#[0 18 193 0 2] 
#[0 18 197 0 2] 
#[0 7 218 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 201 0 245 4 125 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 7 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 7 226 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 18 205 0 135 18 205 0 147 18 205 0 148 18 205 0 149 8 13 1 50 8 17 1 51] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 18 209 0 135 18 209 0 147 18 209 0 148 18 209 0 149 8 13 1 50 8 17 1 51] 
#[1 6 81 0 2 3 57 0 11 6 93 1 81 18 213 1 125] 
#[1 7 53 0 1 9 5 0 6 18 217 0 61 18 229 0 93 18 229 0 94 18 229 0 95 18 221 0 98 7 249 0 119 8 13 0 121 8 17 0 122 18 225 0 135 18 225 0 147 18 225 0 148 18 225 0 149 8 13 1 50 8 17 1 51 18 229 1 119 18 233 1 126 18 237 1 127 7 61 1 200 18 241 1 203] 
#[0 18 245 0 8] 
#[0 7 230 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 238 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 242 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 246 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 250 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 18 249 0 5] 
#[0 8 2 0 4 0 82] 
#[0 8 6 0 4 0 82] 
#[0 8 10 0 4 0 115] 
#[1 8 14 0 4 18 253 0 115] 
#[0 8 18 0 4 0 115] 
#[0 8 22 0 4] 
#[0 19 1 0 4] 
#[0 19 5 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 19 9 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 19 13 0 3] 
#[0 8 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 30 0 3 0 115] 
#[0 8 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 19 17 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 19 21 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 25 0 188 19 25 0 189 0 245 0 244 19 25 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 25 1 2 0 245 1 8 19 25 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 29 0 14 19 33 0 115] 
#[0 8 42 0 14 0 115] 
#[0 8 46 0 14 0 115] 
#[1 0 93 0 2 19 37 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 10 81 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 19 41 0 165 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 89 0 188 10 89 0 189 0 245 0 244 10 89 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 89 1 2 0 245 1 8 10 89 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 22 0 4 4 22 0 129 4 22 0 131 19 45 1 71 11 89 1 72] 
#[0 8 50 0 5 0 115] 
#[0 8 54 0 5 0 115] 
#[0 8 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 49 0 5 9 5 0 6 9 213 0 26 9 217 0 53 9 221 0 77 9 225 0 97 10 121 0 114 0 185 0 118 7 249 0 119 8 13 0 121 8 17 0 122 10 125 0 134 10 137 0 135 19 53 0 146 10 137 0 147 10 137 0 148 10 137 0 149 19 53 0 150 19 53 1 4 19 53 1 6 19 53 1 11 19 53 1 15 8 13 1 50 8 17 1 51 19 53 1 126 19 53 1 127 10 149 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 57 0 188 19 57 0 189 0 245 0 244 19 57 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 57 1 2 0 245 1 8 19 57 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 61 0 188 19 61 0 189 19 61 0 191 0 245 0 244 19 61 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 61 1 2 0 245 1 8 19 61 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 65 0 127 19 69 0 128] 
#[0 8 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 73 0 7 6 65 0 115] 
#[1 19 77 0 7 6 65 0 115] 
#[0 8 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 82 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 81 0 188 19 81 0 189 0 245 0 244 19 81 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 81 1 2 0 245 1 8 19 81 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 6 0 2 0 6 0 4 8 86 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 189 0 199 0 57 0 200 6 189 0 201 0 65 0 202 0 6 1 203] 
#[0 19 85 0 5] 
#[0 8 90 0 5] 
#[0 8 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 19 89 0 129] 
#[0 8 98 0 4 0 129 0 131] 
#[0 8 102 0 4 0 129 0 131] 
#[0 8 106 0 4 0 129 0 131] 
#[0 19 93 0 4] 
#[0 8 110 0 130] 
#[0 19 97 0 130] 
#[1 8 114 0 14 19 101 1 78] 
#[1 8 118 0 4 8 118 0 9 8 118 0 14 8 118 0 23 15 161 0 116 8 118 0 130] 
#[0 8 122 0 4 0 9 0 14 0 23 0 130] 
#[1 19 105 0 9 0 134 0 14 19 109 1 76] 
#[0 8 126 0 4 0 9 0 14 0 130] 
#[1 6 94 0 4 8 130 0 9 8 130 0 14 15 169 0 130 15 197 1 59 19 113 1 64 19 113 1 66 19 113 1 67 15 197 1 68 15 205 1 80] 
#[0 8 134 0 4 0 9 0 14 0 130] 
#[0 8 138 0 4 0 9 0 14 0 130] 
#[1 8 142 0 4 8 142 0 9 8 142 0 14 19 117 0 23 8 142 0 130 19 121 1 69] 
#[0 19 125 0 14] 
#[0 19 129 0 4] 
#[1 8 146 0 4 8 146 0 9 8 146 0 14 15 157 0 22 8 146 0 130] 
#[0 8 150 0 130] 
#[1 13 61 0 116 19 133 1 115] 
#[1 4 173 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 177 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 185 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 185 0 170 19 137 0 171 19 137 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 19 137 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 193 1 203] 
#[0 19 141 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 19 145 0 250 15 129 0 251 0 6 1 203] 
#[0 19 149 0 3] 
#[0 8 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 153 0 188 19 153 0 189 19 153 0 191 0 245 0 244 19 153 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 153 1 2 0 245 1 8 19 153 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 19 157 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 161 0 188 19 161 0 189 19 161 0 191 0 245 0 244 19 161 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 161 1 2 0 245 1 8 19 161 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 19 165 0 8 6 65 0 115] 
#[1 4 38 0 8 9 65 0 23 8 162 0 80 8 162 0 92 4 38 0 115 11 233 0 151] 
#[1 19 169 0 8 11 241 0 115] 
#[1 9 65 0 23 8 166 0 80 8 166 0 92 11 245 0 151] 
#[1 19 173 0 80 19 177 0 92] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 181 0 188 19 181 0 189 19 181 0 191 0 245 0 244 19 181 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 181 1 2 0 245 1 8 19 181 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 185 0 188 19 185 0 189 0 245 0 244 19 185 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 185 1 2 0 245 1 8 19 185 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 19 189 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 193 0 188 19 193 0 189 19 193 0 191 0 245 0 244 19 193 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 193 1 2 0 245 1 8 19 193 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 19 197 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 201 0 188 19 201 0 189 19 201 0 191 0 245 0 244 19 201 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 201 1 2 0 245 1 8 19 201 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 19 205 0 8 6 65 0 115] 
#[1 3 42 0 8 9 65 0 23 8 162 0 80 8 162 0 92 3 42 0 115 9 69 0 151] 
#[1 9 65 0 23 8 166 0 80 8 166 0 92 9 81 0 151] 
#[0 8 170 0 80 0 92] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 209 0 188 19 209 0 189 19 209 0 191 0 245 0 244 19 209 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 209 1 2 0 245 1 8 19 209 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 213 0 188 19 213 0 189 0 245 0 244 19 213 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 213 1 2 0 245 1 8 19 213 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 19 225 0 134 19 225 0 208 19 225 0 209 19 225 0 210 19 225 0 224] 
#[0 19 229 0 92] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 16 45 0 134 16 45 0 208 16 45 0 209 16 45 0 210 16 45 0 224] 
#[0 19 233 0 92] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 19 237 0 192 19 237 0 195 19 237 0 196 19 237 0 197 19 237 0 205 19 237 0 219 19 237 0 220 19 237 0 221 19 237 0 222 19 237 0 225 19 237 0 226 19 237 0 228 19 237 0 229 19 237 0 230 19 237 0 235 19 237 0 237 19 237 0 238 19 237 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 19 241 0 4 19 245 0 231] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 20 1 0 134 20 1 0 208 20 1 0 209 20 1 0 210 20 1 0 241] 
#[0 8 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 190 0 8 0 115] 
#[1 8 194 0 8 9 65 0 23 8 194 0 115 20 5 0 151] 
#[1 9 65 0 23 20 9 0 151] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 20 13 0 192 20 13 0 195 20 13 0 196 20 13 0 197 20 13 0 205 20 13 0 219 20 13 0 220 20 13 0 221 20 13 0 222 20 13 0 225 20 13 0 226 20 13 0 228 20 13 0 229 20 13 0 230 20 13 0 235 20 13 0 237 20 13 0 238 20 13 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 20 17 0 192 20 17 0 195 20 17 0 196 20 17 0 197 20 17 0 205 20 17 0 219 20 17 0 220 20 17 0 221 20 17 0 222 20 17 0 225 20 17 0 226 20 17 0 228 20 17 0 229 20 17 0 230 20 17 0 235 20 17 0 237 20 17 0 238 20 17 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 20 21 0 5 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 16 173 0 135 16 173 0 147 16 173 0 148 16 173 0 149 8 13 1 50 8 17 1 51 20 25 1 147 16 181 1 148 16 185 1 149] 
#[0 20 29 0 4] 
#[1 4 245 0 71 20 33 1 23 5 5 1 203] 
#[0 8 202 0 8 0 115] 
#[0 8 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 185 0 118 12 45 0 134 20 37 1 186] 
#[0 20 41 0 8] 
#[0 8 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 30 0 1 0 38 0 5 7 137 0 64 0 19 0 70 7 169 0 79 2 133 0 84 2 137 0 88 2 141 0 107 3 1 1 33 7 177 1 117 3 1 1 124 3 1 1 133 3 1 1 151 3 1 1 157 3 1 1 169 20 45 1 173 2 253 1 174 3 1 1 175 3 1 1 178 3 1 1 180 3 1 1 181 3 1 1 182 3 1 1 183] 
#[1 8 214 0 5 6 209 0 58 20 49 0 60 2 117 0 69 20 53 0 70 6 217 0 76 7 101 0 79 2 133 0 84 20 57 0 86 6 229 0 88 6 233 0 109 20 61 0 201 0 65 0 202 20 65 1 133 20 85 1 146 20 69 1 157 20 73 1 184 20 77 1 187 20 81 1 188 20 85 1 194 20 89 1 195 20 93 1 196 20 97 1 197 20 101 1 198] 
#[0 8 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 8 226 0 5 20 105 0 23 8 226 0 115] 
#[0 20 109 0 5] 
#[1 8 230 0 5 20 113 0 115] 
#[0 8 234 0 5 0 115] 
#[0 8 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 20 117 0 4] 
#[0 20 121 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 20 125 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 20 129 0 3] 
#[0 2 146 0 8 0 22] 
#[1 8 250 0 8 20 133 0 22] 
#[0 20 137 0 8] 
#[0 20 141 0 2] 
#[0 8 254 0 4] 
#[0 9 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 49 0 4 20 145 1 99] 
#[0 9 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 193 0 58 2 105 0 59 2 109 0 60 7 137 0 64 2 117 0 69 3 201 0 76 7 101 0 79 2 133 0 84 0 65 0 86 2 137 0 88 2 141 0 107 1 245 0 109 20 149 0 201 0 65 0 202 20 153 0 205 20 157 0 243 20 161 1 7 20 165 1 20 20 169 1 124 20 173 1 133 20 177 1 146 20 181 1 151 20 185 1 157 20 189 1 183 12 217 1 203] 
#[0 9 10 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 14 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 18 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 22 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 26 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 30 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 34 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 38 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 42 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 20 193 0 5] 
#[1 0 93 0 2 0 15 0 4 9 46 0 5 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 7 137 0 64 0 137 0 66 1 217 0 67 2 117 0 69 16 249 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 7 65 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 20 197 0 192 20 197 0 195 20 197 0 196 20 197 0 197 20 197 0 201 0 65 0 202 20 197 0 205 20 197 0 219 20 197 0 220 20 197 0 221 20 197 0 222 20 197 0 225 20 197 0 226 20 197 0 228 20 197 0 229 20 197 0 230 20 197 0 235 20 197 0 237 20 197 0 238 20 197 0 242 20 197 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 20 197 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 20 197 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 20 197 1 124 20 197 1 133 20 197 1 146 20 197 1 151 20 197 1 155 20 197 1 156 20 197 1 157 20 197 1 183 3 41 1 203] 
#[0 9 50 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 54 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 58 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 66 0 4 0 22] 
#[0 20 201 0 8] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 20 205 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 20 205 1 109 20 205 1 110 3 117 1 111 3 117 1 113] 
#[1 5 49 0 2 5 97 0 6 5 101 0 22 0 201 0 125 0 18 0 126 5 109 0 152 0 241 0 153 10 73 0 164 5 65 1 203] 
#[1 4 241 0 4 4 245 0 71 0 185 0 118 20 209 0 134 6 197 1 22 5 1 1 23 5 5 1 203] 
#[1 7 21 0 2 7 25 0 26 0 185 0 118 20 213 0 134] 
#[1 0 138 0 2 0 138 0 6 0 235 0 8 0 138 0 9 0 138 0 10 0 138 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 15 0 138 0 16 0 138 0 17 0 138 0 18 0 142 0 19 0 138 0 20 0 138 0 21 0 138 0 22 0 138 0 23 0 138 0 24 0 138 0 25 0 138 0 26 0 138 0 27 0 138 0 28 0 138 0 29 0 138 0 30 0 138 0 31 0 138 0 32 0 138 0 33 0 138 0 34 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 38 0 138 0 40 0 138 0 41 0 138 0 42 0 138 0 43 0 138 0 44 0 138 0 45 0 138 0 46 0 138 0 47 0 138 0 48 0 138 0 50 0 138 0 51 0 138 0 52 0 138 0 80 0 138 0 83 0 138 0 125 0 138 0 126 0 138 1 202 0 138 1 203] 
#[0 20 221 0 8] 
#[0 9 70 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 9 74 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 9 78 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 9 82 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 9 86 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 0 185 0 118 16 217 0 134 16 221 1 98 16 225 1 158] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 2 101 0 58 2 105 0 59 0 137 0 66 1 157 0 72 2 125 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 17 85 0 188 17 85 0 189 17 89 0 243 0 245 0 244 17 85 0 252 1 113 0 253 1 117 0 254 1 121 1 1 17 85 1 2 17 93 1 7 0 245 1 8 17 85 1 10 0 245 1 13 0 245 1 17 1 33 1 19 17 97 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 3 41 1 203] 
#[0 6 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 246 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 10 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 209 0 58 6 217 0 76 0 185 0 118 20 225 0 134 17 101 1 187 17 105 1 188] 
#[0 6 238 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 6 242 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 7 6 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 20 229 0 3] 
#[0 20 233 0 8] 
#[0 20 237 0 4] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 20 241 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 9 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 20 245 0 250 15 129 0 251 0 6 1 203] 
#[1 3 57 0 11 20 249 1 81] 
#[1 4 241 0 4 4 245 0 71 20 253 1 22 5 1 1 23 5 5 1 203] 
#[1 3 57 0 11 0 185 0 118 21 1 0 134 21 5 1 81] 
#[1 4 241 0 4 4 245 0 71 0 185 0 118 21 9 0 134 21 13 1 22 5 1 1 23 5 5 1 203] 
#[0 21 17 0 58] 
#[1 3 45 0 2 7 209 0 4 7 213 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 7 217 0 134 4 105 0 208 4 105 0 209 4 105 0 210 18 85 0 216 18 85 0 217 3 89 1 50 3 93 1 51 3 97 1 81 17 225 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 17 225 1 109 17 225 1 110 3 117 1 111 3 117 1 113 7 229 1 203] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 21 21 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 21 21 1 109 21 21 1 110 3 117 1 111 3 117 1 113] 
#[1 9 94 0 4 9 94 0 5 9 94 0 8 9 94 0 115 13 61 0 116 21 25 1 115] 
#[1 21 29 0 91 21 33 0 99] 
#[0 9 98 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 21 37 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 21 41 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 9 102 0 5 0 8 0 115] 
#[0 9 106 0 5 0 8 0 115] 
#[0 9 110 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 61 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 21 45 0 3] 
#[0 9 114 0 5 0 8 0 115] 
#[0 9 118 0 5 0 8 0 115] 
#[0 9 122 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 9 126 0 7 0 115] 
#[0 9 130 0 14 0 115] 
#[0 9 134 0 14 0 115] 
#[0 21 49 0 19] 
#[0 21 53 0 3] 
#[0 9 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 21 57 0 19] 
#[0 9 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 9 146 0 5 0 115] 
#[0 9 150 0 8 0 75] 
#[0 9 154 0 5 0 115] 
#[0 21 61 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 21 65 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 21 69 0 2] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 21 73 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 21 77 0 4] 
#[0 21 81 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 21 85 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 21 89 0 3] 
#[0 21 93 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 21 97 0 250 15 129 0 251 0 6 1 203] 
#[0 9 158 0 5 0 115] 
#[0 9 162 0 75] 
#[0 9 166 0 5 0 115] 
#[0 9 170 0 5 0 115] 
#[0 9 174 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 21 101 0 5] 
#[0 9 178 0 5 0 115] 
#[0 9 182 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 9 186 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 41 0 4 4 45 0 6 21 105 0 7 4 93 0 114 9 173 0 115 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 14 17 0 216 14 17 0 217 21 109 0 218 7 229 1 203] 
#[0 9 190 0 7 0 115] 
#[0 21 113 0 7] 
#[0 9 194 0 8 0 115] 
#[0 9 198 0 8 0 115] 
#[0 9 202 0 3 0 5 0 7 0 115] 
#[1 9 206 0 3 9 206 0 5 9 206 0 7 9 206 0 115 13 61 0 116 21 117 1 115] 
#[1 9 210 0 3 9 210 0 5 9 210 0 7 9 65 0 23 9 210 0 115 21 121 0 151] 
#[1 9 214 0 3 9 214 0 5 9 214 0 7 9 65 0 23 21 125 0 42 9 214 0 115 13 61 0 116 21 129 0 151 21 133 1 115] 
#[0 9 218 0 3 0 5 0 7 0 115] 
#[0 9 222 0 3 0 5 0 7 0 115] 
#[1 9 226 0 3 9 226 0 5 9 226 0 7 9 65 0 23 9 226 0 115 21 137 0 151] 
#[0 21 141 0 4] 
#[0 21 145 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 21 149 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 21 153 0 3] 
#[0 9 230 0 5] 
#[0 21 157 0 5] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 21 161 0 245 4 125 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 21 165 0 2] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 21 169 0 245 4 125 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 21 173 0 3] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 21 181 0 216 21 181 0 217 21 181 0 249 21 181 1 5 7 229 1 203] 
#[0 21 185 0 3] 
#[0 21 189 0 2] 
#[0 21 193 0 2] 
#[0 21 197 0 4] 
#[0 21 201 0 2] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 21 205 0 135 21 205 0 147 21 205 0 148 21 205 0 149 8 13 1 50 8 17 1 51 21 209 1 126 21 213 1 127 18 241 1 203] 
#[1 7 233 0 2 21 217 0 8 3 57 0 11 9 65 0 23 13 61 0 116 21 221 0 151 8 21 1 81 21 225 1 115 21 229 1 116] 
#[1 9 5 0 6 21 233 0 61 21 237 0 98 7 249 0 119 8 13 0 121 8 17 0 122 21 241 0 135 21 241 0 147 21 241 0 148 21 241 0 149 8 13 1 50 8 17 1 51 21 245 1 126 21 249 1 127 18 241 1 203] 
#[0 9 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 9 238 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 14 181 0 77 14 185 0 97] 
#[0 9 242 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 9 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[1 0 185 0 118 3 85 0 134 21 253 1 96 3 137 1 97 3 141 1 98 21 253 1 136] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 22 1 0 250 15 129 0 251 0 6 1 203] 
#[0 22 5 0 4] 
#[0 22 9 0 3] 
#[0 22 13 0 4] 
#[0 9 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 17 0 188 22 17 0 189 0 245 0 244 22 17 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 17 1 2 0 245 1 8 22 17 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 9 254 0 3 0 115] 
#[0 10 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 82 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 22 21 1 87 22 21 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 22 21 1 109 22 21 1 110 3 117 1 111 3 117 1 113] 
#[0 10 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 22 25 0 3 22 29 0 115] 
#[0 22 33 0 129] 
#[0 10 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 14 0 5 0 115] 
#[0 10 18 0 5 0 115] 
#[1 6 65 0 115 10 22 0 127 10 22 0 128] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 37 0 188 22 37 0 189 22 37 0 191 0 245 0 244 22 37 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 37 1 2 0 245 1 8 22 37 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 38 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 10 42 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 22 41 0 9] 
#[1 0 93 0 2 0 14 0 4 0 134 0 5 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 149 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 22 53 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 53 0 188 22 53 0 189 0 245 0 244 22 53 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 53 1 2 0 245 1 8 22 53 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 22 53 1 74 1 189 1 75 22 57 1 76 1 193 1 203] 
#[0 10 46 0 4 0 9 0 14 0 23 0 130] 
#[0 22 61 0 14] 
#[1 8 114 0 14 22 65 1 78] 
#[0 22 69 0 14] 
#[0 10 50 0 4 0 9 0 14 0 130] 
#[1 6 94 0 4 22 73 0 121 0 11 0 129 22 73 1 50 22 85 1 53 22 85 1 54 1 181 1 55 22 85 1 57 22 85 1 70 1 189 1 75 22 89 1 80] 
#[0 10 54 0 4 0 9 0 14 0 130] 
#[0 10 58 0 4 0 129 0 131] 
#[1 4 149 0 114 22 93 0 142] 
#[0 10 62 0 4 0 19] 
#[0 10 66 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 115 0 116 0 127 0 128 1 204] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 22 97 0 250 15 129 0 251 0 6 1 203] 
#[0 22 101 0 5] 
#[1 10 70 0 4 10 70 0 19 13 61 0 116 22 105 1 115] 
#[1 22 109 0 3 6 65 0 115] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 22 113 0 192 22 113 0 195 22 113 0 196 22 113 0 197 22 113 0 205 22 113 0 219 22 113 0 220 22 113 0 221 22 113 0 222 22 113 0 225 22 113 0 226 22 113 0 228 22 113 0 229 22 113 0 230 22 113 0 235 22 113 0 237 22 113 0 238 22 113 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 117 0 3 6 65 0 115] 
#[1 0 93 0 2 22 121 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 125 0 188 22 125 0 189 22 125 0 191 0 245 0 244 22 125 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 125 1 2 0 245 1 8 22 125 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 22 129 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 133 0 188 22 133 0 189 22 133 0 191 0 245 0 244 22 133 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 133 1 2 0 245 1 8 22 133 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 137 0 188 22 137 0 189 22 137 0 191 0 245 0 244 22 137 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 137 1 2 0 245 1 8 22 137 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 141 0 188 22 141 0 189 0 245 0 244 22 141 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 141 1 2 0 245 1 8 22 141 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 145 0 3 6 65 0 115] 
#[0 22 149 0 3] 
#[1 0 93 0 2 22 153 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 157 0 188 22 157 0 189 22 157 0 191 0 245 0 244 22 157 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 157 1 2 0 245 1 8 22 157 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 161 0 8 6 65 0 115] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 22 165 0 192 22 165 0 195 22 165 0 196 22 165 0 197 22 165 0 205 22 165 0 219 22 165 0 220 22 165 0 221 22 165 0 222 22 165 0 225 22 165 0 226 22 165 0 228 22 165 0 229 22 165 0 230 22 165 0 235 22 165 0 237 22 165 0 238 22 165 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 169 0 3 6 65 0 115] 
#[1 0 93 0 2 22 173 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 177 0 188 22 177 0 189 22 177 0 191 0 245 0 244 22 177 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 177 1 2 0 245 1 8 22 177 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 181 0 3 6 65 0 115] 
#[0 22 185 0 3] 
#[0 8 162 0 92] 
#[0 8 166 0 92] 
#[0 22 189 0 92] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 193 0 188 22 193 0 189 0 245 0 244 22 193 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 193 1 2 0 245 1 8 22 193 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 197 0 188 22 197 0 189 0 245 0 244 22 197 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 197 1 2 0 245 1 8 22 197 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 10 74 0 1 10 74 0 2 10 74 0 4 10 74 0 5 10 74 0 6 10 74 0 8 10 74 0 35 10 74 0 36 10 74 0 37 10 74 0 38 10 74 0 39 10 74 0 49 10 74 0 53 10 74 0 54 10 74 0 55 10 74 0 56 10 74 0 58 10 74 0 59 10 74 0 60 10 74 0 62 10 74 0 63 10 74 0 64 10 74 0 65 10 74 0 66 10 74 0 67 22 201 0 68 10 74 0 69 10 74 0 70 10 74 0 72 10 74 0 74 10 74 0 76 10 74 0 78 10 74 0 79 10 74 0 84 10 74 0 86 10 74 0 88 10 74 0 89 10 74 0 90 10 74 0 96 10 74 0 100 10 74 0 101 10 74 0 103 10 74 0 104 10 74 0 105 10 74 0 106 10 74 0 107 10 74 0 108 10 74 0 109 10 74 0 110 10 74 0 111 10 74 0 112 10 74 0 113 10 74 0 118 10 74 0 121 10 74 0 122 10 74 0 123 10 74 0 125 10 74 0 126 10 74 0 129 10 74 1 203 10 74 1 204] 
#[1 22 205 0 5 22 209 0 56 22 213 0 65 22 217 0 232 22 221 0 233 22 225 0 234] 
#[0 10 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 82 0 3] 
#[0 10 86 0 3] 
#[0 22 229 0 3] 
#[0 10 90 0 8 0 115] 
#[0 10 94 0 8 0 115] 
#[0 10 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 22 233 0 5] 
#[1 10 110 0 5 7 241 0 6 22 237 0 61 22 249 0 93 22 249 0 94 22 249 0 95 22 241 0 98 7 249 0 119 8 13 0 121 8 17 0 122 22 245 0 135 22 245 0 147 22 245 0 148 22 245 0 149 8 13 1 50 8 17 1 51 22 249 1 119 23 9 1 122 23 1 1 189 23 5 1 190 23 9 1 191 23 9 1 192 23 9 1 193] 
#[0 23 21 0 4] 
#[0 10 114 0 8 0 115] 
#[0 10 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 25 0 5] 
#[1 0 50 0 4 0 50 0 6 6 205 0 69 0 239 0 118 12 45 0 134 12 49 1 185 12 53 1 186 0 50 1 203] 
#[1 6 209 0 58 20 49 0 60 2 117 0 69 6 217 0 76 7 101 0 79 2 133 0 84 20 57 0 86 6 229 0 88 6 233 0 109 23 29 0 201 0 65 0 202 23 33 1 133 23 53 1 146 23 37 1 157 23 41 1 184 23 45 1 187 23 49 1 188 23 53 1 194 23 57 1 195] 
#[1 0 54 0 4 0 54 0 6 0 243 0 118 12 45 0 134 12 61 1 185 12 53 1 186 0 54 1 203] 
#[0 10 122 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 126 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 130 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 134 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 138 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 142 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 146 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 150 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 23 61 0 5] 
#[1 10 154 0 5 6 209 0 58 20 49 0 60 2 117 0 69 20 53 0 70 6 217 0 76 7 101 0 79 2 133 0 84 20 57 0 86 6 229 0 88 6 233 0 109 20 61 0 201 0 65 0 202 20 65 1 133 20 85 1 146 20 69 1 157 20 73 1 184 20 77 1 187 20 81 1 188 20 85 1 194 20 89 1 195 23 65 1 198] 
#[0 10 158 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 23 73 0 188 23 73 0 189 0 245 0 244 23 73 0 252 1 113 0 253 1 117 0 254 1 121 1 1 23 73 1 2 0 245 1 8 23 73 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 23 73 1 150 1 193 1 203] 
#[0 10 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 10 166 0 5 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 16 173 0 135 16 173 0 147 16 173 0 148 16 173 0 149 8 13 1 50 8 17 1 51 23 77 1 149] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 81 0 250 15 129 0 251 0 6 1 203] 
#[0 23 85 0 4] 
#[0 23 89 0 3] 
#[0 23 93 0 4] 
#[1 0 185 0 118 23 97 0 134] 
#[0 10 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 101 0 121 1 50] 
#[0 10 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
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
#[0 10 218 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 226 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 105 0 8] 
#[1 4 241 0 4 3 57 0 11 4 245 0 71 12 25 1 22 23 109 1 23 16 133 1 81 5 5 1 203] 
#[1 23 113 0 2 3 57 0 11 8 21 1 81 16 149 1 116] 
#[0 10 234 0 1 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 10 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 20 217 0 8] 
#[1 9 94 0 8 13 61 0 116 23 117 1 115] 
#[0 10 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 121 0 250 15 129 0 251 0 6 1 203] 
#[0 23 125 0 3] 
#[0 23 129 0 5] 
#[1 4 241 0 4 4 245 0 71 23 133 1 22 5 1 1 23 5 5 1 203] 
#[0 10 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 57 0 11 23 137 1 81] 
#[1 4 241 0 4 4 245 0 71 23 141 1 22 5 1 1 23 5 5 1 203] 
#[1 4 241 0 4 4 245 0 71 23 145 1 22 5 1 1 23 5 5 1 203] 
#[0 10 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 241 0 4 4 245 0 71 0 185 0 118 23 149 0 134 23 153 1 22 5 1 1 23 5 5 1 203] 
#[0 10 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 11 2 0 4 0 5 0 8 0 115] 
#[0 23 157 0 7] 
#[0 23 161 0 7] 
#[1 11 6 0 5 11 6 0 8 11 6 0 115 13 61 0 116 23 165 1 115] 
#[0 23 169 0 3] 
#[1 11 10 0 4 11 10 0 5 11 10 0 8 11 10 0 115 13 61 0 116 23 173 1 115] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 23 177 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 23 177 1 109 23 177 1 110 3 117 1 111 3 117 1 113] 
#[0 23 181 0 19] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 23 185 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 23 185 1 109 23 185 1 110 3 117 1 111 3 117 1 113] 
#[0 23 189 0 4] 
#[0 23 193 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 23 197 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 23 201 0 3] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 205 0 250 15 129 0 251 0 6 1 203] 
#[0 23 209 0 4] 
#[0 23 213 0 3] 
#[0 23 217 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 221 0 250 15 129 0 251 0 6 1 203] 
#[0 23 225 0 5] 
#[0 11 14 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 11 18 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 23 229 0 7] 
#[0 11 22 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 11 26 0 3 0 5 0 7 0 115] 
#[0 11 30 0 3 0 5 0 7 0 115] 
#[1 11 34 0 3 11 34 0 5 11 34 0 7 11 34 0 115 13 61 0 116 23 233 1 115] 
#[0 11 38 0 3 0 5 0 7 0 115] 
#[1 11 42 0 3 11 42 0 5 11 42 0 7 9 65 0 23 11 42 0 115 23 237 0 151] 
#[0 11 46 0 3 0 5 0 7 0 115] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 173 0 250 15 129 0 251 23 241 1 18 0 6 1 203] 
#[0 23 245 0 4] 
#[0 23 249 0 3] 
#[0 23 253 0 4] 
#[0 11 50 0 3 0 5 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[0 24 1 0 3] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 24 5 0 245 4 125 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 24 9 0 3] 
#[0 24 13 0 4] 
#[0 11 54 0 3] 
#[0 24 17 0 3] 
#[0 24 21 0 4] 
#[0 24 25 0 3] 
#[1 4 41 0 4 4 45 0 6 0 185 0 118 24 29 0 134 24 33 0 208 24 33 0 209 24 33 0 210 24 37 0 216 24 37 0 217 24 37 0 249 24 37 1 5 24 41 1 120 24 45 1 128 7 229 1 203] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 49 0 250 15 129 0 251 0 6 1 203] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 24 53 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 7 233 0 2 24 57 0 8 3 57 0 11 9 65 0 23 13 61 0 116 24 61 0 151 8 21 1 81 24 65 1 115 24 69 1 116] 
#[0 11 58 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 62 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 66 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 24 73 0 8] 
#[1 24 77 0 8 9 65 0 23 24 81 0 151] 
#[1 24 85 0 4 24 89 0 8] 
#[0 24 93 0 2] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 24 97 0 135 24 97 0 147 24 97 0 148 24 97 0 149 8 13 1 50 8 17 1 51 24 101 1 126 24 105 1 127 18 241 1 203] 
#[1 7 233 0 2 24 109 0 8 3 57 0 11 9 65 0 23 13 61 0 116 24 113 0 151 8 21 1 81 24 117 1 115 24 121 1 116] 
#[0 11 70 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 74 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 78 0 4 0 115] 
#[0 24 125 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 129 0 250 15 129 0 251 24 133 1 9 0 6 1 203] 
#[0 24 137 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 141 0 250 15 129 0 251 0 6 1 203] 
#[0 11 82 0 3 0 115] 
#[0 11 86 0 14 0 115] 
#[0 11 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 70 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 19 21 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 25 0 188 19 25 0 189 0 245 0 244 19 25 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 25 1 2 0 245 1 8 19 25 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 24 145 0 9] 
#[1 6 65 0 115 11 94 0 127 11 94 0 128] 
#[1 11 93 0 130 24 149 1 58 24 149 1 59 24 149 1 60 11 109 1 61 11 113 1 62] 
#[0 11 98 0 5] 
#[0 11 102 0 5] 
#[1 0 134 0 5 24 153 1 76] 
#[0 24 157 0 5] 
#[0 11 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 24 161 0 14] 
#[0 11 110 0 4 0 129 0 131] 
#[0 11 114 0 4 0 9 0 14 0 130] 
#[0 11 118 0 4 0 9 0 14 0 130] 
#[0 11 122 0 4 0 9 0 14 0 130] 
#[0 11 126 0 4 0 9 0 14 0 130] 
#[0 24 165 0 4] 
#[1 0 22 0 5 24 169 1 75] 
#[0 24 173 0 5] 
#[0 11 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 11 134 0 4 0 19] 
#[0 24 177 0 8] 
#[0 11 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 181 0 192 24 181 0 195 24 181 0 196 24 181 0 197 24 181 0 205 24 181 0 219 24 181 0 220 24 181 0 221 24 181 0 222 24 181 0 225 24 181 0 226 24 181 0 228 24 181 0 229 24 181 0 230 24 181 0 235 24 181 0 237 24 181 0 238 24 181 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 185 0 192 24 185 0 195 24 185 0 196 24 185 0 197 24 185 0 205 24 185 0 219 24 185 0 220 24 185 0 221 24 185 0 222 24 185 0 225 24 185 0 226 24 185 0 228 24 185 0 229 24 185 0 230 24 185 0 235 24 185 0 237 24 185 0 238 24 185 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 189 0 3 6 65 0 115] 
#[1 0 93 0 2 24 193 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 24 197 0 188 24 197 0 189 24 197 0 191 0 245 0 244 24 197 0 252 1 113 0 253 1 117 0 254 1 121 1 1 24 197 1 2 0 245 1 8 24 197 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 201 0 8 6 65 0 115] 
#[1 24 205 0 3 6 65 0 115] 
#[0 24 209 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 213 0 192 24 213 0 195 24 213 0 196 24 213 0 197 24 213 0 205 24 213 0 219 24 213 0 220 24 213 0 221 24 213 0 222 24 213 0 225 24 213 0 226 24 213 0 228 24 213 0 229 24 213 0 230 24 213 0 235 24 213 0 237 24 213 0 238 24 213 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 217 0 192 24 217 0 195 24 217 0 196 24 217 0 197 24 217 0 205 24 217 0 219 24 217 0 220 24 217 0 221 24 217 0 222 24 217 0 225 24 217 0 226 24 217 0 228 24 217 0 229 24 217 0 230 24 217 0 235 24 217 0 237 24 217 0 238 24 217 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 221 0 192 24 221 0 195 24 221 0 196 24 221 0 197 24 221 0 205 24 221 0 219 24 221 0 220 24 221 0 221 24 221 0 222 24 221 0 225 24 221 0 226 24 221 0 228 24 221 0 229 24 221 0 230 24 221 0 235 24 221 0 237 24 221 0 238 24 221 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 225 0 3 6 65 0 115] 
#[1 0 93 0 2 24 229 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 24 233 0 188 24 233 0 189 24 233 0 191 0 245 0 244 24 233 0 252 1 113 0 253 1 117 0 254 1 121 1 1 24 233 1 2 0 245 1 8 24 233 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 11 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 237 0 192 24 237 0 195 24 237 0 196 24 237 0 197 24 237 0 205 24 237 0 219 24 237 0 220 24 237 0 221 24 237 0 222 24 237 0 225 24 237 0 226 24 237 0 228 24 237 0 229 24 237 0 230 24 237 0 235 24 237 0 237 24 237 0 238 24 237 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 241 0 192 24 241 0 195 24 241 0 196 24 241 0 197 24 241 0 205 24 241 0 219 24 241 0 220 24 241 0 221 24 241 0 222 24 241 0 225 24 241 0 226 24 241 0 228 24 241 0 229 24 241 0 230 24 241 0 235 24 241 0 237 24 241 0 238 24 241 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 245 0 3 6 65 0 115] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 249 0 192 24 249 0 195 24 249 0 196 24 249 0 197 24 249 0 205 24 249 0 219 24 249 0 220 24 249 0 221 24 249 0 222 24 249 0 225 24 249 0 226 24 249 0 228 24 249 0 229 24 249 0 230 24 249 0 235 24 249 0 237 24 249 0 238 24 249 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 253 0 192 24 253 0 195 24 253 0 196 24 253 0 197 24 253 0 205 24 253 0 219 24 253 0 220 24 253 0 221 24 253 0 222 24 253 0 225 24 253 0 226 24 253 0 228 24 253 0 229 24 253 0 230 24 253 0 235 24 253 0 237 24 253 0 238 24 253 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 25 1 0 188 25 1 0 189 0 245 0 244 25 1 0 252 1 113 0 253 1 117 0 254 1 121 1 1 25 1 1 2 0 245 1 8 25 1 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 25 5 0 3] 
#[0 25 9 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 25 13 0 192 25 13 0 195 25 13 0 196 25 13 0 197 25 13 0 205 25 13 0 219 25 13 0 220 25 13 0 221 25 13 0 222 25 13 0 225 25 13 0 226 25 13 0 228 25 13 0 229 25 13 0 230 25 13 0 235 25 13 0 237 25 13 0 238 25 13 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 11 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 25 17 0 188 25 17 0 189 25 17 0 191 0 245 0 244 25 17 0 252 1 113 0 253 1 117 0 254 1 121 1 1 25 17 1 2 0 245 1 8 25 17 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 25 21 0 116] 
#[1 25 25 0 5 22 209 0 56 22 213 0 65 25 29 0 233 25 33 0 234] 
#[0 11 150 0 5 0 56 0 65] 
#[1 25 37 0 5 22 209 0 56 25 41 0 232 22 221 0 233] 
#[1 1 197 0 4 25 45 0 197] 
#[0 11 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 25 49 0 2] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 25 53 0 135 25 53 0 147 25 53 0 148 25 53 0 149 8 13 1 50 8 17 1 51] 
#[1 7 233 0 2 25 57 0 8 3 57 0 11 13 61 0 116 8 21 1 81 25 61 1 115 25 65 1 116] 
#[1 9 5 0 6 25 69 0 98 7 249 0 119 8 13 0 121 8 17 0 122 25 73 0 135 25 73 0 147 25 73 0 148 25 73 0 149 8 13 1 50 8 17 1 51] 
#[0 11 158 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 25 77 0 5] 
#[1 11 162 0 5 7 241 0 6 22 237 0 61 22 249 0 93 22 249 0 94 22 249 0 95 22 241 0 98 7 249 0 119 8 13 0 121 8 17 0 122 22 245 0 135 22 245 0 147 22 245 0 148 22 245 0 149 8 13 1 50 8 17 1 51 22 249 1 119 25 81 1 122 25 81 1 191 25 81 1 192 25 81 1 193] 
#[0 11 166 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 11 170 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 11 174 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[1 10 110 0 5 7 241 0 6 22 237 0 61 22 249 0 93 22 249 0 94 22 249 0 95 22 241 0 98 7 249 0 119 8 13 0 121 8 17 0 122 22 245 0 135 22 245 0 147 22 245 0 148 22 245 0 149 8 13 1 50 8 17 1 51 22 249 1 119 23 9 1 122 25 85 1 189 23 5 1 190 23 9 1 191 23 9 1 192 23 9 1 193] 
#[0 11 178 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 182 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 186 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 190 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 194 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 198 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 202 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 206 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 210 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 218 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 222 0 5 0 115] 
#[0 11 226 0 5 0 115] 
#[0 11 230 0 5 0 115] 
#[0 25 89 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 129 0 250 15 129 0 251 25 93 1 9 0 6 1 203] 
#[0 25 97 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 101 0 250 15 129 0 251 0 6 1 203] 
#[0 7 74 0 8 0 22] 
#[0 25 105 0 3] 
#[0 11 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 25 109 0 4] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 25 113 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 10 62 0 4 11 2 0 8] 
#[0 25 117 0 5] 
#[1 10 70 0 4 11 10 0 8 13 61 0 116 25 121 1 115] 
#[1 11 238 0 1 0 247 0 2 11 238 0 4 11 238 0 5 0 247 0 6 0 247 0 8 11 130 0 9 11 130 0 10 11 130 0 11 11 130 0 12 11 130 0 13 11 130 0 14 11 130 0 15 11 130 0 16 11 130 0 17 11 130 0 18 11 130 0 20 11 130 0 21 11 130 0 22 11 130 0 23 11 130 0 24 11 130 0 25 11 130 0 26 11 130 0 27 11 130 0 28 11 130 0 29 11 130 0 30 11 130 0 31 11 130 0 32 11 130 0 33 11 130 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 11 238 0 39 11 130 0 40 11 130 0 41 11 130 0 42 11 130 0 43 11 130 0 44 11 130 0 45 11 130 0 46 11 130 0 47 11 130 0 48 11 238 0 49 11 130 0 50 11 130 0 51 11 130 0 52 11 238 0 53 11 238 0 54 11 238 0 55 11 238 0 58 11 238 0 59 11 238 0 60 11 238 0 62 11 238 0 63 11 238 0 64 11 238 0 66 11 238 0 67 11 238 0 69 11 238 0 70 11 238 0 72 11 238 0 74 11 238 0 76 11 238 0 78 11 238 0 79 11 130 0 80 11 130 0 83 11 238 0 84 11 238 0 86 11 238 0 88 11 238 0 89 11 238 0 90 11 238 0 96 11 238 0 100 11 238 0 101 11 238 0 103 11 238 0 104 11 238 0 105 11 238 0 106 11 238 0 107 11 238 0 108 11 238 0 109 11 238 0 110 11 238 0 111 11 238 0 112 11 238 0 113 11 130 0 115 11 238 0 118 11 238 0 121 11 238 0 122 11 238 0 123 0 247 0 125 0 247 0 126 11 238 0 129 11 130 1 202 0 247 1 203 11 238 1 204] 
#[0 11 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 241 0 4 4 245 0 71 25 125 1 22 5 1 1 23 5 5 1 203] 
#[0 11 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 241 0 4 4 245 0 71 25 129 1 22 5 1 1 23 5 5 1 203] 
#[0 11 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 13 61 0 116 25 133 1 115] 
#[1 13 61 0 116 25 137 1 115] 
#[0 12 2 0 5 0 8 0 115] 
#[1 12 6 0 5 12 6 0 8 12 6 0 115 13 61 0 116 25 141 1 115] 
#[0 12 10 0 4 0 5 0 8 0 115] 
#[0 12 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 45 0 2 3 49 0 4 3 53 0 6 3 57 0 11 3 61 0 81 3 65 0 85 3 69 0 89 3 73 0 103 3 77 0 108 3 81 0 110 0 185 0 118 3 89 0 121 3 93 0 122 3 85 0 134 3 89 1 50 3 93 1 51 3 97 1 81 25 145 1 88 3 105 1 89 3 109 1 90 3 109 1 91 3 117 1 92 3 117 1 93 3 117 1 94 3 117 1 95 3 117 1 96 3 137 1 97 3 141 1 98 3 117 1 99 3 117 1 103 3 117 1 104 3 105 1 107 3 109 1 108 25 145 1 109 25 145 1 110 3 117 1 111 3 117 1 113] 
#[0 12 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 173 0 250 15 129 0 251 25 149 1 18 0 6 1 203] 
#[0 25 153 0 4] 
#[0 25 157 0 3] 
#[0 25 161 0 4] 
#[0 25 165 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 129 0 250 15 129 0 251 25 169 1 9 0 6 1 203] 
#[0 25 173 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 177 0 250 15 129 0 251 0 6 1 203] 
#[0 25 181 0 5] 
#[0 11 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 22 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 12 26 0 3 0 5 0 7 0 115] 
#[0 12 30 0 3 0 5 0 7 0 115] 
#[0 25 185 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 189 0 250 15 129 0 251 25 193 1 14 0 6 1 203] 
#[0 25 197 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 173 0 250 15 129 0 251 25 201 1 18 0 6 1 203] 
#[0 25 205 0 4] 
#[0 25 209 0 3] 
#[0 25 213 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 217 0 250 15 129 0 251 0 6 1 203] 
#[0 25 221 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 225 0 250 15 129 0 251 0 6 1 203] 
#[1 13 61 0 116 25 229 1 115] 
#[1 3 70 0 3 9 65 0 23 12 34 0 116 9 113 0 151] 
#[1 3 74 0 3 9 65 0 23 12 38 0 116 9 121 0 151] 
#[0 25 233 0 3] 
#[1 13 61 0 116 25 237 1 115] 
#[0 25 241 0 3] 
#[0 25 245 0 5] 
#[0 25 249 0 3] 
#[0 12 42 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 25 253 0 8] 
#[1 26 1 0 8 9 65 0 23 26 5 0 151] 
#[1 26 9 0 4 26 13 0 8] 
#[0 12 46 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 50 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 26 17 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 26 21 0 250 15 129 0 251 0 6 1 203] 
#[0 12 54 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 26 25 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 7 233 0 2 26 29 0 8 3 57 0 11 9 65 0 23 13 61 0 116 26 33 0 151 8 21 1 81 26 37 1 115 26 41 1 116] 
#[0 12 58 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 62 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 66 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 26 45 0 8] 
#[1 26 49 0 8 9 65 0 23 26 53 0 151] 
#[1 26 57 0 4 26 61 0 8] 
#[0 12 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 74 0 5] 
#[0 26 65 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 129 0 250 15 129 0 251 26 69 1 9 0 6 1 203] 
#[0 26 73 0 5] 
#[1 12 78 0 14 26 77 1 79] 
#[1 12 78 0 14 26 81 1 79] 
#[0 26 85 0 5] 
#[0 12 82 0 4 0 129 0 131] 
#[0 12 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 26 89 0 188 26 89 0 189 0 245 0 244 26 89 0 252 1 113 0 253 1 117 0 254 1 121 1 1 26 89 1 2 0 245 1 8 26 89 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 26 93 0 5] 
#[0 12 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 97 0 192 26 97 0 195 26 97 0 196 26 97 0 197 26 97 0 205 26 97 0 219 26 97 0 220 26 97 0 221 26 97 0 222 26 97 0 225 26 97 0 226 26 97 0 228 26 97 0 229 26 97 0 230 26 97 0 235 26 97 0 237 26 97 0 238 26 97 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 101 0 192 26 101 0 195 26 101 0 196 26 101 0 197 26 101 0 205 26 101 0 219 26 101 0 220 26 101 0 221 26 101 0 222 26 101 0 225 26 101 0 226 26 101 0 228 26 101 0 229 26 101 0 230 26 101 0 235 26 101 0 237 26 101 0 238 26 101 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 26 105 0 3 6 65 0 115] 
#[1 0 93 0 2 26 109 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 26 113 0 188 26 113 0 189 26 113 0 191 0 245 0 244 26 113 0 252 1 113 0 253 1 117 0 254 1 121 1 1 26 113 1 2 0 245 1 8 26 113 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 117 0 192 26 117 0 195 26 117 0 196 26 117 0 197 26 117 0 205 26 117 0 219 26 117 0 220 26 117 0 221 26 117 0 222 26 117 0 225 26 117 0 226 26 117 0 228 26 117 0 229 26 117 0 230 26 117 0 235 26 117 0 237 26 117 0 238 26 117 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 121 0 192 26 121 0 195 26 121 0 196 26 121 0 197 26 121 0 205 26 121 0 219 26 121 0 220 26 121 0 221 26 121 0 222 26 121 0 225 26 121 0 226 26 121 0 228 26 121 0 229 26 121 0 230 26 121 0 235 26 121 0 237 26 121 0 238 26 121 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 12 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 125 0 192 26 125 0 195 26 125 0 196 26 125 0 197 26 125 0 205 26 125 0 219 26 125 0 220 26 125 0 221 26 125 0 222 26 125 0 225 26 125 0 226 26 125 0 228 26 125 0 229 26 125 0 230 26 125 0 235 26 125 0 237 26 125 0 238 26 125 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 129 0 192 26 129 0 195 26 129 0 196 26 129 0 197 26 129 0 205 26 129 0 219 26 129 0 220 26 129 0 221 26 129 0 222 26 129 0 225 26 129 0 226 26 129 0 228 26 129 0 229 26 129 0 230 26 129 0 235 26 129 0 237 26 129 0 238 26 129 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 26 133 0 3 6 65 0 115] 
#[0 12 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 137 0 192 26 137 0 195 26 137 0 196 26 137 0 197 26 137 0 205 26 137 0 219 26 137 0 220 26 137 0 221 26 137 0 222 26 137 0 225 26 137 0 226 26 137 0 228 26 137 0 229 26 137 0 230 26 137 0 235 26 137 0 237 26 137 0 238 26 137 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 12 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 26 141 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 145 0 192 26 145 0 195 26 145 0 196 26 145 0 197 26 145 0 205 26 145 0 219 26 145 0 220 26 145 0 221 26 145 0 222 26 145 0 225 26 145 0 226 26 145 0 228 26 145 0 229 26 145 0 230 26 145 0 235 26 145 0 237 26 145 0 238 26 145 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 149 0 192 26 149 0 195 26 149 0 196 26 149 0 197 26 149 0 205 26 149 0 219 26 149 0 220 26 149 0 221 26 149 0 222 26 149 0 225 26 149 0 226 26 149 0 228 26 149 0 229 26 149 0 230 26 149 0 235 26 149 0 237 26 149 0 238 26 149 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 12 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 65 0 115 26 153 0 116] 
#[1 0 6 0 2 0 6 0 4 12 138 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 12 138 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 26 157 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 0 6 1 203] 
#[0 12 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 146 0 5 0 56 0 65] 
#[1 26 161 0 5 22 209 0 56 26 165 0 232 22 221 0 233] 
#[0 12 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 26 169 0 5 22 209 0 56 25 29 0 233] 
#[0 12 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 26 173 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[1 7 233 0 2 26 177 0 8 3 57 0 11 13 61 0 116 8 21 1 81 26 181 1 115 26 185 1 116] 
#[0 12 158 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 26 189 0 8] 
#[0 26 193 0 8] 
#[1 9 5 0 6 7 249 0 119 8 13 0 121 8 17 0 122 26 197 0 135 26 197 0 147 26 197 0 148 26 197 0 149 8 13 1 50 8 17 1 51] 
#[1 7 233 0 2 26 201 0 8 3 57 0 11 13 61 0 116 8 21 1 81 26 205 1 115 26 209 1 116] 
#[0 12 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 166 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 26 213 0 5] 
#[1 12 170 0 1 0 251 0 2 12 170 0 4 12 170 0 5 0 251 0 6 0 251 0 8 12 70 0 9 12 70 0 10 12 70 0 11 12 70 0 12 12 70 0 13 12 70 0 14 12 70 0 15 12 70 0 16 12 70 0 17 12 70 0 18 12 70 0 20 12 70 0 21 12 70 0 22 12 70 0 23 12 70 0 24 12 70 0 25 12 70 0 26 12 70 0 27 12 70 0 28 12 70 0 29 12 70 0 30 12 70 0 31 12 70 0 32 12 70 0 33 12 70 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 12 170 0 39 12 70 0 40 12 70 0 41 12 70 0 42 12 70 0 43 12 70 0 44 12 70 0 45 12 70 0 46 12 70 0 47 12 70 0 48 12 170 0 49 12 70 0 50 12 70 0 51 12 70 0 52 12 170 0 53 12 170 0 54 12 170 0 55 12 170 0 58 12 170 0 59 12 170 0 60 12 170 0 62 12 170 0 63 12 170 0 64 12 170 0 66 12 170 0 67 12 170 0 69 12 170 0 70 12 170 0 72 12 170 0 74 12 170 0 76 12 170 0 78 12 170 0 79 12 70 0 80 12 70 0 83 12 170 0 84 12 170 0 86 12 170 0 88 12 170 0 89 12 170 0 90 12 170 0 96 12 170 0 100 12 170 0 101 12 170 0 103 12 170 0 104 12 170 0 105 12 170 0 106 12 170 0 107 12 170 0 108 12 170 0 109 12 170 0 110 12 170 0 111 12 170 0 112 12 170 0 113 12 70 0 115 12 170 0 118 12 170 0 121 12 170 0 122 12 170 0 123 0 251 0 125 0 251 0 126 12 170 0 129 12 70 1 202 0 251 1 203 12 170 1 204] 
#[0 26 217 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 129 0 250 15 129 0 251 26 221 1 9 0 6 1 203] 
#[0 26 225 0 5] 
#[0 26 229 0 8] 
#[1 0 255 0 5 7 241 0 6 9 209 0 8 9 213 0 26 9 217 0 53 22 237 0 61 9 221 0 77 22 249 0 93 22 249 0 94 22 249 0 95 9 225 0 97 26 233 0 98 7 249 0 119 8 13 0 121 8 17 0 122 26 237 0 135 26 237 0 147 26 237 0 148 26 237 0 149 10 5 1 4 10 5 1 6 10 5 1 11 10 5 1 15 14 229 1 24 10 1 1 25 10 5 1 26 8 13 1 50 8 17 1 51 22 249 1 119 23 9 1 122 10 5 1 126 10 5 1 127 23 1 1 189 23 5 1 190 23 9 1 191 23 9 1 192 23 9 1 193 10 17 1 203] 
#[0 26 241 0 3] 
#[1 12 174 0 1 1 3 0 2 12 174 0 4 12 174 0 5 1 3 0 6 1 3 0 8 12 90 0 9 12 90 0 10 12 90 0 11 12 90 0 12 12 90 0 13 12 90 0 14 12 90 0 15 12 90 0 16 12 90 0 17 12 90 0 18 12 90 0 20 12 90 0 21 12 90 0 22 12 90 0 23 12 90 0 24 12 90 0 25 12 90 0 26 12 90 0 27 12 90 0 28 12 90 0 29 12 90 0 30 12 90 0 31 12 90 0 32 12 90 0 33 12 90 0 34 1 3 0 35 1 3 0 36 1 3 0 37 1 3 0 38 12 174 0 39 12 90 0 40 12 90 0 41 12 90 0 42 12 90 0 43 12 90 0 44 12 90 0 45 12 90 0 46 12 90 0 47 12 90 0 48 12 174 0 49 12 90 0 50 12 90 0 51 12 90 0 52 12 174 0 53 12 174 0 54 12 174 0 55 12 174 0 58 12 174 0 59 12 174 0 60 12 174 0 62 12 174 0 63 12 174 0 64 12 174 0 66 12 174 0 67 12 174 0 69 12 174 0 70 12 174 0 72 12 174 0 74 12 174 0 76 12 174 0 78 12 174 0 79 12 90 0 80 12 90 0 83 12 174 0 84 12 174 0 86 12 174 0 88 12 174 0 89 12 174 0 90 12 174 0 96 12 174 0 100 12 174 0 101 12 174 0 103 12 174 0 104 12 174 0 105 12 174 0 106 12 174 0 107 12 174 0 108 12 174 0 109 12 174 0 110 12 174 0 111 12 174 0 112 12 174 0 113 12 90 0 115 12 174 0 118 12 174 0 121 12 174 0 122 12 174 0 123 1 3 0 125 1 3 0 126 12 174 0 129 12 90 1 202 1 3 1 203 12 174 1 204] 
#[1 11 134 0 4 12 10 0 8] 
#[0 12 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 186 0 5 0 6 0 8 0 61 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 12 190 0 5 0 6 0 8 0 61 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 12 194 0 5 0 8 0 115] 
#[0 12 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 26 245 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 189 0 250 15 129 0 251 26 249 1 14 0 6 1 203] 
#[0 26 253 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 173 0 250 15 129 0 251 27 1 1 18 0 6 1 203] 
#[0 12 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 5 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 129 0 250 15 129 0 251 27 9 1 9 0 6 1 203] 
#[0 27 13 0 5] 
#[0 12 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 206 0 5] 
#[0 27 17 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 189 0 250 15 129 0 251 27 21 1 14 0 6 1 203] 
#[0 27 25 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 129 0 250 15 129 0 251 27 29 1 9 0 6 1 203] 
#[0 27 33 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 173 0 250 15 129 0 251 27 37 1 18 0 6 1 203] 
#[0 27 41 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 45 0 250 15 129 0 251 0 6 1 203] 
#[0 27 49 0 5] 
#[0 27 53 0 4] 
#[1 13 61 0 116 27 57 1 115] 
#[0 12 210 0 3] 
#[1 27 61 0 4 13 61 0 116 27 65 1 115] 
#[0 12 214 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 27 69 0 4 27 73 0 8] 
#[0 12 218 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 222 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 77 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 81 0 250 15 129 0 251 0 6 1 203] 
#[0 12 226 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 230 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 85 0 5] 
#[0 27 89 0 3] 
#[0 12 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 93 0 8] 
#[1 27 97 0 8 9 65 0 23 27 101 0 151] 
#[1 27 105 0 4 27 109 0 8] 
#[0 12 238 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 242 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 113 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 117 0 250 15 129 0 251 0 6 1 203] 
#[0 12 246 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 121 0 5] 
#[0 12 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 125 0 14] 
#[0 27 129 0 14] 
#[0 13 2 0 4 0 129 0 131] 
#[1 0 22 0 5 27 133 1 75] 
#[0 13 6 0 4 0 9 0 14 0 130] 
#[0 13 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 137 0 192 27 137 0 195 27 137 0 196 27 137 0 197 27 137 0 205 27 137 0 219 27 137 0 220 27 137 0 221 27 137 0 222 27 137 0 225 27 137 0 226 27 137 0 228 27 137 0 229 27 137 0 230 27 137 0 235 27 137 0 237 27 137 0 238 27 137 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 141 0 192 27 141 0 195 27 141 0 196 27 141 0 197 27 141 0 205 27 141 0 219 27 141 0 220 27 141 0 221 27 141 0 222 27 141 0 225 27 141 0 226 27 141 0 228 27 141 0 229 27 141 0 230 27 141 0 235 27 141 0 237 27 141 0 238 27 141 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 27 145 0 3 6 65 0 115] 
#[0 13 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 149 0 192 27 149 0 195 27 149 0 196 27 149 0 197 27 149 0 205 27 149 0 219 27 149 0 220 27 149 0 221 27 149 0 222 27 149 0 225 27 149 0 226 27 149 0 228 27 149 0 229 27 149 0 230 27 149 0 235 27 149 0 237 27 149 0 238 27 149 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 13 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 153 0 192 27 153 0 195 27 153 0 196 27 153 0 197 27 153 0 205 27 153 0 219 27 153 0 220 27 153 0 221 27 153 0 222 27 153 0 225 27 153 0 226 27 153 0 228 27 153 0 229 27 153 0 230 27 153 0 235 27 153 0 237 27 153 0 238 27 153 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 13 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 13 46 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 46 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 13 46 0 65 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 27 157 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 0 6 1 203] 
#[1 0 6 0 2 0 6 0 4 13 50 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 50 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 189 0 199 0 57 0 200 6 189 0 201 0 65 0 202 0 6 1 203] 
#[0 13 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 27 161 0 5 22 209 0 56 25 29 0 233] 
#[0 13 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 165 0 3] 
#[0 13 62 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 27 169 0 8] 
#[0 27 173 0 8] 
#[0 13 66 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 70 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[1 7 233 0 2 27 177 0 8 3 57 0 11 13 61 0 116 8 21 1 81 27 181 1 115 27 185 1 116] 
#[0 13 74 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 27 189 0 8] 
#[0 27 193 0 8] 
#[0 13 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 13 82 0 1 1 7 0 2 13 82 0 4 13 82 0 5 1 7 0 6 1 7 0 8 12 250 0 9 12 250 0 10 12 250 0 11 12 250 0 12 12 250 0 13 12 250 0 14 12 250 0 15 12 250 0 16 12 250 0 17 12 250 0 18 12 250 0 20 12 250 0 21 12 250 0 22 12 250 0 23 12 250 0 24 12 250 0 25 12 250 0 26 12 250 0 27 12 250 0 28 12 250 0 29 12 250 0 30 12 250 0 31 12 250 0 32 12 250 0 33 12 250 0 34 1 7 0 35 1 7 0 36 1 7 0 37 1 7 0 38 13 82 0 39 12 250 0 40 12 250 0 41 12 250 0 42 12 250 0 43 12 250 0 44 12 250 0 45 12 250 0 46 12 250 0 47 12 250 0 48 13 82 0 49 12 250 0 50 12 250 0 51 12 250 0 52 13 82 0 53 13 82 0 54 13 82 0 55 13 82 0 58 13 82 0 59 13 82 0 60 13 82 0 62 13 82 0 63 13 82 0 64 13 82 0 66 13 82 0 67 13 82 0 69 13 82 0 70 13 82 0 72 13 82 0 74 13 82 0 76 13 82 0 78 13 82 0 79 12 250 0 80 12 250 0 83 13 82 0 84 13 82 0 86 13 82 0 88 13 82 0 89 13 82 0 90 13 82 0 96 13 82 0 100 13 82 0 101 13 82 0 103 13 82 0 104 13 82 0 105 13 82 0 106 13 82 0 107 13 82 0 108 13 82 0 109 13 82 0 110 13 82 0 111 13 82 0 112 13 82 0 113 12 250 0 115 13 82 0 118 13 82 0 121 13 82 0 122 13 82 0 123 1 7 0 125 1 7 0 126 13 82 0 129 12 250 1 202 1 7 1 203 13 82 1 204] 
#[0 27 197 0 5] 
#[1 13 86 0 1 1 11 0 2 13 86 0 4 13 86 0 5 1 11 0 6 1 11 0 8 12 254 0 9 12 254 0 10 12 254 0 11 12 254 0 12 12 254 0 13 12 254 0 14 12 254 0 15 12 254 0 16 12 254 0 17 12 254 0 18 12 254 0 20 12 254 0 21 12 254 0 22 12 254 0 23 12 254 0 24 12 254 0 25 12 254 0 26 12 254 0 27 12 254 0 28 12 254 0 29 12 254 0 30 12 254 0 31 12 254 0 32 12 254 0 33 12 254 0 34 1 11 0 35 1 11 0 36 1 11 0 37 1 11 0 38 13 86 0 39 12 254 0 40 12 254 0 41 12 254 0 42 12 254 0 43 12 254 0 44 12 254 0 45 12 254 0 46 12 254 0 47 12 254 0 48 13 86 0 49 12 254 0 50 12 254 0 51 12 254 0 52 13 86 0 53 13 86 0 54 13 86 0 55 13 86 0 58 13 86 0 59 13 86 0 60 13 86 0 62 13 86 0 63 13 86 0 64 13 86 0 66 13 86 0 67 13 86 0 69 13 86 0 70 13 86 0 72 13 86 0 74 13 86 0 76 13 86 0 78 13 86 0 79 12 254 0 80 12 254 0 83 13 86 0 84 13 86 0 86 13 86 0 88 13 86 0 89 13 86 0 90 13 86 0 96 13 86 0 100 13 86 0 101 13 86 0 103 13 86 0 104 13 86 0 105 13 86 0 106 13 86 0 107 13 86 0 108 13 86 0 109 13 86 0 110 13 86 0 111 13 86 0 112 13 86 0 113 12 254 0 115 13 86 0 118 13 86 0 121 13 86 0 122 13 86 0 123 1 11 0 125 1 11 0 126 13 86 0 129 12 254 1 202 1 11 1 203 13 86 1 204] 
#[0 13 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 9 5 0 6 9 213 0 26 9 217 0 53 9 221 0 77 9 225 0 97 7 249 0 119 8 13 0 121 8 17 0 122 27 201 0 135 27 201 0 147 27 201 0 148 27 201 0 149 14 165 1 4 14 165 1 6 14 165 1 11 14 165 1 15 8 13 1 50 8 17 1 51 14 165 1 126 14 165 1 127 10 149 1 203] 
#[1 27 205 0 2 25 57 0 8 3 57 0 11 13 61 0 116 8 21 1 81 25 61 1 115 25 65 1 116] 
#[1 23 93 0 4 9 94 0 8 13 61 0 116 21 25 1 115] 
#[0 13 94 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 209 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 189 0 250 15 129 0 251 27 213 1 14 0 6 1 203] 
#[0 27 217 0 5] 
#[0 13 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 221 0 5] 
#[0 13 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 225 0 5] 
#[0 13 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 229 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 189 0 250 15 129 0 251 27 233 1 14 0 6 1 203] 
#[0 27 237 0 5] 
#[0 13 106 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 27 241 0 5] 
#[0 13 110 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 245 0 250 15 129 0 251 0 6 1 203] 
#[0 27 249 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 253 0 250 15 129 0 251 0 6 1 203] 
#[0 28 1 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 5 0 250 15 129 0 251 0 6 1 203] 
#[0 13 114 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 118 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 9 0 5] 
#[0 13 122 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 28 13 0 4 28 17 0 8] 
#[0 13 126 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 130 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 21 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 25 0 250 15 129 0 251 0 6 1 203] 
#[0 13 134 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 138 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 29 0 5] 
#[0 13 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 13 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 130 1 202 1 203 1 204] 
#[0 13 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 28 33 0 5] 
#[0 13 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 28 37 0 192 28 37 0 195 28 37 0 196 28 37 0 197 28 37 0 205 28 37 0 219 28 37 0 220 28 37 0 221 28 37 0 222 28 37 0 225 28 37 0 226 28 37 0 228 28 37 0 229 28 37 0 230 28 37 0 235 28 37 0 237 28 37 0 238 28 37 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 13 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 13 170 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 170 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 13 170 0 65 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 189 0 199 0 57 0 200 6 189 0 201 0 65 0 202 0 6 1 203] 
#[0 13 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 41 0 8] 
#[0 13 178 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 182 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 186 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 28 45 0 8] 
#[0 28 49 0 8] 
#[0 13 190 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 194 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[1 13 198 0 1 1 15 0 2 13 198 0 4 13 198 0 5 1 15 0 6 1 15 0 8 13 142 0 9 13 142 0 10 13 142 0 11 13 142 0 12 13 142 0 13 13 142 0 14 13 142 0 15 13 142 0 16 13 142 0 17 13 142 0 18 13 142 0 20 13 142 0 21 13 142 0 22 13 142 0 23 13 142 0 24 13 142 0 25 13 142 0 26 13 142 0 27 13 142 0 28 13 142 0 29 13 142 0 30 13 142 0 31 13 142 0 32 13 142 0 33 13 142 0 34 1 15 0 35 1 15 0 36 1 15 0 37 1 15 0 38 13 198 0 39 13 142 0 40 13 142 0 41 13 142 0 42 13 142 0 43 13 142 0 44 13 142 0 45 13 142 0 46 13 142 0 47 13 142 0 48 13 198 0 49 13 142 0 50 13 142 0 51 13 142 0 52 13 198 0 53 13 198 0 54 13 198 0 55 13 198 0 58 13 198 0 59 13 198 0 60 13 198 0 62 13 198 0 63 13 198 0 64 13 198 0 66 13 198 0 67 13 198 0 69 13 198 0 70 13 198 0 72 13 198 0 74 13 198 0 76 13 198 0 78 13 198 0 79 13 142 0 80 13 142 0 83 13 198 0 84 13 198 0 86 13 198 0 88 13 198 0 89 13 198 0 90 13 198 0 96 13 198 0 100 13 198 0 101 13 198 0 103 13 198 0 104 13 198 0 105 13 198 0 106 13 198 0 107 13 198 0 108 13 198 0 109 13 198 0 110 13 198 0 111 13 198 0 112 13 198 0 113 13 142 0 115 13 198 0 118 13 198 0 121 13 198 0 122 13 198 0 123 1 15 0 125 1 15 0 126 13 198 0 129 13 142 1 202 1 15 1 203 13 198 1 204] 
#[1 27 205 0 2 26 177 0 8 3 57 0 11 13 61 0 116 8 21 1 81 26 181 1 115 26 185 1 116] 
#[1 0 90 0 3 4 41 0 4 4 45 0 6 4 93 0 114 0 185 0 118 9 13 0 134 4 105 0 208 4 105 0 209 4 105 0 210 4 137 0 216 4 137 0 217 4 133 0 218 18 201 0 245 28 53 0 246 4 129 0 247 4 133 0 248 4 137 0 249 7 229 1 203] 
#[0 13 202 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 57 0 5] 
#[0 13 206 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 13 214 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 61 0 5] 
#[0 13 218 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 13 222 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 65 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 69 0 250 15 129 0 251 0 6 1 203] 
#[0 28 73 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 77 0 250 15 129 0 251 0 6 1 203] 
#[0 28 81 0 5] 
#[0 13 226 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 121 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 85 0 250 15 129 0 251 0 6 1 203] 
#[0 13 230 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 89 0 5] 
#[0 13 238 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 242 0 4 0 9 0 14 0 130] 
#[0 13 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 250 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 254 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 14 2 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 1 19 0 3] 
#[0 14 6 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 14 10 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 14 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 93 0 5] 
#[0 14 18 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 97 0 5] 
#[0 14 22 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 101 0 5] 
#[0 14 26 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 14 30 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 34 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 38 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203]
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
JSParser >> reduceActionForClassHeritage4: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 2) at: 1).
	result at: 2 put: ((nodes at: 2) at: 2).
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
JSParser >> reduceActionForDecoratorExpression__decorator__1: nodes [
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
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultDeclarationElement1: nodes [
	| result |
	result := JSExportDefaultDeclarationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result defaultToken: (nodes at: 3).
	result declaration: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultImplementationElement1: nodes [
	| result |
	result := JSExportDefaultImplementationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result defaultToken: (nodes at: 3).
	result declaration: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result declaration: (nodes at: 3).
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
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTupleType2: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result addToken: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTupleType3: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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
		ifTrue:
			[ token := nodeStack last.
			((token isKindOf: SmaCCToken) and: [ token ids includes: scanner eqGtId ]) ifTrue: [ self killState ] ].
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
