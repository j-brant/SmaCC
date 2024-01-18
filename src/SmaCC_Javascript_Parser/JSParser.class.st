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
#[ 0 6 0 93] 
#[ 0 22 0 213] 
#[ 0 14 1 217] 
#[ 0 14 3 149] 
#[ 0 162 4 181] 
#[ 0 186 4 181] 
#[ 0 38 0 137] 
#[ 0 38 6 97] 
#[ 1 242 7 133] 
#[ 1 246 7 137] 
#[ 1 114 1 254] 
#[ 1 114 2 22] 
#[ 0 130 2 162] 
#[ 0 130 8 101] 
#[ 0 38 8 173] 
#[ 0 38 8 177] 
#[ 0 38 8 181] 
#[ 0 38 8 185] 
#[ 0 38 0 189] 
#[ 0 182 2 250] 
#[ 3 22 4 181] 
#[ 3 34 4 181] 
#[ 3 38 4 181] 
#[ 0 14 10 161] 
#[ 1 226 2 162] 
#[ 1 114 4 82] 
#[ 1 114 4 86] 
#[ 2 198 4 166] 
#[ 0 14 13 157] 
#[ 0 38 6 249] 
#[ 0 38 7 5] 
#[ 0 38 0 197] 
#[ 0 38 0 201] 
#[ 3 18 5 86] 
#[ 0 22 6 46] 
#[ 1 226 4 74] 
#[ 0 202 15 69] 
#[ 4 2 4 154] 
#[ 4 62 4 166] 
#[ 2 202 12 61] 
#[ 6 186 7 137] 
#[ 1 114 6 190] 
#[ 0 130 6 218] 
#[ 4 237 6 222] 
#[ 0 186 4 181 6 222] 
#[ 0 130 4 190] 
#[ 4 246 7 22] 
#[ 0 38 20 37] 
#[ 8 162 8 166] 
#[ 8 170 8 174] 
#[ 8 190 8 194] 
#[ 0 34 0 189] 
#[ 0 42 0 189] 
#[ 0 130 23 113] 
#[ 11 86 12 74] 
#[ 12 126 13 34] 
#[ 11 114 14 9] 
#[ 12 142 13 42] 
#[ 13 94 13 182] 
#[ 13 98 13 186] 
#[ 13 250 14 62]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2024-01-17T14:47:39.198503-06:00'
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
:	<for> 'forToken' <leftParen> 'left' Expression 'initialExpression'?<semicolon> 'semicolon' Expression 'condition'?<semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' VariableDeclarationList <semicolon> 'semicolon' Expression 'condition'? <semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' LexicalDeclaration 'declaration' Expression 'condition'? <semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
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
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' (<ts> TypeAnnotation)? <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}   ##
;
AsyncFunctionExpression
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' (<ts> TypeAnnotation)? <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}    ##
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
:	MethodDefinition
|	<static> 'staticToken' MethodDefinition {{MethodDefinition}}
|	FieldDefinition <semicolon> 'semicolon' {{FieldDefinition}}
|	<static> 'staticToken' FieldDefinition <semicolon> 'semicolon' {{FieldDefinition}}
|	ClassStaticBlock
|	<semicolon> 'semicolon' {{EmptyStatement}}
;
FieldDefinition
:	ClassElementName 'variable' Initializer?
;
ClassElementName
:	<identifier> 'name' {{NameExpression}}
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
:	<readonly> 'readonlyToken'? PropertyName 'name' <question> 'questionMarkToken'? TypeAnnotation? {{}}
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
:	PropertyName 'name' <question> 'questionMarkToken'? CallSignature 'signature' {{}}
;
TypeAliasDeclaration
:	<type> 'typeToken' Identifier 'name' TypeParameters 'typeParameters'? <eq> 'equalToken' Type 'type' <semicolon> 'semicolon' {{}}
;
# A.2
MethodDefinition 	# PropertyDefinition
:	<ts> PropertyName 'name' TypeCallSignature <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{MethodDefinition}}
|	<ts> PropertyName 'name' <question> 'questionMarkToken' TypeCallSignature <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{MethodDefinition}}
|	<ts> PropertyName 'name' <question> 'questionMarkToken' TypeCallSignature <semicolon> 'semicolon' {{MethodDefinition}}
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
ClassElement
:	<ts> ConstructorDeclaration {'2'}
|	<ts> PropertyMemberDeclaration {'2'}
|	<ts> IndexMemberDeclaration {'2'}
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
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' <question> 'questionMarkToken'? TypeAnnotation? Initializer? <semicolon> 'semicolon' {{}}
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
:	AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'left' FormalParameters <rightParen> 'right' <semicolon> 'semicolon' {{ConstructorDeclaration}}   ## changed ParameterList
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
	#(209 0 #reduceActionForStartStatementListItem1: 24181761 true) 
	#(304 0 #reduceActionForModule1: 38343681 false) 
	#(152 0 #reduceActionForValidationNotArrowFunction1: 11696129 true) 
	#(161 0 #reduceActionForStartTemplateLiteral1: 12911617 true) 
	#(352 0 #reduceActionForSwitchToJSX1: 44195841 true) 
	#(302 0 #reduceActionForScript1: 38285313 false) 
	#(440 0 #reduceActionForSourceFileElement__element__1: 59935745 false) 
	#(211 1 #liftFirstValue: 24353794 false) 
	#(290 0 #reduceActionForSourceFileElement__element__1: 37013505 false) 
	#(211 1 #liftFirstValue: 24353793 false) 
	#(307 1 #liftFirstValue: 38476803 false) 
	#(208 1 #liftFirstValue: 24084482 false) 
	#(141 1 #liftFirstValue: 9032705 false) 
	#(304 1 #reduceActionForModule2: 38343682 false) 
	#(305 1 #reduceActionForModuleBody1: 38372353 false) 
	#(306 1 #reduceActionForModuleItemList1: 38403073 false) 
	#(307 1 #liftFirstValue: 38476801 false) 
	#(307 1 #liftFirstValue: 38476802 false) 
	#(257 0 #reduceActionForFormalParameters1: 32083969 false) 
	#(326 1 #liftFirstValue: 41448450 false) 
	#(325 1 #liftFirstValue: 41424897 false) 
	#(144 1 #reduceActionForPrimaryExpression1: 9440257 false) 
	#(326 1 #liftFirstValue: 41448449 false) 
	#(279 1 #reduceActionForYieldExpression1: 35111937 false) 
	#(142 1 #reduceActionForIdentifier1: 9145345 false) 
	#(324 1 #reduceActionForIdentifier1: 41355265 false) 
	#(327 1 #liftFirstValue: 41485313 false) 
	#(328 1 #liftFirstValue: 41521153 false) 
	#(329 1 #reduceActionForRegularExpressionLiteral1: 41559041 false) 
	#(160 1 #reduceActionForTemplateLiteral1: 12755969 false) 
	#(353 0 #reduceActionForSwitchToJSXText1: 44236801 true) 
	#(144 1 #liftFirstValue: 9440258 false) 
	#(267 1 #reduceActionForArrowParameterDeclaration1: 33153025 false) 
	#(164 1 #liftFirstValue: 13181953 false) 
	#(144 1 #liftFirstValue: 9440269 false) 
	#(144 1 #liftFirstValue: 9440259 false) 
	#(144 1 #liftFirstValue: 9440260 false) 
	#(144 1 #liftFirstValue: 9440261 false) 
	#(144 1 #liftFirstValue: 9440268 false) 
	#(169 1 #liftFirstValue: 14292993 false) 
	#(164 1 #liftFirstValue: 13181957 false) 
	#(164 1 #liftFirstValue: 13181958 false) 
	#(166 1 #liftFirstValue: 14061569 false) 
	#(166 1 #liftFirstValue: 14061570 false) 
	#(179 1 #liftFirstValue: 16618497 false) 
	#(179 1 #liftFirstValue: 16618498 false) 
	#(170 1 #liftFirstValue: 14383106 false) 
	#(170 1 #liftFirstValue: 14383107 false) 
	#(179 1 #liftFirstValue: 16618499 false) 
	#(180 1 #liftFirstValue: 16700417 false) 
	#(181 1 #liftFirstValue: 17069057 false) 
	#(182 1 #liftFirstValue: 17521665 false) 
	#(183 1 #liftFirstValue: 17691649 false) 
	#(185 1 #liftFirstValue: 17951745 false) 
	#(186 1 #liftFirstValue: 18249729 false) 
	#(187 1 #liftFirstValue: 18634753 false) 
	#(188 1 #liftFirstValue: 19483649 false) 
	#(189 1 #liftFirstValue: 20014081 false) 
	#(190 1 #liftFirstValue: 20177921 false) 
	#(191 1 #liftFirstValue: 20345857 false) 
	#(192 1 #liftFirstValue: 20512769 false) 
	#(195 1 #liftFirstValue: 21010434 false) 
	#(193 1 #liftFirstValue: 20682753 false) 
	#(196 1 #liftFirstValue: 21084161 false) 
	#(196 1 #liftFirstValue: 21084162 false) 
	#(195 1 #liftFirstValue: 21010433 false) 
	#(197 1 #liftFirstValue: 21157889 false) 
	#(198 1 #liftFirstValue: 21385217 false) 
	#(200 1 #liftFirstValue: 23162881 false) 
	#(144 1 #liftFirstValue: 9440262 false) 
	#(198 1 #liftFirstValue: 21385219 false) 
	#(266 1 #reduceActionForArrowParameters1: 33062913 false) 
	#(266 1 #reduceActionForArrowParameters2: 33062914 false) 
	#(198 1 #liftFirstValue: 21385220 false) 
	#(144 1 #liftFirstValue: 9440264 false) 
	#(198 1 #liftFirstValue: 21385218 false) 
	#(144 1 #liftFirstValue: 9440266 false) 
	#(144 1 #liftFirstValue: 9440265 false) 
	#(181 1 #liftFirstValue: 17069065 false) 
	#(144 1 #liftFirstValue: 9440263 false) 
	#(146 1 #reduceActionForLiteral1: 10541057 false) 
	#(146 1 #reduceActionForLiteral2: 10541058 false) 
	#(146 1 #reduceActionForLiteral4: 10541060 false) 
	#(146 1 #reduceActionForLiteral3: 10541059 false) 
	#(144 1 #liftFirstValue: 9440267 false) 
	#(144 1 #liftFirstValue: 9440270 false) 
	#(330 1 #liftFirstValue: 41810945 false) 
	#(354 0 #reduceActionForStartJSXText1: 44285953 true) 
	#(144 1 #liftFirstValue: 9440271 false) 
	#(181 1 #liftFirstValue: 17069067 false) 
	#(228 1 #reduceActionForEmptyStatement1: 26700801 false) 
	#(240 0 #reduceActionForCheckEOL1: 30318593 true) 
	#(201 1 #liftFirstValue: 23314438 false) 
	#(201 1 #liftFirstValue: 23314433 false) 
	#(205 1 #liftFirstValue: 23864321 false) 
	#(201 1 #liftFirstValue: 23314434 false) 
	#(201 1 #liftFirstValue: 23314435 false) 
	#(201 1 #liftFirstValue: 23314436 false) 
	#(201 1 #liftFirstValue: 23314437 false) 
	#(204 1 #liftFirstValue: 23801857 false) 
	#(231 1 #liftFirstValue: 27121665 false) 
	#(231 1 #liftFirstValue: 27121666 false) 
	#(231 1 #liftFirstValue: 27121667 false) 
	#(231 1 #liftFirstValue: 27121668 false) 
	#(201 1 #liftFirstValue: 23314439 false) 
	#(201 1 #liftFirstValue: 23314440 false) 
	#(201 1 #liftFirstValue: 23314441 false) 
	#(201 1 #liftFirstValue: 23314442 false) 
	#(204 1 #liftFirstValue: 23801858 false) 
	#(201 1 #liftFirstValue: 23314443 false) 
	#(201 1 #liftFirstValue: 23314444 false) 
	#(201 1 #liftFirstValue: 23314445 false) 
	#(201 1 #liftFirstValue: 23314446 false) 
	#(303 1 #reduceActionForModuleBody1: 38313985 false) 
	#(207 1 #reduceActionForModuleItemList1: 23987201 false) 
	#(302 1 #reduceActionForScript2: 38285314 false) 
	#(439 1 #reduceActionForSourceFile1: 59833345 false) 
	#(391 1 #reduceActionForThisType1: 47923201 false) 
	#(373 1 #reduceActionForPredefinedType1: 45956097 false) 
	#(375 1 #reduceActionForTypeName1: 46104577 false) 
	#(376 1 #reduceActionForNamespaceName1: 46211073 false) 
	#(371 1 #reduceActionForLiteralType1: 45793281 false) 
	#(371 1 #reduceActionForLiteralType1: 45793282 false) 
	#(365 1 #liftFirstValue: 45108225 false) 
	#(366 1 #liftFirstValue: 45185026 false) 
	#(367 1 #liftFirstValue: 45261826 false) 
	#(368 1 #liftFirstValue: 45323265 false) 
	#(369 1 #liftFirstValue: 45466634 false) 
	#(369 1 #liftFirstValue: 45466633 false) 
	#(369 1 #liftFirstValue: 45466625 false) 
	#(369 1 #liftFirstValue: 45466626 false) 
	#(369 1 #liftFirstValue: 45466627 false) 
	#(374 1 #reduceActionForTypeReference1: 46008321 false) 
	#(369 1 #liftFirstValue: 45466628 false) 
	#(369 1 #liftFirstValue: 45466629 false) 
	#(369 1 #liftFirstValue: 45466630 false) 
	#(366 1 #liftFirstValue: 45185025 false) 
	#(367 1 #liftFirstValue: 45261825 false) 
	#(365 1 #liftFirstValue: 45108226 false) 
	#(365 1 #liftFirstValue: 45108227 false) 
	#(369 1 #liftFirstValue: 45466631 false) 
	#(369 1 #liftFirstValue: 45466632 false) 
	#(320 1 #reduceActionForExportFromClause1: 40805377 false) 
	#(319 2 #reduceActionForExportDeclaration4: 40011780 false) 
	#(202 1 #liftFirstValue: 23597057 false) 
	#(202 1 #liftFirstValue: 23597059 false) 
	#(319 2 #reduceActionForExportDeclaration3: 40011779 false) 
	#(203 1 #liftFirstValue: 23675905 false) 
	#(203 1 #liftFirstValue: 23675906 false) 
	#(203 1 #liftFirstValue: 23675908 false) 
	#(203 1 #liftFirstValue: 23675907 false) 
	#(202 1 #liftFirstValue: 23597058 false) 
	#(320 1 #reduceActionForExportFromClause3: 40805379 false) 
	#(318 1 #liftFirstValue: 39976961 false) 
	#(310 1 #reduceActionForImportClause1: 38778881 false) 
	#(310 1 #reduceActionForImportClause1: 38778882 false) 
	#(310 1 #reduceActionForImportClause1: 38778883 false) 
	#(311 1 #liftFirstValue: 39140353 false) 
	#(317 1 #liftFirstValue: 39934977 false) 
	#(208 2 #liftSecondValue: 24084481 false) 
	#(213 1 #reduceActionForArrowParameterDeclaration1: 24483841 false) 
	#(212 1 #reduceActionForNamespaceName1: 24385537 false) 
	#(217 1 #liftFirstValue: 25030657 false) 
	#(217 1 #liftFirstValue: 25030658 false) 
	#(213 1 #liftFirstValue: 24483844 false) 
	#(213 1 #liftFirstValue: 24483845 false) 
	#(306 2 #reduceActionForModuleItemList2: 38403074 false) 
	#(226 1 #reduceActionForArrowParameterDeclaration1: 26432513 false) 
	#(225 1 #reduceActionForBindingElement2: 26321922 false) 
	#(260 1 #liftFirstValue: 32453633 false) 
	#(225 1 #liftFirstValue: 26321921 false) 
	#(259 1 #liftFirstValue: 32407553 false) 
	#(256 1 #reduceActionForModuleBody1: 32038913 false) 
	#(257 1 #reduceActionForFormalParameters3: 32083971 false) 
	#(257 1 #reduceActionForFormalParameters2: 32083970 false) 
	#(258 1 #reduceActionForNamespaceName1: 32285697 false) 
	#(147 2 #reduceActionForArrayLiteral1: 10723329 false) 
	#(149 1 #reduceActionForModuleItemList1: 11202561 false) 
	#(148 1 #reduceActionForNamespaceName1: 10984451 false) 
	#(148 1 #reduceActionForNamespaceName1: 10984449 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17069061 false) 
	#(180 2 #reduceActionForUpdateExpression4: 16700420 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17069062 false) 
	#(180 2 #reduceActionForUpdateExpression4: 16700421 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17069063 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17069064 false) 
	#(288 2 #reduceActionForAwaitExpression1: 36917249 false) 
	#(291 2 #reduceActionForClassExpression1: 37189633 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17069058 false) 
	#(169 2 #reduceActionForNewExpression2: 14292994 false) 
	#(171 2 #reduceActionForSuperCall1: 14982145 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17069060 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17069059 false) 
	#(279 2 #reduceActionForYieldExpression2: 35111938 false) 
	#(164 2 #reduceActionForMemberExpression4: 13181956 false) 
	#(170 2 #reduceActionForCallExpression1: 14383105 false) 
	#(175 2 #reduceActionForOptionalExpression1: 15646721 false) 
	#(170 2 #reduceActionForMemberExpression4: 14383111 false) 
	#(170 2 #reduceActionForCallExpression1: 14383108 false) 
	#(175 2 #reduceActionForOptionalExpression1: 15646722 false) 
	#(175 2 #reduceActionForOptionalExpression1: 15646723 false) 
	#(199 1 #liftFirstValue: 21590019 false) 
	#(199 1 #liftFirstValue: 21590023 false) 
	#(199 1 #liftFirstValue: 21590024 false) 
	#(199 1 #liftFirstValue: 21590025 false) 
	#(199 1 #liftFirstValue: 21590017 false) 
	#(199 1 #liftFirstValue: 21590018 false) 
	#(199 1 #liftFirstValue: 21590020 false) 
	#(199 1 #liftFirstValue: 21590026 false) 
	#(199 1 #liftFirstValue: 21590027 false) 
	#(199 1 #liftFirstValue: 21590028 false) 
	#(199 1 #liftFirstValue: 21590022 false) 
	#(199 1 #liftFirstValue: 21590021 false) 
	#(180 2 #reduceActionForUpdateExpression2: 16700418 false) 
	#(180 2 #reduceActionForUpdateExpression2: 16700419 false) 
	#(199 1 #liftFirstValue: 21590030 false) 
	#(199 1 #liftFirstValue: 21590032 false) 
	#(199 1 #liftFirstValue: 21590031 false) 
	#(199 1 #liftFirstValue: 21590029 false) 
	#(184 1 #liftFirstValue: 17894402 false) 
	#(184 1 #liftFirstValue: 17894401 false) 
	#(184 1 #liftFirstValue: 17894403 false) 
	#(349 0 #reduceActionForSourceFileElement__element__1: 43881473 false) 
	#(270 2 #reduceActionForArrowFormalParameters2: 33403906 false) 
	#(206 2 #reduceActionForBlock1: 23889921 false) 
	#(239 2 #reduceActionForBreakStatement1: 30209025 false) 
	#(238 2 #reduceActionForContinueStatement1: 30092289 false) 
	#(255 2 #reduceActionForDebuggerStatement1: 31952897 false) 
	#(241 2 #reduceActionForReturnStatement1: 30353409 false) 
	#(216 1 #reduceActionForArrowParameterDeclaration1: 24869889 false) 
	#(215 1 #reduceActionForNamespaceName1: 24733697 false) 
	#(229 2 #reduceActionForExpressionStatement1: 26750977 false) 
	#(207 2 #reduceActionForModuleItemList2: 23987202 false) 
	#(447 1 #liftFirstValue: 61020161 false) 
	#(447 1 #liftFirstValue: 61020162 false) 
	#(447 1 #liftFirstValue: 61020163 false) 
	#(447 1 #liftFirstValue: 61020164 false) 
	#(447 1 #liftFirstValue: 61020165 false) 
	#(441 1 #liftFirstValue: 59984899 false) 
	#(447 1 #liftFirstValue: 61020167 false) 
	#(447 1 #liftFirstValue: 61020166 false) 
	#(447 1 #liftFirstValue: 61020168 false) 
	#(447 1 #liftFirstValue: 61020169 false) 
	#(447 1 #liftFirstValue: 61020171 false) 
	#(440 2 #reduceActionForModuleItemList2: 59935746 false) 
	#(441 1 #liftFirstValue: 59984897 false) 
	#(441 1 #liftFirstValue: 59984900 false) 
	#(441 1 #liftFirstValue: 59984901 false) 
	#(441 1 #liftFirstValue: 59984905 false) 
	#(441 1 #liftFirstValue: 59984902 false) 
	#(441 1 #liftFirstValue: 59984906 false) 
	#(441 1 #liftFirstValue: 59984903 false) 
	#(441 1 #liftFirstValue: 59984904 false) 
	#(447 1 #liftFirstValue: 61020170 false) 
	#(441 1 #liftFirstValue: 59984898 false) 
	#(377 2 #reduceActionForObjectType1: 46315521 false) 
	#(143 1 #reduceActionForIdentifier1: 9338881 false) 
	#(156 1 #liftFirstValue: 12360705 false) 
	#(392 1 #reduceActionForPropertySignature1: 47961089 false) 
	#(155 1 #liftFirstValue: 12298241 false) 
	#(155 1 #liftFirstValue: 12298242 false) 
	#(156 1 #reduceActionForIdentifier1: 12360706 false) 
	#(156 1 #reduceActionForIdentifier1: 12360707 false) 
	#(378 1 #reduceActionForModuleBody1: 46397441 false) 
	#(379 1 #reduceActionForNamespaceName1: 46493697 false) 
	#(380 1 #liftFirstValue: 46648321 false) 
	#(380 1 #liftFirstValue: 46648322 false) 
	#(380 1 #liftFirstValue: 46648323 false) 
	#(380 1 #liftFirstValue: 46648324 false) 
	#(380 1 #liftFirstValue: 46648325 false) 
	#(382 2 #reduceActionForTupleType1: 46863361 false) 
	#(384 1 #liftFirstValue: 47090689 false) 
	#(383 1 #reduceActionForNamespaceName1: 46982145 false) 
	#(360 1 #reduceActionForTypeParameter1: 44793857 false) 
	#(359 1 #reduceActionForNamespaceName1: 44681217 false) 
	#(368 2 #reduceActionForPrefixType3: 45323267 false) 
	#(368 2 #reduceActionForPrefixType2: 45323266 false) 
	#(390 1 #reduceActionForTypeQueryExpression1: 47799297 false) 
	#(389 2 #reduceActionForTypeQuery1: 47725569 false) 
	#(321 2 #reduceActionForNamedExports1: 40912897 false) 
	#(308 1 #liftFirstValue: 38551553 false) 
	#(323 1 #reduceActionForExportSpecifier1: 41233409 false) 
	#(322 1 #reduceActionForNamespaceName1: 41128961 false) 
	#(308 1 #liftFirstValue: 38551554 false) 
	#(290 2 #reduceActionForModuleItemList2: 37013506 false) 
	#(319 3 #reduceActionForExportDeclaration2: 40011778 false) 
	#(202 2 #liftSecondValue: 23597061 false) 
	#(202 2 #liftSecondValue: 23597060 false) 
	#(202 2 #liftSecondValue: 23597062 false) 
	#(313 2 #reduceActionForNamedImports1: 39265281 false) 
	#(315 1 #reduceActionForNamespaceName1: 39547905 false) 
	#(316 1 #reduceActionForImportSpecifier1: 39652353 false) 
	#(309 3 #reduceActionForImportDeclaration2: 38606850 false) 
	#(218 2 #reduceActionForObjectBindingPattern1: 25094145 false) 
	#(221 1 #reduceActionForNamespaceName1: 25919489 false) 
	#(224 1 #liftFirstValue: 26208257 false) 
	#(219 2 #reduceActionForArrayBindingPattern1: 25482241 false) 
	#(222 1 #reduceActionForBindingElementList1: 26038273 false) 
	#(223 1 #reduceActionForBindingElisionElement1: 26146817 false) 
	#(213 2 #reduceActionForLexicalBinding2: 24483842 false) 
	#(210 3 #reduceActionForLexicalDeclaration1: 24264705 false) 
	#(213 2 #reduceActionForLexicalBinding3: 24483843 false) 
	#(227 2 #reduceActionForBindingRestElement1: 26518529 false) 
	#(227 2 #reduceActionForBindingRestElement1: 26518530 false) 
	#(226 2 #reduceActionForLexicalBinding2: 26432514 false) 
	#(145 3 #reduceActionForParenthesizedExpression1: 9805825 false) 
	#(225 2 #reduceActionForLexicalBinding3: 26321923 false) 
	#(270 3 #reduceActionForArrowFormalParameters1: 33403905 false) 
	#(257 2 #reduceActionForFormalParameters4: 32083972 false) 
	#(396 1 #liftFirstValue: 50279428 false) 
	#(396 1 #liftFirstValue: 50279426 false) 
	#(396 1 #liftFirstValue: 50279427 false) 
	#(396 1 #liftFirstValue: 50279425 false) 
	#(395 0 #nil 48935940 false) 
	#(150 2 #reduceActionForSpreadElement1: 11257857 false) 
	#(147 3 #reduceActionForArrayLiteral3: 10723331 false) 
	#(147 3 #reduceActionForArrayLiteral2: 10723330 false) 
	#(149 2 #reduceActionForModuleItemList2: 11202562 false) 
	#(148 2 #reduceActionForElementList4: 10984452 false) 
	#(148 2 #reduceActionForElementList4: 10984450 false) 
	#(292 2 #reduceActionForClassTail1: 37269505 false) 
	#(296 1 #reduceActionForEmptyStatement1: 37562374 false) 
	#(298 1 #reduceActionForIdentifier1: 37940225 false) 
	#(298 1 #reduceActionForIdentifier1: 37940226 false) 
	#(296 1 #liftFirstValue: 37562369 false) 
	#(273 1 #liftFirstValue: 33719298 false) 
	#(273 1 #liftFirstValue: 33719300 false) 
	#(273 1 #liftFirstValue: 33719299 false) 
	#(294 1 #reduceActionForModuleBody1: 37442561 false) 
	#(295 1 #reduceActionForModuleItemList1: 37474305 false) 
	#(297 1 #reduceActionForFieldDefinition1: 37877761 false) 
	#(296 1 #liftFirstValue: 37562373 false) 
	#(273 1 #liftFirstValue: 33719306 false) 
	#(273 1 #liftFirstValue: 33719307 false) 
	#(293 2 #reduceActionForClassHeritage1: 37361665 false) 
	#(291 3 #reduceActionForClassExpression2: 37189634 false) 
	#(293 2 #reduceActionForClassHeritage4: 37361668 false) 
	#(293 2 #reduceActionForClassHeritage2: 37361666 false) 
	#(168 3 #reduceActionForImportMeta1: 14205953 false) 
	#(167 3 #reduceActionForNewTarget1: 14102529 false) 
	#(164 3 #reduceActionForMemberExpression7: 13181959 false) 
	#(173 2 #reduceActionForArguments1: 15193089 false) 
	#(174 1 #reduceActionForArgumentList1: 15378433 false) 
	#(165 3 #reduceActionForSuperProperty2: 13796354 false) 
	#(279 3 #reduceActionForYieldExpression3: 35111939 false) 
	#(151 3 #reduceActionForObjectLiteral1: 11356161 false) 
	#(154 1 #liftFirstValue: 12049409 false) 
	#(153 1 #reduceActionForNamespaceName1: 11914241 false) 
	#(154 1 #liftFirstValue: 12049410 false) 
	#(154 1 #liftFirstValue: 12049412 false) 
	#(164 3 #reduceActionForMemberExpression3: 13181955 false) 
	#(164 3 #reduceActionForMemberExpression3: 13181960 false) 
	#(178 1 #reduceActionForOptionalFirst3: 16306179 false) 
	#(178 1 #reduceActionForOptionalFirst3: 16306181 false) 
	#(178 1 #reduceActionForOptionalFirst4: 16306180 false) 
	#(178 1 #reduceActionForOptionalFirst1: 16306177 false) 
	#(176 2 #reduceActionForOptionalChain1: 15824897 false) 
	#(177 1 #reduceActionForOptionalFirst4: 15947780 false) 
	#(177 1 #reduceActionForOptionalFirst1: 15947777 false) 
	#(176 2 #reduceActionForOptionalChain2: 15824898 false) 
	#(170 3 #reduceActionForMemberExpression3: 14383110 false) 
	#(170 3 #reduceActionForMemberExpression3: 14383112 false) 
	#(198 3 #reduceActionForAssignmentExpression5: 21385221 false) 
	#(144 3 #reduceActionForPrimaryExpression16: 9440272 false) 
	#(182 3 #reduceActionForExponentiationExpression2: 17521666 false) 
	#(183 3 #reduceActionForExponentiationExpression2: 17691650 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 17951746 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 17951747 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18249730 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18249731 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18249732 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18634754 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18634755 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18634756 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18634757 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18634759 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18634758 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19483650 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19483652 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19483651 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19483653 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 20014082 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 20177922 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 20345858 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 20512770 false) 
	#(193 3 #reduceActionForExponentiationExpression2: 20682754 false) 
	#(194 3 #reduceActionForExponentiationExpression2: 20852737 false) 
	#(200 3 #reduceActionForExpression2: 23162882 false) 
	#(264 0 #reduceActionForSourceFileElement__element__1: 32953345 false) 
	#(269 1 #liftFirstValue: 33362945 false) 
	#(265 3 #reduceActionForArrowFunction1: 32995329 false) 
	#(268 1 #reduceActionForImportClause1: 33248257 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18634760 false) 
	#(357 0 #reduceActionForSwitchToDefault1: 44447745 true) 
	#(348 1 #reduceActionForModuleBody1: 43867137 false) 
	#(335 1 #reduceActionForJSXElementName1: 42723329 false) 
	#(335 1 #liftFirstValue: 42723330 false) 
	#(335 1 #liftFirstValue: 42723331 false) 
	#(339 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 43049985 false) 
	#(206 3 #reduceActionForBlock2: 23889922 false) 
	#(250 3 #reduceActionForThrowStatement1: 31372289 false) 
	#(251 3 #reduceActionForTryStatement1: 31468545 false) 
	#(251 3 #reduceActionForTryStatement2: 31468546 false) 
	#(216 2 #reduceActionForLexicalBinding2: 24869890 false) 
	#(214 3 #reduceActionForVariableStatement1: 24638465 false) 
	#(216 2 #reduceActionForLexicalBinding3: 24869891 false) 
	#(216 2 #liftSecondValue: 24869892 false) 
	#(216 2 #liftSecondValue: 24869893 false) 
	#(249 1 #liftFirstValue: 31278081 false) 
	#(248 3 #reduceActionForLabelledStatement1: 31178753 false) 
	#(476 1 #liftFirstValue: 68060161 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 65953793 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 65953794 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 65953795 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 65953796 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 65953797 false) 
	#(432 1 #reduceActionForNamespaceName1: 58321921 false) 
	#(372 3 #reduceActionForParenthesizedExpression1: 45868033 false) 
	#(392 2 #reduceActionForPropertySignature5: 47961093 false) 
	#(392 2 #reduceActionForPropertySignature3: 47961091 false) 
	#(392 2 #reduceActionForPropertySignature2: 47961090 false) 
	#(400 2 #reduceActionForMethodSignature1: 51527681 false) 
	#(377 3 #reduceActionForObjectType2: 46315522 false) 
	#(378 2 #reduceActionForOptionalChain2: 46397442 false) 
	#(378 2 #reduceActionForOptionalChain2: 46397444 false) 
	#(382 3 #reduceActionForTupleType2: 46863362 false) 
	#(382 3 #reduceActionForTupleType3: 46863363 false) 
	#(360 2 #reduceActionForTypeParameter2: 44793858 false) 
	#(358 3 #reduceActionForTypeParameters1: 44602369 false) 
	#(385 3 #reduceActionForUnionType1: 47117313 false) 
	#(386 3 #reduceActionForIntersectionType1: 47238145 false) 
	#(374 3 #reduceActionForTypeReference2: 46008322 false) 
	#(375 3 #reduceActionForTypeName2: 46104578 false) 
	#(376 3 #reduceActionForNamespaceName2: 46211074 false) 
	#(321 3 #reduceActionForNamedExports2: 40912898 false) 
	#(320 3 #reduceActionForExportFromClause2: 40805378 false) 
	#(319 4 #reduceActionForExportDeclaration5: 40011781 false) 
	#(482 2 #reduceActionForDecoratorExpression2: 69531650 false) 
	#(482 2 #reduceActionForDecoratorExpression2: 69531649 false) 
	#(289 3 #reduceActionForClassDeclaration1: 36994049 false) 
	#(314 2 #reduceActionForFromClause1: 39496705 false) 
	#(319 4 #reduceActionForExportDeclaration1: 40011777 false) 
	#(313 3 #reduceActionForNamedImports2: 39265282 false) 
	#(312 3 #reduceActionForNameSpaceImport1: 39184385 false) 
	#(309 4 #reduceActionForImportDeclaration1: 38606849 false) 
	#(310 3 #reduceActionForImportClause4: 38778884 false) 
	#(310 3 #reduceActionForImportClause4: 38778885 false) 
	#(310 3 #reduceActionForImportClause6: 38778886 false) 
	#(310 3 #reduceActionForImportClause6: 38778887 false) 
	#(220 2 #reduceActionForBindingRestProperty1: 25847809 false) 
	#(218 3 #reduceActionForObjectBindingPattern2: 25094146 false) 
	#(218 3 #reduceActionForObjectBindingPattern3: 25094147 false) 
	#(219 3 #reduceActionForArrayBindingPattern3: 25482243 false) 
	#(223 2 #reduceActionForBindingElisionElement2: 26146818 false) 
	#(219 3 #reduceActionForArrayBindingPattern5: 25482245 false) 
	#(219 3 #reduceActionForArrayBindingPattern2: 25482242 false) 
	#(159 2 #reduceActionForFromClause1: 12691457 false) 
	#(212 3 #reduceActionForNamespaceName2: 24385538 false) 
	#(409 3 #reduceActionForSimpleLexicalBinding1: 54627329 false) 
	#(410 3 #reduceActionForDestructuringLexicalBinding1: 54736897 false) 
	#(227 3 #reduceActionForBindingRestElement3: 26518531 false) 
	#(257 3 #reduceActionForFormalParameters5: 32083973 false) 
	#(258 3 #reduceActionForNamespaceName2: 32285698 false) 
	#(226 3 #reduceActionForSingleNameBinding9: 26432521 false) 
	#(226 3 #reduceActionForSimpleLexicalBinding1: 26432515 false) 
	#(395 1 #reduceActionForIdentifier1: 48935938 false) 
	#(395 1 #liftFirstValue: 48935937 false) 
	#(395 1 #liftFirstValue: 48935939 false) 
	#(226 3 #reduceActionForSingleNameBinding7: 26432519 false) 
	#(147 4 #reduceActionForArrayLiteral4: 10723332 false) 
	#(148 3 #reduceActionForElementList6: 10984454 false) 
	#(148 3 #reduceActionForElementList6: 10984453 false) 
	#(272 1 #reduceActionForImportClause1: 33598465 false) 
	#(271 4 #reduceActionForAsyncArrowFunction1: 33496065 false) 
	#(301 0 #reduceActionForSourceFileElement__element__1: 38230017 false) 
	#(296 2 #reduceActionForClassElement2: 37562370 false) 
	#(292 3 #reduceActionForClassTail2: 37269506 false) 
	#(295 2 #reduceActionForModuleItemList2: 37474306 false) 
	#(296 2 #reduceActionForClassElement3: 37562371 false) 
	#(297 2 #reduceActionForFieldDefinition2: 37877762 false) 
	#(296 2 #liftSecondValue: 37562375 false) 
	#(296 2 #liftSecondValue: 37562376 false) 
	#(420 1 #liftFirstValue: 56615937 false) 
	#(420 1 #liftFirstValue: 56615938 false) 
	#(420 1 #liftFirstValue: 56615939 false) 
	#(296 2 #liftSecondValue: 37562377 false) 
	#(292 3 #reduceActionForClassTail3: 37269507 false) 
	#(416 1 #liftFirstValue: 55748609 false) 
	#(415 2 #reduceActionForFromClause1: 55689217 false) 
	#(414 1 #liftFirstValue: 55541761 false) 
	#(417 2 #reduceActionForImplementsClause1: 55790593 false) 
	#(413 1 #reduceActionForNamespaceName1: 55410689 false) 
	#(293 3 #reduceActionForClassHeritage3: 37361667 false) 
	#(172 4 #reduceActionForImportCall1: 15052801 false) 
	#(174 2 #reduceActionForArgumentList2: 15378434 false) 
	#(173 3 #reduceActionForArguments2: 15193090 false) 
	#(165 4 #reduceActionForSuperProperty1: 13796353 false) 
	#(363 1 #reduceActionForNamespaceName1: 44979201 false) 
	#(364 1 #liftFirstValue: 45085697 false) 
	#(154 2 #reduceActionForPropertyDefinition5: 12049413 false) 
	#(158 2 #reduceActionForCoverInitializedName1: 12608513 false) 
	#(151 4 #reduceActionForObjectLiteral2: 11356162 false) 
	#(162 1 #reduceActionForNamespaceName1: 12949505 false) 
	#(160 4 #reduceActionForTemplateLiteral2: 12755970 false) 
	#(164 4 #reduceActionForMemberExpression2: 13181954 false) 
	#(177 2 #reduceActionForOptionalRest3: 15947779 false) 
	#(177 2 #reduceActionForOptionalRest3: 15947781 false) 
	#(170 4 #reduceActionForMemberExpression2: 14383109 false) 
	#(406 4 #reduceActionForAsExpression1: 53972993 false) 
	#(264 1 #reduceActionForModuleBody1: 32953346 false) 
	#(263 1 #reduceActionForModuleBody1: 32912385 false) 
	#(330 4 #reduceActionForJSXElement2: 41810946 false) 
	#(350 1 #reduceActionForJSXChild1: 43901953 false) 
	#(350 1 #liftFirstValue: 43901954 false) 
	#(349 2 #reduceActionForModuleItemList2: 43881474 false) 
	#(338 2 #reduceActionForFromClause1: 43049985 false) 
	#(355 0 #reduceActionForSwitchToJSXTextOrDefault11: 44314625 true) 
	#(345 1 #reduceActionForJSXElementName1: 43473921 false) 
	#(345 1 #liftFirstValue: 43473922 false) 
	#(342 1 #reduceActionForModuleItemList1: 43176961 false) 
	#(340 1 #reduceActionForModuleBody1: 43160577 false) 
	#(341 1 #liftFirstValue: 43176961 false) 
	#(341 1 #liftFirstValue: 43176962 false) 
	#(344 1 #reduceActionForJSXAttribute1: 43390977 false) 
	#(337 2 #reduceActionForJSXMemberExpression1: 43027457 false) 
	#(339 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 43049986 false) 
	#(332 4 #reduceActionForJSXOpeningElement3: 42144771 false) 
	#(406 4 #reduceActionForAsExpression1: 53972994 false) 
	#(402 3 #reduceActionForArrowFormalParameters1: 52258819 false) 
	#(239 4 #reduceActionForBreakStatement2: 30209026 false) 
	#(238 4 #reduceActionForContinueStatement2: 30092290 false) 
	#(237 1 #liftFirstValue: 30045185 false) 
	#(237 1 #liftFirstValue: 30045186 false) 
	#(236 2 #reduceActionForFromClause1: 29980673 false) 
	#(241 4 #reduceActionForReturnStatement2: 30353410 false) 
	#(252 2 #reduceActionForCatch2: 31639554 false) 
	#(253 2 #reduceActionForFromClause1: 31807489 false) 
	#(251 4 #reduceActionForTryStatement3: 31468547 false) 
	#(215 3 #reduceActionForNamespaceName2: 24733698 false) 
	#(407 2 #reduceActionForSimpleVariableDeclaration1: 54327297 false) 
	#(468 1 #reduceActionForArrowParameterDeclaration1: 66751489 false) 
	#(467 1 #reduceActionForNamespaceName1: 66638849 false) 
	#(478 0 #reduceActionForSourceFileElement__element__1: 68404225 false) 
	#(463 3 #reduceActionForExportListDeclaration5: 65484805 false) 
	#(411 3 #reduceActionForInterfaceDeclaration1: 55170049 false) 
	#(433 0 #reduceActionForSourceFileElement__element__1: 58427393 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793731 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793730 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793729 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793732 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793738 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64058370 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793734 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64058369 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793733 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793735 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793736 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64058372 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 62793737 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64058371 false) 
	#(394 3 #reduceActionForCallSignature1: 48211969 false) 
	#(157 3 #reduceActionForComputedPropertyName1: 12487681 false) 
	#(392 3 #reduceActionForPropertySignature7: 47961095 false) 
	#(392 3 #reduceActionForPropertySignature6: 47961094 false) 
	#(392 3 #reduceActionForPropertySignature4: 47961092 false) 
	#(400 3 #reduceActionForMethodSignature2: 51527682 false) 
	#(393 2 #reduceActionForFromClause1: 48158721 false) 
	#(379 3 #reduceActionForNamespaceName2: 46493698 false) 
	#(379 3 #reduceActionForNamespaceName2: 46493699 false) 
	#(382 4 #reduceActionForTupleType4: 46863364 false) 
	#(383 3 #reduceActionForNamespaceName2: 46982146 false) 
	#(361 2 #reduceActionForFromClause1: 44848129 false) 
	#(359 3 #reduceActionForNamespaceName2: 44681218 false) 
	#(390 3 #reduceActionForTypeQueryExpression2: 47799298 false) 
	#(381 4 #reduceActionForArrayType1: 46755841 false) 
	#(323 3 #reduceActionForExportSpecifier2: 41233410 false) 
	#(321 4 #reduceActionForNamedExports3: 40912899 false) 
	#(322 3 #reduceActionForNamespaceName2: 41128962 false) 
	#(289 4 #reduceActionForClassDeclaration3: 36994051 false) 
	#(289 4 #reduceActionForClassDeclaration5: 36994053 false) 
	#(261 4 #reduceActionForFunctionDeclaration5: 32489477 false) 
	#(316 3 #reduceActionForImportSpecifier2: 39652354 false) 
	#(313 4 #reduceActionForNamedImports3: 39265283 false) 
	#(315 3 #reduceActionForNamespaceName2: 39547906 false) 
	#(316 3 #reduceActionForImportSpecifier3: 39652355 false) 
	#(224 3 #reduceActionForBindingProperty2: 26208258 false) 
	#(218 4 #reduceActionForObjectBindingPattern4: 25094148 false) 
	#(221 3 #reduceActionForNamespaceName2: 25919490 false) 
	#(219 4 #reduceActionForArrayBindingPattern4: 25482244 false) 
	#(219 4 #reduceActionForArrayBindingPattern6: 25482246 false) 
	#(222 3 #reduceActionForBindingElementList2: 26038274 false) 
	#(409 4 #reduceActionForSimpleLexicalBinding2: 54627330 false) 
	#(410 4 #reduceActionForDestructuringLexicalBinding2: 54736898 false) 
	#(226 4 #reduceActionForSimpleLexicalBinding2: 26432516 false) 
	#(225 4 #reduceActionForBindingElement10: 26321930 false) 
	#(225 4 #reduceActionForBindingElement4: 26321924 false) 
	#(225 4 #reduceActionForBindingElement8: 26321928 false) 
	#(226 4 #reduceActionForSingleNameBinding10: 26432522 false) 
	#(226 4 #reduceActionForSingleNameBinding8: 26432520 false) 
	#(226 4 #reduceActionForSingleNameBinding5: 26432517 false) 
	#(287 1 #reduceActionForModuleBody1: 36881409 false) 
	#(301 1 #reduceActionForModuleBody1: 38230018 false) 
	#(300 1 #reduceActionForModuleBody1: 38173697 false) 
	#(296 3 #reduceActionForClassElement4: 37562372 false) 
	#(422 0 #reduceActionForInitializer_1: 56922113 false) 
	#(424 2 #reduceActionForMemberAccessorDeclaration1: 57379841 false) 
	#(424 2 #reduceActionForMemberAccessorDeclaration1: 57379845 false) 
	#(425 2 #reduceActionForIndexMemberDeclaration1: 57656321 false) 
	#(292 4 #reduceActionForClassTail4: 37269508 false) 
	#(173 4 #reduceActionForArguments3: 15193091 false) 
	#(174 3 #reduceActionForArgumentList3: 15378435 false) 
	#(362 3 #reduceActionForTypeArguments1: 44901377 false) 
	#(173 4 #reduceActionForArguments4: 15193092 false) 
	#(151 5 #reduceActionForObjectLiteral3: 11356163 false) 
	#(153 3 #reduceActionForNamespaceName2: 11914242 false) 
	#(154 3 #reduceActionForPropertyDefinition3: 12049411 false) 
	#(163 2 #reduceActionForTemplateMiddleList1: 13036545 false) 
	#(162 2 #reduceActionForTemplateSpans2: 12949506 false) 
	#(178 3 #reduceActionForOptionalFirst2: 16306178 false) 
	#(177 3 #reduceActionForOptionalFirst2: 15947778 false) 
	#(197 5 #reduceActionForConditionalExpression2: 21157890 false) 
	#(268 3 #reduceActionForConciseBody2: 33248258 false) 
	#(336 3 #reduceActionForJSXNamespacedName1: 42903553 false) 
	#(342 2 #reduceActionForModuleItemList2: 43176962 false) 
	#(344 2 #reduceActionForJSXAttribute2: 43390978 false) 
	#(332 5 #reduceActionForJSXOpeningElement1: 42144769 false) 
	#(402 4 #reduceActionForTypeCallSignature1: 52258817 false) 
	#(181 5 #reduceActionForUnaryExpression10: 17069066 false) 
	#(402 4 #reduceActionForTypeCallSignature4: 52258820 false) 
	#(230 5 #reduceActionForIfStatement2: 26830850 false) 
	#(243 5 #reduceActionForSwitchStatement1: 30601217 false) 
	#(254 1 #liftFirstValue: 31867905 false) 
	#(254 1 #liftFirstValue: 31867907 false) 
	#(407 3 #reduceActionForSimpleVariableDeclaration2: 54327298 false) 
	#(408 3 #reduceActionForDestructuringVariableDeclaration1: 54432769 false) 
	#(233 5 #reduceActionForWhileStatement1: 27408385 false) 
	#(242 5 #reduceActionForWithStatement1: 30469121 false) 
	#(468 2 #reduceActionForAmbientBinding2: 66751490 false) 
	#(466 3 #reduceActionForLexicalDeclaration1: 66342915 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583427 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583433 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583439 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583425 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583429 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583431 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583435 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68583437 false) 
	#(478 1 #reduceActionForModuleBody1: 68404226 false) 
	#(479 1 #reduceActionForModuleItemList1: 68456449 false) 
	#(466 3 #reduceActionForLexicalDeclaration1: 66342914 false) 
	#(455 0 #reduceActionForSourceFileElement__element__1: 62156801 false) 
	#(466 3 #reduceActionForLexicalDeclaration1: 66342913 false) 
	#(426 4 #reduceActionForEnumDeclaration1: 57747457 false) 
	#(429 1 #reduceActionForEnumMember1: 58033153 false) 
	#(427 1 #reduceActionForModuleBody1: 57894913 false) 
	#(428 1 #reduceActionForNamespaceName1: 57940993 false) 
	#(464 4 #reduceActionForExportAssignment1: 65821697 false) 
	#(463 4 #reduceActionForExportListDeclaration1: 65484801 false) 
	#(463 4 #reduceActionForExportListDeclaration3: 65484803 false) 
	#(438 1 #reduceActionForModuleBody1: 59721729 false) 
	#(412 2 #reduceActionForFromClause1: 55325697 false) 
	#(411 4 #reduceActionForInterfaceDeclaration3: 55170051 false) 
	#(411 4 #reduceActionForInterfaceDeclaration2: 55170050 false) 
	#(435 1 #liftFirstValue: 58563585 false) 
	#(435 1 #liftFirstValue: 58563586 false) 
	#(435 1 #liftFirstValue: 58563587 false) 
	#(435 1 #liftFirstValue: 58563588 false) 
	#(435 1 #liftFirstValue: 58563589 false) 
	#(435 1 #liftFirstValue: 58563591 false) 
	#(435 1 #liftFirstValue: 58563590 false) 
	#(435 1 #liftFirstValue: 58563592 false) 
	#(435 1 #liftFirstValue: 58563593 false) 
	#(433 1 #reduceActionForModuleBody1: 58427394 false) 
	#(434 1 #reduceActionForModuleItemList1: 58465281 false) 
	#(435 1 #liftFirstValue: 58563596 false) 
	#(435 1 #liftFirstValue: 58563595 false) 
	#(435 1 #liftFirstValue: 58563594 false) 
	#(432 3 #reduceActionForNamespaceName2: 58321922 false) 
	#(461 4 #reduceActionForExportDefaultImplementationElement1: 64487425 false) 
	#(461 4 #reduceActionForExportDefaultImplementationElement1: 64487426 false) 
	#(461 4 #reduceActionForExportDefaultImplementationElement1: 64487427 false) 
	#(462 4 #reduceActionForExportDefaultDeclarationElement1: 65048577 false) 
	#(462 4 #reduceActionForExportDefaultDeclarationElement1: 65048578 false) 
	#(387 5 #reduceActionForFunctionType1: 47344641 false) 
	#(394 4 #reduceActionForCallSignature2: 48211970 false) 
	#(398 4 #reduceActionForConstructSignature1: 51034113 false) 
	#(392 4 #reduceActionForPropertySignature8: 47961096 false) 
	#(394 4 #reduceActionForCallSignature3: 48211971 false) 
	#(370 5 #reduceActionForIndexedAccessType1: 45664257 false) 
	#(289 5 #reduceActionForClassDeclaration2: 36994050 false) 
	#(289 5 #reduceActionForClassDeclaration7: 36994055 false) 
	#(261 5 #reduceActionForFunctionDeclaration6: 32489478 false) 
	#(218 5 #reduceActionForObjectBindingPattern5: 25094149 false) 
	#(219 5 #reduceActionForArrayBindingPattern8: 25482248 false) 
	#(219 5 #reduceActionForArrayBindingPattern7: 25482247 false) 
	#(319 6 #reduceActionForExportDeclaration6: 40011782 false) 
	#(225 5 #reduceActionForBindingElement11: 26321931 false) 
	#(225 5 #reduceActionForBindingElement5: 26321925 false) 
	#(225 5 #reduceActionForBindingElement12: 26321932 false) 
	#(225 5 #reduceActionForBindingElement9: 26321929 false) 
	#(225 5 #reduceActionForBindingElement6: 26321926 false) 
	#(226 5 #reduceActionForSingleNameBinding6: 26432518 false) 
	#(272 3 #reduceActionForConciseBody2: 33598466 false) 
	#(274 1 #liftFirstValue: 34329601 false) 
	#(299 4 #reduceActionForClassStaticBlock1: 38050817 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration2: 57379842 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration2: 57379846 false) 
	#(422 1 #reduceActionForModuleBody1: 56922114 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration3: 57379843 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration3: 57379847 false) 
	#(413 3 #reduceActionForNamespaceName2: 55410690 false) 
	#(174 4 #reduceActionForArgumentList4: 15378436 false) 
	#(363 3 #reduceActionForNamespaceName2: 44979202 false) 
	#(173 5 #reduceActionForArguments5: 15193093 false) 
	#(163 3 #reduceActionForTemplateMiddleList2: 13036546 false) 
	#(356 0 #reduceActionForSwitchToJSXTextOrDefault21: 44381185 true) 
	#(351 1 #liftFirstValue: 44134402 false) 
	#(351 1 #liftFirstValue: 44134401 false) 
	#(331 6 #reduceActionForJSXSelfClosingElement1: 41961473 false) 
	#(332 6 #reduceActionForJSXOpeningElement2: 42144770 false) 
	#(347 1 #reduceActionForLiteral4: 43638785 false) 
	#(347 1 #liftFirstValue: 43638787 false) 
	#(347 1 #liftFirstValue: 43638788 false) 
	#(346 2 #reduceActionForFromClause1: 43565057 false) 
	#(262 6 #reduceActionForFunctionExpression3: 32701443 false) 
	#(402 5 #reduceActionForTypeCallSignature2: 52258818 false) 
	#(234 6 #reduceActionForForStatement1: 27556865 false) 
	#(234 6 #reduceActionForForStatement13: 27556877 false) 
	#(244 2 #reduceActionForCaseBlock1: 30727169 false) 
	#(245 1 #reduceActionForModuleItemList1: 30911489 false) 
	#(426 5 #reduceActionForEnumDeclaration3: 57747459 false) 
	#(471 0 #reduceActionForSourceFileElement__element__1: 67187713 false) 
	#(467 3 #reduceActionForNamespaceName2: 66638850 false) 
	#(469 4 #reduceActionForAmbientFunctionDeclaration1: 66834433 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583428 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583434 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583440 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583426 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583430 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583432 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583436 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68583438 false) 
	#(477 4 #reduceActionForAmbientNamespaceDeclaration2: 68104194 false) 
	#(479 2 #reduceActionForModuleItemList2: 68456450 false) 
	#(457 1 #liftFirstValue: 62338050 false) 
	#(451 1 #liftFirstValue: 61538306 false) 
	#(451 1 #liftFirstValue: 61538305 false) 
	#(451 1 #liftFirstValue: 61538307 false) 
	#(451 1 #liftFirstValue: 61538309 false) 
	#(457 1 #liftFirstValue: 62338049 false) 
	#(455 1 #reduceActionForModuleBody1: 62156802 false) 
	#(456 1 #reduceActionForModuleItemList1: 62206977 false) 
	#(457 1 #liftFirstValue: 62338051 false) 
	#(457 1 #liftFirstValue: 62338052 false) 
	#(457 1 #liftFirstValue: 62338053 false) 
	#(457 1 #liftFirstValue: 62338054 false) 
	#(451 1 #liftFirstValue: 61538308 false) 
	#(426 5 #reduceActionForEnumDeclaration2: 57747458 false) 
	#(427 2 #reduceActionForOptionalChain2: 57894914 false) 
	#(463 5 #reduceActionForExportListDeclaration6: 65484806 false) 
	#(437 5 #reduceActionForImportAliasDeclaration1: 59586561 false) 
	#(411 5 #reduceActionForInterfaceDeclaration4: 55170052 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844162 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844161 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844163 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844164 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844165 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844167 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844166 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844168 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844169 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844171 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 58844170 false) 
	#(431 5 #reduceActionForNamespaceDeclaration1: 58180609 false) 
	#(434 2 #reduceActionForModuleItemList2: 58465282 false) 
	#(401 5 #reduceActionForTypeAliasDeclaration1: 51633153 false) 
	#(462 5 #reduceActionForExportDefaultDeclarationElement3: 65048579 false) 
	#(461 5 #reduceActionForExportDefaultImplementationElement4: 64487428 false) 
	#(398 5 #reduceActionForConstructSignature2: 51034114 false) 
	#(398 5 #reduceActionForConstructSignature3: 51034115 false) 
	#(394 5 #reduceActionForCallSignature4: 48211972 false) 
	#(388 6 #reduceActionForConstructorType1: 47524865 false) 
	#(387 6 #reduceActionForFunctionType2: 47344642 false) 
	#(289 6 #reduceActionForClassDeclaration4: 36994052 false) 
	#(289 6 #reduceActionForClassDeclaration6: 36994054 false) 
	#(261 6 #reduceActionForFunctionExpression3: 32489475 false) 
	#(316 5 #reduceActionForImportSpecifier4: 39652356 false) 
	#(219 6 #reduceActionForArrayBindingPattern9: 25482249 false) 
	#(225 6 #reduceActionForBindingElement13: 26321933 false) 
	#(225 6 #reduceActionForBindingElement7: 26321927 false) 
	#(397 1 #liftFirstValue: 50355201 false) 
	#(397 1 #liftFirstValue: 50355202 false) 
	#(273 5 #reduceActionForMethodDefinition9: 33719305 false) 
	#(418 4 #reduceActionForConstructorDeclaration3: 55998467 false) 
	#(423 4 #reduceActionForMemberFunctionDeclaration5: 56967173 false) 
	#(421 4 #reduceActionForMemberVariableDeclaration1: 56730625 false) 
	#(424 4 #reduceActionForMemberAccessorDeclaration4: 57379844 false) 
	#(424 4 #reduceActionForMemberAccessorDeclaration4: 57379848 false) 
	#(262 7 #reduceActionForFunctionExpression1: 32701441 false) 
	#(278 1 #reduceActionForModuleBody1: 35080193 false) 
	#(350 4 #reduceActionForJSXChild3: 43901955 false) 
	#(331 7 #reduceActionForJSXSelfClosingElement2: 41961474 false) 
	#(262 7 #reduceActionForFunctionExpression4: 32701444 false) 
	#(232 7 #reduceActionForDoWhileStatement1: 27215873 false) 
	#(234 7 #reduceActionForForStatement2: 27556866 false) 
	#(234 7 #reduceActionForForStatement3: 27556867 false) 
	#(235 7 #reduceActionForForInOfStatement1: 28277761 false) 
	#(235 7 #reduceActionForForInOfStatement4: 28277764 false) 
	#(234 7 #reduceActionForForStatement5: 27556869 false) 
	#(234 7 #reduceActionForForStatement14: 27556878 false) 
	#(234 7 #reduceActionForForStatement15: 27556879 false) 
	#(235 7 #reduceActionForForInOfStatement3: 28277763 false) 
	#(235 7 #reduceActionForForInOfStatement6: 28277766 false) 
	#(230 7 #reduceActionForIfStatement1: 26830849 false) 
	#(247 2 #reduceActionForDefaultClause1: 31090689 false) 
	#(244 3 #reduceActionForCaseBlock2: 30727170 false) 
	#(245 2 #reduceActionForModuleItemList2: 30911490 false) 
	#(244 3 #reduceActionForCaseBlock3: 30727171 false) 
	#(254 3 #liftFirstValue: 31867906 false) 
	#(252 5 #reduceActionForCatch1: 31639553 false) 
	#(426 6 #reduceActionForEnumDeclaration4: 57747460 false) 
	#(473 1 #liftFirstValue: 67362819 false) 
	#(471 1 #reduceActionForModuleBody1: 67187714 false) 
	#(472 1 #reduceActionForModuleItemList1: 67235841 false) 
	#(473 1 #liftFirstValue: 67362817 false) 
	#(473 1 #liftFirstValue: 67362818 false) 
	#(481 6 #reduceActionForAmbientModuleDeclaration1: 69355521 false) 
	#(456 2 #reduceActionForModuleItemList2: 62206978 false) 
	#(477 5 #reduceActionForNamespaceDeclaration1: 68104193 false) 
	#(430 1 #liftFirstValue: 58138625 false) 
	#(429 3 #reduceActionForEnumMember2: 58033154 false) 
	#(428 3 #reduceActionForNamespaceName2: 57940994 false) 
	#(463 6 #reduceActionForExportListDeclaration2: 65484802 false) 
	#(463 6 #reduceActionForExportListDeclaration4: 65484804 false) 
	#(401 6 #reduceActionForTypeAliasDeclaration2: 51633154 false) 
	#(399 6 #reduceActionForIndexSignature2: 51226626 false) 
	#(399 6 #reduceActionForIndexSignature2: 51226625 false) 
	#(398 6 #reduceActionForConstructSignature4: 51034116 false) 
	#(388 7 #reduceActionForConstructorType2: 47524866 false) 
	#(261 7 #reduceActionForFunctionExpression1: 32489473 false) 
	#(289 7 #reduceActionForClassDeclaration8: 36994056 false) 
	#(261 7 #reduceActionForFunctionExpression4: 32489476 false) 
	#(285 8 #reduceActionForAsyncFunctionExpression1: 36361217 false) 
	#(283 1 #reduceActionForModuleBody1: 36050945 false) 
	#(405 2 #reduceActionForTypedPropertySetParameterList1: 53293057 false) 
	#(273 6 #reduceActionForMethodDefinition7: 33719303 false) 
	#(419 3 #reduceActionForCallSignature1: 56463361 false) 
	#(423 5 #reduceActionForMemberFunctionDeclaration6: 56967174 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration5: 56730629 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration3: 56730627 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration2: 56730626 false) 
	#(418 5 #reduceActionForConstructorDeclaration4: 55998468 false) 
	#(423 5 #reduceActionForMemberFunctionDeclaration7: 56967175 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration9: 56730633 false) 
	#(276 8 #reduceActionForGeneratorExpression1: 34624513 false) 
	#(262 8 #reduceActionForFunctionExpression2: 32701442 false) 
	#(333 5 #reduceActionForJSXClosingElement1: 42374145 false) 
	#(350 5 #reduceActionForJSXChild4: 43901956 false) 
	#(343 5 #reduceActionForJSXSpreadAttribute1: 43241473 false) 
	#(234 8 #reduceActionForForStatement4: 27556868 false) 
	#(234 8 #reduceActionForForStatement9: 27556873 false) 
	#(235 8 #reduceActionForForInOfStatement2: 28277762 false) 
	#(235 8 #reduceActionForForInOfStatement5: 28277765 false) 
	#(234 8 #reduceActionForForStatement6: 27556870 false) 
	#(234 8 #reduceActionForForStatement7: 27556871 false) 
	#(234 8 #reduceActionForForStatement16: 27556880 false) 
	#(235 8 #reduceActionForForInOfStatement7: 28277767 false) 
	#(235 8 #reduceActionForForInOfStatement9: 28277769 false) 
	#(246 3 #reduceActionForCaseClause1: 30984193 false) 
	#(247 3 #reduceActionForDefaultClause2: 31090690 false) 
	#(244 4 #reduceActionForCaseBlock5: 30727173 false) 
	#(244 4 #reduceActionForCaseBlock4: 30727172 false) 
	#(475 2 #reduceActionForAmbientPropertyMemberDeclaration1: 67717121 false) 
	#(470 6 #reduceActionForAmbientClassDeclaration1: 66981889 false) 
	#(472 2 #reduceActionForModuleItemList2: 67235842 false) 
	#(284 8 #reduceActionForAsyncFunctionExpression1: 36087809 false) 
	#(275 8 #reduceActionForGeneratorExpression1: 34387969 false) 
	#(261 8 #reduceActionForFunctionExpression2: 32489474 false) 
	#(281 9 #reduceActionForAsyncGeneratorExpression1: 35519489 false) 
	#(285 9 #reduceActionForAsyncFunctionExpression3: 36361219 false) 
	#(273 7 #reduceActionForMethodDefinition5: 33719301 false) 
	#(273 7 #reduceActionForMethodDefinition1: 33719297 false) 
	#(273 7 #reduceActionForMethodDefinition8: 33719304 false) 
	#(419 4 #reduceActionForCallSignature2: 56463362 false) 
	#(418 6 #reduceActionForConstructorDeclaration1: 55998465 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration7: 56730631 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration6: 56730630 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration4: 56730628 false) 
	#(423 6 #reduceActionForMemberFunctionDeclaration1: 56967169 false) 
	#(423 6 #reduceActionForMemberFunctionDeclaration8: 56967176 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration13: 56730637 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration11: 56730635 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration10: 56730634 false) 
	#(276 9 #reduceActionForGeneratorExpression2: 34624514 false) 
	#(334 9 #reduceActionForJSXFragment1: 42534913 false) 
	#(333 6 #reduceActionForJSXClosingElement2: 42374146 false) 
	#(234 9 #reduceActionForForStatement10: 27556874 false) 
	#(234 9 #reduceActionForForStatement11: 27556875 false) 
	#(234 9 #reduceActionForForStatement8: 27556872 false) 
	#(235 9 #reduceActionForForInOfStatement8: 28277768 false) 
	#(246 4 #reduceActionForCaseClause2: 30984194 false) 
	#(244 5 #reduceActionForCaseBlock6: 30727174 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration3: 67717123 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration2: 67717122 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration9: 67717129 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration5: 67717125 false) 
	#(470 7 #reduceActionForAmbientClassDeclaration2: 66981890 false) 
	#(458 8 #reduceActionForImportRequireDeclaration1: 62574593 false) 
	#(280 9 #reduceActionForAsyncGeneratorExpression1: 35244033 false) 
	#(284 9 #reduceActionForAsyncFunctionExpression3: 36087811 false) 
	#(275 9 #reduceActionForGeneratorExpression2: 34387970 false) 
	#(285 10 #reduceActionForAsyncFunctionExpression2: 36361218 false) 
	#(281 10 #reduceActionForAsyncGeneratorExpression2: 35519490 false) 
	#(277 8 #reduceActionForGeneratorMethod1: 34860033 false) 
	#(286 8 #reduceActionForAsyncMethod1: 36634625 false) 
	#(273 8 #reduceActionForMethodDefinition6: 33719302 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration8: 56730632 false) 
	#(423 7 #reduceActionForMemberFunctionDeclaration2: 56967170 false) 
	#(418 7 #reduceActionForConstructorDeclaration2: 55998466 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration15: 56730639 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration14: 56730638 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration12: 56730636 false) 
	#(423 7 #reduceActionForMemberFunctionDeclaration3: 56967171 false) 
	#(347 5 #reduceActionForJSXChild4: 43638786 false) 
	#(234 10 #reduceActionForForStatement12: 27556876 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration4: 67717124 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration10: 67717130 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration7: 67717127 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration6: 67717126 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration11: 67717131 false) 
	#(284 10 #reduceActionForAsyncFunctionExpression2: 36087810 false) 
	#(280 10 #reduceActionForAsyncGeneratorExpression2: 35244034 false) 
	#(285 11 #reduceActionForAsyncFunctionExpression4: 36361220 false) 
	#(282 9 #reduceActionForAsyncGeneratorMethod1: 35793921 false) 
	#(403 9 #reduceActionForGetAccessor1: 52622337 false) 
	#(404 9 #reduceActionForSetAccessor2: 52828162 false) 
	#(421 8 #reduceActionForMemberVariableDeclaration16: 56730640 false) 
	#(423 8 #reduceActionForMemberFunctionDeclaration4: 56967172 false) 
	#(474 5 #reduceActionForAmbientConstructorDeclaration1: 67475457 false) 
	#(475 5 #reduceActionForAmbientPropertyMemberDeclaration8: 67717128 false) 
	#(475 5 #reduceActionForAmbientPropertyMemberDeclaration12: 67717132 false) 
	#(284 11 #reduceActionForAsyncFunctionExpression4: 36087812 false) 
	#(286 10 #reduceActionForAsyncMethod2: 36634626 false) 
	#(404 10 #reduceActionForSetAccessor1: 52828161 false) 
	#(404 10 #reduceActionForSetAccessor1: 52828163 false) 
	#(474 6 #reduceActionForAmbientConstructorDeclaration2: 67475458 false)
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<global>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'DecoratorExpression ''decorator''*' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'AsExpression' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'Initializer?' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'SourceFileElement ''element''*' 'SourceFileElement' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #OrderedCollection #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSAsExpressionNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #OrderedCollection #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #JSProgramNode #JSProgramNode #Object #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 0 49 0 141 0 81 0 208 0 57 0 209 0 81 0 210 0 65 0 211 0 49 1 48 0 73 1 49 0 77 1 50 0 81 1 51 0 81 1 53 0 81 1 63 0 11 1 229 0 10 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 1 113 0 197 1 113 0 198 1 113 0 200 0 253 1 6 1 113 1 9 1 125 1 10 1 129 1 11 1 133 1 14 1 113 1 15 0 253 1 20 1 113 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 2 29 0 201 2 29 0 204 2 29 0 205 2 29 0 206 2 29 0 214 2 29 0 228 2 29 0 229 2 29 0 230 2 29 0 231 2 29 0 232 2 29 0 233 2 29 0 234 2 29 0 235 2 29 0 238 2 29 0 239 2 29 0 241 2 29 0 242 2 29 0 243 2 29 0 248 2 29 0 250 2 29 0 251 2 29 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 2 117 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 2 125 1 46 2 129 1 47 0 6 1 229 0 26 1 230] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 0 81 0 208 0 57 0 209 0 81 0 210 0 65 0 211 2 133 1 48 0 73 1 49 0 77 1 50 0 81 1 51 0 81 1 53 0 81 1 63 0 11 1 229 0 10 1 230] 
#[1 0 30 0 1 0 30 0 2 0 30 0 4 0 30 0 6 0 30 0 8 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 39 0 30 0 52 0 30 0 56 0 30 0 57 0 30 0 58 0 30 0 61 0 30 0 62 0 30 0 63 0 30 0 65 0 30 0 66 0 30 0 67 0 30 0 69 0 30 0 70 0 30 0 72 0 30 0 73 0 30 0 75 0 30 0 77 0 30 0 79 0 30 0 82 0 30 0 83 0 30 0 88 0 30 0 90 0 30 0 93 0 30 0 94 0 30 0 95 0 30 0 103 0 30 0 107 0 30 0 108 0 30 0 110 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 115 0 30 0 116 0 30 0 117 0 30 0 118 0 30 0 119 0 30 0 120 0 30 0 125 0 30 0 127 0 30 0 129 0 30 0 130 0 30 0 131 0 30 0 133 0 30 0 134 0 30 0 137 2 137 1 183 2 141 1 184 0 30 1 229 0 30 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 2 201 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 2 201 1 131 2 201 1 132 2 217 1 133 2 217 1 135] 
#[0 0 34 0 4 0 6 0 125 1 229] 
#[1 0 38 0 1 3 29 0 4 3 33 0 26 3 37 0 56 0 38 0 61 0 38 0 62 0 65 0 63 3 41 0 68 3 45 0 79 0 65 0 90 2 9 0 116 3 49 0 202 3 49 0 203 3 49 0 210 0 65 0 211 3 61 0 214 3 49 1 5 3 49 1 19 3 49 1 24 3 49 1 28 3 49 1 33 3 85 1 34 3 89 1 64 3 93 1 65 3 97 1 229] 
#[1 3 101 0 4 3 105 0 26 0 189 0 125 3 129 0 129 3 117 0 142 3 113 1 54 3 117 1 55 3 121 1 56 3 125 1 57 3 129 1 61 3 117 1 62 3 129 1 71 3 141 1 229] 
#[0 0 42 0 4 0 6 0 125 1 229] 
#[0 0 0 1 230] 
#[0 0 46 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 3 145 0 201 3 145 0 204 3 145 0 205 3 145 0 206 3 145 0 214 3 145 0 228 3 145 0 229 3 145 0 230 3 145 0 231 3 145 0 232 3 145 0 233 3 145 0 234 3 145 0 235 3 145 0 238 3 145 0 239 3 145 0 241 3 145 0 242 3 145 0 243 3 145 0 248 3 145 0 250 3 145 0 251 3 145 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 0 50 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 3 157 0 142 3 161 0 212 3 165 0 213 3 169 0 217 3 169 0 218 3 169 0 219 3 165 1 153 3 165 1 154 3 189 1 229] 
#[0 0 54 1 230] 
#[0 0 58 1 230] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 3 193 0 208 0 57 0 209 3 193 0 210 0 65 0 211 3 193 1 51 3 193 1 53 3 193 1 63 0 11 1 229 0 62 1 230] 
#[0 0 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 74 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 197 0 73] 
#[1 0 97 0 2 0 78 0 3 0 23 0 4 3 201 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 3 205 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 3 209 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 3 213 0 197 3 213 0 198 3 213 0 200 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 3 233 1 0 3 237 1 1 3 241 1 2 3 245 1 3 3 249 1 4 0 253 1 6 3 213 1 9 1 125 1 10 1 129 1 11 1 133 1 14 3 213 1 15 0 253 1 20 3 213 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 3 253 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 4 1 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 5 0 121 4 9 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 4 13 0 148 4 17 0 149 4 21 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 4 25 0 197 4 25 0 198 0 253 1 6 4 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 4 25 1 15 0 253 1 20 4 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 45 0 180 4 45 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 53 0 180 4 53 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 53 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 57 0 180 4 57 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 57 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 61 0 180 4 61 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 61 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 65 0 180 4 65 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 65 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 69 0 180 4 69 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 69 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 73 0 2 4 77 0 79 0 189 0 125 4 81 0 142 4 85 1 10 1 129 1 11 1 133 1 14 4 89 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 93 0 180 4 93 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 93 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 97 0 4 4 101 0 74 0 189 0 125 4 105 0 142 4 109 1 36 4 113 1 37 4 117 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 121 0 180 4 121 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 121 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 125 0 2 4 129 0 26 0 189 0 125 4 133 0 142] 
#[1 4 137 0 2 4 141 0 22] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 145 0 22 4 33 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 4 149 0 142 4 149 0 144 4 149 0 145 4 149 0 146 4 149 0 147 4 149 0 151 0 241 0 152 4 149 0 160 0 249 0 161 4 149 0 164 4 149 0 165 4 149 0 166 4 149 0 167 4 149 0 168 4 153 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 157 0 179 4 149 1 6 4 149 1 20 4 149 1 25 4 149 1 29 4 149 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 4 149 1 73 4 149 1 74 4 149 1 75 1 197 1 76 4 149 1 78 1 205 1 96 4 161 1 229] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 165 0 2 4 169 0 6 4 173 0 22 4 177 0 173 4 181 1 229] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 185 0 180 4 185 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 185 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 4 189 0 180 4 189 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 189 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 0 97 0 2 0 98 0 3 0 14 0 4 0 98 0 5 0 101 0 6 0 98 0 7 0 98 0 8 4 193 0 26 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 98 0 122 0 98 0 123 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 98 0 135 0 98 0 136 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 4 197 0 197 4 197 0 198 0 253 1 6 4 197 1 9 1 125 1 10 1 129 1 11 1 133 1 14 4 197 1 15 0 253 1 20 4 197 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229 0 98 1 230] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 74 0 78 0 84 0 86 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 106 0 84] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 64 0 78 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 133 0 134 0 135 0 136 0 138 1 228 1 229 1 230] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 64 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 126 0 14 4 201 1 97] 
#[1 0 130 0 2 0 130 0 3 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 130 0 97 0 130 0 122 0 130 0 123 0 130 0 133 0 130 0 134 0 130 0 135 0 130 0 136 0 130 1 228 0 130 1 229 0 130 1 230] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 205 0 4] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 209 0 134] 
#[1 4 165 0 2 0 162 0 3 0 162 0 4 0 162 0 5 4 213 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 20 0 162 0 21 4 217 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 40 0 162 0 41 0 162 0 42 0 162 0 43 4 221 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 53 0 162 0 54 0 162 0 84 0 162 0 87 0 162 0 97 0 162 0 122 0 162 0 123 0 209 0 133 0 18 0 134 0 162 0 135 0 162 0 136 4 225 0 160 0 249 0 161 4 229 0 173 4 233 0 176 0 162 1 228 0 27 1 229 0 162 1 230] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 182 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 135 0 136 1 228 1 229 1 230] 
#[1 4 165 0 2 0 186 0 3 0 186 0 4 0 186 0 5 4 237 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 20 0 186 0 21 4 241 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 40 0 186 0 41 0 186 0 42 0 186 0 43 4 221 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 49 0 186 0 50 0 186 0 51 0 186 0 53 0 186 0 54 0 186 0 84 0 186 0 87 0 186 0 97 0 186 0 122 0 186 0 123 0 209 0 133 0 18 0 134 0 186 0 135 0 186 0 136 4 245 0 160 0 249 0 161 4 249 0 173 4 253 0 176 0 186 1 228 0 31 1 229 0 186 1 230] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 17 0 198 0 18 0 198 0 20 0 198 0 21 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 4 221 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 84 0 198 0 87 0 198 0 97 0 198 0 122 0 198 0 123 0 198 0 135 0 198 0 136 5 1 0 176 0 198 1 228 0 198 1 229 0 198 1 230] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 5 73 0 10 0 202 0 11 0 202 0 12 5 73 0 13 0 202 0 14 0 202 0 15 5 73 0 16 5 73 0 17 0 202 0 18 0 202 0 20 0 202 0 21 5 73 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 5 73 0 28 5 73 0 29 5 73 0 30 5 73 0 31 5 73 0 32 5 73 0 33 5 73 0 34 0 202 0 35 5 53 0 36 0 202 0 37 5 57 0 38 0 202 0 40 0 202 0 41 5 73 0 42 0 202 0 43 0 202 0 45 5 73 0 46 0 202 0 47 0 202 0 48 0 202 0 49 5 73 0 50 0 202 0 51 0 202 0 53 0 202 0 54 0 202 0 84 0 202 0 87 0 202 0 122 0 202 0 123 0 202 0 135 0 202 0 136 5 73 0 199 5 73 1 228 5 81 1 229 0 202 1 230] 
#[0 0 206 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 11 0 210 0 12 0 210 0 14 0 210 0 15 0 210 0 18 0 210 0 20 0 210 0 21 0 210 0 24 0 210 0 25 0 210 0 26 5 85 0 27 0 210 0 35 0 210 0 37 0 210 0 40 0 210 0 41 0 210 0 43 0 210 0 45 0 210 0 47 0 210 0 48 0 210 0 49 0 210 0 51 0 210 0 53 0 210 0 54 0 210 0 84 0 210 0 87 0 210 0 122 0 210 0 123 0 210 0 135 0 210 0 136 0 210 1 230] 
#[0 0 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 218 0 3 0 218 0 5 0 218 0 7 0 218 0 8 5 101 0 9 0 218 0 11 0 218 0 12 0 218 0 14 0 218 0 15 0 218 0 18 0 218 0 20 0 218 0 21 0 218 0 24 0 218 0 25 5 101 0 26 0 218 0 35 0 218 0 37 0 218 0 40 0 218 0 41 0 218 0 43 0 218 0 45 5 101 0 47 0 218 0 48 0 218 0 49 0 218 0 51 0 218 0 53 0 218 0 54 0 218 0 84 0 218 0 87 0 218 0 122 0 218 0 123 0 218 0 135 0 218 0 136 5 101 0 184 0 218 1 230] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 11 0 222 0 12 0 222 0 14 0 222 0 15 0 222 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 5 105 0 35 5 109 0 37 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 48 0 222 0 49 0 222 0 51 0 222 0 53 0 222 0 54 0 222 0 84 0 222 0 87 0 222 0 122 0 222 0 123 0 222 0 135 0 222 0 136 0 222 1 230] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 0 226 0 11 5 113 0 12 0 226 0 14 5 117 0 15 5 121 0 18 0 226 0 20 0 226 0 21 0 226 0 24 0 226 0 25 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 48 0 226 0 49 0 226 0 51 0 226 0 53 0 226 0 54 0 226 0 84 0 226 0 87 0 226 0 122 0 226 0 123 0 226 0 135 0 226 0 136 0 226 1 230] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 0 230 0 24 0 230 0 25 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 48 0 230 0 49 0 230 0 51 0 230 0 53 0 230 0 54 5 141 0 84 5 145 0 87 0 230 0 122 0 230 0 123 0 230 0 135 0 230 0 136 0 230 1 230] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 5 149 0 24 5 153 0 25 0 234 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 48 0 234 0 49 0 234 0 51 5 157 0 53 5 161 0 54 0 234 0 122 0 234 0 123 0 234 0 135 0 234 0 136 0 234 1 230] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 5 165 0 40 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 48 0 238 0 49 0 238 0 51 0 238 0 122 0 238 0 123 0 238 0 135 0 238 0 136 0 238 1 230] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 0 242 0 45 0 242 0 48 0 242 0 49 5 169 0 51 0 242 0 122 0 242 0 123 0 242 0 135 0 242 0 136 0 242 1 230] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 43 0 250 0 45 5 173 0 48 0 246 0 49 0 246 0 122 0 246 0 123 0 246 0 135 0 246 0 136 0 246 1 230] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 5 177 0 41 0 254 0 43 0 254 0 49 0 254 0 122 0 254 0 123 0 254 0 135 0 254 0 136 0 254 1 230] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 43 5 181 0 49 1 2 0 122 1 2 0 123 1 2 0 135 1 2 0 136 1 2 1 230] 
#[1 1 6 0 3 1 6 0 5 1 6 0 7 1 6 0 8 1 6 0 43 1 10 0 45 1 6 0 122 1 6 0 123 1 6 0 135 1 6 0 136 1 6 1 230] 
#[0 5 185 0 45] 
#[1 1 14 0 3 1 14 0 5 1 14 0 7 1 14 0 8 5 189 0 43 1 14 0 122 1 14 0 123 1 14 0 135 1 14 0 136 1 14 1 230] 
#[0 1 18 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 1 22 0 3 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 5 193 0 122 0 0 1 230] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 30 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 5 197 0 19] 
#[0 1 34 0 19] 
#[0 1 38 0 19] 
#[0 1 42 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 50 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 62 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 201 0 84] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[1 1 98 0 4 1 98 0 137 1 98 0 139 5 205 1 98] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 209 0 137] 
#[1 1 106 0 3 1 106 0 5 1 106 0 7 1 106 0 8 1 106 0 9 1 106 0 11 1 106 0 12 1 106 0 14 1 106 0 15 1 106 0 18 1 106 0 20 1 106 0 21 1 106 0 24 1 106 0 25 1 106 0 26 1 106 0 27 1 106 0 35 1 106 0 37 1 106 0 40 1 106 0 41 1 106 0 43 1 106 0 45 1 106 0 47 1 106 0 48 1 106 0 49 1 106 0 51 1 106 0 53 1 106 0 54 1 106 0 84 1 106 0 87 1 106 0 122 1 106 0 123 1 106 0 135 1 106 0 136 5 213 1 229 1 106 1 230] 
#[1 5 217 0 2 5 221 0 11 5 225 0 79 5 229 1 102 5 233 1 146] 
#[1 0 6 0 2 0 6 0 4 5 237 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 5 241 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 0 6 1 229] 
#[0 1 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 5 245 0 8 1 114 0 125 5 249 0 240] 
#[1 5 253 0 8 1 114 0 125 6 1 0 240] 
#[0 6 5 0 8] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 6 9 0 201 6 9 0 204 6 9 0 205 6 9 0 206 6 9 0 214 6 9 0 228 6 9 0 229 6 9 0 230 6 9 0 231 6 9 0 232 6 9 0 233 6 9 0 234 6 9 0 235 6 9 0 238 6 9 0 239 6 9 0 241 6 9 0 242 6 9 0 243 6 9 0 248 6 9 0 250 6 9 0 251 6 9 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 6 13 0 2 6 17 0 57] 
#[0 6 21 0 2] 
#[1 1 114 0 2 1 114 0 4 1 114 0 6 6 25 0 8 1 114 0 35 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 52 1 114 0 56 1 114 0 57 1 114 0 61 1 114 0 69 1 114 0 75 1 114 0 79 1 114 0 83 1 114 0 94 1 114 0 95 1 114 0 107 1 114 0 110 1 114 0 112 1 114 0 115 1 114 0 117 1 114 0 120 1 114 0 125 1 114 0 127 1 114 0 129 1 114 0 130 1 114 0 131 1 114 0 133 1 114 0 134 1 114 0 137 6 29 0 240 1 114 1 229] 
#[0 6 33 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 6 37 0 197 6 37 0 198 6 37 0 200 0 253 1 6 6 37 1 9 1 125 1 10 1 129 1 11 1 133 1 14 6 37 1 15 0 253 1 20 6 37 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 1 217 0 4 6 41 0 206] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 6 45 0 142 6 49 0 215 6 53 0 216 6 57 0 217 6 57 0 218 6 57 0 219 6 61 1 229] 
#[0 6 65 0 2] 
#[0 6 69 0 2] 
#[1 0 102 0 2 0 102 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 102 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 38 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 53 0 102 0 54 0 102 0 84 0 102 0 87 0 102 0 122 6 73 0 123 0 102 0 133 0 102 0 134 0 102 1 228 0 102 1 229] 
#[1 6 77 0 8 5 193 0 122] 
#[0 0 0 1 230] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 1 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 81 0 208 0 57 0 209 6 81 0 210 0 65 0 211 0 6 1 229 1 202 1 230] 
#[0 1 206 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 0 1 230] 
#[0 1 210 1 230] 
#[0 0 0 1 230] 
#[0 0 0 1 230] 
#[1 0 38 0 1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 35 0 61 0 38 0 62 6 85 0 63 1 229 0 65 1 233 0 66 6 89 0 67 0 141 0 69 1 237 0 70 6 93 0 72 0 39 0 73 1 173 0 75 1 241 0 77 6 101 0 79 1 245 0 82 6 105 0 83 6 109 0 88 0 65 0 90 6 113 0 93 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 6 117 0 114 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 6 169 0 201 6 169 0 204 6 169 0 205 6 169 0 206 6 169 0 210 0 65 0 211 6 169 0 214 6 169 0 228 6 169 0 229 6 169 0 230 6 169 0 231 6 169 0 232 6 169 0 233 6 169 0 234 6 169 0 235 6 169 0 238 6 169 0 239 6 169 0 241 6 169 0 242 6 169 0 243 6 169 0 248 6 169 0 250 6 169 0 251 6 169 0 255 6 169 1 5 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 6 169 1 19 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 6 169 1 33 6 141 1 34 0 253 1 35 6 169 1 53 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 6 169 1 145 1 209 1 150 6 169 1 155 6 169 1 170 6 169 1 175 6 169 1 181 6 169 1 185 6 169 1 191 6 169 1 202 6 169 1 203 6 169 1 204 6 169 1 205 6 169 1 206 6 169 1 207 6 169 1 208 6 169 1 209 6 169 1 225 6 213 1 229 1 214 1 230] 
#[1 2 145 0 2 0 78 0 3 6 217 0 4 6 221 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 3 205 0 121 0 189 0 125 2 189 0 129 2 193 0 130 6 225 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 6 229 1 1 3 241 1 2 3 245 1 3 3 249 1 4 2 189 1 71 2 193 1 72 2 197 1 102 6 233 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 6 233 1 131 6 233 1 132 2 217 1 133 2 217 1 135 6 237 1 229] 
#[1 6 241 0 2 6 245 0 5 6 249 0 6 2 157 0 11 6 253 0 94 7 1 0 102 7 5 0 126 7 25 0 129 7 29 0 130 7 13 0 143 7 13 0 155 7 13 0 156 7 13 0 157 7 25 1 71 7 29 1 72 7 33 1 102 7 37 1 122 7 41 1 123 7 45 1 124 7 45 1 136 7 45 1 138 7 45 1 142 7 45 1 143 7 45 1 144] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 7 69 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 7 73 0 122 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 7 85 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 7 81 1 127 7 85 1 128 2 205 1 129 2 209 1 130 7 85 1 131 7 85 1 132 2 217 1 133 2 217 1 135] 
#[1 0 189 0 125 7 89 0 142 7 93 1 103 7 97 1 104] 
#[1 7 101 0 2 2 149 0 4 2 153 0 6 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 7 105 1 113 7 105 1 114 7 105 1 115 7 105 1 116 7 105 1 117 7 105 1 118 2 241 1 119 2 245 1 120 7 105 1 121 7 105 1 125 7 105 1 126 7 105 1 133 7 105 1 135] 
#[1 7 101 0 2 2 149 0 4 2 153 0 6 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 7 109 1 113 7 109 1 114 7 109 1 115 7 109 1 116 7 109 1 117 7 109 1 118 2 241 1 119 2 245 1 120 7 109 1 121 7 109 1 125 7 109 1 126 7 109 1 133 7 109 1 135] 
#[1 7 113 0 2 2 157 0 11 7 117 1 102] 
#[0 1 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 0 189 0 125 7 121 0 142 7 125 1 134] 
#[0 1 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 1 226 0 3 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 1 226 0 8 1 226 0 9 1 226 0 11 1 226 0 12 1 226 0 14 1 226 0 15 1 226 0 18 1 226 0 19 1 226 0 20 1 226 0 21 1 230 0 22 1 226 0 23 1 226 0 24 1 226 0 25 1 226 0 26 1 226 0 27 1 226 0 35 1 226 0 37 1 226 0 40 1 226 0 41 1 226 0 43 1 226 0 45 1 226 0 47 1 226 0 48 1 226 0 49 1 226 0 51 1 226 0 53 1 226 0 54 1 226 0 64 1 226 0 84 1 226 0 86 1 226 0 87 1 226 0 98 1 226 0 99 1 226 0 100 1 226 0 101 1 226 0 105 1 226 0 122 1 226 0 123 1 226 0 126 1 226 0 129 1 226 0 130 1 226 0 135 1 226 0 136 1 226 1 229 1 226 1 230] 
#[0 1 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 1 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 7 129 0 2] 
#[0 0 0 1 230] 
#[1 1 242 0 3 1 242 0 4 1 242 0 5 1 242 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 11 1 242 0 12 1 242 0 14 1 242 0 15 1 242 0 18 1 242 0 19 1 242 0 20 1 242 0 21 1 242 0 23 1 242 0 24 1 242 0 25 1 242 0 26 1 242 0 27 1 242 0 35 1 242 0 37 1 242 0 40 1 242 0 41 1 242 0 43 1 242 0 45 1 242 0 47 0 43 0 48 1 242 0 49 1 242 0 51 1 242 0 53 1 242 0 54 1 242 0 64 1 242 0 84 1 242 0 87 1 242 0 98 1 242 0 99 1 242 0 100 1 242 0 101 1 242 0 105 1 242 0 122 1 242 0 123 1 242 0 126 1 242 0 129 1 242 0 130 1 242 0 135 1 242 0 136 1 242 1 229 1 242 1 230] 
#[1 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 14 1 246 0 15 1 246 0 18 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 23 1 246 0 24 1 246 0 25 1 246 0 26 1 246 0 27 1 246 0 35 1 246 0 37 0 47 0 40 1 246 0 41 1 246 0 43 1 246 0 45 1 246 0 47 1 246 0 48 1 246 0 49 1 246 0 51 1 246 0 53 1 246 0 54 1 246 0 64 1 246 0 84 1 246 0 87 1 246 0 98 1 246 0 99 1 246 0 100 1 246 0 101 1 246 0 105 1 246 0 122 1 246 0 123 1 246 0 126 1 246 0 129 1 246 0 130 1 246 0 135 1 246 0 136 1 246 1 229 1 246 1 230] 
#[0 1 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 1 254 0 3 1 254 0 4 1 254 0 5 0 51 0 6 1 254 0 7 1 254 0 8 1 254 0 9 1 254 0 11 1 254 0 12 1 254 0 14 1 254 0 15 1 254 0 18 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 23 1 254 0 24 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 35 1 254 0 37 1 254 0 40 1 254 0 41 1 254 0 43 1 254 0 45 1 254 0 47 1 254 0 48 1 254 0 49 1 254 0 51 1 254 0 53 1 254 0 54 1 254 0 64 1 254 0 84 1 254 0 87 1 254 0 98 1 254 0 99 1 254 0 100 1 254 0 101 1 254 0 105 1 254 0 122 1 254 0 123 1 254 0 126 1 254 0 129 1 254 0 130 1 254 0 135 1 254 0 136 7 141 0 240 1 254 1 229 1 254 1 230] 
#[0 2 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 10 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 22 0 3 2 22 0 4 2 22 0 5 2 22 0 6 2 22 0 7 2 22 0 8 2 22 0 9 0 55 0 11 2 22 0 12 2 22 0 14 2 22 0 15 2 22 0 18 2 22 0 19 2 22 0 20 2 22 0 21 2 22 0 23 2 22 0 24 2 22 0 25 2 22 0 26 2 22 0 27 2 22 0 35 2 22 0 37 2 22 0 40 2 22 0 41 2 22 0 43 2 22 0 45 2 22 0 47 2 22 0 48 2 22 0 49 2 22 0 51 2 22 0 53 2 22 0 54 2 22 0 64 2 22 0 84 2 22 0 86 2 22 0 87 2 22 0 98 2 22 0 99 2 22 0 100 2 22 0 101 2 22 0 105 2 22 0 122 2 22 0 123 2 22 0 126 2 22 0 129 2 22 0 130 2 22 0 135 2 22 0 136 7 145 0 240 2 22 1 229 2 22 1 230] 
#[0 7 149 0 22] 
#[0 2 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 54 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 58 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 7 153 0 5 7 161 0 126 7 161 0 129 7 161 1 52 7 165 1 66 7 169 1 67 7 161 1 71] 
#[1 7 177 0 55 2 62 0 78] 
#[0 7 181 0 79] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 7 185 0 197 7 185 0 198 0 253 1 6 7 185 1 9 1 125 1 10 1 129 1 11 1 133 1 14 7 185 1 15 0 253 1 20 7 185 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 7 189 0 2 7 193 0 26 0 189 0 125 7 197 0 142] 
#[0 2 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 74 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 82 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 86 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 94 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 98 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 7 201 0 1 7 205 0 61 7 209 0 62 7 213 1 226] 
#[1 7 217 0 78 7 221 1 58] 
#[1 7 225 0 8 2 102 0 78] 
#[1 7 229 0 63 6 93 0 72 7 233 0 79 6 109 0 88 6 117 0 114 7 237 1 145 7 241 1 155 7 245 1 170] 
#[1 7 249 0 5 0 189 0 125 7 253 0 126 7 253 0 129 8 9 0 142 7 253 1 52 8 1 1 59 8 5 1 60 8 9 1 62 7 253 1 71 8 13 1 229] 
#[0 8 17 0 55] 
#[0 2 106 0 5 0 78 0 122] 
#[1 7 217 0 78 8 21 1 58] 
#[1 2 110 0 78 8 25 0 122] 
#[0 2 114 0 78] 
#[0 2 118 0 78] 
#[0 8 29 0 8] 
#[0 2 122 0 78 0 122] 
#[0 2 126 0 8] 
#[0 8 33 0 114] 
#[0 2 130 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 8 37 0 5 8 41 0 6 8 45 0 121 0 189 0 125 7 5 0 126 7 25 0 129 7 29 0 130 8 49 0 142 8 53 0 143 8 53 0 155 8 53 0 156 8 53 0 157 8 57 0 220 8 61 0 221 8 65 0 224 8 65 0 226 7 25 1 71 7 29 1 72 8 73 1 229] 
#[1 3 149 0 4 3 153 0 6 8 77 0 7 3 205 0 121 4 9 0 122 0 189 0 125 8 49 0 142 8 81 0 149 3 217 0 217 3 217 0 218 3 217 0 219 8 85 0 222 8 89 0 223 8 93 0 225 8 93 0 226 8 97 0 227 6 237 1 229] 
#[1 2 134 0 8 8 101 0 23 2 134 0 122 8 105 0 159] 
#[1 8 109 0 8 8 113 0 122] 
#[0 2 138 0 8 0 122] 
#[1 8 101 0 23 8 117 0 159] 
#[0 2 142 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 2 146 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 2 150 0 8 0 122] 
#[0 2 154 0 8 0 122] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 8 121 0 142 8 125 0 217 8 125 0 218 8 125 0 219] 
#[0 2 158 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 129 0 114] 
#[1 0 97 0 2 0 23 0 4 3 201 0 6 8 133 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 8 137 0 121 4 9 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 3 209 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 4 13 0 148 8 141 0 149 4 21 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 4 25 0 197 4 25 0 198 3 217 0 217 3 217 0 218 3 217 0 219 8 85 0 222 8 89 0 223 8 93 0 225 8 93 0 226 8 97 0 227 0 253 1 6 4 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 4 25 1 15 0 253 1 20 4 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 3 253 1 229] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 8 145 0 142 8 149 0 217 8 149 0 218 8 149 0 219] 
#[1 0 130 0 2 0 59 0 3 0 130 0 6 0 59 0 7 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 63 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 59 0 122 0 130 0 133 0 130 0 134 8 153 0 159 0 130 1 228 0 130 1 229] 
#[1 8 157 0 3 5 193 0 122] 
#[1 2 166 0 3 2 166 0 5 2 166 0 7 8 101 0 23 2 166 0 122 8 161 0 159] 
#[0 2 170 0 3 0 122] 
#[0 2 174 0 3 0 5 0 7 0 122] 
#[0 2 178 0 3] 
#[0 8 165 0 3] 
#[0 2 182 0 3] 
#[1 2 186 0 3 8 169 0 122] 
#[0 2 190 0 3] 
#[0 2 194 0 3 0 122] 
#[1 0 38 0 1 5 217 0 2 0 38 0 4 0 38 0 6 5 221 0 11 0 38 0 43 5 225 0 79 0 67 0 98 0 71 0 99 0 75 0 100 0 79 0 101 0 38 0 110 0 38 0 123 0 83 0 125 8 189 0 142 8 193 1 34 5 229 1 102 8 197 1 140 5 233 1 146] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 201 0 197 8 201 0 198 0 253 1 6 8 201 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 201 1 15 0 253 1 20 8 201 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 2 202 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 121 0 122 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[1 8 205 0 7 4 9 0 122 8 209 0 149] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 8 213 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 5 0 121 8 217 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 8 221 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 225 0 197 8 225 0 198 0 253 1 6 8 225 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 225 1 15 0 253 1 20 8 225 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 2 206 0 7 0 122] 
#[0 2 210 0 7 0 122] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 3 213 0 197 3 213 0 198 3 213 0 200 0 253 1 6 3 213 1 9 1 125 1 10 1 129 1 11 1 133 1 14 3 213 1 15 0 253 1 20 3 213 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 4 77 0 79] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 11 0 202 0 12 0 202 0 14 0 202 0 15 0 202 0 18 0 202 0 20 0 202 0 21 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 35 5 53 0 36 0 202 0 37 5 57 0 38 0 202 0 40 0 202 0 41 0 202 0 43 0 202 0 45 0 202 0 47 0 202 0 48 0 202 0 49 0 202 0 51 0 202 0 53 0 202 0 54 0 202 0 84 0 202 0 87 0 202 0 122 0 202 0 123 0 202 0 135 0 202 0 136 5 81 1 229 0 202 1 230] 
#[0 2 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 8 229 0 11 5 225 0 79] 
#[0 2 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 222 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 226 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 230 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 234 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 3 233 1 0 3 237 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 8 233 0 2 8 237 0 26 0 189 0 125 8 241 0 142] 
#[0 0 134 0 19] 
#[0 8 245 0 19] 
#[1 5 217 0 2 2 157 0 11 5 229 1 102 5 233 1 146] 
#[0 2 238 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 8 249 0 5 8 253 0 8 9 1 0 26 9 5 0 56 9 9 0 80 9 13 0 104 9 17 0 105 9 21 0 125 9 25 0 127 9 53 1 17 9 53 1 21 9 53 1 26 9 53 1 30 9 45 1 38 9 49 1 39 9 53 1 40 9 57 1 41 9 61 1 42 9 53 1 43 9 53 1 147 9 53 1 148 9 77 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 33 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 9 81 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 9 81 0 179 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 4 161 1 229] 
#[1 4 97 0 4 4 101 0 74 9 85 1 36 4 113 1 37 4 117 1 229] 
#[0 2 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 89 0 4] 
#[1 9 93 0 74 9 97 0 86 9 101 1 159 9 105 1 161] 
#[0 2 246 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 9 109 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 9 113 0 2 0 189 0 125 9 117 0 142] 
#[0 9 121 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 125 0 197 9 125 0 198 0 253 1 6 9 125 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 125 1 15 0 253 1 20 9 125 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 9 129 0 91] 
#[0 9 133 0 109] 
#[1 4 165 0 2 0 162 0 3 0 162 0 4 0 162 0 5 4 213 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 20 0 162 0 21 4 217 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 40 0 162 0 41 0 162 0 42 0 162 0 43 4 221 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 53 0 162 0 54 0 162 0 84 0 162 0 87 0 162 0 97 0 162 0 122 0 162 0 123 0 209 0 133 0 18 0 134 0 162 0 135 0 162 0 136 4 225 0 160 0 249 0 161 9 137 0 173 4 233 0 176 0 162 1 228 0 27 1 229 0 162 1 230] 
#[1 2 250 0 3 2 250 0 4 2 250 0 5 2 250 0 7 2 250 0 8 2 250 0 9 2 250 0 10 2 250 0 11 2 250 0 12 2 250 0 13 2 250 0 14 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 18 2 250 0 20 2 250 0 21 2 250 0 23 2 250 0 24 2 250 0 25 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 29 2 250 0 30 2 250 0 31 2 250 0 32 2 250 0 33 2 250 0 34 2 250 0 35 2 250 0 36 2 250 0 37 2 250 0 38 2 250 0 40 2 250 0 41 2 250 0 42 2 250 0 43 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 53 2 250 0 54 2 250 0 84 2 250 0 87 2 250 0 97 2 250 0 122 2 250 0 123 2 250 0 135 2 250 0 136 2 250 1 228 0 87 1 229 2 250 1 230] 
#[0 9 141 1 229] 
#[0 5 225 0 79] 
#[1 0 97 0 2 9 145 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 9 149 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 9 153 0 174 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 157 0 197 9 157 0 198 0 253 1 6 9 157 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 157 1 15 0 253 1 20 9 157 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 161 0 197 9 161 0 198 9 161 0 200 0 253 1 6 9 161 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 161 1 15 0 253 1 20 9 161 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 9 165 0 126] 
#[0 2 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 9 169 0 11 9 173 1 106] 
#[0 3 2 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 3 6 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 177 0 197 9 177 0 198 0 253 1 6 9 177 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 177 1 15 0 253 1 20 9 177 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 3 10 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 9 181 0 14] 
#[1 9 185 0 5 8 41 0 6 9 1 0 26 9 5 0 56 9 9 0 80 9 13 0 104 9 189 0 121 9 193 0 125 7 5 0 126 9 25 0 127 7 25 0 129 7 29 0 130 9 197 0 142 9 209 0 143 9 201 0 153 9 205 0 154 9 209 0 155 9 209 0 156 9 209 0 157 9 205 0 158 9 205 1 17 9 205 1 21 9 205 1 26 9 205 1 30 9 221 1 42 7 25 1 71 7 29 1 72 9 205 1 147 9 205 1 148 9 225 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 229 0 197 9 229 0 198 9 229 0 200 0 253 1 6 9 229 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 229 1 15 0 253 1 20 9 229 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 233 0 197 9 233 0 198 9 233 0 200 0 253 1 6 9 233 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 233 1 15 0 253 1 20 9 233 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 9 237 0 126 9 241 0 127] 
#[1 4 165 0 2 9 245 0 6 9 249 0 126 9 253 0 127 0 209 0 133 0 18 0 134 10 1 0 160 0 249 0 161 10 5 0 173 10 9 0 178 4 181 1 229] 
#[0 3 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 165 0 2 3 22 0 3 3 22 0 4 3 22 0 5 10 13 0 6 3 22 0 7 3 22 0 8 3 22 0 9 3 22 0 10 3 22 0 11 3 22 0 12 3 22 0 13 3 22 0 14 3 22 0 15 3 22 0 16 3 22 0 17 3 22 0 18 3 22 0 20 3 22 0 21 10 17 0 22 3 22 0 23 3 22 0 24 3 22 0 25 3 22 0 26 3 22 0 27 3 22 0 28 3 22 0 29 3 22 0 30 3 22 0 31 3 22 0 32 3 22 0 33 3 22 0 34 3 22 0 35 3 22 0 36 3 22 0 37 3 22 0 38 3 22 0 40 3 22 0 41 3 22 0 42 3 22 0 43 3 22 0 44 3 22 0 45 3 22 0 46 3 22 0 47 3 22 0 48 3 22 0 49 3 22 0 50 3 22 0 51 3 22 0 53 3 22 0 54 3 22 0 84 3 22 0 87 3 22 0 97 3 22 0 122 3 22 0 123 0 209 0 133 0 18 0 134 3 22 0 135 3 22 0 136 10 21 0 160 0 249 0 161 10 25 0 173 10 29 0 177 3 22 1 228 0 91 1 229 3 22 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 33 0 197 10 33 0 198 10 33 0 200 0 253 1 6 10 33 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 33 1 15 0 253 1 20 10 33 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 10 37 0 126 10 41 0 127] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 165 0 2 3 34 0 3 3 34 0 4 3 34 0 5 10 13 0 6 3 34 0 7 3 34 0 8 3 34 0 9 3 34 0 10 3 34 0 11 3 34 0 12 3 34 0 13 3 34 0 14 3 34 0 15 3 34 0 16 3 34 0 17 3 34 0 18 3 34 0 20 3 34 0 21 10 17 0 22 3 34 0 23 3 34 0 24 3 34 0 25 3 34 0 26 3 34 0 27 3 34 0 28 3 34 0 29 3 34 0 30 3 34 0 31 3 34 0 32 3 34 0 33 3 34 0 34 3 34 0 35 3 34 0 36 3 34 0 37 3 34 0 38 3 34 0 40 3 34 0 41 3 34 0 42 3 34 0 43 3 34 0 44 3 34 0 45 3 34 0 46 3 34 0 47 3 34 0 48 3 34 0 49 3 34 0 50 3 34 0 51 3 34 0 53 3 34 0 54 3 34 0 84 3 34 0 87 3 34 0 97 3 34 0 122 3 34 0 123 0 209 0 133 0 18 0 134 3 34 0 135 3 34 0 136 10 21 0 160 0 249 0 161 10 25 0 173 10 29 0 177 3 34 1 228 0 95 1 229 3 34 1 230] 
#[1 4 165 0 2 3 38 0 3 3 38 0 4 3 38 0 5 10 13 0 6 3 38 0 7 3 38 0 8 3 38 0 9 3 38 0 10 3 38 0 11 3 38 0 12 3 38 0 13 3 38 0 14 3 38 0 15 3 38 0 16 3 38 0 17 3 38 0 18 3 38 0 20 3 38 0 21 10 17 0 22 3 38 0 23 3 38 0 24 3 38 0 25 3 38 0 26 3 38 0 27 3 38 0 28 3 38 0 29 3 38 0 30 3 38 0 31 3 38 0 32 3 38 0 33 3 38 0 34 3 38 0 35 3 38 0 36 3 38 0 37 3 38 0 38 3 38 0 40 3 38 0 41 3 38 0 42 3 38 0 43 3 38 0 44 3 38 0 45 3 38 0 46 3 38 0 47 3 38 0 48 3 38 0 49 3 38 0 50 3 38 0 51 3 38 0 53 3 38 0 54 3 38 0 84 3 38 0 87 3 38 0 97 3 38 0 122 3 38 0 123 0 209 0 133 0 18 0 134 3 38 0 135 3 38 0 136 10 21 0 160 0 249 0 161 10 25 0 173 10 29 0 177 3 38 1 228 0 99 1 229 3 38 1 230] 
#[0 3 42 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 46 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 50 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 54 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 58 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 62 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 66 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 70 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 74 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 78 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 82 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 86 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 90 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 3 94 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 3 98 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 102 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 106 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 45 0 197 10 45 0 198 0 253 1 6 10 45 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 45 1 15 0 253 1 20 10 45 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 3 110 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[1 10 49 0 52 10 53 0 55] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 10 57 0 182 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[0 3 114 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 118 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 122 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 10 61 0 182 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 10 65 0 182 10 65 0 183 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 10 69 0 182 10 69 0 183 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 10 73 0 185 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 10 77 0 185 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 10 81 0 185 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 85 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 89 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 93 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 97 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 101 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 105 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 109 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 113 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 117 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 121 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 10 125 0 188 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 10 129 0 189 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 10 133 0 190 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 10 137 0 191 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 10 141 0 191 10 145 0 192 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 10 149 0 191 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 153 0 197 10 153 0 198 0 253 1 6 10 153 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 153 1 15 0 253 1 20 10 153 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 157 0 197 10 157 0 198 0 253 1 6 10 157 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 157 1 15 0 253 1 20 10 157 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 103 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 173 0 197 10 173 0 198 0 253 1 6 10 173 1 9 1 125 1 10 1 129 1 11 10 169 1 12 10 173 1 13 1 133 1 14 10 173 1 15 0 253 1 20 10 173 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 177 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[1 3 126 0 4 3 126 0 137 3 126 0 139 10 181 1 92 10 185 1 93] 
#[1 0 126 0 14 10 189 0 138 10 193 1 79 10 193 1 80 10 193 1 81 10 205 1 82 10 209 1 83 10 213 1 97] 
#[0 10 217 0 55] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 10 221 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 10 225 0 142 2 189 1 71 2 193 1 72 2 197 1 102 7 93 1 103 7 97 1 104 10 229 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 10 229 1 131 10 229 1 132 2 217 1 133 2 217 1 135] 
#[1 5 217 0 2 2 157 0 11 0 189 0 125 10 233 0 142 5 229 1 102 10 237 1 146] 
#[0 10 241 0 2] 
#[0 3 130 0 19] 
#[0 3 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 10 245 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 81 0 208 0 57 0 209 6 81 0 210 0 65 0 211 0 6 1 229] 
#[0 3 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 10 249 0 142] 
#[0 3 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 10 253 0 142] 
#[0 3 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 1 0 118] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 11 5 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 11 25 0 63 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 11 25 0 90 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 11 9 0 116 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 11 13 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 11 13 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 17 0 197 11 17 0 198 11 17 0 200 11 21 0 210 11 25 0 211 11 29 0 236 0 253 1 6 11 17 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 17 1 15 0 253 1 20 11 17 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 11 33 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 37 0 197 11 37 0 198 11 37 0 200 0 253 1 6 11 37 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 37 1 15 0 253 1 20 11 37 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 3 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 41 0 197 11 41 0 198 11 41 0 200 0 253 1 6 11 41 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 41 1 15 0 253 1 20 11 41 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 45 0 197 11 45 0 198 11 45 0 200 0 253 1 6 11 45 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 45 1 15 0 253 1 20 11 45 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 11 49 0 8 5 193 0 122] 
#[1 11 53 0 60 11 57 0 76 11 61 0 252 11 65 0 253] 
#[1 3 154 0 8 8 101 0 23 3 154 0 122 11 69 0 159] 
#[1 11 73 0 8 11 77 0 122] 
#[0 3 158 0 8 0 122] 
#[1 8 101 0 23 11 81 0 159] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 11 85 0 142 11 89 0 217 11 89 0 218 11 89 0 219 11 93 1 151 11 97 1 152] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 101 0 197 11 101 0 198 11 101 0 200 0 253 1 6 11 101 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 101 1 15 0 253 1 20 11 101 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 105 0 197 11 105 0 198 11 105 0 200 0 253 1 6 11 105 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 105 1 15 0 253 1 20 11 105 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 11 113 0 201 11 113 0 204 11 113 0 205 11 113 0 206 11 113 0 214 11 113 0 228 11 113 0 229 11 113 0 230 11 113 0 231 11 113 0 232 11 113 0 233 11 113 0 234 11 113 0 235 11 113 0 238 11 113 0 239 11 113 0 241 11 113 0 242 11 113 0 243 11 113 0 248 11 113 0 249 11 113 0 250 11 113 0 251 11 113 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 3 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 34 0 4 0 34 0 6 11 117 0 72 0 34 0 125 0 34 1 229] 
#[1 11 121 0 61 11 125 0 63 6 93 0 72 11 129 0 79 11 133 0 81 11 137 0 90 11 141 0 92 11 145 0 93 11 149 0 116 11 169 1 170 11 157 1 210 11 161 1 213 11 165 1 214 11 169 1 220 11 173 1 221] 
#[1 0 189 0 125 11 177 0 142] 
#[1 3 29 0 4 11 181 0 23 11 185 0 26 11 189 1 65 11 193 1 229] 
#[1 11 197 0 2 11 201 0 26 0 189 0 125 11 205 0 142] 
#[1 4 137 0 2 3 101 0 4 4 141 0 22 3 105 0 26 0 189 0 125 3 129 0 129 11 209 0 142 3 113 1 54 3 117 1 55 3 121 1 56 3 125 1 57 3 129 1 61 3 117 1 62 3 129 1 71 3 141 1 229] 
#[1 0 189 0 125 11 213 0 142] 
#[1 0 189 0 125 11 217 0 142 11 221 1 176] 
#[1 0 189 0 125 11 225 0 142] 
#[0 3 170 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 174 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 7 201 0 1 7 205 0 61 7 209 0 62 11 229 0 73 7 213 1 226] 
#[0 3 190 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 194 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 198 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 202 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 206 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 218 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 242 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 246 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 250 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 5 217 0 2 5 221 0 11 11 233 0 79 5 229 1 102 5 233 1 146] 
#[1 6 241 0 2 11 237 0 5 6 249 0 6 2 157 0 11 6 253 0 94 7 1 0 102 8 45 0 121 0 189 0 125 7 5 0 126 7 25 0 129 7 29 0 130 8 49 0 142 11 241 0 143 11 241 0 155 11 241 0 156 11 241 0 157 8 57 0 220 8 61 0 221 8 65 0 224 8 65 0 226 7 25 1 71 7 29 1 72 7 33 1 102 7 37 1 122 7 41 1 123 7 45 1 124 7 45 1 136 7 45 1 138 7 45 1 142 7 45 1 143 7 45 1 144 8 73 1 229] 
#[1 2 145 0 2 6 217 0 4 6 221 0 6 11 245 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 3 205 0 121 11 249 0 122 0 189 0 125 2 189 0 129 2 193 0 130 6 225 0 142 8 81 0 149 3 217 0 217 3 217 0 218 3 217 0 219 8 85 0 222 8 89 0 223 8 93 0 225 8 93 0 226 8 97 0 227 2 189 1 71 2 193 1 72 2 197 1 102 7 85 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 7 81 1 127 7 85 1 128 2 205 1 129 2 209 1 130 7 85 1 131 7 85 1 132 2 217 1 133 2 217 1 135 6 237 1 229] 
#[1 0 107 0 3 0 107 0 5 1 226 0 6 0 107 0 7 1 226 0 8 1 226 0 11 1 230 0 22 8 101 0 23 1 226 0 40 1 226 0 48 0 107 0 122 8 153 0 159] 
#[0 11 253 0 3] 
#[0 12 1 0 3] 
#[1 0 38 0 1 0 38 0 4 0 38 0 6 0 38 0 43 0 67 0 98 0 71 0 99 0 75 0 100 0 79 0 101 0 38 0 110 0 38 0 123 0 83 0 125 8 189 0 142 8 193 1 34 8 197 1 140] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 12 5 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 105 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 12 9 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 12 13 0 197 12 13 0 198 0 253 1 6 12 13 1 9 1 125 1 10 1 129 1 11 1 133 1 14 12 13 1 15 0 253 1 20 12 13 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 12 17 0 2 2 157 0 11 12 21 1 102] 
#[1 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 12 25 0 143 12 25 0 155 12 25 0 156 12 25 0 157 7 25 1 71 7 29 1 72] 
#[0 4 6 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 10 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[1 6 241 0 2 4 14 0 5 4 14 0 8 2 157 0 11 12 29 0 43 4 14 0 122 12 33 0 123 7 33 1 102 12 37 1 137 12 41 1 138] 
#[0 4 18 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 22 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 26 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 30 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 12 45 0 2] 
#[0 12 49 0 5] 
#[1 4 34 0 5 12 53 0 8 12 57 0 122] 
#[0 4 38 0 5 0 8 0 122] 
#[0 4 42 0 5 0 8 0 122] 
#[0 4 46 0 5 0 8 0 122] 
#[0 4 50 0 5 0 8 0 122] 
#[0 4 54 0 5 0 8 0 122] 
#[0 4 58 0 5 0 8 0 122] 
#[0 4 62 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 12 61 0 7] 
#[0 4 66 0 7 0 122] 
#[1 12 65 0 7 12 69 0 122] 
#[0 4 70 0 7 0 122] 
#[1 4 74 0 14 12 73 0 74 4 74 0 122 12 77 1 105] 
#[1 12 81 0 14 12 85 0 122] 
#[0 4 78 0 14 0 122] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 6 233 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 6 233 1 131 6 233 1 132 2 217 1 133 2 217 1 135] 
#[1 4 82 0 3 4 82 0 4 4 82 0 5 0 111 0 6 4 82 0 7 4 82 0 8 4 82 0 9 4 82 0 11 4 82 0 12 4 82 0 14 4 82 0 15 4 82 0 18 4 82 0 19 4 82 0 20 4 82 0 21 4 82 0 23 4 82 0 24 4 82 0 25 4 82 0 26 4 82 0 27 4 82 0 35 4 82 0 37 4 82 0 40 4 82 0 41 4 82 0 43 4 82 0 45 4 82 0 47 4 82 0 48 4 82 0 49 4 82 0 51 4 82 0 53 4 82 0 54 4 82 0 64 4 82 0 84 4 82 0 87 4 82 0 98 4 82 0 99 4 82 0 100 4 82 0 101 4 82 0 105 4 82 0 122 4 82 0 123 4 82 0 126 4 82 0 129 4 82 0 130 4 82 0 135 4 82 0 136 7 141 0 240 4 82 1 229 4 82 1 230] 
#[1 4 86 0 3 4 86 0 4 4 86 0 5 0 115 0 6 4 86 0 7 4 86 0 8 4 86 0 9 4 86 0 11 4 86 0 12 4 86 0 14 4 86 0 15 4 86 0 18 4 86 0 19 4 86 0 20 4 86 0 21 4 86 0 23 4 86 0 24 4 86 0 25 4 86 0 26 4 86 0 27 4 86 0 35 4 86 0 37 4 86 0 40 4 86 0 41 4 86 0 43 4 86 0 45 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 51 4 86 0 53 4 86 0 54 4 86 0 64 4 86 0 84 4 86 0 87 4 86 0 98 4 86 0 99 4 86 0 100 4 86 0 101 4 86 0 105 4 86 0 122 4 86 0 123 4 86 0 126 4 86 0 129 4 86 0 130 4 86 0 135 4 86 0 136 7 141 0 240 4 86 1 229 4 86 1 230] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 12 89 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 12 93 0 2] 
#[0 4 90 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 4 94 0 3 4 94 0 4 4 94 0 5 4 94 0 6 4 94 0 7 4 94 0 8 4 94 0 9 4 94 0 11 4 94 0 12 4 94 0 14 4 94 0 15 4 94 0 18 4 94 0 19 4 94 0 20 4 94 0 21 12 97 0 22 4 94 0 23 4 94 0 24 4 94 0 25 4 94 0 26 4 94 0 27 4 94 0 35 4 94 0 37 4 94 0 40 4 94 0 41 4 94 0 43 4 94 0 45 4 94 0 47 4 94 0 48 4 94 0 49 4 94 0 51 4 94 0 53 4 94 0 54 4 94 0 64 4 94 0 84 4 94 0 87 4 94 0 98 4 94 0 99 4 94 0 100 4 94 0 101 4 94 0 105 4 94 0 122 4 94 0 123 4 94 0 126 4 94 0 129 4 94 0 130 4 94 0 135 4 94 0 136 4 94 1 229 4 94 1 230] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 12 101 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 7 101 0 2 2 149 0 4 2 153 0 6 2 161 0 85 2 165 0 89 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 12 105 1 111 12 105 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 12 105 1 130 2 217 1 133 2 217 1 135] 
#[1 7 101 0 2 2 149 0 4 2 153 0 6 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 12 109 1 113 12 109 1 114 12 109 1 115 12 109 1 116 12 109 1 117 12 109 1 118 2 241 1 119 2 245 1 120 12 109 1 121 12 109 1 125 12 109 1 126 12 109 1 133 12 109 1 135] 
#[0 12 113 0 6] 
#[1 9 169 0 11 12 117 1 106] 
#[1 0 189 0 125 12 121 0 142] 
#[0 4 98 0 8 0 78] 
#[0 4 102 0 5 0 55 0 78 0 122] 
#[1 4 106 0 5 12 125 0 55 4 106 0 122] 
#[1 12 129 0 5 12 133 0 122] 
#[0 4 110 0 5 0 122] 
#[0 4 114 0 5 0 55 0 78 0 122] 
#[0 12 137 0 126 0 129 1 52 1 71] 
#[1 12 141 0 2 12 145 0 26 0 189 0 125 12 149 0 142] 
#[0 12 153 0 8] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 12 157 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 12 161 0 2 0 189 0 125 12 165 0 142] 
#[0 12 169 0 2] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 33 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 12 173 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 157 0 169 12 177 0 170 12 177 0 171 12 177 0 172 1 33 0 175 4 157 0 179 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 4 161 1 229] 
#[1 4 97 0 4 4 101 0 74 0 189 0 125 12 181 0 142 12 185 1 36 4 113 1 37 12 189 1 229] 
#[0 12 193 0 61] 
#[0 4 118 0 1 0 4 0 6 0 43 0 61 0 62 0 64 0 73 0 98 0 99 0 100 0 101 0 105 0 110 0 123 0 125 0 126 0 129 0 130 1 229] 
#[0 12 197 0 129 1 61 1 71] 
#[0 12 201 0 8] 
#[0 4 122 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 117 0 72] 
#[1 12 205 0 2 2 157 0 11 0 189 0 125 12 209 0 142 12 213 1 102 12 217 1 138 12 221 1 146] 
#[0 4 126 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 4 130 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 4 134 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 4 138 0 78] 
#[0 12 225 0 55] 
#[1 12 229 0 5 12 233 0 122] 
#[0 4 142 0 5 0 122] 
#[0 4 146 0 5 0 122] 
#[0 12 237 0 114] 
#[1 0 189 0 125 12 241 0 142 12 241 1 62] 
#[0 12 245 0 8] 
#[1 3 101 0 4 3 105 0 26 12 249 1 56 12 253 1 57] 
#[0 4 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 101 0 4 0 189 0 125 13 1 0 142 13 1 1 55 13 5 1 57 13 1 1 62] 
#[0 4 154 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 12 13 0 197 12 13 0 198 0 253 1 6 12 13 1 9 1 125 1 10 1 129 1 11 1 133 1 14 12 13 1 15 0 253 1 20 12 13 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 189 0 125 13 9 0 142] 
#[1 2 162 0 3 2 162 0 5 2 162 0 7 8 101 0 23 2 162 0 122 8 153 0 159] 
#[0 13 13 0 123] 
#[0 13 17 0 5] 
#[1 13 21 0 5 13 25 0 122] 
#[0 4 158 0 5 0 122] 
#[0 4 162 0 5 0 122] 
#[1 8 197 0 98 8 197 0 99 8 197 0 100 8 197 0 101 0 189 0 125 8 189 0 142 8 197 1 140] 
#[0 4 166 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 3 149 0 4 3 153 0 6 13 29 0 7 3 205 0 121 8 217 0 122 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 13 33 0 225 13 33 0 226 13 37 0 227 6 237 1 229] 
#[1 13 41 0 7 13 45 0 122] 
#[0 4 170 0 7 0 122] 
#[0 4 174 0 7 0 122] 
#[0 13 49 0 7] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 13 53 0 197 13 53 0 198 0 253 1 6 13 53 1 9 1 125 1 10 1 129 1 11 1 133 1 14 13 53 1 15 0 253 1 20 13 53 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 4 178 0 8 0 122] 
#[0 4 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 3 157 0 142 13 57 0 213 3 169 0 217 3 169 0 218 3 169 0 219 13 57 1 153 13 57 1 154 3 189 1 229] 
#[0 4 186 0 8 0 122] 
#[1 12 33 0 123 13 61 1 137] 
#[1 12 33 0 123 13 65 1 137] 
#[1 3 29 0 4 3 33 0 26 13 69 1 64 13 73 1 65] 
#[1 2 198 0 2 0 119 0 3 2 198 0 6 0 119 0 7 2 198 0 9 2 198 0 10 2 198 0 11 2 198 0 12 2 198 0 13 2 198 0 14 2 198 0 15 2 198 0 16 2 198 0 17 2 198 0 18 2 198 0 20 2 198 0 21 2 198 0 22 0 119 0 23 2 198 0 24 2 198 0 25 2 198 0 26 2 198 0 27 2 198 0 28 2 198 0 29 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 38 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 2 198 0 47 2 198 0 48 2 198 0 49 2 198 0 50 2 198 0 51 2 198 0 53 2 198 0 54 2 198 0 84 2 198 0 87 0 119 0 122 2 198 0 133 2 198 0 134 2 198 1 228 2 198 1 229] 
#[1 0 97 0 2 0 23 0 4 3 201 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 13 77 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 201 0 197 8 201 0 198 8 149 0 217 8 149 0 218 8 149 0 219 0 253 1 6 8 201 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 201 1 15 0 253 1 20 8 201 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 23 0 4 3 201 0 6 13 81 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 8 137 0 121 8 217 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 3 209 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 8 221 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 225 0 197 8 225 0 198 3 217 0 217 3 217 0 218 3 217 0 219 13 33 0 225 13 33 0 226 13 37 0 227 0 253 1 6 8 225 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 225 1 15 0 253 1 20 8 225 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 3 253 1 229] 
#[1 4 190 0 3 4 190 0 7 12 33 0 123 13 85 1 137] 
#[0 4 194 0 3 0 7] 
#[0 4 198 0 3 0 5 0 7 0 122] 
#[0 4 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 206 0 3 0 5 0 7 0 122] 
#[0 4 210 0 19] 
#[1 4 214 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 13 93 0 225 13 93 0 226 13 89 0 227 13 89 1 3 13 93 1 4 6 237 1 229] 
#[0 4 218 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[0 4 222 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[0 4 226 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[0 4 230 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[1 13 97 0 43 12 33 0 123 13 101 1 137] 
#[1 7 201 0 1 3 149 0 4 3 153 0 6 4 234 0 43 13 121 0 98 13 121 0 99 13 121 0 100 13 121 0 101 13 105 0 110 4 234 0 123 0 189 0 125 13 117 0 142 13 117 0 217 13 117 0 218 13 117 0 219 13 117 1 139 13 121 1 140 7 213 1 226] 
#[1 0 189 0 125 13 125 0 142] 
#[0 4 238 0 5 0 7 0 122] 
#[0 4 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 13 129 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 5 0 121 8 217 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 13 133 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 13 137 0 197 13 137 0 198 0 253 1 6 13 137 1 9 1 125 1 10 1 129 1 11 1 133 1 14 13 137 1 15 0 253 1 20 13 137 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 4 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 250 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 121 0 122 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 4 254 0 7 0 122] 
#[0 5 2 0 7 0 122] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 10 229 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 10 229 1 131 10 229 1 132 2 217 1 133 2 217 1 135] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 13 141 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 13 145 0 2 0 189 0 125 13 149 0 142] 
#[0 13 153 0 2] 
#[1 0 97 0 2 0 123 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 13 161 0 197 13 161 0 198 0 253 1 6 13 161 1 9 1 125 1 10 1 129 1 11 13 161 1 13 1 133 1 14 13 161 1 15 13 165 1 16 0 253 1 20 13 161 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 5 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[0 5 10 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 21 0 125 9 25 0 127 13 169 1 42] 
#[1 13 173 0 26 9 21 0 125 9 25 0 127 13 177 1 42] 
#[1 9 21 0 125 9 25 0 127 13 181 1 42] 
#[1 9 21 0 125 9 25 0 127 13 185 1 42] 
#[1 13 189 0 4 9 1 0 26 9 5 0 56 9 9 0 80 9 13 0 104 9 21 0 125 9 25 0 127 13 193 1 17 13 193 1 21 13 193 1 26 13 193 1 30 13 197 1 41 9 61 1 42 13 193 1 147 13 193 1 148 9 225 1 229] 
#[0 5 14 0 2 0 8 0 23] 
#[0 5 18 0 2 0 8 0 23] 
#[0 5 22 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 5 26 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 5 30 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 5 34 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 13 201 0 5] 
#[1 5 38 0 5 8 253 0 8 9 1 0 26 9 5 0 56 9 9 0 80 9 13 0 104 9 17 0 105 9 21 0 125 9 25 0 127 13 205 1 17 13 205 1 21 13 205 1 26 13 205 1 30 13 205 1 40 9 57 1 41 9 61 1 42 13 205 1 43 13 205 1 147 13 205 1 148 9 77 1 229] 
#[0 5 42 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 209 0 8] 
#[1 13 213 0 2 5 46 0 8 8 101 0 23 13 217 0 159] 
#[0 5 50 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 5 54 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 5 58 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 0 38 0 1 0 127 0 6 0 38 0 64 13 221 0 80 0 38 0 98 0 38 0 99 0 38 0 100 0 38 0 101 13 225 0 104 0 38 0 105 0 131 0 126 0 135 0 129 0 139 0 130 13 229 0 143 13 229 0 155 13 229 0 156 13 229 0 157 13 233 1 34 7 25 1 71 7 29 1 72 13 237 1 143 13 241 1 162 13 245 1 164 13 245 1 165 13 245 1 167 13 245 1 168 14 5 1 169 0 38 1 229] 
#[1 5 62 0 4 9 141 1 229] 
#[0 5 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 14 9 0 5 8 253 0 8 9 1 0 26 9 5 0 56 9 9 0 80 9 13 0 104 9 17 0 105 9 21 0 125 9 25 0 127 9 53 1 17 9 53 1 21 9 53 1 26 9 53 1 30 14 13 1 38 9 49 1 39 9 53 1 40 9 57 1 41 9 61 1 42 9 53 1 43 9 53 1 147 9 53 1 148 9 77 1 229] 
#[1 0 189 0 125 2 185 0 142 14 21 1 118 2 241 1 119 2 245 1 120 14 21 1 160] 
#[1 0 189 0 125 2 185 0 142 14 33 1 118 2 241 1 119 2 245 1 120 14 29 1 157 14 33 1 158] 
#[1 5 70 0 4 9 97 0 86 14 37 1 161] 
#[0 5 74 0 4] 
#[0 14 41 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 14 45 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 14 49 0 2] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 14 53 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 14 57 0 3] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 143 0 2 5 86 0 3 5 86 0 4 5 86 0 5 0 143 0 6 5 86 0 7 5 86 0 8 5 86 0 9 5 86 0 10 5 86 0 11 5 86 0 12 5 86 0 13 5 86 0 14 5 86 0 15 5 86 0 16 5 86 0 17 5 86 0 18 5 86 0 20 5 86 0 21 0 143 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 29 5 86 0 30 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 34 5 86 0 35 5 86 0 36 5 86 0 37 5 86 0 38 5 86 0 40 5 86 0 41 5 86 0 42 5 86 0 43 0 143 0 44 5 86 0 45 5 86 0 46 5 86 0 47 5 86 0 48 5 86 0 49 5 86 0 50 5 86 0 51 5 86 0 53 5 86 0 54 5 86 0 84 5 86 0 87 5 86 0 97 5 86 0 122 5 86 0 123 0 143 0 133 0 143 0 134 5 86 0 135 5 86 0 136 5 86 1 228 0 143 1 229 5 86 1 230] 
#[0 10 49 0 52] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 61 0 197 14 61 0 198 0 253 1 6 14 61 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 61 1 15 0 253 1 20 14 61 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 14 65 0 3 14 69 0 122] 
#[0 5 94 0 3 0 122] 
#[1 14 73 0 7 5 193 0 122] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 14 77 1 107 14 81 1 108 14 81 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 14 81 1 131 14 81 1 132 2 217 1 133 2 217 1 135] 
#[0 14 89 0 2] 
#[0 5 102 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 1 98 0 4 1 98 0 137 1 98 0 139 14 93 1 98] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 97 0 197 14 97 0 198 0 253 1 6 14 97 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 97 1 15 0 253 1 20 14 97 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 5 14 0 2 0 102 0 5 0 102 0 23 0 102 0 122] 
#[1 5 110 0 5 8 101 0 23 5 110 0 122 14 101 0 159] 
#[1 14 105 0 5 14 109 0 122] 
#[0 5 114 0 5 0 122] 
#[0 14 113 0 123] 
#[0 5 118 0 5 0 122] 
#[0 5 122 0 5 0 122] 
#[0 13 213 0 2] 
#[1 8 41 0 6 13 221 0 80 13 225 0 104 7 5 0 126 7 25 0 129 7 29 0 130 13 229 0 143 13 229 0 155 13 229 0 156 13 229 0 157 7 25 1 71 7 29 1 72] 
#[1 5 193 0 122 14 117 0 135 14 121 0 136 14 125 0 162 14 129 0 163] 
#[1 14 133 0 7 5 193 0 122] 
#[0 5 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 137 0 197 14 137 0 198 14 137 0 200 0 253 1 6 14 137 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 137 1 15 0 253 1 20 14 137 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 141 0 197 14 141 0 198 14 141 0 200 0 253 1 6 14 141 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 141 1 15 0 253 1 20 14 141 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 14 145 0 126 14 149 0 127] 
#[0 5 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 14 153 0 7 5 193 0 122] 
#[0 5 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 174 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 5 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 14 157 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 14 157 1 131 14 157 1 132 2 217 1 133 2 217 1 135] 
#[0 5 182 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 5 186 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 5 190 0 3 5 190 0 5 5 190 0 7 5 190 0 8 5 101 0 9 5 190 0 11 5 190 0 12 5 190 0 14 5 190 0 15 5 190 0 18 5 190 0 20 5 190 0 21 5 190 0 24 5 190 0 25 5 101 0 26 5 190 0 35 5 190 0 37 5 190 0 40 5 190 0 41 5 190 0 43 5 190 0 45 5 101 0 47 5 190 0 48 5 190 0 49 5 190 0 51 5 190 0 53 5 190 0 54 5 190 0 84 5 190 0 87 5 190 0 122 5 190 0 123 5 190 0 135 5 190 0 136 5 101 0 184 5 190 1 230] 
#[1 5 194 0 3 5 194 0 5 5 194 0 7 5 194 0 8 5 101 0 9 5 194 0 11 5 194 0 12 5 194 0 14 5 194 0 15 5 194 0 18 5 194 0 20 5 194 0 21 5 194 0 24 5 194 0 25 5 101 0 26 5 194 0 35 5 194 0 37 5 194 0 40 5 194 0 41 5 194 0 43 5 194 0 45 5 101 0 47 5 194 0 48 5 194 0 49 5 194 0 51 5 194 0 53 5 194 0 54 5 194 0 84 5 194 0 87 5 194 0 122 5 194 0 123 5 194 0 135 5 194 0 136 5 101 0 184 5 194 1 230] 
#[1 5 198 0 3 5 198 0 5 5 198 0 7 5 198 0 8 5 198 0 11 5 198 0 12 5 198 0 14 5 198 0 15 5 198 0 18 5 198 0 20 5 198 0 21 5 198 0 24 5 198 0 25 5 105 0 35 5 109 0 37 5 198 0 40 5 198 0 41 5 198 0 43 5 198 0 45 5 198 0 48 5 198 0 49 5 198 0 51 5 198 0 53 5 198 0 54 5 198 0 84 5 198 0 87 5 198 0 122 5 198 0 123 5 198 0 135 5 198 0 136 5 198 1 230] 
#[1 5 202 0 3 5 202 0 5 5 202 0 7 5 202 0 8 5 202 0 11 5 202 0 12 5 202 0 14 5 202 0 15 5 202 0 18 5 202 0 20 5 202 0 21 5 202 0 24 5 202 0 25 5 105 0 35 5 109 0 37 5 202 0 40 5 202 0 41 5 202 0 43 5 202 0 45 5 202 0 48 5 202 0 49 5 202 0 51 5 202 0 53 5 202 0 54 5 202 0 84 5 202 0 87 5 202 0 122 5 202 0 123 5 202 0 135 5 202 0 136 5 202 1 230] 
#[1 5 206 0 3 5 206 0 5 5 206 0 7 5 206 0 8 5 206 0 11 5 206 0 12 5 206 0 14 5 206 0 15 5 206 0 18 5 206 0 20 5 206 0 21 5 206 0 24 5 206 0 25 5 105 0 35 5 109 0 37 5 206 0 40 5 206 0 41 5 206 0 43 5 206 0 45 5 206 0 48 5 206 0 49 5 206 0 51 5 206 0 53 5 206 0 54 5 206 0 84 5 206 0 87 5 206 0 122 5 206 0 123 5 206 0 135 5 206 0 136 5 206 1 230] 
#[1 5 210 0 3 5 210 0 5 5 210 0 7 5 210 0 8 5 210 0 11 5 113 0 12 5 210 0 14 5 117 0 15 5 121 0 18 5 210 0 20 5 210 0 21 5 210 0 24 5 210 0 25 5 210 0 40 5 210 0 41 5 210 0 43 5 210 0 45 5 210 0 48 5 210 0 49 5 210 0 51 5 210 0 53 5 210 0 54 5 210 0 84 5 210 0 87 5 210 0 122 5 210 0 123 5 210 0 135 5 210 0 136 5 210 1 230] 
#[1 5 214 0 3 5 214 0 5 5 214 0 7 5 214 0 8 5 214 0 11 5 113 0 12 5 214 0 14 5 117 0 15 5 121 0 18 5 214 0 20 5 214 0 21 5 214 0 24 5 214 0 25 5 214 0 40 5 214 0 41 5 214 0 43 5 214 0 45 5 214 0 48 5 214 0 49 5 214 0 51 5 214 0 53 5 214 0 54 5 214 0 84 5 214 0 87 5 214 0 122 5 214 0 123 5 214 0 135 5 214 0 136 5 214 1 230] 
#[1 5 218 0 3 5 218 0 5 5 218 0 7 5 218 0 8 5 218 0 11 5 113 0 12 5 218 0 14 5 117 0 15 5 121 0 18 5 218 0 20 5 218 0 21 5 218 0 24 5 218 0 25 5 218 0 40 5 218 0 41 5 218 0 43 5 218 0 45 5 218 0 48 5 218 0 49 5 218 0 51 5 218 0 53 5 218 0 54 5 218 0 84 5 218 0 87 5 218 0 122 5 218 0 123 5 218 0 135 5 218 0 136 5 218 1 230] 
#[1 5 222 0 3 5 222 0 5 5 222 0 7 5 222 0 8 5 222 0 11 5 113 0 12 5 222 0 14 5 117 0 15 5 121 0 18 5 222 0 20 5 222 0 21 5 222 0 24 5 222 0 25 5 222 0 40 5 222 0 41 5 222 0 43 5 222 0 45 5 222 0 48 5 222 0 49 5 222 0 51 5 222 0 53 5 222 0 54 5 222 0 84 5 222 0 87 5 222 0 122 5 222 0 123 5 222 0 135 5 222 0 136 5 222 1 230] 
#[1 5 226 0 3 5 226 0 5 5 226 0 7 5 226 0 8 5 226 0 11 5 113 0 12 5 226 0 14 5 117 0 15 5 121 0 18 5 226 0 20 5 226 0 21 5 226 0 24 5 226 0 25 5 226 0 40 5 226 0 41 5 226 0 43 5 226 0 45 5 226 0 48 5 226 0 49 5 226 0 51 5 226 0 53 5 226 0 54 5 226 0 84 5 226 0 87 5 226 0 122 5 226 0 123 5 226 0 135 5 226 0 136 5 226 1 230] 
#[1 5 230 0 3 5 230 0 5 5 230 0 7 5 230 0 8 5 230 0 11 5 113 0 12 5 230 0 14 5 117 0 15 5 121 0 18 5 230 0 20 5 230 0 21 5 230 0 24 5 230 0 25 5 230 0 40 5 230 0 41 5 230 0 43 5 230 0 45 5 230 0 48 5 230 0 49 5 230 0 51 5 230 0 53 5 230 0 54 5 230 0 84 5 230 0 87 5 230 0 122 5 230 0 123 5 230 0 135 5 230 0 136 5 230 1 230] 
#[1 5 234 0 3 5 234 0 5 5 234 0 7 5 234 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 234 0 24 5 234 0 25 5 234 0 40 5 234 0 41 5 234 0 43 5 234 0 45 5 234 0 48 5 234 0 49 5 234 0 51 5 234 0 53 5 234 0 54 5 141 0 84 5 145 0 87 5 234 0 122 5 234 0 123 5 234 0 135 5 234 0 136 5 234 1 230] 
#[1 5 238 0 3 5 238 0 5 5 238 0 7 5 238 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 238 0 24 5 238 0 25 5 238 0 40 5 238 0 41 5 238 0 43 5 238 0 45 5 238 0 48 5 238 0 49 5 238 0 51 5 238 0 53 5 238 0 54 5 141 0 84 5 145 0 87 5 238 0 122 5 238 0 123 5 238 0 135 5 238 0 136 5 238 1 230] 
#[1 5 242 0 3 5 242 0 5 5 242 0 7 5 242 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 242 0 24 5 242 0 25 5 242 0 40 5 242 0 41 5 242 0 43 5 242 0 45 5 242 0 48 5 242 0 49 5 242 0 51 5 242 0 53 5 242 0 54 5 141 0 84 5 145 0 87 5 242 0 122 5 242 0 123 5 242 0 135 5 242 0 136 5 242 1 230] 
#[1 5 246 0 3 5 246 0 5 5 246 0 7 5 246 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 246 0 24 5 246 0 25 5 246 0 40 5 246 0 41 5 246 0 43 5 246 0 45 5 246 0 48 5 246 0 49 5 246 0 51 5 246 0 53 5 246 0 54 5 141 0 84 5 145 0 87 5 246 0 122 5 246 0 123 5 246 0 135 5 246 0 136 5 246 1 230] 
#[1 5 250 0 3 5 250 0 5 5 250 0 7 5 250 0 8 5 149 0 24 5 153 0 25 5 250 0 40 5 250 0 41 5 250 0 43 5 250 0 45 5 250 0 48 5 250 0 49 5 250 0 51 5 157 0 53 5 161 0 54 5 250 0 122 5 250 0 123 5 250 0 135 5 250 0 136 5 250 1 230] 
#[1 5 254 0 3 5 254 0 5 5 254 0 7 5 254 0 8 5 165 0 40 5 254 0 41 5 254 0 43 5 254 0 45 5 254 0 48 5 254 0 49 5 254 0 51 5 254 0 122 5 254 0 123 5 254 0 135 5 254 0 136 5 254 1 230] 
#[1 6 2 0 3 6 2 0 5 6 2 0 7 6 2 0 8 6 2 0 41 6 2 0 43 6 2 0 45 6 2 0 48 6 2 0 49 5 169 0 51 6 2 0 122 6 2 0 123 6 2 0 135 6 2 0 136 6 2 1 230] 
#[1 6 6 0 3 6 6 0 5 6 6 0 7 6 6 0 8 6 6 0 41 6 6 0 43 5 173 0 48 6 6 0 49 6 6 0 122 6 6 0 123 6 6 0 135 6 6 0 136 6 6 1 230] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 43 5 173 0 48 0 246 0 49 0 246 0 122 0 246 0 123 0 246 0 135 0 246 0 136 0 246 1 230] 
#[1 6 10 0 3 6 10 0 5 6 10 0 7 6 10 0 8 5 177 0 41 6 10 0 43 6 10 0 49 6 10 0 122 6 10 0 123 6 10 0 135 6 10 0 136 6 10 1 230] 
#[1 6 14 0 3 6 14 0 5 6 14 0 7 6 14 0 8 6 14 0 43 6 14 0 45 5 173 0 48 6 14 0 122 6 14 0 123 6 14 0 135 6 14 0 136 6 14 1 230] 
#[0 14 161 0 123] 
#[0 6 18 0 3 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 14 169 1 7 14 173 1 8 0 6 1 229] 
#[0 6 26 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 6 30 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 6 34 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 6 38 0 3 6 38 0 5 6 38 0 7 6 38 0 8 6 38 0 11 5 113 0 12 6 38 0 14 5 117 0 15 5 121 0 18 6 38 0 20 6 38 0 21 6 38 0 24 6 38 0 25 6 38 0 40 6 38 0 41 6 38 0 43 6 38 0 45 6 38 0 48 6 38 0 49 6 38 0 51 6 38 0 53 6 38 0 54 6 38 0 84 6 38 0 87 6 38 0 122 6 38 0 123 6 38 0 135 6 38 0 136 6 38 1 230] 
#[1 0 22 0 137 14 177 1 77 14 181 1 96] 
#[1 6 42 0 4 0 147 0 137 14 185 0 139 14 193 1 74 14 193 1 75 1 197 1 76 14 193 1 94 1 205 1 96 14 197 1 101] 
#[1 6 50 0 4 6 50 0 9 6 50 0 14 14 201 0 22 14 205 0 123 6 50 0 138] 
#[1 6 42 0 4 14 209 0 9 0 126 0 14 14 213 0 138 14 241 1 80 14 221 1 84 14 225 1 85 14 229 1 86 14 225 1 87 14 225 1 88 14 241 1 89 14 245 1 97 14 249 1 101] 
#[0 6 54 0 4 0 9 0 14 0 138] 
#[0 6 58 0 4 0 9 0 14 0 138] 
#[0 6 62 0 138] 
#[1 14 253 0 138 15 1 1 82] 
#[0 15 5 0 14] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 15 9 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 15 9 1 131 15 9 1 132 2 217 1 133 2 217 1 135] 
#[0 15 13 0 3] 
#[1 1 226 0 6 1 226 0 11 0 151 0 14 1 230 0 22 1 226 0 40 1 226 0 48 12 73 0 74 4 74 0 122 12 77 1 105] 
#[0 15 17 0 14] 
#[1 5 217 0 2 2 157 0 11 5 229 1 102 15 21 1 146] 
#[0 15 25 0 4] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 15 29 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 6 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 15 33 0 8] 
#[0 15 37 0 8] 
#[0 15 41 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 45 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 15 49 0 197 15 49 0 198 15 49 0 200 0 253 1 6 15 49 1 9 1 125 1 10 1 129 1 11 1 133 1 14 15 49 1 15 0 253 1 20 15 49 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 15 53 0 142 15 57 0 215 6 53 0 216 15 61 0 217 15 61 0 218 15 61 0 219 15 65 0 237 6 61 1 229] 
#[1 0 202 0 8 0 202 0 9 5 73 0 10 0 202 0 11 0 202 0 12 5 73 0 13 0 202 0 14 0 202 0 15 5 73 0 16 5 73 0 17 0 202 0 18 0 202 0 20 0 202 0 21 5 73 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 5 73 0 28 5 73 0 29 5 73 0 30 5 73 0 31 5 73 0 32 5 73 0 33 5 73 0 34 0 202 0 35 5 53 0 36 0 202 0 37 5 57 0 38 0 202 0 40 0 202 0 41 5 73 0 42 0 202 0 43 0 202 0 45 5 73 0 46 0 202 0 47 0 202 0 48 0 202 0 49 5 73 0 50 0 202 0 51 0 202 0 53 0 202 0 54 0 155 0 84 0 202 0 87 15 73 0 97 0 202 0 122 5 73 0 199 5 73 1 228 5 81 1 229] 
#[1 15 77 0 8 5 193 0 122] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 81 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 15 85 0 197 15 85 0 198 15 85 0 200 0 253 1 6 15 85 1 9 1 125 1 10 1 129 1 11 1 133 1 14 15 85 1 15 0 253 1 20 15 85 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 15 89 0 142 3 161 0 212 3 165 0 213 15 93 0 217 15 93 0 218 15 93 0 219 15 97 0 237 3 165 1 153 3 165 1 154 3 189 1 229] 
#[1 15 101 0 84 15 105 0 97] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 33 0 56 0 137 0 61 15 117 0 63 1 173 0 75 0 149 0 79 0 153 0 83 15 117 0 90 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 15 109 0 116 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 15 113 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 15 113 0 179 15 117 0 211 15 121 0 236 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 4 161 1 229] 
#[1 15 125 0 3 5 193 0 122] 
#[1 15 129 0 8 5 193 0 122] 
#[1 15 133 0 3 5 193 0 122] 
#[0 6 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 15 137 0 2 1 217 0 4 15 141 0 206] 
#[1 1 217 0 4 15 145 0 206] 
#[1 6 74 0 1 6 74 0 2 6 74 0 4 6 74 0 5 6 74 0 6 6 74 0 8 6 74 0 35 6 74 0 36 6 74 0 37 6 74 0 38 6 74 0 39 6 74 0 52 6 74 0 56 6 74 0 57 6 74 0 58 6 74 0 59 6 74 0 61 6 74 0 62 6 74 0 63 6 74 0 65 6 74 0 66 6 74 0 67 6 74 0 68 6 74 0 69 6 74 0 70 6 74 0 71 6 74 0 72 6 74 0 73 6 74 0 75 11 57 0 76 6 74 0 77 6 74 0 79 6 74 0 82 6 74 0 83 6 74 0 88 6 74 0 90 6 74 0 93 6 74 0 94 6 74 0 95 6 74 0 103 6 74 0 107 6 74 0 108 6 74 0 110 6 74 0 111 6 74 0 112 6 74 0 113 6 74 0 114 6 74 0 115 6 74 0 116 6 74 0 117 6 74 0 118 6 74 0 119 6 74 0 120 6 74 0 125 6 74 0 127 6 74 0 129 6 74 0 130 6 74 0 131 6 74 0 133 6 74 0 134 6 74 0 137 15 149 0 253 6 74 1 229 6 74 1 230] 
#[0 6 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 82 0 8 0 122] 
#[0 6 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 6 45 0 142 15 153 0 216 6 57 0 217 6 57 0 218 6 57 0 219 6 61 1 229] 
#[0 6 90 0 8 0 122] 
#[1 12 33 0 123 15 157 1 137] 
#[1 12 33 0 123 15 161 1 137] 
#[0 6 94 0 8 0 122] 
#[0 6 98 0 8 0 122] 
#[1 15 165 0 3 5 193 0 122] 
#[1 15 169 0 3 5 193 0 122] 
#[0 6 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 15 173 0 142] 
#[1 0 189 0 125 15 177 0 142] 
#[1 11 117 0 72 0 189 0 125 15 181 0 142 15 185 1 211 15 189 1 212] 
#[1 0 189 0 125 15 193 0 142] 
#[0 15 197 0 4] 
#[1 0 189 0 125 15 181 0 142 15 201 1 211 15 189 1 212] 
#[0 15 205 0 129 1 71] 
#[1 0 189 0 125 11 217 0 142 15 209 1 176] 
#[1 0 189 0 125 15 181 0 142 15 213 1 211 15 189 1 212] 
#[0 6 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 15 217 0 4] 
#[1 0 189 0 125 15 221 0 142] 
#[1 7 217 0 78 15 225 1 58] 
#[1 15 229 0 8 7 217 0 78 15 233 1 58] 
#[0 15 237 0 114] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 15 241 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 15 245 0 2 0 189 0 125 15 249 0 142] 
#[0 15 253 0 2] 
#[1 16 1 0 23 2 106 0 78 2 106 0 122] 
#[1 2 149 0 4 2 157 0 11 16 5 0 74 16 9 1 102 16 13 1 121 16 17 1 156] 
#[0 6 134 0 4 0 22] 
#[1 16 21 0 4 16 25 0 22] 
#[1 2 157 0 11 16 29 0 23 16 33 1 102] 
#[1 0 38 0 1 3 37 0 56 0 38 0 61 0 38 0 62 6 85 0 63 16 37 0 67 16 41 0 68 6 93 0 72 3 45 0 79 16 45 0 83 6 109 0 88 0 65 0 90 6 113 0 93 6 117 0 114 2 9 0 116 16 49 0 203 16 53 0 210 0 65 0 211 16 57 0 214 16 49 1 5 16 49 1 19 16 49 1 24 16 49 1 28 16 61 1 33 3 85 1 34 16 65 1 53 16 69 1 145 16 73 1 155 16 77 1 170 16 81 1 175 16 85 1 181 16 89 1 209 16 93 1 229] 
#[1 12 205 0 2 2 157 0 11 0 189 0 125 16 97 0 142 12 213 1 102 12 217 1 138 16 101 1 146] 
#[1 0 159 0 3 0 159 0 5 4 2 0 6 0 159 0 7 4 2 0 8 4 154 0 23 4 2 0 40 4 2 0 48 0 159 0 122] 
#[1 6 241 0 2 4 14 0 5 4 14 0 8 2 157 0 11 12 29 0 43 4 14 0 122 16 105 0 123 7 33 1 102 12 37 1 137 12 41 1 138] 
#[1 0 163 0 3 0 163 0 5 4 62 0 6 0 163 0 7 4 62 0 8 4 166 0 23 4 62 0 40 4 62 0 48 0 163 0 122] 
#[1 2 202 0 4 2 202 0 6 0 167 0 7 2 202 0 121 2 202 0 122 2 202 0 125 2 202 1 229] 
#[0 16 109 0 19] 
#[0 6 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 16 113 0 3] 
#[1 0 130 0 2 0 130 0 6 0 130 0 7 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 16 117 0 123 0 130 0 133 0 130 0 134 0 130 1 228 0 130 1 229] 
#[0 16 121 0 7] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 16 125 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 16 129 0 2] 
#[1 6 142 0 5 6 142 0 8 16 133 0 43 6 142 0 122 12 33 0 123 16 137 1 137] 
#[1 6 241 0 2 6 146 0 5 6 146 0 8 2 157 0 11 6 146 0 122 12 33 0 123 7 33 1 102 16 141 1 137 16 145 1 138] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 16 149 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 16 149 1 131 16 149 1 132 2 217 1 133 2 217 1 135] 
#[0 6 150 0 5 0 8 0 122] 
#[0 6 154 0 5 0 8 0 122] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 16 153 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 6 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 105 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 229 1 230] 
#[1 6 241 0 2 6 162 0 5 6 249 0 6 2 157 0 11 6 253 0 94 7 1 0 102 7 5 0 126 7 25 0 129 7 29 0 130 7 13 0 143 7 13 0 155 7 13 0 156 7 13 0 157 7 25 1 71 7 29 1 72 7 33 1 102 16 157 1 124 16 157 1 136 16 157 1 138 16 157 1 142 16 157 1 143 16 157 1 144] 
#[1 6 241 0 2 6 166 0 5 6 249 0 6 2 157 0 11 6 253 0 94 7 1 0 102 7 5 0 126 7 25 0 129 7 29 0 130 7 13 0 143 7 13 0 155 7 13 0 156 7 13 0 157 7 25 1 71 7 29 1 72 7 33 1 102 16 161 1 124 16 161 1 136 16 161 1 138 16 161 1 142 16 161 1 143 16 161 1 144] 
#[0 6 170 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 6 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 16 165 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 16 169 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 16 169 1 128 2 205 1 129 2 209 1 130 16 169 1 131 16 169 1 132 2 217 1 133 2 217 1 135] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 16 173 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 16 173 1 131 16 173 1 132 2 217 1 133 2 217 1 135] 
#[0 6 178 0 14 0 122] 
#[0 6 182 0 2 0 4 0 23 0 74 1 229] 
#[1 0 189 0 125 7 89 0 142 16 177 1 104] 
#[0 16 181 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 16 185 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 0 189 0 125 16 189 0 142] 
#[0 16 193 0 3] 
#[1 6 186 0 3 6 186 0 4 6 186 0 5 6 186 0 6 6 186 0 7 6 186 0 8 6 186 0 9 6 186 0 11 6 186 0 12 6 186 0 14 6 186 0 15 6 186 0 18 6 186 0 19 6 186 0 20 6 186 0 21 6 186 0 23 6 186 0 24 6 186 0 25 6 186 0 26 6 186 0 27 6 186 0 35 6 186 0 37 0 171 0 40 6 186 0 41 6 186 0 43 6 186 0 45 6 186 0 47 6 186 0 48 6 186 0 49 6 186 0 51 6 186 0 53 6 186 0 54 6 186 0 64 6 186 0 84 6 186 0 87 6 186 0 98 6 186 0 99 6 186 0 100 6 186 0 101 6 186 0 105 6 186 0 122 6 186 0 123 6 186 0 126 6 186 0 129 6 186 0 130 6 186 0 135 6 186 0 136 6 186 1 229 6 186 1 230] 
#[1 6 190 0 3 6 190 0 4 6 190 0 5 0 175 0 6 6 190 0 7 6 190 0 8 6 190 0 9 6 190 0 11 6 190 0 12 6 190 0 14 6 190 0 15 6 190 0 18 6 190 0 19 6 190 0 20 6 190 0 21 6 190 0 23 6 190 0 24 6 190 0 25 6 190 0 26 6 190 0 27 6 190 0 35 6 190 0 37 6 190 0 40 6 190 0 41 6 190 0 43 6 190 0 45 6 190 0 47 6 190 0 48 6 190 0 49 6 190 0 51 6 190 0 53 6 190 0 54 6 190 0 64 6 190 0 84 6 190 0 87 6 190 0 98 6 190 0 99 6 190 0 100 6 190 0 101 6 190 0 105 6 190 0 122 6 190 0 123 6 190 0 126 6 190 0 129 6 190 0 130 6 190 0 135 6 190 0 136 7 141 0 240 6 190 1 229 6 190 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 16 197 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 16 201 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 16 201 1 131 16 201 1 132 2 217 1 133 2 217 1 135] 
#[0 6 194 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 86 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 6 198 0 3 6 198 0 4 6 198 0 5 6 198 0 6 6 198 0 7 6 198 0 8 6 198 0 9 6 198 0 11 6 198 0 12 6 198 0 14 6 198 0 15 6 198 0 18 6 198 0 19 6 198 0 20 6 198 0 21 6 202 0 22 6 198 0 23 6 198 0 24 6 198 0 25 6 198 0 26 6 198 0 27 6 198 0 35 6 198 0 37 6 198 0 40 6 198 0 41 6 198 0 43 6 198 0 45 6 198 0 47 6 198 0 48 6 198 0 49 6 198 0 51 6 198 0 53 6 198 0 54 6 198 0 64 6 198 0 84 6 198 0 86 6 198 0 87 6 198 0 98 6 198 0 99 6 198 0 100 6 198 0 101 6 198 0 105 6 198 0 122 6 198 0 123 6 198 0 126 6 198 0 129 6 198 0 130 6 198 0 135 6 198 0 136 6 198 1 229 6 198 1 230] 
#[0 16 205 0 126 0 129 1 52 1 71] 
#[0 6 206 0 8 0 78] 
#[1 16 209 0 5 7 161 0 126 7 161 0 129 7 161 1 52 16 213 1 67 7 161 1 71] 
#[0 6 210 0 78] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 16 217 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 16 221 0 2 0 189 0 125 16 225 0 142] 
#[0 16 229 0 2] 
#[0 6 214 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 16 233 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 16 237 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 16 241 0 2] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 16 245 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 6 218 0 1 0 130 0 2 6 218 0 4 0 179 0 6 0 130 0 22 6 218 0 43 0 130 0 44 6 218 0 61 6 218 0 62 6 218 0 64 6 218 0 73 6 218 0 98 6 218 0 99 6 218 0 100 6 218 0 101 6 218 0 105 6 218 0 110 6 218 0 123 6 218 0 125 6 218 0 126 6 218 0 129 6 218 0 130 0 130 0 133 0 130 0 134 0 179 1 229] 
#[1 6 222 0 1 4 165 0 2 6 222 0 4 0 183 0 6 4 241 0 22 6 222 0 43 4 221 0 44 6 222 0 61 6 222 0 62 6 222 0 64 6 222 0 73 6 222 0 98 6 222 0 99 6 222 0 100 6 222 0 101 6 222 0 105 6 222 0 110 6 222 0 123 6 222 0 125 6 222 0 126 6 222 0 129 6 222 0 130 0 209 0 133 0 18 0 134 4 245 0 160 0 249 0 161 4 249 0 173 4 253 0 176 0 187 1 229] 
#[1 4 97 0 4 4 101 0 74 16 249 1 36 4 113 1 37 16 253 1 229] 
#[0 6 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 157 0 11 9 93 0 74 9 97 0 86 17 1 1 102 9 101 1 159 9 105 1 161] 
#[1 4 97 0 4 4 101 0 74 0 189 0 125 17 5 0 142 17 9 1 36 4 113 1 37 17 13 1 229] 
#[0 6 230 0 8] 
#[0 6 234 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 17 17 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 12 205 0 2 2 157 0 11 12 213 1 102 17 21 1 138 17 25 1 146] 
#[0 17 29 0 2] 
#[0 17 33 0 8] 
#[0 17 37 0 4] 
#[1 0 189 0 125 17 41 0 142 17 41 1 62] 
#[0 6 238 0 78] 
#[1 17 45 0 5 0 189 0 125 7 253 0 126 7 253 0 129 8 9 0 142 7 253 1 52 17 49 1 60 8 9 1 62 7 253 1 71 8 13 1 229] 
#[1 0 189 0 125 17 53 0 126 17 53 0 129 17 57 0 142 17 53 1 52 17 57 1 62 17 53 1 71] 
#[0 6 242 0 78] 
#[0 6 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 250 0 78] 
#[0 6 254 0 78] 
#[0 7 2 0 78] 
#[0 7 6 0 78] 
#[0 7 10 0 5] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 17 61 0 225 17 61 0 226 6 237 1 229] 
#[0 7 14 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 7 18 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 17 65 0 5 8 41 0 6 8 45 0 121 0 189 0 125 7 5 0 126 7 25 0 129 7 29 0 130 8 49 0 142 8 53 0 143 8 53 0 155 8 53 0 156 8 53 0 157 17 69 0 220 17 73 0 224 17 73 0 226 7 25 1 71 7 29 1 72 8 73 1 229] 
#[0 7 22 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 7 26 0 7 0 122] 
#[0 17 77 0 7] 
#[0 7 30 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 3 149 0 4 3 153 0 6 17 81 0 7 3 205 0 121 4 9 0 122 0 189 0 125 8 49 0 142 17 85 0 149 3 217 0 217 3 217 0 218 3 217 0 219 17 89 0 223 8 93 0 225 8 93 0 226 17 93 0 227 6 237 1 229] 
#[0 7 34 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 7 38 0 3 0 5 0 7 0 8 0 122] 
#[0 7 42 0 8 0 122] 
#[1 7 46 0 8 8 101 0 23 7 46 0 122 17 97 0 159] 
#[1 7 50 0 8 8 101 0 23 7 50 0 122 17 101 0 159] 
#[1 7 217 0 78 17 105 1 58] 
#[0 2 102 0 78] 
#[1 0 130 0 2 0 130 0 6 0 191 0 7 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 130 0 122 12 33 0 123 0 130 0 133 0 130 0 134 13 85 1 137 0 130 1 228 0 130 1 229] 
#[1 4 246 0 2 0 195 0 3 4 246 0 6 0 195 0 7 4 246 0 9 4 246 0 10 4 246 0 11 4 246 0 12 4 246 0 13 4 246 0 14 4 246 0 15 4 246 0 16 4 246 0 17 4 246 0 18 4 246 0 20 4 246 0 21 4 246 0 22 0 195 0 23 4 246 0 24 4 246 0 25 4 246 0 26 4 246 0 27 4 246 0 28 4 246 0 29 4 246 0 30 4 246 0 31 4 246 0 32 4 246 0 33 4 246 0 34 4 246 0 35 4 246 0 36 4 246 0 37 4 246 0 38 4 246 0 40 4 246 0 41 4 246 0 42 4 246 0 43 4 246 0 44 4 246 0 45 4 246 0 46 4 246 0 47 4 246 0 48 4 246 0 49 4 246 0 50 4 246 0 51 4 246 0 53 4 246 0 54 4 246 0 84 4 246 0 87 0 195 0 122 4 246 0 133 4 246 0 134 4 246 1 228 4 246 1 229] 
#[0 7 54 0 3 0 7] 
#[0 7 58 0 3] 
#[0 7 62 0 3 0 122] 
#[0 7 66 0 3 0 5 0 7 0 122] 
#[1 7 70 0 3 7 70 0 5 7 70 0 7 8 101 0 23 7 70 0 122 17 109 0 159] 
#[0 7 74 0 3 0 5 0 7 0 23 0 43 0 122 0 123] 
#[0 7 78 0 3 0 5 0 7 0 23 0 43 0 122 0 123] 
#[0 7 82 0 3 0 5 0 7 0 23 0 43 0 122 0 123] 
#[1 17 113 0 43 12 33 0 123 17 117 1 137] 
#[1 4 234 0 3 3 149 0 4 4 234 0 5 3 153 0 6 4 234 0 7 4 234 0 23 4 234 0 43 13 105 0 110 4 234 0 122 4 234 0 123 0 189 0 125 17 121 0 142 17 121 0 217 17 121 0 218 17 121 0 219 17 121 1 139] 
#[1 7 86 0 3 7 86 0 5 7 86 0 7 8 101 0 23 17 125 0 43 7 86 0 122 12 33 0 123 17 129 0 159 17 133 1 137] 
#[0 7 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 94 0 7 0 122] 
#[0 7 98 0 7 0 122] 
#[0 17 137 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 17 141 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 17 145 0 2] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 17 149 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 17 157 1 31 0 6 1 229] 
#[0 7 102 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 7 106 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 17 161 0 2] 
#[1 9 21 0 125 9 25 0 127 17 165 1 42] 
#[0 17 169 0 2] 
#[0 17 173 0 2] 
#[0 17 177 0 2] 
#[1 0 6 0 2 0 6 0 4 7 110 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 17 181 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 185 1 44 17 189 1 45 0 6 1 229] 
#[0 7 114 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 17 193 0 8] 
#[0 7 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[0 7 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 17 197 1 0 3 237 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 7 130 0 8] 
#[1 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 17 201 0 143 17 201 0 155 17 201 0 156 17 201 0 157 7 25 1 71 7 29 1 72] 
#[1 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 17 205 0 143 17 205 0 155 17 205 0 156 17 205 0 157 7 25 1 71 7 29 1 72] 
#[1 5 217 0 2 2 157 0 11 17 209 0 43 5 229 1 102 17 213 1 146] 
#[1 7 201 0 1 8 41 0 6 17 217 0 64 17 229 0 98 17 229 0 99 17 229 0 100 17 229 0 101 17 221 0 105 7 5 0 126 7 25 0 129 7 29 0 130 17 225 0 143 17 225 0 155 17 225 0 156 17 225 0 157 7 25 1 71 7 29 1 72 17 229 1 140 17 233 1 147 17 237 1 148 7 213 1 226 17 241 1 229] 
#[0 17 245 0 8] 
#[0 7 134 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 138 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 142 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 146 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 150 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 154 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[0 17 249 0 5] 
#[0 7 162 0 4 0 86] 
#[0 7 166 0 4 0 86] 
#[0 7 170 0 4 0 122] 
#[1 7 174 0 4 17 253 0 122] 
#[0 7 178 0 4 0 122] 
#[0 7 182 0 4] 
#[0 18 1 0 4] 
#[0 18 5 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 18 9 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 18 13 0 3] 
#[0 7 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 190 0 3 0 122] 
#[0 7 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 18 17 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 18 21 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 25 0 197 18 25 0 198 0 253 1 6 18 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 25 1 15 0 253 1 20 18 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 7 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 29 0 14 18 33 0 122] 
#[0 7 202 0 14 0 122] 
#[0 7 206 0 14 0 122] 
#[1 0 97 0 2 18 37 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 9 149 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 18 41 0 174 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 157 0 197 9 157 0 198 0 253 1 6 9 157 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 157 1 15 0 253 1 20 9 157 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 3 126 0 4 3 126 0 137 3 126 0 139 18 45 1 92 10 185 1 93] 
#[0 7 210 0 5 0 122] 
#[0 7 214 0 5 0 122] 
#[0 7 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 49 0 5 8 41 0 6 9 1 0 26 9 5 0 56 9 9 0 80 9 13 0 104 9 189 0 121 9 193 0 125 7 5 0 126 9 25 0 127 7 25 0 129 7 29 0 130 9 197 0 142 9 209 0 143 18 53 0 154 9 209 0 155 9 209 0 156 9 209 0 157 18 53 0 158 18 53 1 17 18 53 1 21 18 53 1 26 18 53 1 30 9 221 1 42 7 25 1 71 7 29 1 72 18 53 1 147 18 53 1 148 9 225 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 57 0 197 18 57 0 198 0 253 1 6 18 57 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 57 1 15 0 253 1 20 18 57 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 61 0 197 18 61 0 198 18 61 0 200 0 253 1 6 18 61 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 61 1 15 0 253 1 20 18 61 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 7 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 65 0 135 18 69 0 136] 
#[0 7 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 73 0 7 5 193 0 122] 
#[1 18 77 0 7 5 193 0 122] 
#[0 7 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 246 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 81 0 197 18 81 0 198 0 253 1 6 18 81 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 81 1 15 0 253 1 20 18 81 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 6 0 2 0 6 0 4 7 250 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 81 0 208 0 57 0 209 6 81 0 210 0 65 0 211 0 6 1 229] 
#[0 18 85 0 5] 
#[0 7 254 0 5] 
#[0 8 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 18 89 0 137] 
#[0 8 6 0 4 0 137 0 139] 
#[0 8 10 0 4 0 137 0 139] 
#[0 8 14 0 4 0 137 0 139] 
#[0 18 93 0 4] 
#[0 8 18 0 138] 
#[0 18 97 0 138] 
#[1 8 22 0 14 18 101 1 99] 
#[1 8 26 0 4 8 26 0 9 8 26 0 14 8 26 0 23 14 205 0 123 8 26 0 138] 
#[0 8 30 0 4 0 9 0 14 0 23 0 138] 
#[1 18 105 0 9 0 126 0 14 18 109 1 97] 
#[0 8 34 0 4 0 9 0 14 0 138] 
#[1 6 42 0 4 8 38 0 9 8 38 0 14 14 213 0 138 14 241 1 80 18 113 1 85 18 113 1 87 18 113 1 88 14 241 1 89 14 249 1 101] 
#[0 8 42 0 4 0 9 0 14 0 138] 
#[0 8 46 0 4 0 9 0 14 0 138] 
#[1 8 50 0 4 8 50 0 9 8 50 0 14 18 117 0 23 8 50 0 138 18 121 1 90] 
#[0 18 125 0 14] 
#[0 18 129 0 4] 
#[1 8 54 0 4 8 54 0 9 8 54 0 14 14 201 0 22 8 54 0 138] 
#[0 8 58 0 138] 
#[0 8 62 0 4 0 137 0 139] 
#[0 8 66 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 229 1 230] 
#[1 8 70 0 4 8 70 0 8 8 70 0 19 12 33 0 123 18 133 1 137] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 41 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 41 0 179 18 137 0 180 18 137 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 18 137 1 32 0 253 1 35 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 4 49 1 229] 
#[0 18 141 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 18 145 1 7 14 173 1 8 0 6 1 229] 
#[0 18 149 0 3] 
#[0 8 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 153 0 197 18 153 0 198 18 153 0 200 0 253 1 6 18 153 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 153 1 15 0 253 1 20 18 153 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 18 157 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 161 0 197 18 161 0 198 18 161 0 200 0 253 1 6 18 161 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 161 1 15 0 253 1 20 18 161 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 18 165 0 8 5 193 0 122] 
#[1 3 154 0 8 8 101 0 23 8 82 0 84 8 82 0 97 3 154 0 122 11 69 0 159] 
#[1 18 169 0 8 11 77 0 122] 
#[1 8 101 0 23 8 86 0 84 8 86 0 97 11 81 0 159] 
#[1 18 173 0 84 18 177 0 97] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 181 0 197 18 181 0 198 18 181 0 200 0 253 1 6 18 181 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 181 1 15 0 253 1 20 18 181 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 185 0 197 18 185 0 198 0 253 1 6 18 185 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 185 1 15 0 253 1 20 18 185 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 18 189 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 193 0 197 18 193 0 198 18 193 0 200 0 253 1 6 18 193 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 193 1 15 0 253 1 20 18 193 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 18 197 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 201 0 197 18 201 0 198 18 201 0 200 0 253 1 6 18 201 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 201 1 15 0 253 1 20 18 201 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 18 205 0 8 5 193 0 122] 
#[1 2 134 0 8 8 101 0 23 8 82 0 84 8 82 0 97 2 134 0 122 8 105 0 159] 
#[1 8 101 0 23 8 86 0 84 8 86 0 97 8 117 0 159] 
#[0 8 90 0 84 0 97] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 209 0 197 18 209 0 198 18 209 0 200 0 253 1 6 18 209 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 209 1 15 0 253 1 20 18 209 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 213 0 197 18 213 0 198 0 253 1 6 18 213 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 213 1 15 0 253 1 20 18 213 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 18 225 0 142 18 225 0 217 18 225 0 218 18 225 0 219 18 225 0 237] 
#[1 18 229 0 97 9 141 1 229] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 15 97 0 142 15 97 0 217 15 97 0 218 15 97 0 219 15 97 0 237] 
#[0 18 233 0 97] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 18 237 0 201 18 237 0 204 18 237 0 205 18 237 0 206 18 237 0 214 18 237 0 228 18 237 0 229 18 237 0 230 18 237 0 231 18 237 0 232 18 237 0 233 18 237 0 234 18 237 0 235 18 237 0 238 18 237 0 239 18 237 0 241 18 237 0 242 18 237 0 243 18 237 0 248 18 237 0 250 18 237 0 251 18 237 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 8 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 18 241 0 4 18 245 0 244] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 18 249 0 142 19 1 0 217 19 1 0 218 19 1 0 219 19 1 0 254] 
#[0 8 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 110 0 8 0 122] 
#[1 8 114 0 8 8 101 0 23 8 114 0 122 19 5 0 159] 
#[1 8 101 0 23 19 9 0 159] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 19 13 0 201 19 13 0 204 19 13 0 205 19 13 0 206 19 13 0 214 19 13 0 228 19 13 0 229 19 13 0 230 19 13 0 231 19 13 0 232 19 13 0 233 19 13 0 234 19 13 0 235 19 13 0 238 19 13 0 239 19 13 0 241 19 13 0 242 19 13 0 243 19 13 0 248 19 13 0 250 19 13 0 251 19 13 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 19 17 0 201 19 17 0 204 19 17 0 205 19 17 0 206 19 17 0 214 19 17 0 228 19 17 0 229 19 17 0 230 19 17 0 231 19 17 0 232 19 17 0 233 19 17 0 234 19 17 0 235 19 17 0 238 19 17 0 239 19 17 0 241 19 17 0 242 19 17 0 243 19 17 0 248 19 17 0 250 19 17 0 251 19 17 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 19 21 0 4] 
#[1 2 157 0 11 4 101 0 74 19 25 1 37 19 29 1 102 4 117 1 229] 
#[1 8 118 0 8 8 118 0 122 12 33 0 123 19 33 1 137] 
#[1 19 37 0 8 19 41 0 122] 
#[0 8 122 0 8 0 122] 
#[1 6 241 0 2 2 157 0 11 7 33 1 102 19 45 1 138] 
#[1 8 126 0 5 11 121 0 61 19 49 0 63 6 93 0 72 19 53 0 73 11 129 0 79 11 133 0 81 19 57 0 83 6 109 0 88 19 61 0 90 11 145 0 93 11 149 0 116 19 65 0 210 0 65 0 211 19 69 1 155 19 89 1 170 19 73 1 181 19 77 1 210 19 81 1 213 19 85 1 214 19 89 1 220 19 93 1 221 19 97 1 222 19 101 1 223 19 105 1 224] 
#[1 19 109 0 8 19 41 0 122] 
#[0 19 113 0 4] 
#[1 19 117 0 4 16 25 0 22] 
#[1 19 121 0 8 19 41 0 122] 
#[1 19 125 0 5 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 19 129 0 143 19 129 0 155 19 129 0 156 19 129 0 157 7 25 1 71 7 29 1 72 19 133 1 171 19 137 1 172 19 141 1 173] 
#[0 19 145 0 8] 
#[0 19 149 0 8] 
#[0 8 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 19 153 0 8] 
#[1 3 29 0 4 19 157 0 26 19 161 1 65] 
#[0 19 165 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 19 169 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 19 173 0 2] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 19 177 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 0 189 0 125 19 181 0 142 19 185 1 120 19 189 1 182 19 193 1 227] 
#[1 0 189 0 125 2 185 0 142 19 197 1 118 2 241 1 119 2 245 1 120 19 197 1 158] 
#[1 2 149 0 4 16 5 0 74 19 201 1 121 19 205 1 156] 
#[0 8 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 149 0 4 19 209 1 121] 
#[1 0 38 0 1 0 97 0 2 0 19 0 4 8 138 0 5 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 35 0 61 0 38 0 62 6 85 0 63 1 229 0 65 1 233 0 66 16 37 0 67 0 141 0 69 1 237 0 70 6 93 0 72 19 213 0 73 1 173 0 75 1 241 0 77 6 101 0 79 1 245 0 82 19 217 0 83 6 109 0 88 0 65 0 90 6 113 0 93 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 6 117 0 114 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 20 9 0 201 20 9 0 204 20 9 0 205 20 9 0 206 20 9 0 210 0 65 0 211 20 9 0 214 20 9 0 228 20 9 0 229 20 9 0 230 20 9 0 231 20 9 0 232 20 9 0 233 20 9 0 234 20 9 0 235 20 9 0 238 20 9 0 239 20 9 0 241 20 9 0 242 20 9 0 243 20 9 0 248 20 9 0 250 20 9 0 251 20 9 0 255 20 9 1 5 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 20 9 1 19 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 20 9 1 33 3 85 1 34 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 20 9 1 145 1 209 1 150 20 9 1 155 20 9 1 170 20 9 1 175 20 1 1 177 20 5 1 178 20 9 1 179 20 9 1 180 20 9 1 181 20 9 1 209 6 213 1 229] 
#[1 0 189 0 125 20 25 0 142] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 20 29 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 20 29 1 131 20 29 1 132 2 217 1 133 2 217 1 135] 
#[0 20 33 0 23] 
#[1 11 121 0 61 11 125 0 63 6 93 0 72 11 129 0 79 11 133 0 81 11 137 0 90 11 145 0 93 11 149 0 116 11 169 1 170 11 157 1 210 11 161 1 213 11 165 1 214 11 169 1 220 11 173 1 221] 
#[1 0 38 0 1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 199 0 61 0 38 0 62 0 141 0 69 1 173 0 75 20 41 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 20 45 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 20 49 0 197 20 49 0 198 20 53 1 5 0 253 1 6 20 49 1 9 1 125 1 10 1 129 1 11 1 133 1 14 20 49 1 15 20 57 1 19 0 253 1 20 20 49 1 23 0 253 1 25 0 253 1 29 1 45 1 32 20 61 1 33 3 85 1 34 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 20 65 1 213 20 69 1 214 6 213 1 229] 
#[1 3 101 0 4 3 105 0 26 0 189 0 125 3 129 0 129 20 73 0 142 3 113 1 54 3 117 1 55 3 121 1 56 3 125 1 57 3 129 1 61 3 117 1 62 3 129 1 71 3 141 1 229] 
#[0 8 142 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 146 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 150 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 203 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 207 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 211 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 7 233 0 79] 
#[1 12 205 0 2 2 157 0 11 12 213 1 102 17 21 1 138 20 77 1 146] 
#[0 20 81 0 4] 
#[1 2 145 0 2 6 217 0 4 6 221 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 6 225 0 142 3 217 0 217 3 217 0 218 3 217 0 219 17 61 0 225 17 61 0 226 2 189 1 71 2 193 1 72 2 197 1 102 16 149 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 16 149 1 131 16 149 1 132 2 217 1 133 2 217 1 135 6 237 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 20 85 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 20 85 1 131 20 85 1 132 2 217 1 133 2 217 1 135] 
#[1 8 198 0 4 8 198 0 5 8 198 0 8 8 198 0 122 12 33 0 123 20 89 1 137] 
#[1 20 93 0 96 20 97 0 106] 
#[0 8 202 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 20 101 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 20 105 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 8 206 0 5 8 206 0 8 8 206 0 122 12 33 0 123 20 109 1 137] 
#[0 8 210 0 5 0 8 0 122] 
#[0 8 214 0 5 0 8 0 122] 
#[0 8 218 0 5 0 8 0 122] 
#[0 8 222 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 20 113 0 3] 
#[0 8 226 0 5 0 8 0 122] 
#[0 8 230 0 5 0 8 0 122] 
#[0 8 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 8 238 0 7 0 122] 
#[0 8 242 0 14 0 122] 
#[0 8 246 0 14 0 122] 
#[0 20 117 0 19] 
#[0 20 121 0 3] 
#[0 8 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 20 125 0 19] 
#[0 8 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 20 129 0 7] 
#[0 9 2 0 5 0 122] 
#[0 9 6 0 8 0 78] 
#[0 9 10 0 5 0 122] 
#[0 20 133 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 20 137 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 20 141 0 2] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 20 145 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 20 149 0 4] 
#[0 20 153 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 20 157 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 20 161 0 3] 
#[0 9 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 157 0 11 9 93 0 74 9 97 0 86 20 165 1 102 9 101 1 159 9 105 1 161] 
#[1 4 97 0 4 4 101 0 74 20 169 1 36 4 113 1 37 4 117 1 229] 
#[1 4 97 0 4 4 101 0 74 20 173 1 36 4 113 1 37 20 177 1 229] 
#[0 9 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 157 0 11 9 93 0 74 9 97 0 86 20 181 1 102 9 101 1 159 9 105 1 161] 
#[0 20 185 0 3] 
#[0 20 189 0 8] 
#[0 20 193 0 4] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 20 197 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 9 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 20 201 1 7 14 173 1 8 0 6 1 229] 
#[0 9 26 0 5 0 122] 
#[0 9 30 0 78] 
#[0 9 34 0 5 0 122] 
#[0 20 205 0 55] 
#[0 9 38 0 5 0 122] 
#[0 9 42 0 5 0 122] 
#[0 9 46 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 20 209 0 5] 
#[0 9 50 0 5 0 122] 
#[0 9 54 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 9 58 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 3 149 0 4 3 153 0 6 20 213 0 7 3 205 0 121 8 217 0 122 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 13 33 0 225 13 33 0 226 20 217 0 227 6 237 1 229] 
#[0 9 62 0 7 0 122] 
#[0 20 221 0 7] 
#[0 9 66 0 8 0 122] 
#[0 9 70 0 8 0 122] 
#[0 20 225 0 8] 
#[0 9 74 0 3 0 5 0 7 0 122] 
#[1 9 78 0 3 9 78 0 5 9 78 0 7 9 78 0 122 12 33 0 123 20 229 1 137] 
#[1 9 82 0 3 9 82 0 5 9 82 0 7 8 101 0 23 9 82 0 122 20 233 0 159] 
#[1 9 86 0 3 9 86 0 5 9 86 0 7 8 101 0 23 20 237 0 43 9 86 0 122 12 33 0 123 20 241 0 159 20 245 1 137] 
#[0 9 90 0 3 0 5 0 7 0 122] 
#[0 9 94 0 3 0 5 0 7 0 122] 
#[1 9 98 0 3 9 98 0 5 9 98 0 7 8 101 0 23 9 98 0 122 20 249 0 159] 
#[1 20 253 0 4 21 1 1 229] 
#[0 21 5 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 21 9 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 21 13 0 3] 
#[0 9 102 0 5] 
#[0 21 17 0 5] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 21 21 1 0 3 237 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 21 25 0 2] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 21 29 1 0 3 237 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 21 33 0 3] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 21 41 0 225 21 41 0 226 21 41 1 4 21 41 1 18 6 237 1 229] 
#[1 0 6 0 2 0 6 0 4 9 106 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 81 0 208 0 57 0 209 6 81 0 210 0 65 0 211 0 6 1 229] 
#[0 21 45 0 5] 
#[0 9 110 0 5] 
#[0 9 114 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 21 49 0 3] 
#[0 21 53 0 2] 
#[0 21 57 0 2] 
#[1 5 217 0 2 2 157 0 11 5 229 1 102 21 61 1 146] 
#[0 21 65 0 4] 
#[1 21 69 0 2 21 73 1 163] 
#[1 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 21 77 0 143 21 77 0 155 21 77 0 156 21 77 0 157 7 25 1 71 7 29 1 72 21 81 1 147 21 85 1 148 17 241 1 229] 
#[1 6 241 0 2 9 118 0 8 2 157 0 11 8 101 0 23 21 89 0 43 12 33 0 123 21 93 0 159 7 33 1 102 21 97 1 137 21 101 1 138 21 105 1 166] 
#[1 8 41 0 6 21 109 0 64 21 113 0 105 7 5 0 126 7 25 0 129 7 29 0 130 21 117 0 143 21 117 0 155 21 117 0 156 21 117 0 157 7 25 1 71 7 29 1 72 21 121 1 147 21 125 1 148 17 241 1 229] 
#[0 9 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 9 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 13 221 0 80 13 225 0 104] 
#[0 9 130 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 9 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[1 0 189 0 125 2 185 0 142 21 129 1 118 2 241 1 119 2 245 1 120 21 129 1 158] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 21 133 1 7 14 173 1 8 0 6 1 229] 
#[0 21 137 0 4] 
#[0 21 141 0 3] 
#[0 21 145 0 4] 
#[0 9 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 21 149 0 197 21 149 0 198 0 253 1 6 21 149 1 9 1 125 1 10 1 129 1 11 1 133 1 14 21 149 1 15 0 253 1 20 21 149 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 9 142 0 3 0 122] 
#[0 9 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 86 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 21 153 1 108 21 153 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 21 153 1 131 21 153 1 132 2 217 1 133 2 217 1 135] 
#[0 9 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 21 157 0 3 21 161 0 122] 
#[0 21 165 0 137] 
#[0 9 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 158 0 5 0 122] 
#[0 9 162 0 5 0 122] 
#[1 5 193 0 122 9 166 0 135 9 166 0 136] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 21 169 0 197 21 169 0 198 21 169 0 200 0 253 1 6 21 169 1 9 1 125 1 10 1 129 1 11 1 133 1 14 21 169 1 15 0 253 1 20 21 169 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 9 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 182 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 9 186 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 21 173 0 9] 
#[1 0 97 0 2 0 14 0 4 0 126 0 5 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 5 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 21 185 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 21 185 0 197 21 185 0 198 0 253 1 6 21 185 1 9 1 125 1 10 1 129 1 11 1 133 1 14 21 185 1 15 0 253 1 20 21 185 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 21 185 1 95 1 205 1 96 21 189 1 97 1 209 1 150 1 213 1 229] 
#[0 9 190 0 4 0 9 0 14 0 23 0 138] 
#[0 21 193 0 14] 
#[1 8 22 0 14 21 197 1 99] 
#[0 21 201 0 14] 
#[0 9 194 0 4 0 9 0 14 0 138] 
#[1 6 42 0 4 21 205 0 129 0 15 0 137 21 205 1 71 21 217 1 74 21 217 1 75 1 197 1 76 21 217 1 78 21 217 1 91 1 205 1 96 21 221 1 101] 
#[0 9 198 0 4 0 9 0 14 0 138] 
#[0 9 202 0 4 0 137 0 139] 
#[1 4 5 0 121 21 225 0 150] 
#[0 9 206 0 4 0 8 0 19] 
#[0 9 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 21 229 1 7 14 173 1 8 0 6 1 229] 
#[0 21 233 0 5] 
#[1 9 214 0 4 9 214 0 8 9 214 0 19 12 33 0 123 21 237 1 137] 
#[1 21 241 0 3 5 193 0 122] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 21 245 0 201 21 245 0 204 21 245 0 205 21 245 0 206 21 245 0 214 21 245 0 228 21 245 0 229 21 245 0 230 21 245 0 231 21 245 0 232 21 245 0 233 21 245 0 234 21 245 0 235 21 245 0 238 21 245 0 239 21 245 0 241 21 245 0 242 21 245 0 243 21 245 0 248 21 245 0 250 21 245 0 251 21 245 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 21 249 0 3 5 193 0 122] 
#[1 0 97 0 2 21 253 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 1 0 197 22 1 0 198 22 1 0 200 0 253 1 6 22 1 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 1 1 15 0 253 1 20 22 1 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 22 5 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 9 0 197 22 9 0 198 22 9 0 200 0 253 1 6 22 9 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 9 1 15 0 253 1 20 22 9 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 13 0 197 22 13 0 198 22 13 0 200 0 253 1 6 22 13 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 13 1 15 0 253 1 20 22 13 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 17 0 197 22 17 0 198 0 253 1 6 22 17 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 17 1 15 0 253 1 20 22 17 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 22 21 0 3 5 193 0 122] 
#[0 22 25 0 3] 
#[1 0 97 0 2 22 29 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 33 0 197 22 33 0 198 22 33 0 200 0 253 1 6 22 33 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 33 1 15 0 253 1 20 22 33 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 22 37 0 8 5 193 0 122] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 22 41 0 201 22 41 0 204 22 41 0 205 22 41 0 206 22 41 0 214 22 41 0 228 22 41 0 229 22 41 0 230 22 41 0 231 22 41 0 232 22 41 0 233 22 41 0 234 22 41 0 235 22 41 0 238 22 41 0 239 22 41 0 241 22 41 0 242 22 41 0 243 22 41 0 248 22 41 0 250 22 41 0 251 22 41 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 22 45 0 3 5 193 0 122] 
#[1 0 97 0 2 22 49 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 53 0 197 22 53 0 198 22 53 0 200 0 253 1 6 22 53 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 53 1 15 0 253 1 20 22 53 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 22 57 0 3 5 193 0 122] 
#[0 22 61 0 3] 
#[0 8 82 0 97] 
#[0 8 86 0 97] 
#[0 22 65 0 97] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 69 0 197 22 69 0 198 0 253 1 6 22 69 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 69 1 15 0 253 1 20 22 69 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 73 0 197 22 73 0 198 0 253 1 6 22 73 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 73 1 15 0 253 1 20 22 73 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 9 218 0 1 9 218 0 2 9 218 0 4 9 218 0 5 9 218 0 6 9 218 0 8 9 218 0 35 9 218 0 36 9 218 0 37 9 218 0 38 9 218 0 39 9 218 0 52 9 218 0 56 9 218 0 57 9 218 0 58 9 218 0 59 9 218 0 61 9 218 0 62 9 218 0 63 9 218 0 65 9 218 0 66 9 218 0 67 9 218 0 68 9 218 0 69 9 218 0 70 22 77 0 71 9 218 0 72 9 218 0 73 9 218 0 75 9 218 0 77 9 218 0 79 9 218 0 82 9 218 0 83 9 218 0 88 9 218 0 90 9 218 0 93 9 218 0 94 9 218 0 95 9 218 0 103 9 218 0 107 9 218 0 108 9 218 0 110 9 218 0 111 9 218 0 112 9 218 0 113 9 218 0 114 9 218 0 115 9 218 0 116 9 218 0 117 9 218 0 118 9 218 0 119 9 218 0 120 9 218 0 125 9 218 0 127 9 218 0 129 9 218 0 130 9 218 0 131 9 218 0 133 9 218 0 134 9 218 0 137 9 218 1 229 9 218 1 230] 
#[1 22 81 0 5 22 85 0 59 22 89 0 68 22 93 0 245 22 97 0 246 22 101 0 247] 
#[0 9 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 9 226 0 3 22 105 1 229] 
#[0 9 230 0 3] 
#[0 22 109 0 3] 
#[0 9 234 0 8 0 122] 
#[0 9 238 0 8 0 122] 
#[0 9 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 9 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 22 113 0 5 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 19 129 0 143 19 129 0 155 19 129 0 156 19 129 0 157 7 25 1 71 7 29 1 72 22 117 1 171 19 137 1 172 19 141 1 173] 
#[0 22 121 0 4] 
#[1 4 101 0 74 22 125 1 37 4 117 1 229] 
#[0 9 250 0 8 0 122] 
#[0 9 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 15 181 0 142 22 129 1 212] 
#[0 22 133 0 8] 
#[1 0 34 0 4 0 34 0 6 11 117 0 72 0 215 0 125 15 181 0 142 15 185 1 211 15 189 1 212 0 34 1 229] 
#[1 11 121 0 61 19 49 0 63 6 93 0 72 11 129 0 79 11 133 0 81 19 57 0 83 6 109 0 88 19 61 0 90 11 145 0 93 11 149 0 116 22 137 0 210 0 65 0 211 22 141 1 155 22 161 1 170 22 145 1 181 22 149 1 210 22 153 1 213 22 157 1 214 22 161 1 220 22 165 1 221] 
#[1 0 189 0 125 22 169 0 142] 
#[1 0 42 0 4 0 42 0 6 0 219 0 125 15 181 0 142 15 201 1 211 15 189 1 212 0 42 1 229] 
#[0 10 2 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 6 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 10 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 14 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 18 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 22 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 26 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 30 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 22 173 0 5] 
#[1 10 34 0 5 11 121 0 61 19 49 0 63 6 93 0 72 19 53 0 73 11 129 0 79 11 133 0 81 19 57 0 83 6 109 0 88 19 61 0 90 11 145 0 93 11 149 0 116 19 65 0 210 0 65 0 211 19 69 1 155 19 89 1 170 19 73 1 181 19 77 1 210 19 81 1 213 19 85 1 214 19 89 1 220 19 93 1 221 22 177 1 224] 
#[0 10 38 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 38 0 1 10 46 0 5 16 37 0 67 0 39 0 73 16 45 0 83 6 109 0 88 6 113 0 93 6 117 0 114 22 181 1 34 22 217 1 53 22 217 1 145 22 217 1 155 22 217 1 175 22 217 1 181 22 217 1 195 22 209 1 199 22 213 1 200 22 217 1 201 22 217 1 204 22 217 1 206 22 217 1 207 22 217 1 208 22 217 1 209] 
#[1 8 126 0 5 11 121 0 61 19 49 0 63 6 93 0 72 19 53 0 73 11 129 0 79 11 133 0 81 19 57 0 83 6 109 0 88 19 61 0 90 11 145 0 93 11 149 0 116 19 65 0 210 0 65 0 211 19 69 1 155 19 89 1 170 19 73 1 181 19 77 1 210 19 81 1 213 19 85 1 214 19 89 1 220 19 93 1 221 22 241 1 222 19 101 1 223 19 105 1 224] 
#[0 10 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 10 58 0 5 22 245 0 23 10 58 0 122] 
#[0 22 249 0 5] 
#[1 10 62 0 5 22 253 0 122] 
#[0 10 66 0 5 0 122] 
#[0 10 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 7 217 0 78 23 1 1 58] 
#[1 23 5 0 8 7 217 0 78 23 9 1 58] 
#[0 23 13 0 4] 
#[0 23 17 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 23 21 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 23 25 0 3] 
#[0 1 230 0 8 0 22] 
#[1 10 82 0 8 23 29 0 22] 
#[0 23 33 0 8] 
#[0 23 37 0 2] 
#[0 10 86 0 4] 
#[0 10 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 149 0 4 23 41 1 121] 
#[0 10 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 38 0 1 0 38 0 61 0 38 0 62 6 85 0 63 16 37 0 67 6 93 0 72 3 45 0 79 19 57 0 83 6 109 0 88 0 65 0 90 6 113 0 93 6 117 0 114 2 9 0 116 23 45 0 210 0 65 0 211 23 49 0 214 23 53 1 5 23 57 1 19 23 61 1 33 3 85 1 34 23 65 1 145 23 69 1 155 23 73 1 170 23 77 1 175 23 81 1 181 23 85 1 209 16 93 1 229] 
#[1 4 137 0 2 4 141 0 22 0 189 0 125 22 169 0 142] 
#[0 10 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 23 89 0 5] 
#[1 0 38 0 1 0 97 0 2 0 19 0 4 10 134 0 5 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 35 0 61 0 38 0 62 6 85 0 63 1 229 0 65 1 233 0 66 16 37 0 67 0 141 0 69 1 237 0 70 6 93 0 72 19 213 0 73 1 173 0 75 1 241 0 77 6 101 0 79 1 245 0 82 19 217 0 83 6 109 0 88 0 65 0 90 6 113 0 93 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 6 117 0 114 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 23 93 0 201 23 93 0 204 23 93 0 205 23 93 0 206 23 93 0 210 0 65 0 211 23 93 0 214 23 93 0 228 23 93 0 229 23 93 0 230 23 93 0 231 23 93 0 232 23 93 0 233 23 93 0 234 23 93 0 235 23 93 0 238 23 93 0 239 23 93 0 241 23 93 0 242 23 93 0 243 23 93 0 248 23 93 0 250 23 93 0 251 23 93 0 255 23 93 1 5 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 23 93 1 19 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 23 93 1 33 3 85 1 34 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 23 93 1 145 1 209 1 150 23 93 1 155 23 93 1 170 23 93 1 175 23 93 1 179 23 93 1 180 23 93 1 181 23 93 1 209 6 213 1 229] 
#[0 10 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 154 0 4 0 22] 
#[0 23 97 0 8] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 23 101 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 23 101 1 131 23 101 1 132 2 217 1 133 2 217 1 135] 
#[1 4 97 0 4 4 101 0 74 0 189 0 125 23 105 0 142 4 109 1 36 4 113 1 37 4 117 1 229] 
#[1 11 197 0 2 11 201 0 26 0 189 0 125 23 109 0 142] 
#[1 0 130 0 2 0 130 0 6 0 223 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 130 0 133 0 130 0 134 0 130 1 228 0 130 1 229] 
#[0 23 117 0 8] 
#[0 10 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 166 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 23 121 0 23 2 106 0 78 2 106 0 122] 
#[0 23 125 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 23 129 1 7 14 173 1 8 0 6 1 229] 
#[0 10 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 10 182 0 4 0 5 0 8 0 122] 
#[0 23 133 0 7] 
#[0 23 137 0 7] 
#[1 10 186 0 5 10 186 0 8 10 186 0 122 12 33 0 123 23 141 1 137] 
#[0 23 145 0 3] 
#[0 10 190 0 5 0 8 0 122] 
#[1 10 194 0 4 10 194 0 5 10 194 0 8 10 194 0 122 12 33 0 123 23 149 1 137] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 23 153 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 23 153 1 131 23 153 1 132 2 217 1 133 2 217 1 135] 
#[0 23 157 0 19] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 23 161 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 23 161 1 131 23 161 1 132 2 217 1 133 2 217 1 135] 
#[0 10 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 23 165 0 4 23 169 1 229] 
#[0 23 173 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 23 177 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 23 181 0 3] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 23 185 1 7 14 173 1 8 0 6 1 229] 
#[0 23 189 0 4] 
#[0 23 193 0 3] 
#[0 23 197 0 4] 
#[1 4 97 0 4 4 101 0 74 23 201 1 36 4 113 1 37 4 117 1 229] 
#[0 10 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 157 0 11 9 93 0 74 9 97 0 86 23 205 1 102 9 101 1 159 9 105 1 161] 
#[1 4 97 0 4 4 101 0 74 23 209 1 36 4 113 1 37 4 117 1 229] 
#[1 8 70 0 4 8 198 0 8 12 33 0 123 23 213 1 137] 
#[0 10 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 23 217 1 7 14 173 1 8 0 6 1 229] 
#[0 23 221 0 3] 
#[0 23 225 0 5] 
#[1 0 189 0 125 23 229 0 142 23 229 1 62] 
#[0 10 214 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 10 218 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 23 233 0 7] 
#[0 10 222 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 10 226 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 230 0 3 0 5 0 7 0 122] 
#[0 10 234 0 3 0 5 0 7 0 122] 
#[1 10 238 0 3 10 238 0 5 10 238 0 7 10 238 0 122 12 33 0 123 23 237 1 137] 
#[0 10 242 0 3 0 5 0 7 0 122] 
#[1 10 246 0 3 10 246 0 5 10 246 0 7 8 101 0 23 10 246 0 122 23 241 0 159] 
#[0 10 250 0 3 0 5 0 7 0 122] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 23 245 1 31 0 6 1 229] 
#[1 12 33 0 123 23 249 1 137] 
#[0 23 253 0 4] 
#[0 24 1 0 3] 
#[1 24 5 0 4 24 9 1 229] 
#[0 10 254 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 24 13 0 3] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 24 17 1 0 3 237 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 24 21 0 3] 
#[0 24 25 0 4] 
#[0 11 2 0 3] 
#[0 24 29 0 3] 
#[0 11 6 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 24 33 0 4] 
#[0 24 37 0 3] 
#[1 3 149 0 4 3 153 0 6 0 189 0 125 24 41 0 142 24 45 0 217 24 45 0 218 24 45 0 219 24 49 0 225 24 49 0 226 24 49 1 4 24 49 1 18 24 53 1 141 24 57 1 149 6 237 1 229] 
#[1 24 61 0 4 24 65 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 69 1 7 14 173 1 8 0 6 1 229] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 24 73 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 24 77 0 4 24 81 0 8] 
#[1 6 241 0 2 9 118 0 8 2 157 0 11 8 101 0 23 24 85 0 43 12 33 0 123 21 93 0 159 7 33 1 102 24 89 1 137 24 93 1 138 24 97 1 166] 
#[0 11 10 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 11 14 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 118 0 8 8 101 0 23 12 33 0 123 21 93 0 159 24 101 1 137 24 105 1 166] 
#[0 11 18 0 8] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 24 109 1 166] 
#[1 24 113 0 4 24 117 0 8] 
#[0 24 121 0 8] 
#[1 21 69 0 2 24 125 1 163] 
#[1 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 24 129 0 143 24 129 0 155 24 129 0 156 24 129 0 157 7 25 1 71 7 29 1 72 24 133 1 147 24 137 1 148 17 241 1 229] 
#[1 6 241 0 2 9 118 0 8 2 157 0 11 8 101 0 23 24 141 0 43 12 33 0 123 21 93 0 159 7 33 1 102 24 145 1 137 24 149 1 138 24 153 1 166] 
#[0 11 22 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 11 26 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 11 30 0 4 0 122] 
#[0 24 157 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 161 1 7 14 173 1 8 24 165 1 22 0 6 1 229] 
#[0 24 169 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 173 1 7 14 173 1 8 0 6 1 229] 
#[0 11 34 0 3 0 122] 
#[0 11 38 0 14 0 122] 
#[0 11 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 18 21 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 25 0 197 18 25 0 198 0 253 1 6 18 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 25 1 15 0 253 1 20 18 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 24 177 0 9] 
#[1 5 193 0 122 11 46 0 135 11 46 0 136] 
#[1 11 50 0 14 10 189 0 138 24 181 1 79 24 181 1 80 24 181 1 81 10 205 1 82 10 209 1 83 24 185 1 100] 
#[0 11 54 0 5] 
#[0 11 58 0 5] 
#[1 0 126 0 5 24 189 1 97] 
#[0 24 193 0 5] 
#[0 11 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 24 197 0 14] 
#[0 11 66 0 4 0 137 0 139] 
#[0 11 70 0 4 0 9 0 14 0 138] 
#[0 11 74 0 4 0 9 0 14 0 138] 
#[0 11 78 0 4 0 9 0 14 0 138] 
#[0 11 82 0 4 0 9 0 14 0 138] 
#[0 24 201 0 4] 
#[1 0 22 0 5 24 205 1 96] 
#[0 24 209 0 5] 
#[0 11 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 11 90 0 4 0 8 0 19] 
#[0 24 213 0 8] 
#[0 11 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 24 217 0 201 24 217 0 204 24 217 0 205 24 217 0 206 24 217 0 214 24 217 0 228 24 217 0 229 24 217 0 230 24 217 0 231 24 217 0 232 24 217 0 233 24 217 0 234 24 217 0 235 24 217 0 238 24 217 0 239 24 217 0 241 24 217 0 242 24 217 0 243 24 217 0 248 24 217 0 250 24 217 0 251 24 217 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 24 221 0 201 24 221 0 204 24 221 0 205 24 221 0 206 24 221 0 214 24 221 0 228 24 221 0 229 24 221 0 230 24 221 0 231 24 221 0 232 24 221 0 233 24 221 0 234 24 221 0 235 24 221 0 238 24 221 0 239 24 221 0 241 24 221 0 242 24 221 0 243 24 221 0 248 24 221 0 250 24 221 0 251 24 221 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 24 225 0 3 5 193 0 122] 
#[1 0 97 0 2 24 229 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 24 233 0 197 24 233 0 198 24 233 0 200 0 253 1 6 24 233 1 9 1 125 1 10 1 129 1 11 1 133 1 14 24 233 1 15 0 253 1 20 24 233 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 24 237 0 8 5 193 0 122] 
#[1 24 241 0 3 5 193 0 122] 
#[0 24 245 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 24 249 0 201 24 249 0 204 24 249 0 205 24 249 0 206 24 249 0 214 24 249 0 228 24 249 0 229 24 249 0 230 24 249 0 231 24 249 0 232 24 249 0 233 24 249 0 234 24 249 0 235 24 249 0 238 24 249 0 239 24 249 0 241 24 249 0 242 24 249 0 243 24 249 0 248 24 249 0 250 24 249 0 251 24 249 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 24 253 0 201 24 253 0 204 24 253 0 205 24 253 0 206 24 253 0 214 24 253 0 228 24 253 0 229 24 253 0 230 24 253 0 231 24 253 0 232 24 253 0 233 24 253 0 234 24 253 0 235 24 253 0 238 24 253 0 239 24 253 0 241 24 253 0 242 24 253 0 243 24 253 0 248 24 253 0 250 24 253 0 251 24 253 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 1 0 201 25 1 0 204 25 1 0 205 25 1 0 206 25 1 0 214 25 1 0 228 25 1 0 229 25 1 0 230 25 1 0 231 25 1 0 232 25 1 0 233 25 1 0 234 25 1 0 235 25 1 0 238 25 1 0 239 25 1 0 241 25 1 0 242 25 1 0 243 25 1 0 248 25 1 0 250 25 1 0 251 25 1 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 25 5 0 3 5 193 0 122] 
#[1 0 97 0 2 25 9 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 13 0 197 25 13 0 198 25 13 0 200 0 253 1 6 25 13 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 13 1 15 0 253 1 20 25 13 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 11 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 17 0 201 25 17 0 204 25 17 0 205 25 17 0 206 25 17 0 214 25 17 0 228 25 17 0 229 25 17 0 230 25 17 0 231 25 17 0 232 25 17 0 233 25 17 0 234 25 17 0 235 25 17 0 238 25 17 0 239 25 17 0 241 25 17 0 242 25 17 0 243 25 17 0 248 25 17 0 250 25 17 0 251 25 17 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 21 0 201 25 21 0 204 25 21 0 205 25 21 0 206 25 21 0 214 25 21 0 228 25 21 0 229 25 21 0 230 25 21 0 231 25 21 0 232 25 21 0 233 25 21 0 234 25 21 0 235 25 21 0 238 25 21 0 239 25 21 0 241 25 21 0 242 25 21 0 243 25 21 0 248 25 21 0 250 25 21 0 251 25 21 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 25 25 0 3 5 193 0 122] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 29 0 201 25 29 0 204 25 29 0 205 25 29 0 206 25 29 0 214 25 29 0 228 25 29 0 229 25 29 0 230 25 29 0 231 25 29 0 232 25 29 0 233 25 29 0 234 25 29 0 235 25 29 0 238 25 29 0 239 25 29 0 241 25 29 0 242 25 29 0 243 25 29 0 248 25 29 0 250 25 29 0 251 25 29 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 33 0 201 25 33 0 204 25 33 0 205 25 33 0 206 25 33 0 214 25 33 0 228 25 33 0 229 25 33 0 230 25 33 0 231 25 33 0 232 25 33 0 233 25 33 0 234 25 33 0 235 25 33 0 238 25 33 0 239 25 33 0 241 25 33 0 242 25 33 0 243 25 33 0 248 25 33 0 250 25 33 0 251 25 33 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 37 0 197 25 37 0 198 0 253 1 6 25 37 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 37 1 15 0 253 1 20 25 37 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 25 41 0 3] 
#[0 25 45 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 49 0 201 25 49 0 204 25 49 0 205 25 49 0 206 25 49 0 214 25 49 0 228 25 49 0 229 25 49 0 230 25 49 0 231 25 49 0 232 25 49 0 233 25 49 0 234 25 49 0 235 25 49 0 238 25 49 0 239 25 49 0 241 25 49 0 242 25 49 0 243 25 49 0 248 25 49 0 250 25 49 0 251 25 49 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 11 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 53 0 197 25 53 0 198 25 53 0 200 0 253 1 6 25 53 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 53 1 15 0 253 1 20 25 53 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 25 57 0 123] 
#[1 25 61 0 5 22 85 0 59 22 89 0 68 25 65 0 246 25 69 0 247] 
#[0 11 106 0 5 0 59 0 68] 
#[1 25 73 0 5 22 85 0 59 25 77 0 245 22 97 0 246] 
#[1 12 33 0 123 25 81 1 137] 
#[1 1 217 0 4 25 85 0 206] 
#[0 11 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 25 89 0 5] 
#[1 11 114 0 5 6 249 0 6 25 93 0 64 25 105 0 98 25 105 0 99 25 105 0 100 25 105 0 101 25 97 0 105 7 5 0 126 7 25 0 129 7 29 0 130 25 101 0 143 25 101 0 155 25 101 0 156 25 101 0 157 7 25 1 71 7 29 1 72 25 105 1 140 25 121 1 143 25 113 1 215 25 117 1 216 25 121 1 217 25 121 1 218 25 121 1 219] 
#[0 25 133 0 4] 
#[0 11 118 0 8 0 122] 
#[0 11 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 126 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 130 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 134 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 138 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 142 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 146 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 150 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 154 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 23 121 0 23] 
#[0 11 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 162 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[1 7 201 0 1 25 137 0 73 7 213 1 226] 
#[0 11 166 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 170 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 174 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 178 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 182 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 186 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 25 141 0 5] 
#[1 0 38 0 1 11 190 0 5 16 37 0 67 0 39 0 73 16 45 0 83 6 109 0 88 6 113 0 93 6 117 0 114 22 181 1 34 25 145 1 53 25 145 1 145 25 145 1 155 25 145 1 175 25 145 1 181 25 145 1 195 25 145 1 201 25 145 1 204 25 145 1 206 25 145 1 207 25 145 1 208 25 145 1 209] 
#[0 11 194 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 198 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 202 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 206 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 210 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 214 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 25 149 0 5] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 157 0 197 25 157 0 198 0 253 1 6 25 157 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 157 1 15 0 253 1 20 25 157 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 25 157 1 174 1 213 1 229] 
#[0 11 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 11 222 0 5 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 19 129 0 143 19 129 0 155 19 129 0 156 19 129 0 157 7 25 1 71 7 29 1 72 25 161 1 173] 
#[0 25 165 0 8] 
#[0 11 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 25 169 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 25 173 1 7 14 173 1 8 0 6 1 229] 
#[0 25 177 0 4] 
#[0 25 181 0 3] 
#[0 25 185 0 4] 
#[1 0 189 0 125 25 189 0 142] 
#[0 11 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 25 193 0 129 1 71] 
#[0 11 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 11 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 11 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 11 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 11 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 25 197 0 8] 
#[1 4 97 0 4 2 157 0 11 4 101 0 74 9 85 1 36 25 201 1 37 19 29 1 102 4 117 1 229] 
#[1 25 205 0 2 2 157 0 11 7 33 1 102 19 45 1 138] 
#[0 12 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 42 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 19 181 0 142 19 185 1 120 19 189 1 182] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 25 209 1 7 14 173 1 8 0 6 1 229] 
#[0 25 213 0 5] 
#[1 12 33 0 123 25 217 1 137] 
#[1 12 33 0 123 25 221 1 137] 
#[0 12 46 0 5 0 8 0 122] 
#[1 12 50 0 5 12 50 0 8 12 50 0 122 12 33 0 123 25 225 1 137] 
#[0 12 54 0 4 0 5 0 8 0 122] 
#[0 12 58 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 71 2 193 1 72 2 197 1 102 25 229 1 109 2 205 1 110 2 209 1 111 2 209 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 217 1 118 2 241 1 119 2 245 1 120 2 217 1 121 2 217 1 125 2 217 1 126 2 205 1 129 2 209 1 130 25 229 1 131 25 229 1 132 2 217 1 133 2 217 1 135] 
#[0 12 62 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 25 233 1 31 0 6 1 229] 
#[1 12 33 0 123 25 237 1 137] 
#[0 25 241 0 4] 
#[0 25 245 0 3] 
#[1 25 249 0 4 25 253 1 229] 
#[0 26 1 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 161 1 7 14 173 1 8 26 5 1 22 0 6 1 229] 
#[0 26 9 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 13 1 7 14 173 1 8 0 6 1 229] 
#[0 12 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 97 0 4 4 101 0 74 26 17 1 36 4 113 1 37 4 117 1 229] 
#[0 12 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 9 206 0 4 10 182 0 8] 
#[0 26 21 0 5] 
#[1 9 214 0 4 10 194 0 8 12 33 0 123 26 25 1 137] 
#[0 12 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 78 0 5 0 122] 
#[0 12 82 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 12 86 0 3 0 5 0 7 0 122] 
#[0 12 90 0 3 0 5 0 7 0 122] 
#[0 26 29 0 5] 
#[0 26 33 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 37 1 7 14 173 1 8 26 41 1 27 0 6 1 229] 
#[0 26 45 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 26 49 1 31 0 6 1 229] 
#[1 12 33 0 123 26 53 1 137] 
#[0 26 57 0 4] 
#[0 26 61 0 3] 
#[1 26 65 0 4 26 69 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 73 1 7 14 173 1 8 0 6 1 229] 
#[0 26 77 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 81 1 7 14 173 1 8 0 6 1 229] 
#[1 12 33 0 123 26 85 1 137] 
#[1 2 162 0 3 8 101 0 23 12 94 0 123 8 153 0 159] 
#[1 2 166 0 3 8 101 0 23 12 98 0 123 8 161 0 159] 
#[0 26 89 0 3] 
#[1 12 33 0 123 26 93 1 137] 
#[0 26 97 0 3] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 101 1 7 14 173 1 8 0 6 1 229] 
#[0 12 102 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 26 105 0 5] 
#[0 26 109 0 3] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 113 1 7 14 173 1 8 0 6 1 229] 
#[0 12 106 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 118 0 8 8 101 0 23 12 33 0 123 21 93 0 159 26 117 1 137 26 121 1 166] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 26 125 1 166] 
#[1 26 129 0 4 26 133 0 8] 
#[0 26 137 0 8] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 26 141 1 166] 
#[0 26 145 0 8] 
#[0 26 149 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 153 1 7 14 173 1 8 0 6 1 229] 
#[0 12 110 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 12 114 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 26 157 0 4 26 161 0 8] 
#[1 6 241 0 2 9 118 0 8 2 157 0 11 8 101 0 23 26 165 0 43 12 33 0 123 21 93 0 159 7 33 1 102 26 169 1 137 26 173 1 138 26 177 1 166] 
#[0 12 118 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 12 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 118 0 8 8 101 0 23 12 33 0 123 21 93 0 159 26 181 1 137 26 185 1 166] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 26 189 1 166] 
#[1 26 193 0 4 26 197 0 8] 
#[0 26 201 0 8] 
#[0 12 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 12 130 0 5] 
#[0 26 205 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 161 1 7 14 173 1 8 26 209 1 22 0 6 1 229] 
#[0 26 213 0 5] 
#[1 11 50 0 14 26 217 1 100] 
#[1 11 50 0 14 26 221 1 100] 
#[0 26 225 0 14] 
#[0 26 229 0 5] 
#[0 12 134 0 4 0 137 0 139] 
#[0 12 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 26 233 0 197 26 233 0 198 0 253 1 6 26 233 1 9 1 125 1 10 1 129 1 11 1 133 1 14 26 233 1 15 0 253 1 20 26 233 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 26 237 0 5] 
#[0 12 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 12 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 26 241 0 201 26 241 0 204 26 241 0 205 26 241 0 206 26 241 0 214 26 241 0 228 26 241 0 229 26 241 0 230 26 241 0 231 26 241 0 232 26 241 0 233 26 241 0 234 26 241 0 235 26 241 0 238 26 241 0 239 26 241 0 241 26 241 0 242 26 241 0 243 26 241 0 248 26 241 0 250 26 241 0 251 26 241 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 26 245 0 201 26 245 0 204 26 245 0 205 26 245 0 206 26 245 0 214 26 245 0 228 26 245 0 229 26 245 0 230 26 245 0 231 26 245 0 232 26 245 0 233 26 245 0 234 26 245 0 235 26 245 0 238 26 245 0 239 26 245 0 241 26 245 0 242 26 245 0 243 26 245 0 248 26 245 0 250 26 245 0 251 26 245 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 26 249 0 3 5 193 0 122] 
#[1 0 97 0 2 26 253 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 27 1 0 197 27 1 0 198 27 1 0 200 0 253 1 6 27 1 1 9 1 125 1 10 1 129 1 11 1 133 1 14 27 1 1 15 0 253 1 20 27 1 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 5 0 201 27 5 0 204 27 5 0 205 27 5 0 206 27 5 0 214 27 5 0 228 27 5 0 229 27 5 0 230 27 5 0 231 27 5 0 232 27 5 0 233 27 5 0 234 27 5 0 235 27 5 0 238 27 5 0 239 27 5 0 241 27 5 0 242 27 5 0 243 27 5 0 248 27 5 0 250 27 5 0 251 27 5 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 9 0 201 27 9 0 204 27 9 0 205 27 9 0 206 27 9 0 214 27 9 0 228 27 9 0 229 27 9 0 230 27 9 0 231 27 9 0 232 27 9 0 233 27 9 0 234 27 9 0 235 27 9 0 238 27 9 0 239 27 9 0 241 27 9 0 242 27 9 0 243 27 9 0 248 27 9 0 250 27 9 0 251 27 9 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 12 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 13 0 201 27 13 0 204 27 13 0 205 27 13 0 206 27 13 0 214 27 13 0 228 27 13 0 229 27 13 0 230 27 13 0 231 27 13 0 232 27 13 0 233 27 13 0 234 27 13 0 235 27 13 0 238 27 13 0 239 27 13 0 241 27 13 0 242 27 13 0 243 27 13 0 248 27 13 0 250 27 13 0 251 27 13 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 17 0 201 27 17 0 204 27 17 0 205 27 17 0 206 27 17 0 214 27 17 0 228 27 17 0 229 27 17 0 230 27 17 0 231 27 17 0 232 27 17 0 233 27 17 0 234 27 17 0 235 27 17 0 238 27 17 0 239 27 17 0 241 27 17 0 242 27 17 0 243 27 17 0 248 27 17 0 250 27 17 0 251 27 17 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 27 21 0 3 5 193 0 122] 
#[0 12 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 25 0 201 27 25 0 204 27 25 0 205 27 25 0 206 27 25 0 214 27 25 0 228 27 25 0 229 27 25 0 230 27 25 0 231 27 25 0 232 27 25 0 233 27 25 0 234 27 25 0 235 27 25 0 238 27 25 0 239 27 25 0 241 27 25 0 242 27 25 0 243 27 25 0 248 27 25 0 250 27 25 0 251 27 25 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 12 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 29 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 33 0 201 27 33 0 204 27 33 0 205 27 33 0 206 27 33 0 214 27 33 0 228 27 33 0 229 27 33 0 230 27 33 0 231 27 33 0 232 27 33 0 233 27 33 0 234 27 33 0 235 27 33 0 238 27 33 0 239 27 33 0 241 27 33 0 242 27 33 0 243 27 33 0 248 27 33 0 250 27 33 0 251 27 33 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 37 0 201 27 37 0 204 27 37 0 205 27 37 0 206 27 37 0 214 27 37 0 228 27 37 0 229 27 37 0 230 27 37 0 231 27 37 0 232 27 37 0 233 27 37 0 234 27 37 0 235 27 37 0 238 27 37 0 239 27 37 0 241 27 37 0 242 27 37 0 243 27 37 0 248 27 37 0 250 27 37 0 251 27 37 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 12 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 5 193 0 122 27 41 0 123] 
#[1 0 6 0 2 0 6 0 4 12 190 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 12 190 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 27 45 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 0 6 1 229] 
#[0 12 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 198 0 5 0 59 0 68] 
#[1 27 49 0 5 22 85 0 59 27 53 0 245 22 97 0 246] 
#[0 12 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 27 57 0 5 22 85 0 59 25 65 0 246] 
#[0 12 206 0 3] 
#[0 12 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 61 0 2] 
#[1 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 27 65 0 143 27 65 0 155 27 65 0 156 27 65 0 157 7 25 1 71 7 29 1 72] 
#[1 6 241 0 2 27 69 0 8 2 157 0 11 12 33 0 123 7 33 1 102 27 73 1 137 27 77 1 138] 
#[1 8 41 0 6 27 81 0 64 27 85 0 105 7 5 0 126 7 25 0 129 7 29 0 130 27 89 0 143 27 89 0 155 27 89 0 156 27 89 0 157 7 25 1 71 7 29 1 72] 
#[0 12 218 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 27 93 0 5] 
#[1 12 222 0 5 6 249 0 6 25 93 0 64 25 105 0 98 25 105 0 99 25 105 0 100 25 105 0 101 25 97 0 105 7 5 0 126 7 25 0 129 7 29 0 130 25 101 0 143 25 101 0 155 25 101 0 156 25 101 0 157 7 25 1 71 7 29 1 72 25 105 1 140 27 97 1 143 27 97 1 217 27 97 1 218 27 97 1 219] 
#[0 12 226 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 12 230 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 12 234 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 11 114 0 5 6 249 0 6 25 93 0 64 25 105 0 98 25 105 0 99 25 105 0 100 25 105 0 101 25 97 0 105 7 5 0 126 7 25 0 129 7 29 0 130 25 101 0 143 25 101 0 155 25 101 0 156 25 101 0 157 7 25 1 71 7 29 1 72 25 105 1 140 25 121 1 143 27 101 1 215 25 117 1 216 25 121 1 217 25 121 1 218 25 121 1 219] 
#[1 16 37 0 67 27 105 0 68 19 57 0 83 6 109 0 88 6 117 0 114 27 109 1 145 27 113 1 155 16 85 1 181 27 117 1 209] 
#[0 12 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 242 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 12 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 250 0 5 0 122] 
#[0 12 254 0 5 0 122] 
#[0 13 2 0 5 0 122] 
#[0 13 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 161 1 7 14 173 1 8 27 125 1 22 0 6 1 229] 
#[0 27 129 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 27 133 1 7 14 173 1 8 0 6 1 229] 
#[0 6 202 0 8 0 22] 
#[0 27 137 0 3] 
#[0 13 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 141 0 4] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 27 145 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[0 27 149 0 5] 
#[1 12 74 0 1 0 227 0 2 12 74 0 4 12 74 0 5 0 227 0 6 0 227 0 8 11 86 0 9 11 86 0 10 11 86 0 11 11 86 0 12 11 86 0 13 11 86 0 14 11 86 0 15 11 86 0 16 11 86 0 17 11 86 0 18 11 86 0 20 11 86 0 21 11 86 0 22 11 86 0 23 11 86 0 24 11 86 0 25 11 86 0 26 11 86 0 27 11 86 0 28 11 86 0 29 11 86 0 30 11 86 0 31 11 86 0 32 11 86 0 33 11 86 0 34 0 227 0 35 0 227 0 36 0 227 0 37 0 227 0 38 12 74 0 39 11 86 0 40 11 86 0 41 11 86 0 42 11 86 0 43 11 86 0 44 11 86 0 45 11 86 0 46 11 86 0 47 11 86 0 48 11 86 0 49 11 86 0 50 11 86 0 51 12 74 0 52 11 86 0 53 11 86 0 54 12 74 0 56 12 74 0 57 12 74 0 58 12 74 0 61 12 74 0 62 12 74 0 63 12 74 0 65 12 74 0 66 12 74 0 67 12 74 0 69 12 74 0 70 12 74 0 72 12 74 0 73 12 74 0 75 12 74 0 77 12 74 0 79 12 74 0 82 12 74 0 83 11 86 0 84 11 86 0 87 12 74 0 88 12 74 0 90 12 74 0 93 12 74 0 94 12 74 0 95 12 74 0 103 12 74 0 107 12 74 0 108 12 74 0 110 12 74 0 111 12 74 0 112 12 74 0 113 12 74 0 114 12 74 0 115 12 74 0 116 12 74 0 117 12 74 0 118 12 74 0 119 12 74 0 120 11 86 0 122 12 74 0 125 12 74 0 127 12 74 0 129 12 74 0 130 12 74 0 131 0 227 0 133 0 227 0 134 12 74 0 137 11 86 1 228 0 227 1 229 12 74 1 230] 
#[0 13 18 0 5 0 6 0 8 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 13 22 0 5 0 6 0 8 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 13 26 0 5 0 8 0 122] 
#[0 13 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 27 153 0 5] 
#[0 27 157 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 37 1 7 14 173 1 8 27 161 1 27 0 6 1 229] 
#[0 27 165 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 27 169 1 31 0 6 1 229] 
#[1 12 33 0 123 27 173 1 137] 
#[0 13 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 177 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 161 1 7 14 173 1 8 27 181 1 22 0 6 1 229] 
#[0 27 185 0 5] 
#[0 13 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 11 90 0 4 12 54 0 8] 
#[0 13 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 27 189 1 31 0 6 1 229] 
#[0 13 50 0 5] 
#[0 27 193 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 37 1 7 14 173 1 8 27 197 1 27 0 6 1 229] 
#[0 27 201 0 5] 
#[0 27 205 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 161 1 7 14 173 1 8 27 209 1 22 0 6 1 229] 
#[0 27 213 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 27 217 1 31 0 6 1 229] 
#[1 12 33 0 123 27 221 1 137] 
#[0 27 225 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 27 229 1 7 14 173 1 8 0 6 1 229] 
#[0 27 233 0 5] 
#[0 27 237 0 4] 
#[1 12 33 0 123 27 241 1 137] 
#[0 13 54 0 3] 
#[1 27 245 0 4 12 33 0 123 27 249 1 137] 
#[0 27 253 0 5] 
#[0 13 58 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 13 62 0 4 13 62 0 8 12 33 0 123 28 1 1 137] 
#[0 28 5 0 5] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 28 9 1 166] 
#[0 28 13 0 8] 
#[0 28 17 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 21 1 7 14 173 1 8 0 6 1 229] 
#[0 13 66 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 70 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 28 25 0 8] 
#[0 13 74 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 78 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 28 29 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 33 1 7 14 173 1 8 0 6 1 229] 
#[0 13 82 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 118 0 8 8 101 0 23 12 33 0 123 21 93 0 159 28 37 1 137 28 41 1 166] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 28 45 1 166] 
#[1 28 49 0 4 28 53 0 8] 
#[0 28 57 0 8] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 28 61 1 166] 
#[0 28 65 0 8] 
#[0 28 69 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 73 1 7 14 173 1 8 0 6 1 229] 
#[0 13 86 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 90 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 28 77 0 5] 
#[0 13 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 28 81 0 14] 
#[0 28 85 0 14] 
#[0 13 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 13 106 0 4 0 137 0 139] 
#[1 0 22 0 5 28 89 1 96] 
#[0 13 110 0 4 0 9 0 14 0 138] 
#[0 13 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 93 0 201 28 93 0 204 28 93 0 205 28 93 0 206 28 93 0 214 28 93 0 228 28 93 0 229 28 93 0 230 28 93 0 231 28 93 0 232 28 93 0 233 28 93 0 234 28 93 0 235 28 93 0 238 28 93 0 239 28 93 0 241 28 93 0 242 28 93 0 243 28 93 0 248 28 93 0 250 28 93 0 251 28 93 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 97 0 201 28 97 0 204 28 97 0 205 28 97 0 206 28 97 0 214 28 97 0 228 28 97 0 229 28 97 0 230 28 97 0 231 28 97 0 232 28 97 0 233 28 97 0 234 28 97 0 235 28 97 0 238 28 97 0 239 28 97 0 241 28 97 0 242 28 97 0 243 28 97 0 248 28 97 0 250 28 97 0 251 28 97 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[1 28 101 0 3 5 193 0 122] 
#[0 13 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 105 0 201 28 105 0 204 28 105 0 205 28 105 0 206 28 105 0 214 28 105 0 228 28 105 0 229 28 105 0 230 28 105 0 231 28 105 0 232 28 105 0 233 28 105 0 234 28 105 0 235 28 105 0 238 28 105 0 239 28 105 0 241 28 105 0 242 28 105 0 243 28 105 0 248 28 105 0 250 28 105 0 251 28 105 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 13 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 109 0 201 28 109 0 204 28 109 0 205 28 109 0 206 28 109 0 214 28 109 0 228 28 109 0 229 28 109 0 230 28 109 0 231 28 109 0 232 28 109 0 233 28 109 0 234 28 109 0 235 28 109 0 238 28 109 0 239 28 109 0 241 28 109 0 242 28 109 0 243 28 109 0 248 28 109 0 250 28 109 0 251 28 109 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 13 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 13 150 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 150 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 13 150 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 28 113 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 0 6 1 229] 
#[1 0 6 0 2 0 6 0 4 13 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 154 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 81 0 208 0 57 0 209 6 81 0 210 0 65 0 211 0 6 1 229] 
#[0 13 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 28 117 0 5 22 85 0 59 25 65 0 246] 
#[0 13 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 28 121 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 6 241 0 2 28 125 0 8 2 157 0 11 12 33 0 123 7 33 1 102 28 129 1 137 28 133 1 138] 
#[0 13 166 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 28 137 0 8] 
#[0 28 141 0 8] 
#[0 28 145 0 2] 
#[1 8 41 0 6 7 5 0 126 7 25 0 129 7 29 0 130 28 149 0 143 28 149 0 155 28 149 0 156 28 149 0 157 7 25 1 71 7 29 1 72] 
#[1 6 241 0 2 28 153 0 8 2 157 0 11 12 33 0 123 7 33 1 102 28 157 1 137 28 161 1 138] 
#[0 13 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 174 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 28 165 0 5] 
#[1 11 121 0 61 11 129 0 79 0 189 0 125 28 169 0 142 20 65 1 213 20 69 1 214] 
#[0 8 162 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 8 170 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 8 194 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[1 13 34 0 1 0 231 0 2 13 34 0 4 13 34 0 5 0 231 0 6 0 231 0 8 12 126 0 9 12 126 0 10 12 126 0 11 12 126 0 12 12 126 0 13 12 126 0 14 12 126 0 15 12 126 0 16 12 126 0 17 12 126 0 18 12 126 0 20 12 126 0 21 12 126 0 22 12 126 0 23 12 126 0 24 12 126 0 25 12 126 0 26 12 126 0 27 12 126 0 28 12 126 0 29 12 126 0 30 12 126 0 31 12 126 0 32 12 126 0 33 12 126 0 34 0 231 0 35 0 231 0 36 0 231 0 37 0 231 0 38 13 34 0 39 12 126 0 40 12 126 0 41 12 126 0 42 12 126 0 43 12 126 0 44 12 126 0 45 12 126 0 46 12 126 0 47 12 126 0 48 12 126 0 49 12 126 0 50 12 126 0 51 13 34 0 52 12 126 0 53 12 126 0 54 13 34 0 56 13 34 0 57 13 34 0 58 13 34 0 61 13 34 0 62 13 34 0 63 13 34 0 65 13 34 0 66 13 34 0 67 13 34 0 69 13 34 0 70 13 34 0 72 13 34 0 73 13 34 0 75 13 34 0 77 13 34 0 79 13 34 0 82 13 34 0 83 12 126 0 84 12 126 0 87 13 34 0 88 13 34 0 90 13 34 0 93 13 34 0 94 13 34 0 95 13 34 0 103 13 34 0 107 13 34 0 108 13 34 0 110 13 34 0 111 13 34 0 112 13 34 0 113 13 34 0 114 13 34 0 115 13 34 0 116 13 34 0 117 13 34 0 118 13 34 0 119 13 34 0 120 12 126 0 122 13 34 0 125 13 34 0 127 13 34 0 129 13 34 0 130 13 34 0 131 0 231 0 133 0 231 0 134 13 34 0 137 12 126 1 228 0 231 1 229 13 34 1 230] 
#[0 28 173 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 161 1 7 14 173 1 8 28 177 1 22 0 6 1 229] 
#[0 28 181 0 5] 
#[0 28 185 0 8] 
#[1 0 235 0 5 6 249 0 6 8 253 0 8 9 1 0 26 9 5 0 56 25 93 0 64 9 9 0 80 25 105 0 98 25 105 0 99 25 105 0 100 25 105 0 101 9 13 0 104 28 189 0 105 9 21 0 125 7 5 0 126 9 25 0 127 7 25 0 129 7 29 0 130 25 101 0 143 25 101 0 155 25 101 0 156 25 101 0 157 9 53 1 17 9 53 1 21 9 53 1 26 9 53 1 30 14 13 1 38 9 49 1 39 9 53 1 40 9 57 1 41 9 61 1 42 9 53 1 43 7 25 1 71 7 29 1 72 25 105 1 140 25 121 1 143 9 53 1 147 9 53 1 148 25 113 1 215 25 117 1 216 25 121 1 217 25 121 1 218 25 121 1 219 9 77 1 229] 
#[0 28 193 0 3] 
#[1 13 42 0 1 0 239 0 2 13 42 0 4 13 42 0 5 0 239 0 6 0 239 0 8 12 142 0 9 12 142 0 10 12 142 0 11 12 142 0 12 12 142 0 13 12 142 0 14 12 142 0 15 12 142 0 16 12 142 0 17 12 142 0 18 12 142 0 20 12 142 0 21 12 142 0 22 12 142 0 23 12 142 0 24 12 142 0 25 12 142 0 26 12 142 0 27 12 142 0 28 12 142 0 29 12 142 0 30 12 142 0 31 12 142 0 32 12 142 0 33 12 142 0 34 0 239 0 35 0 239 0 36 0 239 0 37 0 239 0 38 13 42 0 39 12 142 0 40 12 142 0 41 12 142 0 42 12 142 0 43 12 142 0 44 12 142 0 45 12 142 0 46 12 142 0 47 12 142 0 48 12 142 0 49 12 142 0 50 12 142 0 51 13 42 0 52 12 142 0 53 12 142 0 54 13 42 0 56 13 42 0 57 13 42 0 58 13 42 0 61 13 42 0 62 13 42 0 63 13 42 0 65 13 42 0 66 13 42 0 67 13 42 0 69 13 42 0 70 13 42 0 72 13 42 0 73 13 42 0 75 13 42 0 77 13 42 0 79 13 42 0 82 13 42 0 83 12 142 0 84 12 142 0 87 13 42 0 88 13 42 0 90 13 42 0 93 13 42 0 94 13 42 0 95 13 42 0 103 13 42 0 107 13 42 0 108 13 42 0 110 13 42 0 111 13 42 0 112 13 42 0 113 13 42 0 114 13 42 0 115 13 42 0 116 13 42 0 117 13 42 0 118 13 42 0 119 13 42 0 120 12 142 0 122 13 42 0 125 13 42 0 127 13 42 0 129 13 42 0 130 13 42 0 131 0 239 0 133 0 239 0 134 13 42 0 137 12 142 1 228 0 239 1 229 13 42 1 230] 
#[0 13 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 28 197 1 31 0 6 1 229] 
#[0 28 201 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 37 1 7 14 173 1 8 28 205 1 27 0 6 1 229] 
#[0 28 209 0 5] 
#[0 28 213 0 4] 
#[0 13 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 28 217 0 5] 
#[0 13 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 28 221 0 5] 
#[0 13 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 28 225 0 5] 
#[0 13 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 28 229 1 31 0 6 1 229] 
#[0 28 233 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 37 1 7 14 173 1 8 28 237 1 27 0 6 1 229] 
#[0 28 241 0 5] 
#[0 28 245 0 4] 
#[0 13 198 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 28 249 0 5] 
#[0 13 202 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 253 1 7 14 173 1 8 0 6 1 229] 
#[0 29 1 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 5 1 7 14 173 1 8 0 6 1 229] 
#[0 29 9 0 4] 
#[0 13 206 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 13 210 0 4 0 8] 
#[0 13 214 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 13 0 8] 
#[0 13 218 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 222 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 17 0 5] 
#[0 13 226 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 230 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 21 0 5] 
#[1 9 118 0 8 8 101 0 23 21 93 0 159 29 25 1 166] 
#[0 29 29 0 8] 
#[0 29 33 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 37 1 7 14 173 1 8 0 6 1 229] 
#[0 13 234 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 238 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 41 0 8] 
#[0 13 242 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 246 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 45 0 5] 
#[0 13 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 13 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 138 1 228 1 229 1 230] 
#[0 14 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 29 49 0 5] 
#[0 14 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 29 53 0 201 29 53 0 204 29 53 0 205 29 53 0 206 29 53 0 214 29 53 0 228 29 53 0 229 29 53 0 230 29 53 0 231 29 53 0 232 29 53 0 233 29 53 0 234 29 53 0 235 29 53 0 238 29 53 0 239 29 53 0 241 29 53 0 242 29 53 0 243 29 53 0 248 29 53 0 250 29 53 0 251 29 53 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 35 1 165 1 68 1 169 1 69 1 173 1 70 1 177 1 71 1 181 1 72 0 253 1 73 0 253 1 74 0 253 1 75 1 197 1 76 0 253 1 78 1 205 1 96 1 209 1 150 1 213 1 229] 
#[0 14 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 14 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 14 22 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 14 22 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 81 0 208 0 57 0 209 6 81 0 210 0 65 0 211 0 6 1 229] 
#[0 14 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 57 0 3] 
#[0 14 30 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 61 0 8] 
#[0 29 65 0 8] 
#[0 14 34 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 38 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 0 78 0 3 3 149 0 4 3 153 0 6 3 205 0 121 0 189 0 125 8 49 0 142 3 217 0 217 3 217 0 218 3 217 0 219 3 249 0 225 3 249 0 226 3 245 0 227 29 69 1 1 3 241 1 2 3 245 1 3 3 249 1 4 6 237 1 229] 
#[1 6 241 0 2 29 73 0 8 2 157 0 11 12 33 0 123 7 33 1 102 29 77 1 137 29 81 1 138] 
#[0 14 42 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 85 0 8] 
#[0 29 89 0 8] 
#[0 14 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 23 113 0 8] 
#[1 13 182 0 1 0 243 0 2 13 182 0 4 13 182 0 5 0 243 0 6 0 243 0 8 13 94 0 9 13 94 0 10 13 94 0 11 13 94 0 12 13 94 0 13 13 94 0 14 13 94 0 15 13 94 0 16 13 94 0 17 13 94 0 18 13 94 0 20 13 94 0 21 13 94 0 22 13 94 0 23 13 94 0 24 13 94 0 25 13 94 0 26 13 94 0 27 13 94 0 28 13 94 0 29 13 94 0 30 13 94 0 31 13 94 0 32 13 94 0 33 13 94 0 34 0 243 0 35 0 243 0 36 0 243 0 37 0 243 0 38 13 182 0 39 13 94 0 40 13 94 0 41 13 94 0 42 13 94 0 43 13 94 0 44 13 94 0 45 13 94 0 46 13 94 0 47 13 94 0 48 13 94 0 49 13 94 0 50 13 94 0 51 13 182 0 52 13 94 0 53 13 94 0 54 13 182 0 56 13 182 0 57 13 182 0 58 13 182 0 61 13 182 0 62 13 182 0 63 13 182 0 65 13 182 0 66 13 182 0 67 13 182 0 69 13 182 0 70 13 182 0 72 13 182 0 73 13 182 0 75 13 182 0 77 13 182 0 79 13 182 0 82 13 182 0 83 13 94 0 84 13 94 0 87 13 182 0 88 13 182 0 90 13 182 0 93 13 182 0 94 13 182 0 95 13 182 0 103 13 182 0 107 13 182 0 108 13 182 0 110 13 182 0 111 13 182 0 112 13 182 0 113 13 182 0 114 13 182 0 115 13 182 0 116 13 182 0 117 13 182 0 118 13 182 0 119 13 182 0 120 13 94 0 122 13 182 0 125 13 182 0 127 13 182 0 129 13 182 0 130 13 182 0 131 0 243 0 133 0 243 0 134 13 182 0 137 13 94 1 228 0 243 1 229 13 182 1 230] 
#[0 29 93 0 5] 
#[1 13 186 0 1 0 247 0 2 13 186 0 4 13 186 0 5 0 247 0 6 0 247 0 8 13 98 0 9 13 98 0 10 13 98 0 11 13 98 0 12 13 98 0 13 13 98 0 14 13 98 0 15 13 98 0 16 13 98 0 17 13 98 0 18 13 98 0 20 13 98 0 21 13 98 0 22 13 98 0 23 13 98 0 24 13 98 0 25 13 98 0 26 13 98 0 27 13 98 0 28 13 98 0 29 13 98 0 30 13 98 0 31 13 98 0 32 13 98 0 33 13 98 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 13 186 0 39 13 98 0 40 13 98 0 41 13 98 0 42 13 98 0 43 13 98 0 44 13 98 0 45 13 98 0 46 13 98 0 47 13 98 0 48 13 98 0 49 13 98 0 50 13 98 0 51 13 186 0 52 13 98 0 53 13 98 0 54 13 186 0 56 13 186 0 57 13 186 0 58 13 186 0 61 13 186 0 62 13 186 0 63 13 186 0 65 13 186 0 66 13 186 0 67 13 186 0 69 13 186 0 70 13 186 0 72 13 186 0 73 13 186 0 75 13 186 0 77 13 186 0 79 13 186 0 82 13 186 0 83 13 98 0 84 13 98 0 87 13 186 0 88 13 186 0 90 13 186 0 93 13 186 0 94 13 186 0 95 13 186 0 103 13 186 0 107 13 186 0 108 13 186 0 110 13 186 0 111 13 186 0 112 13 186 0 113 13 186 0 114 13 186 0 115 13 186 0 116 13 186 0 117 13 186 0 118 13 186 0 119 13 186 0 120 13 98 0 122 13 186 0 125 13 186 0 127 13 186 0 129 13 186 0 130 13 186 0 131 0 247 0 133 0 247 0 134 13 186 0 137 13 98 1 228 0 247 1 229 13 186 1 230] 
#[0 14 50 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 13 189 0 4 8 41 0 6 9 1 0 26 9 5 0 56 9 9 0 80 9 13 0 104 9 21 0 125 7 5 0 126 9 25 0 127 7 25 0 129 7 29 0 130 27 65 0 143 27 65 0 155 27 65 0 156 27 65 0 157 13 193 1 17 13 193 1 21 13 193 1 26 13 193 1 30 13 197 1 41 9 61 1 42 7 25 1 71 7 29 1 72 13 193 1 147 13 193 1 148 9 225 1 229] 
#[1 25 185 0 4 8 198 0 8 12 33 0 123 20 89 1 137] 
#[0 29 97 0 5] 
#[0 14 54 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 101 0 5] 
#[0 14 58 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 29 105 1 31 0 6 1 229] 
#[0 14 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 14 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 29 109 0 5] 
#[0 14 74 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 113 0 5] 
#[0 14 78 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 153 1 7 14 173 1 8 29 117 1 31 0 6 1 229] 
#[0 14 82 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 125 1 7 14 173 1 8 0 6 1 229] 
#[0 29 129 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 165 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 133 1 7 14 173 1 8 0 6 1 229] 
#[0 14 86 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 90 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 94 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 137 0 8] 
#[0 14 98 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 102 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 141 0 5] 
#[0 14 106 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 110 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 114 0 4 0 9 0 14 0 138] 
#[0 14 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 145 0 8] 
#[0 14 122 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 126 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 149 0 3] 
#[0 14 130 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 153 0 8] 
#[0 29 157 0 8] 
#[0 14 134 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 138 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 14 62 0 1 0 251 0 2 14 62 0 4 14 62 0 5 0 251 0 6 0 251 0 8 13 250 0 9 13 250 0 10 13 250 0 11 13 250 0 12 13 250 0 13 13 250 0 14 13 250 0 15 13 250 0 16 13 250 0 17 13 250 0 18 13 250 0 20 13 250 0 21 13 250 0 22 13 250 0 23 13 250 0 24 13 250 0 25 13 250 0 26 13 250 0 27 13 250 0 28 13 250 0 29 13 250 0 30 13 250 0 31 13 250 0 32 13 250 0 33 13 250 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 14 62 0 39 13 250 0 40 13 250 0 41 13 250 0 42 13 250 0 43 13 250 0 44 13 250 0 45 13 250 0 46 13 250 0 47 13 250 0 48 13 250 0 49 13 250 0 50 13 250 0 51 14 62 0 52 13 250 0 53 13 250 0 54 14 62 0 56 14 62 0 57 14 62 0 58 14 62 0 61 14 62 0 62 14 62 0 63 14 62 0 65 14 62 0 66 14 62 0 67 14 62 0 69 14 62 0 70 14 62 0 72 14 62 0 73 14 62 0 75 14 62 0 77 14 62 0 79 14 62 0 82 14 62 0 83 13 250 0 84 13 250 0 87 14 62 0 88 14 62 0 90 14 62 0 93 14 62 0 94 14 62 0 95 14 62 0 103 14 62 0 107 14 62 0 108 14 62 0 110 14 62 0 111 14 62 0 112 14 62 0 113 14 62 0 114 14 62 0 115 14 62 0 116 14 62 0 117 14 62 0 118 14 62 0 119 14 62 0 120 13 250 0 122 14 62 0 125 14 62 0 127 14 62 0 129 14 62 0 130 14 62 0 131 0 251 0 133 0 251 0 134 14 62 0 137 13 250 1 228 0 251 1 229 14 62 1 230] 
#[0 14 142 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 146 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 161 0 5] 
#[0 14 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 14 154 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 165 0 5] 
#[0 14 158 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 169 0 5] 
#[0 14 162 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 173 0 5] 
#[0 14 166 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 170 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 174 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 177 0 8] 
#[0 14 178 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 182 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 190 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 14 194 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 14 198 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 14 202 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130]
	).
]

{ #category : #private }
JSParser >> actionsForCurrentToken [
	| actions |
	self splitQuestionDotToken.
	actions := super actionsForCurrentToken.
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

{ #category : #private }
JSParser >> addIdentifiers: actions [
	(currentToken ids first ~= scanner identifierId
		and: [ (currentToken ids includes: scanner identifierId)
				and: [ (self keywords includes: currentToken value) not ] ])
		ifTrue: [ self addActionsFor: scanner identifierId to: actions ]
]

{ #category : #private }
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

{ #category : #private }
JSParser >> canInsertSemicolon [
	| item |
	^ (nodeStack size <= 1
		or: [ (nodeStack at: nodeStack size - 1) ~~ #startExpressionStatement
				or: [ ((item := nodeStack last) isKindOf: SmaCCToken) not
						or: [ (item ids includes: scanner identifierId) not
								or: [ item ids size <= 2 or: [ (#('let' 'const') includes: item value) not ] ] ] ] ])
		and: [ self lastInsertedSemicolonIsBeforeCurrentPosition ]
]

{ #category : #private }
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

{ #category : #private }
JSParser >> defaultScope [
	^ #jsx
]

{ #category : #private }
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

{ #category : #private }
JSParser >> lastInsertedSemicolonIsBeforeCurrentPosition [
	^ ((currentState attributeNamed: #lastInsertedSemicolonPosition) ifNil: [ -1 ])
		< self positionForInsertedSemicolon
]

{ #category : #private }
JSParser >> positionForInsertedSemicolon [
	^ scanner position
		+ ((currentToken ids at: 1 ifAbsent: [  ]) = scanner emptySymbolTokenId
				ifTrue: [ 1 ]
				ifFalse: [ 0 ])
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
JSParser >> reduceActionForAmbientConstructorDeclaration2: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result modifier: (nodes at: 1).
	result constructorToken: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result semicolon: (nodes at: 6).
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
JSParser >> reduceActionForAmbientNamespaceDeclaration2: nodes [
	| result |
	result := JSNamespaceDeclarationNode new.
	result globalToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result elements.
	result rightBrace: (nodes at: 4).
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
JSParser >> reduceActionForAmbientNamespaceElement4: nodes [
	| result |
	result := JSExportNamespaceElementNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
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
JSParser >> reduceActionForAsExpression1: nodes [
	| result |
	result := JSAsExpressionNode new.
	result expression: (nodes at: 1).
	result asToken: (nodes at: 3).
	result type: (nodes at: 4).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression3: nodes [
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
JSParser >> reduceActionForAsyncFunctionExpression4: nodes [
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
	result semicolon: (nodes at: 2).
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassElement2: nodes [
	| result |
	result := nodes at: 2.
	result staticToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassElement3: nodes [
	| result |
	result := JSFieldDefinitionNode new.
	result variable: ((nodes at: 1) at: 1).
	result equalToken: ((nodes at: 1) at: 2).
	result value: ((nodes at: 1) at: 3).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassElement4: nodes [
	| result |
	result := JSFieldDefinitionNode new.
	result staticToken: (nodes at: 1).
	result variable: ((nodes at: 2) at: 1).
	result equalToken: ((nodes at: 2) at: 2).
	result value: ((nodes at: 2) at: 3).
	result semicolon: (nodes at: 3).
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
JSParser >> reduceActionForClassStaticBlock1: nodes [
	| result |
	result := JSClassStaticBlockNode new.
	result staticToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	result rightBrace: (nodes at: 4).
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
	result signature: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration3: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result constructorToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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
	result semicolon: (nodes at: 2).
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
JSParser >> reduceActionForExportImplementationElement3: nodes [
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
	result typeToken: (nodes at: 3).
	result star: (nodes at: 4).
	result fromToken: ((nodes at: 5) at: 1).
	result from: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
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
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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
JSParser >> reduceActionForFieldDefinition1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFieldDefinition2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportClause4: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportClause6: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (nodes at: 2).
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
	result typeToken: ((nodes at: 2) at: 3).
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
JSParser >> reduceActionForImportMeta1: nodes [
	| result |
	result := JSImportMetaNode new.
	result importToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result metaToken: (nodes at: 3).
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
JSParser >> reduceActionForImportSpecifier3: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result typeToken: (nodes at: 2).
	result binding: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier4: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result asToken: (nodes at: 4).
	result binding: (nodes at: 5).
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
JSParser >> reduceActionForIndexedAccessType1: nodes [
	| result |
	result := JSIndexedAccessTypeNode new.
	result type: (nodes at: 1).
	result leftBracket: (nodes at: 3).
	result index: (nodes at: 4).
	result rightBracket: (nodes at: 5).
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
	result gtToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXClosingElement2: nodes [
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
JSParser >> reduceActionForJSXOpeningElement3: nodes [
	| result |
	result := JSXOpeningElementNode new.
	result ltToken: (nodes at: 2).
	result gtToken: (nodes at: 4).
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
	result expression: (nodes at: 1).
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
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration11: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration12: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
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
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
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
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
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
	result questionMarkToken: (nodes at: 5).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
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
	result questionMarkToken: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	result equalToken: ((nodes at: 7) at: 1).
	result value: ((nodes at: 7) at: 2).
	result semicolon: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration1: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration2: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration4: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration5: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration6: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration7: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration8: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration9: nodes [
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
JSParser >> reduceActionForMethodDefinition8: nodes [
	| result |
	result := JSMethodDefinitionNode new.
	result name: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
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
JSParser >> reduceActionForMethodDefinition9: nodes [
	| result |
	result := JSMethodDefinitionNode new.
	result name: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
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
JSParser >> reduceActionForPrimaryExpression16: nodes [
	| result |
	result := JSPostfixExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 3).
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
JSParser >> reduceActionForPropertySignature5: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature6: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature7: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature8: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
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
	result semicolon: (nodes at: 2).
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
JSParser >> reduceActionForSourceFileElement__element__1: nodes [
	| result |
	result := OrderedCollection new: 2.
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
JSParser >> splitQuestionDotToken [
	currentToken ids first = scanner questionDotId
		ifTrue: [ (scanner peekCharacter ifNil: [ $a ]) isDigit
				ifTrue: [ currentToken := scanner tokenClass
							value: '?'
							start: currentToken startPosition
							ids: (Array with: scanner questionId).
					self position: currentToken startPosition ] ]
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
