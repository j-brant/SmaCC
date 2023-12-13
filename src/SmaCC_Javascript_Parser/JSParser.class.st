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
#[ 0 14 1 213] 
#[ 0 30 2 153] 
#[ 0 34 0 38 0 42 0 46] 
#[ 0 14 4 81] 
#[ 0 174 5 113] 
#[ 0 198 5 113] 
#[ 1 242 1 246] 
#[ 1 250 1 254] 
#[ 2 2 2 6] 
#[ 2 14 2 18] 
#[ 2 22 2 26 2 30] 
#[ 2 26 2 30] 
#[ 2 54 2 58] 
#[ 2 74 2 78] 
#[ 2 126 2 130] 
#[ 2 134 2 138] 
#[ 2 142 2 146] 
#[ 2 150 2 154] 
#[ 0 30 7 121] 
#[ 2 182 8 193] 
#[ 2 186 8 197] 
#[ 1 122 2 194] 
#[ 0 142 3 98] 
#[ 0 142 9 149] 
#[ 0 30 9 221] 
#[ 0 30 9 225] 
#[ 0 30 9 229] 
#[ 0 30 9 233] 
#[ 0 30 0 189] 
#[ 0 194 3 186] 
#[ 3 214 5 113] 
#[ 3 226 5 113] 
#[ 3 230 5 113] 
#[ 0 14 11 209] 
#[ 3 178 4 94] 
#[ 2 166 3 98] 
#[ 1 122 4 226] 
#[ 1 122 4 230] 
#[ 4 242 10 217] 
#[ 3 134 5 54] 
#[ 0 14 15 41] 
#[ 0 30 8 53] 
#[ 0 30 8 65] 
#[ 0 30 0 197] 
#[ 0 30 0 201] 
#[ 3 210 5 230] 
#[ 0 22 6 190] 
#[ 2 166 4 218] 
#[ 0 214 16 205] 
#[ 5 210 7 10] 
#[ 0 142 7 38] 
#[ 5 169 7 42] 
#[ 0 198 5 113 7 42] 
#[ 7 70 7 74] 
#[ 7 78 7 82] 
#[ 7 98 7 102] 
#[ 4 146 5 42] 
#[ 4 206 5 54] 
#[ 3 138 13 237] 
#[ 7 154 8 197] 
#[ 1 122 7 158] 
#[ 0 142 5 78] 
#[ 5 134 7 234] 
#[ 0 142 21 201] 
#[ 0 50 0 189] 
#[ 0 54 0 189] 
#[ 12 50 12 166] 
#[ 12 250 13 90] 
#[ 11 6 15 149] 
#[ 13 10 13 94] 
#[ 13 170 14 6] 
#[ 13 174 14 10] 
#[ 14 82 14 138]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2023-12-08T10:32:09.496202-06:00'
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
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}   ##
;
AsyncFunctionExpression
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}    ##
;
AsyncMethod
:	<async> 'asyncToken' ClassElementName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncMethodDefinition}}
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
|	LeftHandSideExpression 'expression' <ts> <as> 'asToken' Type 'type' {{AsExpression}}
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
	#(208 0 #reduceActionForStartStatementListItem1: 24153089 true) 
	#(302 0 #reduceActionForModule1: 38129665 false) 
	#(151 0 #reduceActionForValidationNotArrowFunction1: 11667457 true) 
	#(160 0 #reduceActionForStartTemplateLiteral1: 12882945 true) 
	#(350 0 #reduceActionForSwitchToJSX1: 43825153 true) 
	#(300 0 #reduceActionForScript1: 38071297 false) 
	#(393 0 #reduceActionForDecoratorExpression__decorator__1: 48052225 false) 
	#(448 0 #reduceActionForDecoratorExpression__decorator__1: 60957697 false) 
	#(451 0 #reduceActionForDecoratorExpression__decorator__1: 61399041 false) 
	#(444 0 #reduceActionForDecoratorExpression__decorator__1: 60560385 false) 
	#(440 0 #reduceActionForDecoratorExpression__decorator__1: 60017665 false) 
	#(210 1 #liftFirstValue: 24325122 false) 
	#(210 1 #liftFirstValue: 24325121 false) 
	#(305 1 #liftFirstValue: 38262787 false) 
	#(207 1 #liftFirstValue: 24055810 false) 
	#(140 1 #liftFirstValue: 9004033 false) 
	#(302 1 #reduceActionForModule2: 38129666 false) 
	#(303 1 #reduceActionForModuleBody1: 38158337 false) 
	#(304 1 #reduceActionForModuleItemList1: 38189057 false) 
	#(305 1 #liftFirstValue: 38262785 false) 
	#(305 1 #liftFirstValue: 38262786 false) 
	#(256 0 #reduceActionForFormalParameters1: 32015361 false) 
	#(324 1 #liftFirstValue: 41077762 false) 
	#(323 1 #liftFirstValue: 41054209 false) 
	#(143 1 #reduceActionForPrimaryExpression1: 9411585 false) 
	#(324 1 #liftFirstValue: 41077761 false) 
	#(278 1 #reduceActionForYieldExpression1: 35043329 false) 
	#(141 1 #reduceActionForIdentifier1: 9116673 false) 
	#(322 1 #reduceActionForIdentifier1: 40984577 false) 
	#(325 1 #liftFirstValue: 41114625 false) 
	#(326 1 #liftFirstValue: 41150465 false) 
	#(327 1 #reduceActionForRegularExpressionLiteral1: 41188353 false) 
	#(159 1 #reduceActionForTemplateLiteral1: 12727297 false) 
	#(351 0 #reduceActionForSwitchToJSXText1: 43866113 true) 
	#(143 1 #liftFirstValue: 9411586 false) 
	#(266 1 #reduceActionForArrowParameterDeclaration1: 33084417 false) 
	#(163 1 #liftFirstValue: 13153281 false) 
	#(143 1 #liftFirstValue: 9411597 false) 
	#(143 1 #liftFirstValue: 9411587 false) 
	#(143 1 #liftFirstValue: 9411588 false) 
	#(143 1 #liftFirstValue: 9411589 false) 
	#(143 1 #liftFirstValue: 9411596 false) 
	#(168 1 #liftFirstValue: 14264321 false) 
	#(163 1 #liftFirstValue: 13153285 false) 
	#(163 1 #liftFirstValue: 13153286 false) 
	#(165 1 #liftFirstValue: 14032897 false) 
	#(165 1 #liftFirstValue: 14032898 false) 
	#(178 1 #liftFirstValue: 16589825 false) 
	#(178 1 #liftFirstValue: 16589826 false) 
	#(169 1 #liftFirstValue: 14354434 false) 
	#(169 1 #liftFirstValue: 14354435 false) 
	#(178 1 #liftFirstValue: 16589827 false) 
	#(179 1 #liftFirstValue: 16671745 false) 
	#(180 1 #liftFirstValue: 17040385 false) 
	#(181 1 #liftFirstValue: 17492993 false) 
	#(182 1 #liftFirstValue: 17662977 false) 
	#(184 1 #liftFirstValue: 17923073 false) 
	#(185 1 #liftFirstValue: 18221057 false) 
	#(186 1 #liftFirstValue: 18606081 false) 
	#(187 1 #liftFirstValue: 19454977 false) 
	#(188 1 #liftFirstValue: 19985409 false) 
	#(189 1 #liftFirstValue: 20149249 false) 
	#(190 1 #liftFirstValue: 20317185 false) 
	#(191 1 #liftFirstValue: 20484097 false) 
	#(194 1 #liftFirstValue: 20981762 false) 
	#(192 1 #liftFirstValue: 20654081 false) 
	#(195 1 #liftFirstValue: 21055489 false) 
	#(195 1 #liftFirstValue: 21055490 false) 
	#(194 1 #liftFirstValue: 20981761 false) 
	#(196 1 #liftFirstValue: 21129217 false) 
	#(197 1 #liftFirstValue: 21356545 false) 
	#(199 1 #liftFirstValue: 23134209 false) 
	#(143 1 #liftFirstValue: 9411590 false) 
	#(197 1 #liftFirstValue: 21356547 false) 
	#(265 1 #reduceActionForArrowParameters1: 32994305 false) 
	#(265 1 #reduceActionForArrowParameters2: 32994306 false) 
	#(197 1 #liftFirstValue: 21356548 false) 
	#(143 1 #liftFirstValue: 9411592 false) 
	#(197 1 #liftFirstValue: 21356546 false) 
	#(143 1 #liftFirstValue: 9411594 false) 
	#(143 1 #liftFirstValue: 9411593 false) 
	#(180 1 #liftFirstValue: 17040393 false) 
	#(143 1 #liftFirstValue: 9411591 false) 
	#(145 1 #reduceActionForLiteral1: 10512385 false) 
	#(145 1 #reduceActionForLiteral2: 10512386 false) 
	#(145 1 #reduceActionForLiteral4: 10512388 false) 
	#(145 1 #reduceActionForLiteral3: 10512387 false) 
	#(143 1 #liftFirstValue: 9411595 false) 
	#(143 1 #liftFirstValue: 9411598 false) 
	#(328 1 #liftFirstValue: 41440257 false) 
	#(352 0 #reduceActionForStartJSXText1: 43915265 true) 
	#(143 1 #liftFirstValue: 9411599 false) 
	#(227 1 #reduceActionForEmptyStatement1: 26672129 false) 
	#(239 0 #reduceActionForCheckEOL1: 30285825 true) 
	#(200 1 #liftFirstValue: 23285766 false) 
	#(200 1 #liftFirstValue: 23285761 false) 
	#(204 1 #liftFirstValue: 23835649 false) 
	#(200 1 #liftFirstValue: 23285762 false) 
	#(200 1 #liftFirstValue: 23285763 false) 
	#(200 1 #liftFirstValue: 23285764 false) 
	#(200 1 #liftFirstValue: 23285765 false) 
	#(203 1 #liftFirstValue: 23773185 false) 
	#(230 1 #liftFirstValue: 27092993 false) 
	#(230 1 #liftFirstValue: 27092994 false) 
	#(230 1 #liftFirstValue: 27092995 false) 
	#(230 1 #liftFirstValue: 27092996 false) 
	#(200 1 #liftFirstValue: 23285767 false) 
	#(200 1 #liftFirstValue: 23285768 false) 
	#(200 1 #liftFirstValue: 23285769 false) 
	#(200 1 #liftFirstValue: 23285770 false) 
	#(203 1 #liftFirstValue: 23773186 false) 
	#(200 1 #liftFirstValue: 23285771 false) 
	#(200 1 #liftFirstValue: 23285772 false) 
	#(200 1 #liftFirstValue: 23285773 false) 
	#(200 1 #liftFirstValue: 23285774 false) 
	#(301 1 #reduceActionForModuleBody1: 38099969 false) 
	#(206 1 #reduceActionForModuleItemList1: 23958529 false) 
	#(300 1 #reduceActionForScript2: 38071298 false) 
	#(443 1 #liftFirstValue: 60300289 false) 
	#(443 1 #liftFirstValue: 60300290 false) 
	#(443 1 #liftFirstValue: 60300291 false) 
	#(443 1 #liftFirstValue: 60300292 false) 
	#(443 1 #liftFirstValue: 60300293 false) 
	#(450 1 #liftFirstValue: 61157378 false) 
	#(453 1 #liftFirstValue: 61580290 false) 
	#(447 1 #liftFirstValue: 60818434 false) 
	#(443 1 #liftFirstValue: 60300295 false) 
	#(443 1 #liftFirstValue: 60300294 false) 
	#(447 1 #liftFirstValue: 60818433 false) 
	#(443 1 #liftFirstValue: 60300296 false) 
	#(447 1 #liftFirstValue: 60818435 false) 
	#(443 1 #liftFirstValue: 60300297 false) 
	#(447 1 #liftFirstValue: 60818437 false) 
	#(443 1 #liftFirstValue: 60300299 false) 
	#(450 1 #liftFirstValue: 61157379 false) 
	#(437 1 #reduceActionForSourceFile1: 59777025 false) 
	#(437 1 #reduceActionForSourceFile1: 59777026 false) 
	#(438 1 #reduceActionForModuleBody1: 59877377 false) 
	#(440 1 #reduceActionForModuleBody1: 60017666 false) 
	#(441 1 #reduceActionForModuleItemList1: 60073985 false) 
	#(450 1 #liftFirstValue: 61157377 false) 
	#(442 1 #liftFirstValue: 60217345 false) 
	#(439 1 #reduceActionForModuleBody1: 59952129 false) 
	#(444 1 #reduceActionForModuleBody1: 60560386 false) 
	#(445 1 #reduceActionForModuleItemList1: 60610561 false) 
	#(453 1 #liftFirstValue: 61580289 false) 
	#(446 1 #liftFirstValue: 60741633 false) 
	#(438 1 #reduceActionForModuleBody1: 59877378 false) 
	#(448 1 #reduceActionForModuleBody1: 60957698 false) 
	#(449 1 #reduceActionForModuleItemList1: 61014017 false) 
	#(439 1 #reduceActionForModuleBody1: 59952130 false) 
	#(451 1 #reduceActionForModuleBody1: 61399042 false) 
	#(452 1 #reduceActionForModuleItemList1: 61449217 false) 
	#(450 1 #liftFirstValue: 61157380 false) 
	#(450 1 #liftFirstValue: 61157381 false) 
	#(453 1 #liftFirstValue: 61580291 false) 
	#(450 1 #liftFirstValue: 61157382 false) 
	#(453 1 #liftFirstValue: 61580292 false) 
	#(453 1 #liftFirstValue: 61580293 false) 
	#(450 1 #liftFirstValue: 61157383 false) 
	#(453 1 #liftFirstValue: 61580294 false) 
	#(450 1 #liftFirstValue: 61157384 false) 
	#(447 1 #liftFirstValue: 60818436 false) 
	#(443 1 #liftFirstValue: 60300298 false) 
	#(442 1 #liftFirstValue: 60217346 false) 
	#(446 1 #liftFirstValue: 60741634 false) 
	#(389 1 #reduceActionForThisType1: 47550465 false) 
	#(371 1 #reduceActionForPredefinedType1: 45585409 false) 
	#(373 1 #reduceActionForTypeName1: 45731841 false) 
	#(374 1 #reduceActionForNamespaceName1: 45838337 false) 
	#(369 1 #reduceActionForLiteralType1: 45422593 false) 
	#(369 1 #reduceActionForLiteralType1: 45422594 false) 
	#(363 1 #liftFirstValue: 44737537 false) 
	#(364 1 #liftFirstValue: 44814338 false) 
	#(365 1 #liftFirstValue: 44891138 false) 
	#(366 1 #liftFirstValue: 44952577 false) 
	#(367 1 #liftFirstValue: 45095946 false) 
	#(367 1 #liftFirstValue: 45095945 false) 
	#(367 1 #liftFirstValue: 45095937 false) 
	#(367 1 #liftFirstValue: 45095938 false) 
	#(367 1 #liftFirstValue: 45095939 false) 
	#(367 1 #liftFirstValue: 45095940 false) 
	#(367 1 #liftFirstValue: 45095941 false) 
	#(367 1 #liftFirstValue: 45095942 false) 
	#(364 1 #liftFirstValue: 44814337 false) 
	#(365 1 #liftFirstValue: 44891137 false) 
	#(363 1 #liftFirstValue: 44737538 false) 
	#(363 1 #liftFirstValue: 44737539 false) 
	#(367 1 #liftFirstValue: 45095943 false) 
	#(367 1 #liftFirstValue: 45095944 false) 
	#(318 1 #reduceActionForExportFromClause1: 40434689 false) 
	#(317 2 #reduceActionForExportDeclaration4: 39641092 false) 
	#(201 1 #liftFirstValue: 23568385 false) 
	#(201 1 #liftFirstValue: 23568387 false) 
	#(317 2 #reduceActionForExportDeclaration3: 39641091 false) 
	#(202 1 #liftFirstValue: 23647233 false) 
	#(202 1 #liftFirstValue: 23647234 false) 
	#(202 1 #liftFirstValue: 23647236 false) 
	#(202 1 #liftFirstValue: 23647235 false) 
	#(201 1 #liftFirstValue: 23568386 false) 
	#(318 1 #reduceActionForExportFromClause3: 40434691 false) 
	#(316 1 #liftFirstValue: 39606273 false) 
	#(308 1 #reduceActionForImportClause1: 38564865 false) 
	#(308 1 #reduceActionForImportClause1: 38564866 false) 
	#(308 1 #reduceActionForImportClause1: 38564867 false) 
	#(309 1 #liftFirstValue: 38926337 false) 
	#(315 1 #liftFirstValue: 39564289 false) 
	#(207 2 #liftSecondValue: 24055809 false) 
	#(212 1 #reduceActionForArrowParameterDeclaration1: 24455169 false) 
	#(211 1 #reduceActionForNamespaceName1: 24356865 false) 
	#(216 1 #liftFirstValue: 25001985 false) 
	#(216 1 #liftFirstValue: 25001986 false) 
	#(212 1 #liftFirstValue: 24455172 false) 
	#(212 1 #liftFirstValue: 24455173 false) 
	#(304 2 #reduceActionForModuleItemList2: 38189058 false) 
	#(225 1 #reduceActionForArrowParameterDeclaration1: 26403841 false) 
	#(224 1 #reduceActionForBindingElement2: 26293250 false) 
	#(259 1 #liftFirstValue: 32385025 false) 
	#(224 1 #liftFirstValue: 26293249 false) 
	#(258 1 #liftFirstValue: 32338945 false) 
	#(255 1 #reduceActionForModuleBody1: 31970305 false) 
	#(256 1 #reduceActionForFormalParameters3: 32015363 false) 
	#(256 1 #reduceActionForFormalParameters2: 32015362 false) 
	#(257 1 #reduceActionForNamespaceName1: 32217089 false) 
	#(146 2 #reduceActionForArrayLiteral1: 10694657 false) 
	#(148 1 #reduceActionForModuleItemList1: 11173889 false) 
	#(147 1 #reduceActionForNamespaceName1: 10955779 false) 
	#(147 1 #reduceActionForNamespaceName1: 10955777 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040389 false) 
	#(179 2 #reduceActionForUpdateExpression4: 16671748 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040390 false) 
	#(179 2 #reduceActionForUpdateExpression4: 16671749 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040391 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040392 false) 
	#(287 2 #reduceActionForAwaitExpression1: 36777985 false) 
	#(289 2 #reduceActionForClassExpression1: 36975617 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040386 false) 
	#(168 2 #reduceActionForNewExpression2: 14264322 false) 
	#(170 2 #reduceActionForSuperCall1: 14953473 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040388 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040387 false) 
	#(278 2 #reduceActionForYieldExpression2: 35043330 false) 
	#(163 2 #reduceActionForMemberExpression4: 13153284 false) 
	#(169 2 #reduceActionForCallExpression1: 14354433 false) 
	#(174 2 #reduceActionForOptionalExpression1: 15618049 false) 
	#(169 2 #reduceActionForMemberExpression4: 14354439 false) 
	#(169 2 #reduceActionForCallExpression1: 14354436 false) 
	#(174 2 #reduceActionForOptionalExpression1: 15618050 false) 
	#(174 2 #reduceActionForOptionalExpression1: 15618051 false) 
	#(198 1 #liftFirstValue: 21561347 false) 
	#(198 1 #liftFirstValue: 21561351 false) 
	#(198 1 #liftFirstValue: 21561352 false) 
	#(198 1 #liftFirstValue: 21561353 false) 
	#(198 1 #liftFirstValue: 21561345 false) 
	#(198 1 #liftFirstValue: 21561346 false) 
	#(198 1 #liftFirstValue: 21561348 false) 
	#(198 1 #liftFirstValue: 21561354 false) 
	#(198 1 #liftFirstValue: 21561355 false) 
	#(198 1 #liftFirstValue: 21561356 false) 
	#(198 1 #liftFirstValue: 21561350 false) 
	#(198 1 #liftFirstValue: 21561349 false) 
	#(179 2 #reduceActionForUpdateExpression2: 16671746 false) 
	#(179 2 #reduceActionForUpdateExpression2: 16671747 false) 
	#(198 1 #liftFirstValue: 21561358 false) 
	#(198 1 #liftFirstValue: 21561360 false) 
	#(198 1 #liftFirstValue: 21561359 false) 
	#(198 1 #liftFirstValue: 21561357 false) 
	#(183 1 #liftFirstValue: 17865730 false) 
	#(183 1 #liftFirstValue: 17865729 false) 
	#(183 1 #liftFirstValue: 17865731 false) 
	#(347 0 #reduceActionForDecoratorExpression__decorator__1: 43510785 false) 
	#(269 2 #reduceActionForArrowFormalParameters2: 33335298 false) 
	#(205 2 #reduceActionForBlock1: 23861249 false) 
	#(254 2 #reduceActionForDebuggerStatement1: 31884289 false) 
	#(215 1 #reduceActionForArrowParameterDeclaration1: 24841217 false) 
	#(214 1 #reduceActionForNamespaceName1: 24705025 false) 
	#(228 2 #reduceActionForExpressionStatement1: 26722305 false) 
	#(206 2 #reduceActionForModuleItemList2: 23958530 false) 
	#(288 2 #reduceActionForClassExpression1: 36854785 false) 
	#(472 1 #liftFirstValue: 67150849 false) 
	#(461 2 #reduceActionForAmbientDeclaration1: 65044481 false) 
	#(461 2 #reduceActionForAmbientDeclaration1: 65044482 false) 
	#(461 2 #reduceActionForAmbientDeclaration1: 65044483 false) 
	#(461 2 #reduceActionForAmbientDeclaration1: 65044484 false) 
	#(461 2 #reduceActionForAmbientDeclaration1: 65044485 false) 
	#(430 1 #reduceActionForNamespaceName1: 58265601 false) 
	#(393 2 #reduceActionForModuleItemList2: 48052226 false) 
	#(441 2 #reduceActionForModuleItemList2: 60073986 false) 
	#(445 2 #reduceActionForModuleItemList2: 60610562 false) 
	#(449 2 #reduceActionForModuleItemList2: 61014018 false) 
	#(452 2 #reduceActionForModuleItemList2: 61449218 false) 
	#(375 2 #reduceActionForObjectType1: 45942785 false) 
	#(142 1 #reduceActionForIdentifier1: 9310209 false) 
	#(155 1 #liftFirstValue: 12332033 false) 
	#(390 1 #reduceActionForPropertySignature1: 47588353 false) 
	#(154 1 #liftFirstValue: 12269569 false) 
	#(154 1 #liftFirstValue: 12269570 false) 
	#(155 1 #reduceActionForIdentifier1: 12332034 false) 
	#(155 1 #reduceActionForIdentifier1: 12332035 false) 
	#(376 1 #reduceActionForModuleBody1: 46024705 false) 
	#(377 1 #reduceActionForNamespaceName1: 46120961 false) 
	#(378 1 #liftFirstValue: 46275585 false) 
	#(378 1 #liftFirstValue: 46275586 false) 
	#(378 1 #liftFirstValue: 46275587 false) 
	#(378 1 #liftFirstValue: 46275588 false) 
	#(378 1 #liftFirstValue: 46275589 false) 
	#(380 2 #reduceActionForTupleType1: 46490625 false) 
	#(382 1 #liftFirstValue: 46717953 false) 
	#(381 1 #reduceActionForNamespaceName1: 46609409 false) 
	#(358 1 #reduceActionForTypeParameter1: 44423169 false) 
	#(357 1 #reduceActionForNamespaceName1: 44310529 false) 
	#(366 2 #reduceActionForPrefixType3: 44952579 false) 
	#(366 2 #reduceActionForPrefixType2: 44952578 false) 
	#(388 1 #reduceActionForTypeQueryExpression1: 47426561 false) 
	#(387 2 #reduceActionForTypeQuery1: 47352833 false) 
	#(372 2 #reduceActionForTypeReference1: 45637633 false) 
	#(319 2 #reduceActionForNamedExports1: 40542209 false) 
	#(306 1 #liftFirstValue: 38337537 false) 
	#(321 1 #reduceActionForExportSpecifier1: 40862721 false) 
	#(320 1 #reduceActionForNamespaceName1: 40758273 false) 
	#(306 1 #liftFirstValue: 38337538 false) 
	#(317 3 #reduceActionForExportDeclaration2: 39641090 false) 
	#(201 2 #liftSecondValue: 23568389 false) 
	#(201 2 #liftSecondValue: 23568388 false) 
	#(201 2 #liftSecondValue: 23568390 false) 
	#(311 2 #reduceActionForNamedImports1: 39051265 false) 
	#(313 1 #reduceActionForNamespaceName1: 39333889 false) 
	#(314 1 #reduceActionForImportSpecifier1: 39438337 false) 
	#(307 3 #reduceActionForImportDeclaration2: 38392834 false) 
	#(217 2 #reduceActionForObjectBindingPattern1: 25065473 false) 
	#(220 1 #reduceActionForNamespaceName1: 25890817 false) 
	#(223 1 #liftFirstValue: 26179585 false) 
	#(218 2 #reduceActionForArrayBindingPattern1: 25453569 false) 
	#(221 1 #reduceActionForBindingElementList1: 26009601 false) 
	#(222 1 #reduceActionForBindingElisionElement1: 26118145 false) 
	#(212 2 #reduceActionForLexicalBinding2: 24455170 false) 
	#(209 3 #reduceActionForLexicalDeclaration1: 24236033 false) 
	#(212 2 #reduceActionForLexicalBinding3: 24455171 false) 
	#(226 2 #reduceActionForBindingRestElement1: 26489857 false) 
	#(226 2 #reduceActionForBindingRestElement1: 26489858 false) 
	#(225 2 #reduceActionForLexicalBinding2: 26403842 false) 
	#(144 3 #reduceActionForParenthesizedExpression1: 9777153 false) 
	#(224 2 #reduceActionForLexicalBinding3: 26293251 false) 
	#(269 3 #reduceActionForArrowFormalParameters1: 33335297 false) 
	#(256 2 #reduceActionForFormalParameters4: 32015364 false) 
	#(395 1 #liftFirstValue: 49906692 false) 
	#(395 1 #liftFirstValue: 49906690 false) 
	#(395 1 #liftFirstValue: 49906691 false) 
	#(395 1 #liftFirstValue: 49906689 false) 
	#(394 0 #nil 48563204 false) 
	#(149 2 #reduceActionForSpreadElement1: 11229185 false) 
	#(146 3 #reduceActionForArrayLiteral3: 10694659 false) 
	#(146 3 #reduceActionForArrayLiteral2: 10694658 false) 
	#(148 2 #reduceActionForModuleItemList2: 11173890 false) 
	#(147 2 #reduceActionForElementList4: 10955780 false) 
	#(147 2 #reduceActionForElementList4: 10955778 false) 
	#(290 2 #reduceActionForClassTail1: 37055489 false) 
	#(294 1 #reduceActionForEmptyStatement1: 37348358 false) 
	#(296 1 #reduceActionForIdentifier1: 37726209 false) 
	#(296 1 #reduceActionForIdentifier1: 37726210 false) 
	#(294 1 #liftFirstValue: 37348353 false) 
	#(272 1 #liftFirstValue: 33650690 false) 
	#(272 1 #liftFirstValue: 33650692 false) 
	#(272 1 #liftFirstValue: 33650691 false) 
	#(292 1 #reduceActionForModuleBody1: 37228545 false) 
	#(293 1 #reduceActionForModuleItemList1: 37260289 false) 
	#(295 1 #reduceActionForFieldDefinition1: 37663745 false) 
	#(294 1 #liftFirstValue: 37348357 false) 
	#(272 1 #liftFirstValue: 33650698 false) 
	#(272 1 #liftFirstValue: 33650699 false) 
	#(291 2 #reduceActionForClassHeritage1: 37147649 false) 
	#(289 3 #reduceActionForClassExpression2: 36975618 false) 
	#(291 2 #reduceActionForClassHeritage4: 37147652 false) 
	#(291 2 #reduceActionForClassHeritage2: 37147650 false) 
	#(167 3 #reduceActionForImportMeta1: 14177281 false) 
	#(166 3 #reduceActionForNewTarget1: 14073857 false) 
	#(163 3 #reduceActionForMemberExpression7: 13153287 false) 
	#(172 2 #reduceActionForArguments1: 15164417 false) 
	#(173 1 #reduceActionForArgumentList1: 15349761 false) 
	#(164 3 #reduceActionForSuperProperty2: 13767682 false) 
	#(278 3 #reduceActionForYieldExpression3: 35043331 false) 
	#(150 3 #reduceActionForObjectLiteral1: 11327489 false) 
	#(153 1 #liftFirstValue: 12020737 false) 
	#(152 1 #reduceActionForNamespaceName1: 11885569 false) 
	#(153 1 #liftFirstValue: 12020738 false) 
	#(153 1 #liftFirstValue: 12020740 false) 
	#(163 3 #reduceActionForMemberExpression3: 13153283 false) 
	#(163 3 #reduceActionForMemberExpression3: 13153288 false) 
	#(177 1 #reduceActionForOptionalFirst3: 16277507 false) 
	#(177 1 #reduceActionForOptionalFirst3: 16277509 false) 
	#(177 1 #reduceActionForOptionalFirst4: 16277508 false) 
	#(177 1 #reduceActionForOptionalFirst1: 16277505 false) 
	#(175 2 #reduceActionForOptionalChain1: 15796225 false) 
	#(176 1 #reduceActionForOptionalFirst4: 15919108 false) 
	#(176 1 #reduceActionForOptionalFirst1: 15919105 false) 
	#(175 2 #reduceActionForOptionalChain2: 15796226 false) 
	#(169 3 #reduceActionForMemberExpression3: 14354438 false) 
	#(169 3 #reduceActionForMemberExpression3: 14354440 false) 
	#(197 3 #reduceActionForAssignmentExpression5: 21356549 false) 
	#(143 3 #reduceActionForPrimaryExpression16: 9411600 false) 
	#(181 3 #reduceActionForExponentiationExpression2: 17492994 false) 
	#(182 3 #reduceActionForExponentiationExpression2: 17662978 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 17923074 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 17923075 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 18221058 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 18221059 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 18221060 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606082 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606083 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606084 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606085 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606087 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606086 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 19454978 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 19454980 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 19454979 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 19454981 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19985410 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 20149250 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 20317186 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 20484098 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 20654082 false) 
	#(193 3 #reduceActionForExponentiationExpression2: 20824065 false) 
	#(199 3 #reduceActionForExpression2: 23134210 false) 
	#(263 0 #reduceActionForDecoratorExpression__decorator__1: 32884737 false) 
	#(268 1 #liftFirstValue: 33294337 false) 
	#(264 3 #reduceActionForArrowFunction1: 32926721 false) 
	#(267 1 #reduceActionForImportClause1: 33179649 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606088 false) 
	#(355 0 #reduceActionForSwitchToDefault1: 44077057 true) 
	#(346 1 #reduceActionForModuleBody1: 43496449 false) 
	#(333 1 #reduceActionForJSXElementName1: 42352641 false) 
	#(333 1 #liftFirstValue: 42352642 false) 
	#(333 1 #liftFirstValue: 42352643 false) 
	#(337 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 42679297 false) 
	#(205 3 #reduceActionForBlock2: 23861250 false) 
	#(238 3 #reduceActionForBreakStatement1: 30178305 false) 
	#(237 3 #reduceActionForContinueStatement1: 30063617 false) 
	#(240 3 #reduceActionForReturnStatement1: 30320641 false) 
	#(249 3 #reduceActionForThrowStatement1: 31337473 false) 
	#(250 3 #reduceActionForTryStatement1: 31433729 false) 
	#(250 3 #reduceActionForTryStatement2: 31433730 false) 
	#(215 2 #reduceActionForLexicalBinding2: 24841218 false) 
	#(213 3 #reduceActionForVariableStatement1: 24609793 false) 
	#(215 2 #reduceActionForLexicalBinding3: 24841219 false) 
	#(215 2 #liftSecondValue: 24841220 false) 
	#(215 2 #liftSecondValue: 24841221 false) 
	#(248 1 #liftFirstValue: 31243265 false) 
	#(247 3 #reduceActionForLabelledStatement1: 31143937 false) 
	#(288 3 #reduceActionForClassExpression2: 36854786 false) 
	#(288 3 #reduceActionForClassDeclaration3: 36854787 false) 
	#(464 1 #reduceActionForArrowParameterDeclaration1: 65842177 false) 
	#(463 1 #reduceActionForNamespaceName1: 65729537 false) 
	#(459 3 #reduceActionForExportListDeclaration5: 64575493 false) 
	#(409 3 #reduceActionForInterfaceDeclaration1: 54746113 false) 
	#(431 0 #reduceActionForDecoratorExpression__decorator__1: 58371073 false) 
	#(478 2 #reduceActionForDecoratorExpression2: 68498434 false) 
	#(478 2 #reduceActionForDecoratorExpression2: 68498433 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034946 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034945 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034947 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034948 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034949 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034955 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034951 false) 
	#(456 3 #reduceActionForExportDeclarationElement2: 63149058 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034950 false) 
	#(456 3 #reduceActionForExportDeclarationElement2: 63149057 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034952 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034953 false) 
	#(456 3 #reduceActionForExportDeclarationElement2: 63149060 false) 
	#(456 3 #reduceActionForExportDeclarationElement2: 63149059 false) 
	#(455 3 #reduceActionForExportImplementationElement2: 62034954 false) 
	#(370 3 #reduceActionForParenthesizedExpression1: 45497345 false) 
	#(390 2 #reduceActionForPropertySignature5: 47588357 false) 
	#(390 2 #reduceActionForPropertySignature3: 47588355 false) 
	#(390 2 #reduceActionForPropertySignature2: 47588354 false) 
	#(399 2 #reduceActionForMethodSignature1: 51154945 false) 
	#(375 3 #reduceActionForObjectType2: 45942786 false) 
	#(376 2 #reduceActionForOptionalChain2: 46024706 false) 
	#(376 2 #reduceActionForOptionalChain2: 46024708 false) 
	#(380 3 #reduceActionForTupleType2: 46490626 false) 
	#(380 3 #reduceActionForTupleType3: 46490627 false) 
	#(358 2 #reduceActionForTypeParameter2: 44423170 false) 
	#(356 3 #reduceActionForTypeParameters1: 44231681 false) 
	#(383 3 #reduceActionForUnionType1: 46744577 false) 
	#(384 3 #reduceActionForIntersectionType1: 46865409 false) 
	#(372 3 #reduceActionForTypeReference2: 45637634 false) 
	#(373 3 #reduceActionForTypeName2: 45731842 false) 
	#(374 3 #reduceActionForNamespaceName2: 45838338 false) 
	#(319 3 #reduceActionForNamedExports2: 40542210 false) 
	#(318 3 #reduceActionForExportFromClause2: 40434690 false) 
	#(317 4 #reduceActionForExportDeclaration5: 39641093 false) 
	#(312 2 #reduceActionForFromClause1: 39282689 false) 
	#(317 4 #reduceActionForExportDeclaration1: 39641089 false) 
	#(311 3 #reduceActionForNamedImports2: 39051266 false) 
	#(310 3 #reduceActionForNameSpaceImport1: 38970369 false) 
	#(307 4 #reduceActionForImportDeclaration1: 38392833 false) 
	#(308 3 #reduceActionForImportClause4: 38564868 false) 
	#(308 3 #reduceActionForImportClause4: 38564869 false) 
	#(308 3 #reduceActionForImportClause6: 38564870 false) 
	#(308 3 #reduceActionForImportClause6: 38564871 false) 
	#(219 2 #reduceActionForBindingRestProperty1: 25819137 false) 
	#(217 3 #reduceActionForObjectBindingPattern2: 25065474 false) 
	#(217 3 #reduceActionForObjectBindingPattern3: 25065475 false) 
	#(218 3 #reduceActionForArrayBindingPattern3: 25453571 false) 
	#(222 2 #reduceActionForBindingElisionElement2: 26118146 false) 
	#(218 3 #reduceActionForArrayBindingPattern5: 25453573 false) 
	#(218 3 #reduceActionForArrayBindingPattern2: 25453570 false) 
	#(158 2 #reduceActionForFromClause1: 12662785 false) 
	#(211 3 #reduceActionForNamespaceName2: 24356866 false) 
	#(407 3 #reduceActionForSimpleLexicalBinding1: 54203393 false) 
	#(408 3 #reduceActionForDestructuringLexicalBinding1: 54312961 false) 
	#(226 3 #reduceActionForBindingRestElement3: 26489859 false) 
	#(256 3 #reduceActionForFormalParameters5: 32015365 false) 
	#(257 3 #reduceActionForNamespaceName2: 32217090 false) 
	#(225 3 #reduceActionForSingleNameBinding9: 26403849 false) 
	#(225 3 #reduceActionForSimpleLexicalBinding1: 26403843 false) 
	#(394 1 #reduceActionForIdentifier1: 48563202 false) 
	#(394 1 #liftFirstValue: 48563201 false) 
	#(394 1 #liftFirstValue: 48563203 false) 
	#(225 3 #reduceActionForSingleNameBinding7: 26403847 false) 
	#(146 4 #reduceActionForArrayLiteral4: 10694660 false) 
	#(147 3 #reduceActionForElementList6: 10955782 false) 
	#(147 3 #reduceActionForElementList6: 10955781 false) 
	#(271 1 #reduceActionForImportClause1: 33529857 false) 
	#(270 4 #reduceActionForAsyncArrowFunction1: 33427457 false) 
	#(299 0 #reduceActionForDecoratorExpression__decorator__1: 38016001 false) 
	#(294 2 #reduceActionForClassElement2: 37348354 false) 
	#(290 3 #reduceActionForClassTail2: 37055490 false) 
	#(293 2 #reduceActionForModuleItemList2: 37260290 false) 
	#(294 2 #reduceActionForClassElement3: 37348355 false) 
	#(295 2 #reduceActionForFieldDefinition2: 37663746 false) 
	#(294 2 #liftSecondValue: 37348359 false) 
	#(294 2 #liftSecondValue: 37348360 false) 
	#(418 1 #liftFirstValue: 56559617 false) 
	#(418 1 #liftFirstValue: 56559618 false) 
	#(418 1 #liftFirstValue: 56559619 false) 
	#(294 2 #liftSecondValue: 37348361 false) 
	#(290 3 #reduceActionForClassTail3: 37055491 false) 
	#(414 1 #liftFirstValue: 55692289 false) 
	#(413 2 #reduceActionForFromClause1: 55632897 false) 
	#(412 1 #liftFirstValue: 55117825 false) 
	#(415 2 #reduceActionForImplementsClause1: 55734273 false) 
	#(411 1 #reduceActionForNamespaceName1: 54986753 false) 
	#(291 3 #reduceActionForClassHeritage3: 37147651 false) 
	#(171 4 #reduceActionForImportCall1: 15024129 false) 
	#(173 2 #reduceActionForArgumentList2: 15349762 false) 
	#(172 3 #reduceActionForArguments2: 15164418 false) 
	#(164 4 #reduceActionForSuperProperty1: 13767681 false) 
	#(361 1 #reduceActionForNamespaceName1: 44608513 false) 
	#(362 1 #liftFirstValue: 44715009 false) 
	#(153 2 #reduceActionForPropertyDefinition5: 12020741 false) 
	#(157 2 #reduceActionForCoverInitializedName1: 12579841 false) 
	#(150 4 #reduceActionForObjectLiteral2: 11327490 false) 
	#(161 1 #reduceActionForNamespaceName1: 12920833 false) 
	#(159 4 #reduceActionForTemplateLiteral2: 12727298 false) 
	#(163 4 #reduceActionForMemberExpression2: 13153282 false) 
	#(176 2 #reduceActionForOptionalRest3: 15919107 false) 
	#(176 2 #reduceActionForOptionalRest3: 15919109 false) 
	#(169 4 #reduceActionForMemberExpression2: 14354437 false) 
	#(180 4 #reduceActionForUnaryExpression11: 17040395 false) 
	#(263 1 #reduceActionForModuleBody1: 32884738 false) 
	#(262 1 #reduceActionForModuleBody1: 32843777 false) 
	#(328 4 #reduceActionForJSXElement2: 41440258 false) 
	#(348 1 #reduceActionForJSXChild1: 43531265 false) 
	#(348 1 #liftFirstValue: 43531266 false) 
	#(347 2 #reduceActionForModuleItemList2: 43510786 false) 
	#(336 2 #reduceActionForFromClause1: 42679297 false) 
	#(353 0 #reduceActionForSwitchToJSXTextOrDefault11: 43943937 true) 
	#(343 1 #reduceActionForJSXElementName1: 43103233 false) 
	#(343 1 #liftFirstValue: 43103234 false) 
	#(340 1 #reduceActionForModuleItemList1: 42806273 false) 
	#(338 1 #reduceActionForModuleBody1: 42789889 false) 
	#(339 1 #liftFirstValue: 42806273 false) 
	#(339 1 #liftFirstValue: 42806274 false) 
	#(342 1 #reduceActionForJSXAttribute1: 43020289 false) 
	#(335 2 #reduceActionForJSXMemberExpression1: 42656769 false) 
	#(337 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 42679298 false) 
	#(330 4 #reduceActionForJSXOpeningElement3: 41774083 false) 
	#(401 3 #reduceActionForArrowFormalParameters1: 51886083 false) 
	#(238 4 #reduceActionForBreakStatement2: 30178306 false) 
	#(237 4 #reduceActionForContinueStatement2: 30063618 false) 
	#(236 1 #liftFirstValue: 30016513 false) 
	#(236 1 #liftFirstValue: 30016514 false) 
	#(235 2 #reduceActionForFromClause1: 29952001 false) 
	#(240 4 #reduceActionForReturnStatement2: 30320642 false) 
	#(251 2 #reduceActionForCatch2: 31604738 false) 
	#(252 2 #reduceActionForFromClause1: 31772673 false) 
	#(250 4 #reduceActionForTryStatement3: 31433731 false) 
	#(214 3 #reduceActionForNamespaceName2: 24705026 false) 
	#(405 2 #reduceActionForSimpleVariableDeclaration1: 53903361 false) 
	#(288 4 #reduceActionForClassDeclaration4: 36854788 false) 
	#(464 2 #reduceActionForAmbientBinding2: 65842178 false) 
	#(462 3 #reduceActionForLexicalDeclaration1: 65433603 false) 
	#(462 3 #reduceActionForLexicalDeclaration1: 65433602 false) 
	#(474 0 #reduceActionForDecoratorExpression__decorator__1: 67371009 false) 
	#(462 3 #reduceActionForLexicalDeclaration1: 65433601 false) 
	#(424 4 #reduceActionForEnumDeclaration1: 57691137 false) 
	#(427 1 #reduceActionForEnumMember1: 57976833 false) 
	#(425 1 #reduceActionForModuleBody1: 57838593 false) 
	#(426 1 #reduceActionForNamespaceName1: 57884673 false) 
	#(460 4 #reduceActionForExportAssignment1: 64912385 false) 
	#(459 4 #reduceActionForExportListDeclaration1: 64575489 false) 
	#(459 4 #reduceActionForExportListDeclaration3: 64575491 false) 
	#(436 1 #reduceActionForModuleBody1: 59665409 false) 
	#(410 2 #reduceActionForFromClause1: 54901761 false) 
	#(409 4 #reduceActionForInterfaceDeclaration3: 54746115 false) 
	#(409 4 #reduceActionForInterfaceDeclaration2: 54746114 false) 
	#(433 1 #liftFirstValue: 58507265 false) 
	#(433 1 #liftFirstValue: 58507266 false) 
	#(433 1 #liftFirstValue: 58507267 false) 
	#(433 1 #liftFirstValue: 58507268 false) 
	#(433 1 #liftFirstValue: 58507269 false) 
	#(433 1 #liftFirstValue: 58507271 false) 
	#(433 1 #liftFirstValue: 58507270 false) 
	#(433 1 #liftFirstValue: 58507272 false) 
	#(433 1 #liftFirstValue: 58507273 false) 
	#(431 1 #reduceActionForModuleBody1: 58371074 false) 
	#(432 1 #reduceActionForModuleItemList1: 58408961 false) 
	#(433 1 #liftFirstValue: 58507276 false) 
	#(433 1 #liftFirstValue: 58507275 false) 
	#(433 1 #liftFirstValue: 58507274 false) 
	#(430 3 #reduceActionForNamespaceName2: 58265602 false) 
	#(457 4 #reduceActionForExportDefaultImplementationElement1: 63578113 false) 
	#(457 4 #reduceActionForExportDefaultImplementationElement1: 63578114 false) 
	#(457 4 #reduceActionForExportDefaultImplementationElement1: 63578115 false) 
	#(458 4 #reduceActionForExportDefaultDeclarationElement1: 64139265 false) 
	#(458 4 #reduceActionForExportDefaultDeclarationElement1: 64139266 false) 
	#(260 4 #reduceActionForFunctionDeclaration5: 32420869 false) 
	#(392 3 #reduceActionForCallSignature1: 47839233 false) 
	#(156 3 #reduceActionForComputedPropertyName1: 12459009 false) 
	#(390 3 #reduceActionForPropertySignature7: 47588359 false) 
	#(390 3 #reduceActionForPropertySignature6: 47588358 false) 
	#(390 3 #reduceActionForPropertySignature4: 47588356 false) 
	#(399 3 #reduceActionForMethodSignature2: 51154946 false) 
	#(391 2 #reduceActionForFromClause1: 47785985 false) 
	#(377 3 #reduceActionForNamespaceName2: 46120962 false) 
	#(377 3 #reduceActionForNamespaceName2: 46120963 false) 
	#(380 4 #reduceActionForTupleType4: 46490628 false) 
	#(381 3 #reduceActionForNamespaceName2: 46609410 false) 
	#(359 2 #reduceActionForFromClause1: 44477441 false) 
	#(357 3 #reduceActionForNamespaceName2: 44310530 false) 
	#(388 3 #reduceActionForTypeQueryExpression2: 47426562 false) 
	#(379 4 #reduceActionForArrayType1: 46383105 false) 
	#(321 3 #reduceActionForExportSpecifier2: 40862722 false) 
	#(319 4 #reduceActionForNamedExports3: 40542211 false) 
	#(320 3 #reduceActionForNamespaceName2: 40758274 false) 
	#(314 3 #reduceActionForImportSpecifier2: 39438338 false) 
	#(311 4 #reduceActionForNamedImports3: 39051267 false) 
	#(313 3 #reduceActionForNamespaceName2: 39333890 false) 
	#(223 3 #reduceActionForBindingProperty2: 26179586 false) 
	#(217 4 #reduceActionForObjectBindingPattern4: 25065476 false) 
	#(220 3 #reduceActionForNamespaceName2: 25890818 false) 
	#(218 4 #reduceActionForArrayBindingPattern4: 25453572 false) 
	#(218 4 #reduceActionForArrayBindingPattern6: 25453574 false) 
	#(221 3 #reduceActionForBindingElementList2: 26009602 false) 
	#(407 4 #reduceActionForSimpleLexicalBinding2: 54203394 false) 
	#(408 4 #reduceActionForDestructuringLexicalBinding2: 54312962 false) 
	#(225 4 #reduceActionForSimpleLexicalBinding2: 26403844 false) 
	#(224 4 #reduceActionForBindingElement10: 26293258 false) 
	#(224 4 #reduceActionForBindingElement4: 26293252 false) 
	#(224 4 #reduceActionForBindingElement8: 26293256 false) 
	#(225 4 #reduceActionForSingleNameBinding10: 26403850 false) 
	#(225 4 #reduceActionForSingleNameBinding8: 26403848 false) 
	#(225 4 #reduceActionForSingleNameBinding5: 26403845 false) 
	#(286 1 #reduceActionForModuleBody1: 36742145 false) 
	#(299 1 #reduceActionForModuleBody1: 38016002 false) 
	#(298 1 #reduceActionForModuleBody1: 37959681 false) 
	#(294 3 #reduceActionForClassElement4: 37348356 false) 
	#(420 0 #reduceActionForInitializer_1: 56865793 false) 
	#(422 2 #reduceActionForMemberAccessorDeclaration1: 57323521 false) 
	#(422 2 #reduceActionForMemberAccessorDeclaration1: 57323525 false) 
	#(423 2 #reduceActionForIndexMemberDeclaration1: 57600001 false) 
	#(290 4 #reduceActionForClassTail4: 37055492 false) 
	#(172 4 #reduceActionForArguments3: 15164419 false) 
	#(173 3 #reduceActionForArgumentList3: 15349763 false) 
	#(360 3 #reduceActionForTypeArguments1: 44530689 false) 
	#(172 4 #reduceActionForArguments4: 15164420 false) 
	#(150 5 #reduceActionForObjectLiteral3: 11327491 false) 
	#(152 3 #reduceActionForNamespaceName2: 11885570 false) 
	#(153 3 #reduceActionForPropertyDefinition3: 12020739 false) 
	#(162 2 #reduceActionForTemplateMiddleList1: 13007873 false) 
	#(161 2 #reduceActionForTemplateSpans2: 12920834 false) 
	#(177 3 #reduceActionForOptionalFirst2: 16277506 false) 
	#(176 3 #reduceActionForOptionalFirst2: 15919106 false) 
	#(196 5 #reduceActionForConditionalExpression2: 21129218 false) 
	#(267 3 #reduceActionForConciseBody2: 33179650 false) 
	#(334 3 #reduceActionForJSXNamespacedName1: 42532865 false) 
	#(340 2 #reduceActionForModuleItemList2: 42806274 false) 
	#(342 2 #reduceActionForJSXAttribute2: 43020290 false) 
	#(330 5 #reduceActionForJSXOpeningElement1: 41774081 false) 
	#(401 4 #reduceActionForTypeCallSignature1: 51886081 false) 
	#(180 5 #reduceActionForUnaryExpression10: 17040394 false) 
	#(401 4 #reduceActionForTypeCallSignature4: 51886084 false) 
	#(229 5 #reduceActionForIfStatement2: 26802178 false) 
	#(242 5 #reduceActionForSwitchStatement1: 30566401 false) 
	#(253 1 #liftFirstValue: 31833089 false) 
	#(253 1 #liftFirstValue: 31833090 false) 
	#(405 3 #reduceActionForSimpleVariableDeclaration2: 53903362 false) 
	#(406 3 #reduceActionForDestructuringVariableDeclaration1: 54008833 false) 
	#(232 5 #reduceActionForWhileStatement1: 27379713 false) 
	#(241 5 #reduceActionForWithStatement1: 30434305 false) 
	#(424 5 #reduceActionForEnumDeclaration3: 57691139 false) 
	#(467 0 #reduceActionForDecoratorExpression__decorator__1: 66278401 false) 
	#(463 3 #reduceActionForNamespaceName2: 65729538 false) 
	#(465 4 #reduceActionForAmbientFunctionDeclaration1: 65925121 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550211 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550217 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550223 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550209 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550213 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550215 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550219 false) 
	#(476 1 #reduceActionForAmbientNamespaceElement3: 67550221 false) 
	#(474 1 #reduceActionForModuleBody1: 67371010 false) 
	#(475 1 #reduceActionForModuleItemList1: 67423233 false) 
	#(424 5 #reduceActionForEnumDeclaration2: 57691138 false) 
	#(425 2 #reduceActionForOptionalChain2: 57838594 false) 
	#(459 5 #reduceActionForExportListDeclaration6: 64575494 false) 
	#(435 5 #reduceActionForImportAliasDeclaration1: 59530241 false) 
	#(409 5 #reduceActionForInterfaceDeclaration4: 54746116 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787842 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787841 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787843 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787844 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787845 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787847 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787846 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787848 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787849 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787851 false) 
	#(434 2 #reduceActionForExportNamespaceElement2: 58787850 false) 
	#(429 5 #reduceActionForNamespaceDeclaration1: 58124289 false) 
	#(432 2 #reduceActionForModuleItemList2: 58408962 false) 
	#(400 5 #reduceActionForTypeAliasDeclaration1: 51260417 false) 
	#(458 5 #reduceActionForExportDefaultDeclarationElement3: 64139267 false) 
	#(457 5 #reduceActionForExportDefaultImplementationElement4: 63578116 false) 
	#(260 5 #reduceActionForFunctionDeclaration6: 32420870 false) 
	#(288 5 #reduceActionForClassDeclaration5: 36854789 false) 
	#(288 5 #reduceActionForClassDeclaration9: 36854793 false) 
	#(385 5 #reduceActionForFunctionType1: 46971905 false) 
	#(392 4 #reduceActionForCallSignature2: 47839234 false) 
	#(397 4 #reduceActionForConstructSignature1: 50661377 false) 
	#(390 4 #reduceActionForPropertySignature8: 47588360 false) 
	#(392 4 #reduceActionForCallSignature3: 47839235 false) 
	#(368 5 #reduceActionForIndexedAccessType1: 45293569 false) 
	#(217 5 #reduceActionForObjectBindingPattern5: 25065477 false) 
	#(218 5 #reduceActionForArrayBindingPattern8: 25453576 false) 
	#(218 5 #reduceActionForArrayBindingPattern7: 25453575 false) 
	#(317 6 #reduceActionForExportDeclaration6: 39641094 false) 
	#(224 5 #reduceActionForBindingElement11: 26293259 false) 
	#(224 5 #reduceActionForBindingElement5: 26293253 false) 
	#(224 5 #reduceActionForBindingElement12: 26293260 false) 
	#(224 5 #reduceActionForBindingElement9: 26293257 false) 
	#(224 5 #reduceActionForBindingElement6: 26293254 false) 
	#(225 5 #reduceActionForSingleNameBinding6: 26403846 false) 
	#(271 3 #reduceActionForConciseBody2: 33529858 false) 
	#(273 1 #liftFirstValue: 34260993 false) 
	#(297 4 #reduceActionForClassStaticBlock1: 37836801 false) 
	#(422 3 #reduceActionForMemberAccessorDeclaration2: 57323522 false) 
	#(422 3 #reduceActionForMemberAccessorDeclaration2: 57323526 false) 
	#(420 1 #reduceActionForModuleBody1: 56865794 false) 
	#(422 3 #reduceActionForMemberAccessorDeclaration3: 57323523 false) 
	#(422 3 #reduceActionForMemberAccessorDeclaration3: 57323527 false) 
	#(411 3 #reduceActionForNamespaceName2: 54986754 false) 
	#(173 4 #reduceActionForArgumentList4: 15349764 false) 
	#(361 3 #reduceActionForNamespaceName2: 44608514 false) 
	#(172 5 #reduceActionForArguments5: 15164421 false) 
	#(162 3 #reduceActionForTemplateMiddleList2: 13007874 false) 
	#(354 0 #reduceActionForSwitchToJSXTextOrDefault21: 44010497 true) 
	#(349 1 #liftFirstValue: 43763714 false) 
	#(349 1 #liftFirstValue: 43763713 false) 
	#(329 6 #reduceActionForJSXSelfClosingElement1: 41590785 false) 
	#(330 6 #reduceActionForJSXOpeningElement2: 41774082 false) 
	#(345 1 #reduceActionForLiteral4: 43268097 false) 
	#(345 1 #liftFirstValue: 43268099 false) 
	#(345 1 #liftFirstValue: 43268100 false) 
	#(344 2 #reduceActionForFromClause1: 43194369 false) 
	#(261 6 #reduceActionForFunctionExpression3: 32632835 false) 
	#(401 5 #reduceActionForTypeCallSignature2: 51886082 false) 
	#(233 6 #reduceActionForForStatement1: 27528193 false) 
	#(233 6 #reduceActionForForStatement13: 27528205 false) 
	#(243 2 #reduceActionForCaseBlock1: 30692353 false) 
	#(244 1 #reduceActionForModuleItemList1: 30876673 false) 
	#(424 6 #reduceActionForEnumDeclaration4: 57691140 false) 
	#(469 1 #liftFirstValue: 66453507 false) 
	#(467 1 #reduceActionForModuleBody1: 66278402 false) 
	#(468 1 #reduceActionForModuleItemList1: 66326529 false) 
	#(469 1 #liftFirstValue: 66453505 false) 
	#(469 1 #liftFirstValue: 66453506 false) 
	#(477 6 #reduceActionForAmbientModuleDeclaration1: 68322305 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550212 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550218 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550224 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550210 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550214 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550216 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550220 false) 
	#(476 2 #reduceActionForExportNamespaceElement2: 67550222 false) 
	#(473 5 #reduceActionForNamespaceDeclaration1: 67194881 false) 
	#(475 2 #reduceActionForModuleItemList2: 67423234 false) 
	#(428 1 #liftFirstValue: 58082305 false) 
	#(427 3 #reduceActionForEnumMember2: 57976834 false) 
	#(426 3 #reduceActionForNamespaceName2: 57884674 false) 
	#(459 6 #reduceActionForExportListDeclaration2: 64575490 false) 
	#(459 6 #reduceActionForExportListDeclaration4: 64575492 false) 
	#(400 6 #reduceActionForTypeAliasDeclaration2: 51260418 false) 
	#(260 6 #reduceActionForFunctionExpression3: 32420867 false) 
	#(288 6 #reduceActionForClassDeclaration6: 36854790 false) 
	#(288 6 #reduceActionForClassDeclaration7: 36854791 false) 
	#(288 6 #reduceActionForClassDeclaration10: 36854794 false) 
	#(288 6 #reduceActionForClassDeclaration11: 36854795 false) 
	#(397 5 #reduceActionForConstructSignature2: 50661378 false) 
	#(397 5 #reduceActionForConstructSignature3: 50661379 false) 
	#(392 5 #reduceActionForCallSignature4: 47839236 false) 
	#(386 6 #reduceActionForConstructorType1: 47152129 false) 
	#(385 6 #reduceActionForFunctionType2: 46971906 false) 
	#(218 6 #reduceActionForArrayBindingPattern9: 25453577 false) 
	#(224 6 #reduceActionForBindingElement13: 26293261 false) 
	#(224 6 #reduceActionForBindingElement7: 26293255 false) 
	#(396 1 #liftFirstValue: 49982465 false) 
	#(396 1 #liftFirstValue: 49982466 false) 
	#(272 5 #reduceActionForMethodDefinition9: 33650697 false) 
	#(416 4 #reduceActionForConstructorDeclaration3: 55942147 false) 
	#(421 4 #reduceActionForMemberFunctionDeclaration5: 56910853 false) 
	#(419 4 #reduceActionForMemberVariableDeclaration1: 56674305 false) 
	#(422 4 #reduceActionForMemberAccessorDeclaration4: 57323524 false) 
	#(422 4 #reduceActionForMemberAccessorDeclaration4: 57323528 false) 
	#(261 7 #reduceActionForFunctionExpression1: 32632833 false) 
	#(277 1 #reduceActionForModuleBody1: 35011585 false) 
	#(348 4 #reduceActionForJSXChild3: 43531267 false) 
	#(329 7 #reduceActionForJSXSelfClosingElement2: 41590786 false) 
	#(261 7 #reduceActionForFunctionExpression4: 32632836 false) 
	#(231 7 #reduceActionForDoWhileStatement1: 27187201 false) 
	#(233 7 #reduceActionForForStatement2: 27528194 false) 
	#(233 7 #reduceActionForForStatement3: 27528195 false) 
	#(234 7 #reduceActionForForInOfStatement1: 28249089 false) 
	#(234 7 #reduceActionForForInOfStatement4: 28249092 false) 
	#(233 7 #reduceActionForForStatement5: 27528197 false) 
	#(233 7 #reduceActionForForStatement14: 27528206 false) 
	#(233 7 #reduceActionForForStatement15: 27528207 false) 
	#(234 7 #reduceActionForForInOfStatement3: 28249091 false) 
	#(234 7 #reduceActionForForInOfStatement6: 28249094 false) 
	#(229 7 #reduceActionForIfStatement1: 26802177 false) 
	#(246 2 #reduceActionForDefaultClause1: 31055873 false) 
	#(243 3 #reduceActionForCaseBlock2: 30692354 false) 
	#(244 2 #reduceActionForModuleItemList2: 30876674 false) 
	#(243 3 #reduceActionForCaseBlock3: 30692355 false) 
	#(251 5 #reduceActionForCatch1: 31604737 false) 
	#(471 2 #reduceActionForAmbientPropertyMemberDeclaration1: 66807809 false) 
	#(466 6 #reduceActionForAmbientClassDeclaration1: 66072577 false) 
	#(468 2 #reduceActionForModuleItemList2: 66326530 false) 
	#(260 7 #reduceActionForFunctionExpression1: 32420865 false) 
	#(260 7 #reduceActionForFunctionExpression4: 32420868 false) 
	#(288 7 #reduceActionForClassDeclaration8: 36854792 false) 
	#(288 7 #reduceActionForClassDeclaration12: 36854796 false) 
	#(398 6 #reduceActionForIndexSignature2: 50853890 false) 
	#(398 6 #reduceActionForIndexSignature2: 50853889 false) 
	#(397 6 #reduceActionForConstructSignature4: 50661380 false) 
	#(386 7 #reduceActionForConstructorType2: 47152130 false) 
	#(284 8 #reduceActionForAsyncFunctionExpression1: 36269057 false) 
	#(282 1 #reduceActionForModuleBody1: 35982337 false) 
	#(404 2 #reduceActionForTypedPropertySetParameterList1: 52920321 false) 
	#(272 6 #reduceActionForMethodDefinition7: 33650695 false) 
	#(417 3 #reduceActionForCallSignature1: 56407041 false) 
	#(421 5 #reduceActionForMemberFunctionDeclaration6: 56910854 false) 
	#(419 5 #reduceActionForMemberVariableDeclaration5: 56674309 false) 
	#(419 5 #reduceActionForMemberVariableDeclaration3: 56674307 false) 
	#(419 5 #reduceActionForMemberVariableDeclaration2: 56674306 false) 
	#(416 5 #reduceActionForConstructorDeclaration4: 55942148 false) 
	#(421 5 #reduceActionForMemberFunctionDeclaration7: 56910855 false) 
	#(419 5 #reduceActionForMemberVariableDeclaration9: 56674313 false) 
	#(275 8 #reduceActionForGeneratorExpression1: 34555905 false) 
	#(261 8 #reduceActionForFunctionExpression2: 32632834 false) 
	#(331 5 #reduceActionForJSXClosingElement1: 42003457 false) 
	#(348 5 #reduceActionForJSXChild4: 43531268 false) 
	#(341 5 #reduceActionForJSXSpreadAttribute1: 42870785 false) 
	#(233 8 #reduceActionForForStatement4: 27528196 false) 
	#(233 8 #reduceActionForForStatement9: 27528201 false) 
	#(234 8 #reduceActionForForInOfStatement2: 28249090 false) 
	#(234 8 #reduceActionForForInOfStatement5: 28249093 false) 
	#(233 8 #reduceActionForForStatement6: 27528198 false) 
	#(233 8 #reduceActionForForStatement7: 27528199 false) 
	#(233 8 #reduceActionForForStatement16: 27528208 false) 
	#(234 8 #reduceActionForForInOfStatement7: 28249095 false) 
	#(234 8 #reduceActionForForInOfStatement9: 28249097 false) 
	#(245 3 #reduceActionForCaseClause1: 30949377 false) 
	#(246 3 #reduceActionForDefaultClause2: 31055874 false) 
	#(243 4 #reduceActionForCaseBlock5: 30692357 false) 
	#(243 4 #reduceActionForCaseBlock4: 30692356 false) 
	#(471 3 #reduceActionForAmbientPropertyMemberDeclaration3: 66807811 false) 
	#(471 3 #reduceActionForAmbientPropertyMemberDeclaration2: 66807810 false) 
	#(471 3 #reduceActionForAmbientPropertyMemberDeclaration9: 66807817 false) 
	#(471 3 #reduceActionForAmbientPropertyMemberDeclaration5: 66807813 false) 
	#(466 7 #reduceActionForAmbientClassDeclaration2: 66072578 false) 
	#(274 8 #reduceActionForGeneratorExpression1: 34319361 false) 
	#(260 8 #reduceActionForFunctionExpression2: 32420866 false) 
	#(454 8 #reduceActionForImportRequireDeclaration1: 61815809 false) 
	#(283 8 #reduceActionForAsyncFunctionExpression1: 36019201 false) 
	#(280 9 #reduceActionForAsyncGeneratorExpression1: 35450881 false) 
	#(284 9 #reduceActionForAsyncFunctionExpression2: 36269058 false) 
	#(272 7 #reduceActionForMethodDefinition5: 33650693 false) 
	#(272 7 #reduceActionForMethodDefinition1: 33650689 false) 
	#(272 7 #reduceActionForMethodDefinition8: 33650696 false) 
	#(417 4 #reduceActionForCallSignature2: 56407042 false) 
	#(416 6 #reduceActionForConstructorDeclaration1: 55942145 false) 
	#(419 6 #reduceActionForMemberVariableDeclaration7: 56674311 false) 
	#(419 6 #reduceActionForMemberVariableDeclaration6: 56674310 false) 
	#(419 6 #reduceActionForMemberVariableDeclaration4: 56674308 false) 
	#(421 6 #reduceActionForMemberFunctionDeclaration1: 56910849 false) 
	#(421 6 #reduceActionForMemberFunctionDeclaration8: 56910856 false) 
	#(419 6 #reduceActionForMemberVariableDeclaration13: 56674317 false) 
	#(419 6 #reduceActionForMemberVariableDeclaration11: 56674315 false) 
	#(419 6 #reduceActionForMemberVariableDeclaration10: 56674314 false) 
	#(275 9 #reduceActionForGeneratorExpression2: 34555906 false) 
	#(332 9 #reduceActionForJSXFragment1: 42164225 false) 
	#(331 6 #reduceActionForJSXClosingElement2: 42003458 false) 
	#(233 9 #reduceActionForForStatement10: 27528202 false) 
	#(233 9 #reduceActionForForStatement11: 27528203 false) 
	#(233 9 #reduceActionForForStatement8: 27528200 false) 
	#(234 9 #reduceActionForForInOfStatement8: 28249096 false) 
	#(245 4 #reduceActionForCaseClause2: 30949378 false) 
	#(243 5 #reduceActionForCaseBlock6: 30692358 false) 
	#(471 4 #reduceActionForAmbientPropertyMemberDeclaration4: 66807812 false) 
	#(471 4 #reduceActionForAmbientPropertyMemberDeclaration10: 66807818 false) 
	#(471 4 #reduceActionForAmbientPropertyMemberDeclaration7: 66807815 false) 
	#(471 4 #reduceActionForAmbientPropertyMemberDeclaration6: 66807814 false) 
	#(471 4 #reduceActionForAmbientPropertyMemberDeclaration11: 66807819 false) 
	#(274 9 #reduceActionForGeneratorExpression2: 34319362 false) 
	#(279 9 #reduceActionForAsyncGeneratorExpression1: 35175425 false) 
	#(283 9 #reduceActionForAsyncFunctionExpression2: 36019202 false) 
	#(280 10 #reduceActionForAsyncGeneratorExpression2: 35450882 false) 
	#(276 8 #reduceActionForGeneratorMethod1: 34791425 false) 
	#(285 8 #reduceActionForAsyncMethod1: 36518913 false) 
	#(272 8 #reduceActionForMethodDefinition6: 33650694 false) 
	#(419 7 #reduceActionForMemberVariableDeclaration8: 56674312 false) 
	#(421 7 #reduceActionForMemberFunctionDeclaration2: 56910850 false) 
	#(416 7 #reduceActionForConstructorDeclaration2: 55942146 false) 
	#(419 7 #reduceActionForMemberVariableDeclaration15: 56674319 false) 
	#(419 7 #reduceActionForMemberVariableDeclaration14: 56674318 false) 
	#(419 7 #reduceActionForMemberVariableDeclaration12: 56674316 false) 
	#(421 7 #reduceActionForMemberFunctionDeclaration3: 56910851 false) 
	#(345 5 #reduceActionForJSXChild4: 43268098 false) 
	#(233 10 #reduceActionForForStatement12: 27528204 false) 
	#(470 5 #reduceActionForAmbientConstructorDeclaration1: 66566145 false) 
	#(471 5 #reduceActionForAmbientPropertyMemberDeclaration8: 66807816 false) 
	#(471 5 #reduceActionForAmbientPropertyMemberDeclaration12: 66807820 false) 
	#(279 10 #reduceActionForAsyncGeneratorExpression2: 35175426 false) 
	#(281 9 #reduceActionForAsyncGeneratorMethod1: 35725313 false) 
	#(402 9 #reduceActionForGetAccessor1: 52249601 false) 
	#(403 9 #reduceActionForSetAccessor2: 52455426 false) 
	#(419 8 #reduceActionForMemberVariableDeclaration16: 56674320 false) 
	#(421 8 #reduceActionForMemberFunctionDeclaration4: 56910852 false) 
	#(470 6 #reduceActionForAmbientConstructorDeclaration2: 66566146 false) 
	#(403 10 #reduceActionForSetAccessor1: 52455425 false) 
	#(403 10 #reduceActionForSetAccessor1: 52455427 false)
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'DecoratorExpression ''decorator''*' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'Initializer?' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #OrderedCollection #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 0 49 0 140 0 81 0 207 0 57 0 208 0 81 0 209 0 65 0 210 0 49 1 46 0 73 1 47 0 77 1 48 0 81 1 49 0 81 1 51 0 81 1 61 0 11 1 225 0 10 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 113 0 196 1 113 0 197 1 113 0 199 0 253 1 5 1 113 1 8 1 125 1 9 1 129 1 10 1 133 1 13 1 113 1 14 0 253 1 19 1 113 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 2 25 0 200 2 25 0 203 2 25 0 204 2 25 0 205 2 25 0 213 2 25 0 227 2 25 0 228 2 25 0 229 2 25 0 230 2 25 0 231 2 25 0 232 2 25 0 233 2 25 0 234 2 25 0 237 2 25 0 238 2 25 0 240 2 25 0 241 2 25 0 242 2 25 0 247 2 25 0 249 2 25 0 250 2 25 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 2 113 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 2 121 1 44 2 125 1 45 0 6 1 225 0 26 1 226] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 0 81 0 207 0 57 0 208 0 81 0 209 0 65 0 210 2 129 1 46 0 73 1 47 0 77 1 48 0 81 1 49 0 81 1 51 0 81 1 61 0 11 1 225 0 10 1 226] 
#[1 0 30 0 1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 2 133 0 61 2 137 0 62 2 141 0 63 1 225 0 65 1 229 0 66 2 145 0 67 0 141 0 69 1 233 0 70 2 149 0 72 0 23 0 73 1 173 0 75 1 237 0 77 2 157 0 79 1 241 0 81 2 161 0 82 2 165 0 87 0 65 0 89 2 169 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 2 173 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 2 249 0 200 2 249 0 203 2 249 0 204 2 249 0 205 2 249 0 209 0 65 0 210 2 249 0 213 2 249 0 227 2 249 0 228 2 249 0 229 2 249 0 230 2 249 0 231 2 249 0 232 2 249 0 233 2 249 0 234 2 249 0 237 2 249 0 238 2 249 0 240 2 249 0 241 2 249 0 242 2 249 0 247 2 249 0 249 2 249 0 250 2 249 0 254 2 249 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 2 249 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 2 249 1 32 0 253 1 33 2 197 1 51 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 2 201 1 137 2 205 1 144 2 209 1 153 2 249 1 168 2 217 1 173 2 221 1 179 2 225 1 181 2 229 1 182 2 233 1 183 2 237 1 184 2 241 1 185 2 245 1 186 2 249 1 187 2 253 1 188 3 1 1 189 3 5 1 190 3 9 1 191 3 13 1 192 3 17 1 193 3 21 1 194 3 25 1 195 3 29 1 196 3 33 1 197 3 21 1 198 3 21 1 199 3 33 1 200 3 21 1 201 3 33 1 202 3 57 1 203 3 61 1 204 3 65 1 205 3 69 1 221 3 73 1 225 0 27 1 226] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 3 133 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 3 133 1 129 3 133 1 130 3 149 1 131 3 149 1 133] 
#[0 0 50 0 4 0 6 0 124 1 225] 
#[1 3 217 0 4 3 221 0 26 3 225 0 56 3 229 0 61 2 137 0 62 0 65 0 63 3 233 0 68 3 237 0 79 0 65 0 89 2 5 0 115 3 241 0 201 3 241 0 202 3 241 0 209 0 65 0 210 3 253 0 213 3 241 1 4 3 241 1 18 3 241 1 23 3 241 1 27 3 241 1 32 4 21 1 62 4 25 1 63 4 29 1 225] 
#[1 4 33 0 4 4 37 0 26 0 189 0 124 4 61 0 128 4 49 0 141 4 45 1 52 4 49 1 53 4 53 1 54 4 57 1 55 4 61 1 59 4 49 1 60 4 61 1 69 4 73 1 225] 
#[0 0 54 0 4 0 6 0 124 1 225] 
#[0 0 0 1 226] 
#[0 0 58 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 4 77 0 200 4 77 0 203 4 77 0 204 4 77 0 205 4 77 0 213 4 77 0 227 4 77 0 228 4 77 0 229 4 77 0 230 4 77 0 231 4 77 0 232 4 77 0 233 4 77 0 234 4 77 0 237 4 77 0 238 4 77 0 240 4 77 0 241 4 77 0 242 4 77 0 247 4 77 0 249 4 77 0 250 4 77 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 0 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 4 89 0 141 4 93 0 211 4 97 0 212 4 101 0 216 4 101 0 217 4 101 0 218 4 97 1 151 4 97 1 152 4 121 1 225] 
#[0 0 66 1 226] 
#[0 0 70 1 226] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 4 125 0 207 0 57 0 208 4 125 0 209 0 65 0 210 4 125 1 49 4 125 1 51 4 125 1 61 0 11 1 225 0 74 1 226] 
#[0 0 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 0 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 0 86 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 129 0 73] 
#[1 0 97 0 2 0 90 0 3 0 31 0 4 4 133 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 137 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 4 141 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 145 0 196 4 145 0 197 4 145 0 199 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 4 165 0 255 4 169 1 0 4 173 1 1 4 177 1 2 4 181 1 3 0 253 1 5 4 145 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 145 1 14 0 253 1 19 4 145 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 185 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 4 189 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 193 0 120 4 197 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 4 201 0 147 4 205 0 148 4 209 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 213 0 196 4 213 0 197 0 253 1 5 4 213 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 213 1 14 0 253 1 19 4 213 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 4 233 0 179 4 233 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 233 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 4 241 0 179 4 241 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 241 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 4 245 0 179 4 245 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 245 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 4 249 0 179 4 249 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 249 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 4 253 0 179 4 253 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 253 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 5 1 0 179 5 1 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 5 1 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 5 5 0 2 5 9 0 79 0 189 0 124 5 13 0 141 5 17 1 9 1 129 1 10 1 133 1 13 5 21 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 5 25 0 179 5 25 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 5 25 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 5 29 0 4 5 33 0 74 0 189 0 124 5 37 0 141 5 41 1 34 5 45 1 35 5 49 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 5 53 0 179 5 53 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 5 53 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 5 57 0 2 5 61 0 26 0 189 0 124 5 65 0 141] 
#[1 5 69 0 2 5 73 0 22] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 5 77 0 22 4 221 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 5 81 0 141 5 81 0 143 5 81 0 144 5 81 0 145 5 81 0 146 5 81 0 150 0 241 0 151 5 81 0 159 0 249 0 160 5 81 0 163 5 81 0 164 5 81 0 165 5 81 0 166 5 81 0 167 5 85 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 5 89 0 178 5 81 1 5 5 81 1 19 5 81 1 24 5 81 1 28 5 81 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 5 81 1 71 5 81 1 72 5 81 1 73 1 197 1 74 5 81 1 76 1 205 1 94 5 93 1 225] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 5 97 0 2 5 101 0 6 5 105 0 22 5 109 0 172 5 113 1 225] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 5 117 0 179 5 117 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 5 117 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 5 121 0 179 5 121 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 5 121 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 0 97 0 2 0 110 0 3 0 14 0 4 0 110 0 5 0 101 0 6 0 110 0 7 0 110 0 8 5 125 0 26 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 110 0 121 0 110 0 122 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 110 0 134 0 110 0 135 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 5 129 0 196 5 129 0 197 0 253 1 5 5 129 1 8 1 125 1 9 1 129 1 10 1 133 1 13 5 129 1 14 0 253 1 19 5 129 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225 0 110 1 226] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 74 0 78 0 83 0 85 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 118 0 83] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 64 0 78 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 132 0 133 0 134 0 135 0 137 1 224 1 225 1 226] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 64 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 138 0 14 5 133 1 95] 
#[1 0 142 0 2 0 142 0 3 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 83 0 142 0 86 0 142 0 96 0 142 0 121 0 142 0 122 0 142 0 132 0 142 0 133 0 142 0 134 0 142 0 135 0 142 1 224 0 142 1 225 0 142 1 226] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 5 137 0 4] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 5 141 0 133] 
#[1 5 97 0 2 0 174 0 3 0 174 0 4 0 174 0 5 5 145 0 6 0 174 0 7 0 174 0 8 0 174 0 9 0 174 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 174 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 20 0 174 0 21 5 149 0 22 0 174 0 23 0 174 0 24 0 174 0 25 0 174 0 26 0 174 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 40 0 174 0 41 0 174 0 42 0 174 0 43 5 153 0 44 0 174 0 45 0 174 0 46 0 174 0 47 0 174 0 48 0 174 0 49 0 174 0 50 0 174 0 51 0 174 0 53 0 174 0 54 0 174 0 83 0 174 0 86 0 174 0 96 0 174 0 121 0 174 0 122 0 209 0 132 0 18 0 133 0 174 0 134 0 174 0 135 5 157 0 159 0 249 0 160 5 161 0 172 5 165 0 175 0 174 1 224 0 35 1 225 0 174 1 226] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 194 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 134 0 135 1 224 1 225 1 226] 
#[1 5 97 0 2 0 198 0 3 0 198 0 4 0 198 0 5 5 169 0 6 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 173 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 5 153 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 83 0 198 0 86 0 198 0 96 0 198 0 121 0 198 0 122 0 209 0 132 0 18 0 133 0 198 0 134 0 198 0 135 5 177 0 159 0 249 0 160 5 181 0 172 5 185 0 175 0 198 1 224 0 39 1 225 0 198 1 226] 
#[0 0 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 0 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 15 0 210 0 16 0 210 0 17 0 210 0 18 0 210 0 20 0 210 0 21 0 210 0 23 0 210 0 24 0 210 0 25 0 210 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 210 0 34 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 40 0 210 0 41 0 210 0 42 0 210 0 43 5 153 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 0 210 0 49 0 210 0 50 0 210 0 51 0 210 0 53 0 210 0 54 0 210 0 83 0 210 0 86 0 210 0 96 0 210 0 121 0 210 0 122 0 210 0 134 0 210 0 135 5 189 0 175 0 210 1 224 0 210 1 225 0 210 1 226] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 0 214 0 9 6 5 0 10 0 214 0 11 0 214 0 12 6 5 0 13 0 214 0 14 0 214 0 15 6 5 0 16 6 5 0 17 0 214 0 18 0 214 0 20 0 214 0 21 6 5 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 6 5 0 28 6 5 0 29 6 5 0 30 6 5 0 31 6 5 0 32 6 5 0 33 6 5 0 34 0 214 0 35 5 241 0 36 0 214 0 37 5 245 0 38 0 214 0 40 0 214 0 41 6 5 0 42 0 214 0 43 0 214 0 45 6 5 0 46 0 214 0 47 0 214 0 48 0 214 0 49 6 5 0 50 0 214 0 51 0 214 0 53 0 214 0 54 0 214 0 83 0 214 0 86 0 214 0 121 0 214 0 122 0 214 0 134 0 214 0 135 6 5 0 198 6 5 1 224 6 13 1 225 0 214 1 226] 
#[0 0 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 9 0 222 0 11 0 222 0 12 0 222 0 14 0 222 0 15 0 222 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 0 222 0 26 6 17 0 27 0 222 0 35 0 222 0 37 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 47 0 222 0 48 0 222 0 49 0 222 0 51 0 222 0 53 0 222 0 54 0 222 0 83 0 222 0 86 0 222 0 121 0 222 0 122 0 222 0 134 0 222 0 135 0 222 1 226] 
#[0 0 226 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 6 33 0 9 0 230 0 11 0 230 0 12 0 230 0 14 0 230 0 15 0 230 0 18 0 230 0 20 0 230 0 21 0 230 0 24 0 230 0 25 6 33 0 26 0 230 0 35 0 230 0 37 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 6 33 0 47 0 230 0 48 0 230 0 49 0 230 0 51 0 230 0 53 0 230 0 54 0 230 0 83 0 230 0 86 0 230 0 121 0 230 0 122 0 230 0 134 0 230 0 135 6 33 0 183 0 230 1 226] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 0 234 0 11 0 234 0 12 0 234 0 14 0 234 0 15 0 234 0 18 0 234 0 20 0 234 0 21 0 234 0 24 0 234 0 25 6 37 0 35 6 41 0 37 0 234 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 48 0 234 0 49 0 234 0 51 0 234 0 53 0 234 0 54 0 234 0 83 0 234 0 86 0 234 0 121 0 234 0 122 0 234 0 134 0 234 0 135 0 234 1 226] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 0 238 0 11 6 45 0 12 0 238 0 14 6 49 0 15 6 53 0 18 0 238 0 20 0 238 0 21 0 238 0 24 0 238 0 25 0 238 0 40 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 48 0 238 0 49 0 238 0 51 0 238 0 53 0 238 0 54 0 238 0 83 0 238 0 86 0 238 0 121 0 238 0 122 0 238 0 134 0 238 0 135 0 238 1 226] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 6 57 0 11 6 61 0 14 6 65 0 20 6 69 0 21 0 242 0 24 0 242 0 25 0 242 0 40 0 242 0 41 0 242 0 43 0 242 0 45 0 242 0 48 0 242 0 49 0 242 0 51 0 242 0 53 0 242 0 54 6 73 0 83 6 77 0 86 0 242 0 121 0 242 0 122 0 242 0 134 0 242 0 135 0 242 1 226] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 6 81 0 24 6 85 0 25 0 246 0 40 0 246 0 41 0 246 0 43 0 246 0 45 0 246 0 48 0 246 0 49 0 246 0 51 6 89 0 53 6 93 0 54 0 246 0 121 0 246 0 122 0 246 0 134 0 246 0 135 0 246 1 226] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 6 97 0 40 0 250 0 41 0 250 0 43 0 250 0 45 0 250 0 48 0 250 0 49 0 250 0 51 0 250 0 121 0 250 0 122 0 250 0 134 0 250 0 135 0 250 1 226] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 0 254 0 41 0 254 0 43 0 254 0 45 0 254 0 48 0 254 0 49 6 101 0 51 0 254 0 121 0 254 0 122 0 254 0 134 0 254 0 135 0 254 1 226] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 41 1 2 0 43 1 6 0 45 6 105 0 48 1 2 0 49 1 2 0 121 1 2 0 122 1 2 0 134 1 2 0 135 1 2 1 226] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 6 109 0 41 1 10 0 43 1 10 0 49 1 10 0 121 1 10 0 122 1 10 0 134 1 10 0 135 1 10 1 226] 
#[1 1 14 0 3 1 14 0 5 1 14 0 7 1 14 0 8 1 14 0 43 6 113 0 49 1 14 0 121 1 14 0 122 1 14 0 134 1 14 0 135 1 14 1 226] 
#[1 1 18 0 3 1 18 0 5 1 18 0 7 1 18 0 8 1 18 0 43 1 22 0 45 1 18 0 121 1 18 0 122 1 18 0 134 1 18 0 135 1 18 1 226] 
#[0 6 117 0 45] 
#[1 1 26 0 3 1 26 0 5 1 26 0 7 1 26 0 8 6 121 0 43 1 26 0 121 1 26 0 122 1 26 0 134 1 26 0 135 1 26 1 226] 
#[0 1 30 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 1 34 0 3 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[1 6 125 0 121 0 0 1 226] 
#[0 1 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 42 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 6 129 0 19] 
#[0 1 46 0 19] 
#[0 1 50 0 19] 
#[0 1 54 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 62 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 74 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 133 0 83] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 224 1 225 1 226] 
#[1 1 110 0 4 1 110 0 136 1 110 0 138 6 137 1 96] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 141 0 136] 
#[1 6 145 0 2 6 149 0 11 6 153 0 79 6 157 1 100 6 161 1 145] 
#[1 0 6 0 2 0 6 0 4 6 165 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 169 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 0 6 1 225] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 1 122 0 8 1 122 0 124 6 173 0 239] 
#[1 1 122 0 8 1 122 0 124 6 177 0 239] 
#[0 6 181 0 8] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 6 185 0 200 6 185 0 203 6 185 0 204 6 185 0 205 6 185 0 213 6 185 0 227 6 185 0 228 6 185 0 229 6 185 0 230 6 185 0 231 6 185 0 232 6 185 0 233 6 185 0 234 6 185 0 237 6 185 0 238 6 185 0 240 6 185 0 241 6 185 0 242 6 185 0 247 6 185 0 249 6 185 0 250 6 185 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 6 189 0 2 6 193 0 57] 
#[0 6 197 0 2] 
#[1 1 122 0 2 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 52 1 122 0 56 1 122 0 57 1 122 0 61 1 122 0 69 1 122 0 75 1 122 0 79 1 122 0 82 1 122 0 93 1 122 0 94 1 122 0 106 1 122 0 109 1 122 0 111 1 122 0 114 1 122 0 116 1 122 0 119 1 122 0 124 1 122 0 126 1 122 0 128 1 122 0 129 1 122 0 130 1 122 0 132 1 122 0 133 1 122 0 136 6 201 0 239 1 122 1 225] 
#[0 6 205 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 6 209 0 196 6 209 0 197 6 209 0 199 0 253 1 5 6 209 1 8 1 125 1 9 1 129 1 10 1 133 1 13 6 209 1 14 0 253 1 19 6 209 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 1 213 0 4 6 213 0 205] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 6 217 0 141 6 221 0 214 6 225 0 215 6 229 0 216 6 229 0 217 6 229 0 218 6 233 1 225] 
#[0 6 237 0 2] 
#[0 6 241 0 2] 
#[1 0 114 0 2 0 114 0 6 0 114 0 8 0 114 0 9 0 114 0 10 0 114 0 11 0 114 0 12 0 114 0 13 0 114 0 14 0 114 0 15 0 114 0 16 0 114 0 17 0 114 0 18 0 114 0 19 0 114 0 20 0 114 0 21 0 114 0 22 0 114 0 23 0 114 0 24 0 114 0 25 0 114 0 26 0 114 0 27 0 114 0 28 0 114 0 29 0 114 0 30 0 114 0 31 0 114 0 32 0 114 0 33 0 114 0 34 0 114 0 35 0 114 0 36 0 114 0 37 0 114 0 38 0 114 0 40 0 114 0 41 0 114 0 42 0 114 0 43 0 114 0 44 0 114 0 45 0 114 0 46 0 114 0 47 0 114 0 48 0 114 0 49 0 114 0 50 0 114 0 51 0 114 0 53 0 114 0 54 0 114 0 83 0 114 0 86 0 114 0 121 6 245 0 122 0 114 0 132 0 114 0 133 0 114 1 224 0 114 1 225] 
#[1 6 249 0 8 6 125 0 121] 
#[0 0 0 1 226] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 253 0 207 0 57 0 208 6 253 0 209 0 65 0 210 0 6 1 225 1 210 1 226] 
#[0 1 214 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 0 0 1 226] 
#[0 1 218 1 226] 
#[0 0 0 1 226] 
#[1 5 29 0 4 5 33 0 74 0 189 0 124 7 1 0 141 7 5 1 34 5 45 1 35 5 49 1 225] 
#[0 7 9 0 61] 
#[1 0 50 0 4 0 50 0 6 7 13 0 72 0 50 0 124 0 50 1 225] 
#[1 7 17 0 61 7 21 0 63 2 149 0 72 7 25 0 79 7 29 0 89 7 33 0 91 7 37 0 92 7 41 0 115 7 61 1 168 7 49 1 206 7 53 1 209 7 57 1 210 7 61 1 216 7 65 1 217] 
#[1 0 189 0 124 7 69 0 141] 
#[1 3 217 0 4 7 73 0 23 7 77 0 26 7 81 1 63 7 85 1 225] 
#[1 7 89 0 2 7 93 0 26 0 189 0 124 7 97 0 141] 
#[1 5 69 0 2 4 33 0 4 5 73 0 22 4 37 0 26 0 189 0 124 4 61 0 128 7 101 0 141 4 45 1 52 4 49 1 53 4 53 1 54 4 57 1 55 4 61 1 59 4 49 1 60 4 61 1 69 4 73 1 225] 
#[1 0 189 0 124 7 105 0 141] 
#[1 0 189 0 124 7 109 0 141 7 113 1 174] 
#[1 0 189 0 124 7 117 0 141] 
#[0 1 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 1 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 43 0 1 1 242 0 2 1 242 0 4 1 242 0 6 1 242 0 8 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 38 1 242 0 39 1 242 0 52 1 242 0 56 1 242 0 57 1 242 0 58 1 242 0 61 1 242 0 62 1 242 0 63 1 242 0 65 1 242 0 66 0 43 0 67 1 242 0 69 1 242 0 70 1 242 0 72 0 43 0 73 1 242 0 75 1 242 0 77 1 242 0 79 1 242 0 81 0 43 0 82 0 43 0 87 1 242 0 89 0 43 0 92 1 242 0 93 1 242 0 94 1 242 0 102 1 242 0 106 1 242 0 107 1 242 0 109 1 242 0 110 1 242 0 111 1 242 0 112 0 43 0 113 1 242 0 114 1 242 0 115 1 242 0 116 1 242 0 117 1 242 0 118 1 242 0 119 1 242 0 124 1 242 0 126 1 242 0 128 1 242 0 129 1 242 0 130 1 242 0 132 1 242 0 133 1 242 0 136 1 242 1 225 0 43 1 226] 
#[1 7 121 0 1 7 125 0 73 7 129 1 222] 
#[1 0 47 0 1 1 254 0 2 1 254 0 4 1 254 0 6 1 254 0 8 1 254 0 35 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 52 1 254 0 56 1 254 0 57 1 254 0 58 1 254 0 61 1 254 0 62 1 254 0 63 1 254 0 65 1 254 0 66 0 47 0 67 1 254 0 69 1 254 0 70 1 254 0 72 0 47 0 73 1 254 0 75 1 254 0 77 1 254 0 79 1 254 0 81 0 47 0 82 0 47 0 87 1 254 0 89 0 47 0 92 1 254 0 93 1 254 0 94 1 254 0 102 1 254 0 106 1 254 0 107 1 254 0 109 1 254 0 110 1 254 0 111 1 254 0 112 0 47 0 113 1 254 0 114 1 254 0 115 1 254 0 116 1 254 0 117 1 254 0 118 1 254 0 119 1 254 0 124 1 254 0 126 1 254 0 128 1 254 0 129 1 254 0 130 1 254 0 132 1 254 0 133 1 254 0 136 1 254 1 225 0 47 1 226] 
#[1 0 51 0 1 2 2 0 2 2 2 0 4 2 2 0 6 2 2 0 8 2 2 0 35 2 2 0 36 2 2 0 37 2 2 0 38 2 2 0 39 2 2 0 52 2 2 0 56 2 2 0 57 2 2 0 58 2 2 0 61 2 2 0 62 2 2 0 63 2 2 0 65 2 2 0 66 0 51 0 67 2 2 0 69 2 2 0 70 2 2 0 72 0 51 0 73 2 2 0 75 2 2 0 77 2 2 0 79 2 2 0 81 0 51 0 82 0 51 0 87 2 2 0 89 0 51 0 92 2 2 0 93 2 2 0 94 2 2 0 102 2 2 0 106 2 2 0 107 2 2 0 109 2 2 0 110 2 2 0 111 2 2 0 112 0 51 0 113 2 2 0 114 2 2 0 115 2 2 0 116 2 2 0 117 2 2 0 118 2 2 0 119 2 2 0 124 2 2 0 126 2 2 0 128 2 2 0 129 2 2 0 130 2 2 0 132 2 2 0 133 2 2 0 136 2 2 1 225 0 51 1 226] 
#[0 2 10 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 55 0 1 2 18 0 2 2 18 0 4 2 18 0 6 2 18 0 8 2 18 0 35 2 18 0 36 2 18 0 37 2 18 0 38 2 18 0 39 2 18 0 52 2 18 0 56 2 18 0 57 2 18 0 58 2 18 0 61 2 18 0 62 2 18 0 63 2 18 0 65 2 18 0 66 0 55 0 67 2 18 0 69 2 18 0 70 2 18 0 72 0 55 0 73 2 18 0 75 2 18 0 77 2 18 0 79 2 18 0 81 0 55 0 82 0 55 0 87 2 18 0 89 0 55 0 92 2 18 0 93 2 18 0 94 2 18 0 102 2 18 0 106 2 18 0 107 2 18 0 109 2 18 0 110 2 18 0 111 2 18 0 112 0 55 0 113 2 18 0 114 2 18 0 115 2 18 0 116 2 18 0 117 2 18 0 118 2 18 0 119 2 18 0 124 2 18 0 126 2 18 0 128 2 18 0 129 2 18 0 130 2 18 0 132 2 18 0 133 2 18 0 136 2 18 1 225 0 55 1 226] 
#[1 0 59 0 1 0 63 0 2 0 63 0 4 0 63 0 6 0 63 0 8 0 63 0 35 0 63 0 36 0 63 0 37 0 63 0 38 0 63 0 39 0 63 0 52 0 63 0 56 0 63 0 57 0 63 0 58 0 63 0 61 0 63 0 62 0 63 0 63 0 63 0 65 0 63 0 66 0 59 0 67 0 63 0 69 0 63 0 70 0 63 0 72 0 59 0 73 0 63 0 75 0 63 0 77 0 63 0 79 0 63 0 81 0 59 0 82 0 59 0 87 0 63 0 89 0 59 0 92 0 63 0 93 0 63 0 94 0 63 0 102 0 63 0 106 0 63 0 107 0 63 0 109 0 63 0 110 0 63 0 111 0 63 0 112 0 59 0 113 0 63 0 114 0 63 0 115 0 63 0 116 0 63 0 117 0 63 0 118 0 63 0 119 0 63 0 124 0 63 0 126 0 63 0 128 0 63 0 129 0 63 0 130 0 63 0 132 0 63 0 133 0 63 0 136 0 63 1 225 0 59 1 226] 
#[0 0 0 1 226] 
#[0 2 34 1 226] 
#[0 2 38 1 226] 
#[0 2 42 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 2 133 0 61 2 137 0 62 2 141 0 63 1 225 0 65 1 229 0 66 2 145 0 67 0 141 0 69 1 233 0 70 2 149 0 72 1 173 0 75 1 237 0 77 2 157 0 79 1 241 0 81 7 133 0 82 2 165 0 87 0 65 0 89 2 169 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 2 173 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 7 153 0 200 7 153 0 203 7 153 0 204 7 153 0 205 7 153 0 209 0 65 0 210 7 153 0 213 7 153 0 227 7 153 0 228 7 153 0 229 7 153 0 230 7 153 0 231 7 153 0 232 7 153 0 233 7 153 0 234 7 153 0 237 7 153 0 238 7 153 0 240 7 153 0 241 7 153 0 242 7 153 0 247 7 153 0 249 7 153 0 250 7 153 0 254 7 153 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 7 153 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 7 153 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 7 153 1 144 7 153 1 153 7 153 1 168 7 153 1 173 7 153 1 179 7 153 1 186 7 153 1 187 7 153 1 205 7 153 1 221 3 73 1 225 2 46 1 226] 
#[0 2 50 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 2 54 0 1 0 67 0 2 0 67 0 4 0 67 0 6 0 67 0 8 0 67 0 35 0 67 0 36 0 67 0 37 0 67 0 38 0 67 0 39 0 67 0 52 0 67 0 56 0 67 0 57 0 67 0 58 0 67 0 61 0 67 0 62 0 67 0 63 0 67 0 65 0 67 0 66 0 67 0 67 0 67 0 69 0 67 0 70 0 67 0 72 2 54 0 73 0 67 0 75 0 67 0 77 0 67 0 79 0 67 0 81 0 67 0 82 0 67 0 87 0 67 0 89 0 67 0 92 0 67 0 93 0 67 0 94 0 67 0 102 0 67 0 106 0 67 0 107 0 67 0 109 0 67 0 110 0 67 0 111 0 67 0 112 0 67 0 113 0 67 0 114 0 67 0 115 0 67 0 116 0 67 0 117 0 67 0 118 0 67 0 119 0 67 0 124 0 67 0 126 0 67 0 128 0 67 0 129 0 67 0 130 0 67 0 132 0 67 0 133 0 67 0 136 0 67 1 225 0 67 1 226] 
#[0 2 62 1 226] 
#[1 2 145 0 67 7 169 0 82 2 165 0 87 2 169 0 92 2 173 0 113 7 189 1 144 7 189 1 153 7 189 1 173 7 189 1 179 7 189 1 190 7 189 1 191 7 189 1 205 7 189 1 221 2 66 1 226] 
#[0 2 70 0 67 0 82 0 87 0 92 0 113 1 226] 
#[1 2 74 0 1 0 71 0 67 2 74 0 73 0 71 0 82 0 71 0 87 0 71 0 92 0 71 0 113 0 71 1 226] 
#[0 2 82 1 226] 
#[1 0 30 0 1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 2 133 0 61 2 137 0 62 2 141 0 63 1 225 0 65 1 229 0 66 7 205 0 67 0 141 0 69 1 233 0 70 2 149 0 72 0 23 0 73 1 173 0 75 1 237 0 77 2 157 0 79 1 241 0 81 2 161 0 82 2 165 0 87 0 65 0 89 2 169 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 2 173 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 7 225 0 200 7 225 0 203 7 225 0 204 7 225 0 205 7 225 0 209 0 65 0 210 7 225 0 213 7 225 0 227 7 225 0 228 7 225 0 229 7 225 0 230 7 225 0 231 7 225 0 232 7 225 0 233 7 225 0 234 7 225 0 237 7 225 0 238 7 225 0 240 7 225 0 241 7 225 0 242 7 225 0 247 7 225 0 249 7 225 0 250 7 225 0 254 7 225 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 7 225 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 7 225 1 32 0 253 1 33 7 225 1 51 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 7 213 1 137 7 225 1 144 7 225 1 153 7 225 1 168 7 225 1 173 7 217 1 179 7 225 1 187 7 225 1 194 7 225 1 198 7 225 1 199 7 225 1 201 7 225 1 203 7 225 1 204 7 225 1 205 3 73 1 225 2 86 1 226] 
#[0 2 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 94 1 226] 
#[1 0 30 0 1 2 98 0 5 7 205 0 67 0 23 0 73 7 237 0 82 2 165 0 87 2 169 0 92 2 173 0 113 7 253 1 51 7 245 1 137 7 253 1 144 7 253 1 153 7 253 1 173 7 253 1 179 7 253 1 191 7 253 1 197 7 253 1 200 7 253 1 202 7 253 1 203 7 253 1 204 7 253 1 205 2 98 1 226] 
#[0 2 102 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 106 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 110 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 114 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 118 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 122 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[1 0 75 0 1 2 130 0 2 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 2 130 0 52 2 130 0 56 2 130 0 57 2 130 0 58 2 130 0 61 2 130 0 62 2 130 0 63 2 130 0 65 2 130 0 66 0 75 0 67 2 130 0 69 2 130 0 70 2 130 0 72 0 75 0 73 2 130 0 75 2 130 0 77 2 130 0 79 2 130 0 81 0 75 0 82 0 75 0 87 2 130 0 89 0 75 0 92 2 130 0 93 2 130 0 94 2 130 0 102 2 130 0 106 2 130 0 107 2 130 0 109 2 130 0 110 2 130 0 111 2 130 0 112 0 75 0 113 2 130 0 114 2 130 0 115 2 130 0 116 2 130 0 117 2 130 0 118 2 130 0 119 2 130 0 124 2 130 0 126 2 130 0 128 2 130 0 129 2 130 0 130 2 130 0 132 2 130 0 133 2 130 0 136 2 130 1 225 0 75 1 226] 
#[1 0 79 0 1 2 138 0 2 2 138 0 4 2 138 0 6 2 138 0 8 2 138 0 35 2 138 0 36 2 138 0 37 2 138 0 38 2 138 0 39 2 138 0 52 2 138 0 56 2 138 0 57 2 138 0 58 2 138 0 61 2 138 0 62 2 138 0 63 2 138 0 65 2 138 0 66 0 79 0 67 2 138 0 69 2 138 0 70 2 138 0 72 0 79 0 73 2 138 0 75 2 138 0 77 2 138 0 79 2 138 0 81 0 79 0 82 0 79 0 87 2 138 0 89 0 79 0 92 2 138 0 93 2 138 0 94 2 138 0 102 2 138 0 106 2 138 0 107 2 138 0 109 2 138 0 110 2 138 0 111 2 138 0 112 0 79 0 113 2 138 0 114 2 138 0 115 2 138 0 116 2 138 0 117 2 138 0 118 2 138 0 119 2 138 0 124 2 138 0 126 2 138 0 128 2 138 0 129 2 138 0 130 2 138 0 132 2 138 0 133 2 138 0 136 2 138 1 225 0 79 1 226] 
#[1 0 83 0 1 2 146 0 2 2 146 0 4 2 146 0 6 2 146 0 8 2 146 0 35 2 146 0 36 2 146 0 37 2 146 0 38 2 146 0 39 2 146 0 52 2 146 0 56 2 146 0 57 2 146 0 58 2 146 0 61 2 146 0 62 2 146 0 63 2 146 0 65 2 146 0 66 0 83 0 67 2 146 0 69 2 146 0 70 2 146 0 72 0 83 0 73 2 146 0 75 2 146 0 77 2 146 0 79 2 146 0 81 0 83 0 82 0 83 0 87 2 146 0 89 0 83 0 92 2 146 0 93 2 146 0 94 2 146 0 102 2 146 0 106 2 146 0 107 2 146 0 109 2 146 0 110 2 146 0 111 2 146 0 112 0 83 0 113 2 146 0 114 2 146 0 115 2 146 0 116 2 146 0 117 2 146 0 118 2 146 0 119 2 146 0 124 2 146 0 126 2 146 0 128 2 146 0 129 2 146 0 130 2 146 0 132 2 146 0 133 2 146 0 136 2 146 1 225 0 83 1 226] 
#[1 2 150 0 2 2 150 0 4 2 150 0 6 2 150 0 8 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 38 2 150 0 39 2 150 0 52 2 150 0 56 2 150 0 57 2 150 0 58 2 150 0 61 2 150 0 62 2 150 0 63 2 150 0 65 2 150 0 66 0 87 0 67 2 150 0 69 2 150 0 70 2 150 0 72 2 150 0 75 2 150 0 77 2 150 0 79 2 150 0 81 0 87 0 82 0 87 0 87 2 150 0 89 0 87 0 92 2 150 0 93 2 150 0 94 2 150 0 102 2 150 0 106 2 150 0 107 2 150 0 109 2 150 0 110 2 150 0 111 2 150 0 112 0 87 0 113 2 150 0 114 2 150 0 115 2 150 0 116 2 150 0 117 2 150 0 118 2 150 0 119 2 150 0 124 2 150 0 126 2 150 0 128 2 150 0 129 2 150 0 130 2 150 0 132 2 150 0 133 2 150 0 136 2 150 1 225 0 87 1 226] 
#[1 0 91 0 1 6 145 0 2 6 149 0 11 0 30 0 61 0 30 0 62 8 9 0 79 6 157 1 100 8 13 1 137 6 161 1 145 8 17 1 222] 
#[1 3 77 0 2 0 90 0 3 8 21 0 4 8 25 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 4 137 0 120 0 189 0 124 3 121 0 128 3 125 0 129 8 29 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 8 33 1 0 4 173 1 1 4 177 1 2 4 181 1 3 3 121 1 69 3 125 1 70 3 129 1 100 8 37 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 8 37 1 129 8 37 1 130 3 149 1 131 3 149 1 133 8 41 1 225] 
#[1 8 45 0 2 8 49 0 5 8 53 0 6 3 89 0 11 8 57 0 93 8 61 0 101 8 65 0 125 8 85 0 128 8 89 0 129 8 73 0 142 8 73 0 154 8 73 0 155 8 73 0 156 8 85 1 69 8 89 1 70 8 93 1 100 8 97 1 120 8 101 1 121 8 105 1 122 8 105 1 134 8 105 1 136 8 105 1 141 8 105 1 142 8 105 1 143] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 8 129 0 7 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 8 133 0 121 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 8 145 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 8 141 1 125 8 145 1 126 3 137 1 127 3 141 1 128 8 145 1 129 8 145 1 130 3 149 1 131 3 149 1 133] 
#[1 0 189 0 124 8 149 0 141 8 153 1 101 8 157 1 102] 
#[1 8 161 0 2 3 81 0 4 3 85 0 6 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 8 165 1 111 8 165 1 112 8 165 1 113 8 165 1 114 8 165 1 115 8 165 1 116 3 173 1 117 3 177 1 118 8 165 1 119 8 165 1 123 8 165 1 124 8 165 1 131 8 165 1 133] 
#[1 8 161 0 2 3 81 0 4 3 85 0 6 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 8 169 1 111 8 169 1 112 8 169 1 113 8 169 1 114 8 169 1 115 8 169 1 116 3 173 1 117 3 177 1 118 8 169 1 119 8 169 1 123 8 169 1 124 8 169 1 131 8 169 1 133] 
#[1 8 173 0 2 3 89 0 11 8 177 1 100] 
#[0 2 158 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 0 189 0 124 8 181 0 141 8 185 1 132] 
#[0 2 162 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 2 166 0 3 2 166 0 4 2 166 0 5 2 166 0 6 2 166 0 7 2 166 0 8 2 166 0 9 2 166 0 11 2 166 0 12 2 166 0 14 2 166 0 15 2 166 0 18 2 166 0 19 2 166 0 20 2 166 0 21 2 170 0 22 2 166 0 23 2 166 0 24 2 166 0 25 2 166 0 26 2 166 0 27 2 166 0 35 2 166 0 37 2 166 0 40 2 166 0 41 2 166 0 43 2 166 0 45 2 166 0 47 2 166 0 48 2 166 0 49 2 166 0 51 2 166 0 53 2 166 0 54 2 166 0 64 2 166 0 83 2 166 0 85 2 166 0 86 2 166 0 97 2 166 0 98 2 166 0 99 2 166 0 100 2 166 0 104 2 166 0 121 2 166 0 122 2 166 0 125 2 166 0 128 2 166 0 129 2 166 0 134 2 166 0 135 2 166 1 226] 
#[0 2 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 8 189 0 2] 
#[0 0 0 1 226] 
#[1 2 182 0 3 2 182 0 4 2 182 0 5 2 182 0 6 2 182 0 7 2 182 0 8 2 182 0 9 2 182 0 11 2 182 0 12 2 182 0 14 2 182 0 15 2 182 0 18 2 182 0 19 2 182 0 20 2 182 0 21 2 182 0 23 2 182 0 24 2 182 0 25 2 182 0 26 2 182 0 27 2 182 0 35 2 182 0 37 2 182 0 40 2 182 0 41 2 182 0 43 2 182 0 45 2 182 0 47 0 95 0 48 2 182 0 49 2 182 0 51 2 182 0 53 2 182 0 54 2 182 0 64 2 182 0 83 2 182 0 86 2 182 0 97 2 182 0 98 2 182 0 99 2 182 0 100 2 182 0 104 2 182 0 121 2 182 0 122 2 182 0 125 2 182 0 128 2 182 0 129 2 182 0 134 2 182 0 135 2 182 1 226] 
#[1 2 186 0 3 2 186 0 4 2 186 0 5 2 186 0 6 2 186 0 7 2 186 0 8 2 186 0 9 2 186 0 11 2 186 0 12 2 186 0 14 2 186 0 15 2 186 0 18 2 186 0 19 2 186 0 20 2 186 0 21 2 186 0 23 2 186 0 24 2 186 0 25 2 186 0 26 2 186 0 27 2 186 0 35 2 186 0 37 0 99 0 40 2 186 0 41 2 186 0 43 2 186 0 45 2 186 0 47 2 186 0 48 2 186 0 49 2 186 0 51 2 186 0 53 2 186 0 54 2 186 0 64 2 186 0 83 2 186 0 86 2 186 0 97 2 186 0 98 2 186 0 99 2 186 0 100 2 186 0 104 2 186 0 121 2 186 0 122 2 186 0 125 2 186 0 128 2 186 0 129 2 186 0 134 2 186 0 135 2 186 1 226] 
#[0 2 190 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 2 194 0 3 2 194 0 4 2 194 0 5 0 103 0 6 2 194 0 7 2 194 0 8 2 194 0 9 2 194 0 11 2 194 0 12 2 194 0 14 2 194 0 15 2 194 0 18 2 194 0 19 2 194 0 20 2 194 0 21 2 194 0 23 2 194 0 24 2 194 0 25 2 194 0 26 2 194 0 27 2 194 0 35 2 194 0 37 2 194 0 40 2 194 0 41 2 194 0 43 2 194 0 45 2 194 0 47 2 194 0 48 2 194 0 49 2 194 0 51 2 194 0 53 2 194 0 54 2 194 0 64 2 194 0 83 2 194 0 86 2 194 0 97 2 194 0 98 2 194 0 99 2 194 0 100 2 194 0 104 2 194 0 121 2 194 0 122 2 194 0 125 2 194 0 128 2 194 0 129 2 194 0 134 2 194 0 135 8 201 0 239 2 194 1 226] 
#[0 2 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 206 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 210 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 214 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 1 122 0 3 1 122 0 4 1 122 0 5 1 122 0 6 1 122 0 7 1 122 0 8 1 122 0 9 1 122 0 11 1 122 0 12 1 122 0 14 1 122 0 15 1 122 0 18 1 122 0 19 1 122 0 20 1 122 0 21 1 122 0 23 1 122 0 24 1 122 0 25 1 122 0 26 1 122 0 27 1 122 0 35 1 122 0 37 1 122 0 40 1 122 0 41 1 122 0 43 1 122 0 45 1 122 0 47 1 122 0 48 1 122 0 49 1 122 0 51 1 122 0 53 1 122 0 54 1 122 0 64 1 122 0 83 1 122 0 85 1 122 0 86 1 122 0 97 1 122 0 98 1 122 0 99 1 122 0 100 1 122 0 104 1 122 0 121 1 122 0 122 1 122 0 125 1 122 0 128 1 122 0 129 1 122 0 134 1 122 0 135 8 205 0 239 1 122 1 226] 
#[0 8 209 0 22] 
#[0 2 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 226 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 230 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 242 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 246 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 2 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 8 213 0 5 8 221 0 125 8 221 0 128 8 221 1 50 8 225 1 64 8 229 1 65 8 221 1 69] 
#[1 8 237 0 55 2 254 0 78] 
#[0 8 241 0 79] 
#[1 5 29 0 4 5 33 0 74 0 189 0 124 8 245 0 141 8 249 1 34 5 45 1 35 5 49 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 253 0 196 8 253 0 197 0 253 1 5 8 253 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 253 1 14 0 253 1 19 8 253 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 9 1 0 2 9 5 0 26 0 189 0 124 9 9 0 141] 
#[0 3 2 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 6 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 10 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 14 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 18 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 22 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 26 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 30 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 3 34 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 9 13 0 78 9 17 1 56] 
#[1 9 21 0 8 3 38 0 78] 
#[1 0 91 0 1 0 30 0 61 0 30 0 62 9 25 0 63 2 149 0 72 9 29 0 79 2 165 0 87 2 173 0 113 8 13 1 137 9 33 1 144 9 37 1 153 9 41 1 168 8 17 1 222] 
#[1 9 45 0 5 0 189 0 124 9 49 0 125 9 49 0 128 9 61 0 141 9 49 1 50 9 53 1 57 9 57 1 58 9 61 1 60 9 49 1 69] 
#[0 9 65 0 55] 
#[0 3 42 0 5 0 78 0 121] 
#[1 9 13 0 78 9 69 1 56] 
#[1 3 46 0 78 9 73 0 121] 
#[0 3 50 0 78] 
#[0 3 54 0 78] 
#[0 9 77 0 8] 
#[0 3 58 0 78 0 121] 
#[0 3 62 0 8] 
#[0 9 81 0 113] 
#[0 3 66 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 9 85 0 5 9 89 0 6 9 93 0 120 0 189 0 124 8 65 0 125 8 85 0 128 8 89 0 129 9 97 0 141 9 101 0 142 9 101 0 154 9 101 0 155 9 101 0 156 9 105 0 219 9 109 0 220 9 113 0 223 9 113 0 225 8 85 1 69 8 89 1 70 9 121 1 225] 
#[1 4 81 0 4 4 85 0 6 9 125 0 7 4 137 0 120 4 197 0 121 0 189 0 124 9 97 0 141 9 129 0 148 4 149 0 216 4 149 0 217 4 149 0 218 9 133 0 221 9 137 0 222 9 141 0 224 9 141 0 225 9 145 0 226 8 41 1 225] 
#[1 3 70 0 8 9 149 0 23 3 70 0 121 9 153 0 158] 
#[1 9 157 0 8 9 161 0 121] 
#[0 3 74 0 8 0 121] 
#[1 9 149 0 23 9 165 0 158] 
#[0 3 78 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 3 82 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 3 86 0 8 0 121] 
#[0 3 90 0 8 0 121] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 9 169 0 141 9 173 0 216 9 173 0 217 9 173 0 218] 
#[0 3 94 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 177 0 113] 
#[1 0 97 0 2 0 31 0 4 4 133 0 6 9 181 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 9 185 0 120 4 197 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 4 141 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 4 201 0 147 9 189 0 148 4 209 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 213 0 196 4 213 0 197 4 149 0 216 4 149 0 217 4 149 0 218 9 133 0 221 9 137 0 222 9 141 0 224 9 141 0 225 9 145 0 226 0 253 1 5 4 213 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 213 1 14 0 253 1 19 4 213 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 185 1 225] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 9 193 0 141 9 197 0 216 9 197 0 217 9 197 0 218] 
#[1 0 142 0 2 0 107 0 3 0 142 0 6 0 107 0 7 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 111 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 83 0 142 0 86 0 107 0 121 0 142 0 132 0 142 0 133 9 201 0 158 0 142 1 224 0 142 1 225] 
#[1 9 205 0 3 6 125 0 121] 
#[1 3 102 0 3 3 102 0 5 3 102 0 7 9 149 0 23 3 102 0 121 9 209 0 158] 
#[0 3 106 0 3 0 121] 
#[0 3 110 0 3 0 5 0 7 0 121] 
#[0 3 114 0 3] 
#[0 9 213 0 3] 
#[0 3 118 0 3] 
#[1 3 122 0 3 9 217 0 121] 
#[0 3 126 0 3] 
#[0 3 130 0 3 0 121] 
#[1 0 30 0 1 6 145 0 2 0 30 0 4 0 30 0 6 6 149 0 11 0 30 0 43 6 153 0 79 0 115 0 97 0 119 0 98 0 123 0 99 0 127 0 100 0 30 0 109 0 30 0 122 0 131 0 124 9 237 0 141 6 157 1 100 9 241 1 137 9 245 1 139 6 161 1 145] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 249 0 196 9 249 0 197 0 253 1 5 9 249 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 249 1 14 0 253 1 19 9 249 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 3 138 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 120 0 121 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[1 9 253 0 7 4 197 0 121 10 1 0 148] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 10 5 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 193 0 120 10 9 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 10 13 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 17 0 196 10 17 0 197 0 253 1 5 10 17 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 17 1 14 0 253 1 19 10 17 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 3 142 0 7 0 121] 
#[0 3 146 0 7 0 121] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 145 0 196 4 145 0 197 4 145 0 199 0 253 1 5 4 145 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 145 1 14 0 253 1 19 4 145 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 5 9 0 79] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 11 0 214 0 12 0 214 0 14 0 214 0 15 0 214 0 18 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 35 5 241 0 36 0 214 0 37 5 245 0 38 0 214 0 40 0 214 0 41 0 214 0 43 0 214 0 45 0 214 0 47 0 214 0 48 0 214 0 49 0 214 0 51 0 214 0 53 0 214 0 54 0 214 0 83 0 214 0 86 0 214 0 121 0 214 0 122 0 214 0 134 0 214 0 135 6 13 1 225 0 214 1 226] 
#[0 3 150 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 10 21 0 11 6 153 0 79] 
#[0 3 154 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 3 158 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 3 162 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 3 166 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 3 170 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 4 165 0 255 4 169 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 10 25 0 2 10 29 0 26 0 189 0 124 10 33 0 141] 
#[0 0 146 0 19] 
#[0 10 37 0 19] 
#[1 6 145 0 2 3 89 0 11 6 157 1 100 6 161 1 145] 
#[0 3 174 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 10 41 0 5 10 45 0 8 10 49 0 26 10 53 0 56 10 57 0 80 10 61 0 103 10 65 0 104 10 69 0 124 10 73 0 126 10 101 1 16 10 101 1 20 10 101 1 25 10 101 1 29 10 93 1 36 10 97 1 37 10 101 1 38 10 105 1 39 10 109 1 40 10 101 1 41 10 101 1 146 10 101 1 147 10 125 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 4 221 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 10 129 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 10 129 0 178 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 5 93 1 225] 
#[1 5 29 0 4 5 33 0 74 10 133 1 34 5 45 1 35 5 49 1 225] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 10 137 0 4] 
#[1 10 141 0 74 10 145 0 85 10 149 1 157 10 153 1 159] 
#[0 3 182 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 10 157 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 10 161 0 2 0 189 0 124 10 165 0 141] 
#[0 10 169 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 173 0 196 10 173 0 197 0 253 1 5 10 173 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 173 1 14 0 253 1 19 10 173 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 10 177 0 90] 
#[0 10 181 0 108] 
#[1 5 97 0 2 0 174 0 3 0 174 0 4 0 174 0 5 5 145 0 6 0 174 0 7 0 174 0 8 0 174 0 9 0 174 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 174 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 20 0 174 0 21 5 149 0 22 0 174 0 23 0 174 0 24 0 174 0 25 0 174 0 26 0 174 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 40 0 174 0 41 0 174 0 42 0 174 0 43 5 153 0 44 0 174 0 45 0 174 0 46 0 174 0 47 0 174 0 48 0 174 0 49 0 174 0 50 0 174 0 51 0 174 0 53 0 174 0 54 0 174 0 83 0 174 0 86 0 174 0 96 0 174 0 121 0 174 0 122 0 209 0 132 0 18 0 133 0 174 0 134 0 174 0 135 5 157 0 159 0 249 0 160 10 185 0 172 5 165 0 175 0 174 1 224 0 35 1 225 0 174 1 226] 
#[1 3 186 0 3 3 186 0 4 3 186 0 5 3 186 0 7 3 186 0 8 3 186 0 9 3 186 0 10 3 186 0 11 3 186 0 12 3 186 0 13 3 186 0 14 3 186 0 15 3 186 0 16 3 186 0 17 3 186 0 18 3 186 0 20 3 186 0 21 3 186 0 23 3 186 0 24 3 186 0 25 3 186 0 26 3 186 0 27 3 186 0 28 3 186 0 29 3 186 0 30 3 186 0 31 3 186 0 32 3 186 0 33 3 186 0 34 3 186 0 35 3 186 0 36 3 186 0 37 3 186 0 38 3 186 0 40 3 186 0 41 3 186 0 42 3 186 0 43 3 186 0 45 3 186 0 46 3 186 0 47 3 186 0 48 3 186 0 49 3 186 0 50 3 186 0 51 3 186 0 53 3 186 0 54 3 186 0 83 3 186 0 86 3 186 0 96 3 186 0 121 3 186 0 122 3 186 0 134 3 186 0 135 3 186 1 224 0 135 1 225 3 186 1 226] 
#[0 10 189 1 225] 
#[0 6 153 0 79] 
#[1 0 97 0 2 10 193 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 10 197 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 10 201 0 173 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 205 0 196 10 205 0 197 0 253 1 5 10 205 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 205 1 14 0 253 1 19 10 205 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 209 0 196 10 209 0 197 10 209 0 199 0 253 1 5 10 209 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 209 1 14 0 253 1 19 10 209 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 10 213 0 125] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 10 217 0 11 10 221 1 104] 
#[0 3 194 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 3 198 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 225 0 196 10 225 0 197 0 253 1 5 10 225 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 225 1 14 0 253 1 19 10 225 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 3 202 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 10 229 0 14] 
#[1 10 233 0 5 9 89 0 6 10 49 0 26 10 53 0 56 10 57 0 80 10 61 0 103 10 237 0 120 10 241 0 124 8 65 0 125 10 73 0 126 8 85 0 128 8 89 0 129 10 245 0 141 11 1 0 142 10 249 0 152 10 253 0 153 11 1 0 154 11 1 0 155 11 1 0 156 10 253 0 157 10 253 1 16 10 253 1 20 10 253 1 25 10 253 1 29 11 13 1 40 8 85 1 69 8 89 1 70 10 253 1 146 10 253 1 147 11 17 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 21 0 196 11 21 0 197 11 21 0 199 0 253 1 5 11 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 21 1 14 0 253 1 19 11 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 25 0 196 11 25 0 197 11 25 0 199 0 253 1 5 11 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 25 1 14 0 253 1 19 11 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 11 29 0 125 11 33 0 126] 
#[1 5 97 0 2 11 37 0 6 11 41 0 125 11 45 0 126 0 209 0 132 0 18 0 133 11 49 0 159 0 249 0 160 11 53 0 172 11 57 0 177 5 113 1 225] 
#[0 3 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 5 97 0 2 3 214 0 3 3 214 0 4 3 214 0 5 11 61 0 6 3 214 0 7 3 214 0 8 3 214 0 9 3 214 0 10 3 214 0 11 3 214 0 12 3 214 0 13 3 214 0 14 3 214 0 15 3 214 0 16 3 214 0 17 3 214 0 18 3 214 0 20 3 214 0 21 11 65 0 22 3 214 0 23 3 214 0 24 3 214 0 25 3 214 0 26 3 214 0 27 3 214 0 28 3 214 0 29 3 214 0 30 3 214 0 31 3 214 0 32 3 214 0 33 3 214 0 34 3 214 0 35 3 214 0 36 3 214 0 37 3 214 0 38 3 214 0 40 3 214 0 41 3 214 0 42 3 214 0 43 3 214 0 44 3 214 0 45 3 214 0 46 3 214 0 47 3 214 0 48 3 214 0 49 3 214 0 50 3 214 0 51 3 214 0 53 3 214 0 54 3 214 0 83 3 214 0 86 3 214 0 96 3 214 0 121 3 214 0 122 0 209 0 132 0 18 0 133 3 214 0 134 3 214 0 135 11 69 0 159 0 249 0 160 11 73 0 172 11 77 0 176 3 214 1 224 0 139 1 225 3 214 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 81 0 196 11 81 0 197 11 81 0 199 0 253 1 5 11 81 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 81 1 14 0 253 1 19 11 81 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 11 85 0 125 11 89 0 126] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 5 97 0 2 3 226 0 3 3 226 0 4 3 226 0 5 11 61 0 6 3 226 0 7 3 226 0 8 3 226 0 9 3 226 0 10 3 226 0 11 3 226 0 12 3 226 0 13 3 226 0 14 3 226 0 15 3 226 0 16 3 226 0 17 3 226 0 18 3 226 0 20 3 226 0 21 11 65 0 22 3 226 0 23 3 226 0 24 3 226 0 25 3 226 0 26 3 226 0 27 3 226 0 28 3 226 0 29 3 226 0 30 3 226 0 31 3 226 0 32 3 226 0 33 3 226 0 34 3 226 0 35 3 226 0 36 3 226 0 37 3 226 0 38 3 226 0 40 3 226 0 41 3 226 0 42 3 226 0 43 3 226 0 44 3 226 0 45 3 226 0 46 3 226 0 47 3 226 0 48 3 226 0 49 3 226 0 50 3 226 0 51 3 226 0 53 3 226 0 54 3 226 0 83 3 226 0 86 3 226 0 96 3 226 0 121 3 226 0 122 0 209 0 132 0 18 0 133 3 226 0 134 3 226 0 135 11 69 0 159 0 249 0 160 11 73 0 172 11 77 0 176 3 226 1 224 0 143 1 225 3 226 1 226] 
#[1 5 97 0 2 3 230 0 3 3 230 0 4 3 230 0 5 11 61 0 6 3 230 0 7 3 230 0 8 3 230 0 9 3 230 0 10 3 230 0 11 3 230 0 12 3 230 0 13 3 230 0 14 3 230 0 15 3 230 0 16 3 230 0 17 3 230 0 18 3 230 0 20 3 230 0 21 11 65 0 22 3 230 0 23 3 230 0 24 3 230 0 25 3 230 0 26 3 230 0 27 3 230 0 28 3 230 0 29 3 230 0 30 3 230 0 31 3 230 0 32 3 230 0 33 3 230 0 34 3 230 0 35 3 230 0 36 3 230 0 37 3 230 0 38 3 230 0 40 3 230 0 41 3 230 0 42 3 230 0 43 3 230 0 44 3 230 0 45 3 230 0 46 3 230 0 47 3 230 0 48 3 230 0 49 3 230 0 50 3 230 0 51 3 230 0 53 3 230 0 54 3 230 0 83 3 230 0 86 3 230 0 96 3 230 0 121 3 230 0 122 0 209 0 132 0 18 0 133 3 230 0 134 3 230 0 135 11 69 0 159 0 249 0 160 11 73 0 172 11 77 0 176 3 230 1 224 0 147 1 225 3 230 1 226] 
#[0 3 234 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 3 238 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 3 242 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 3 246 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 3 250 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 3 254 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 2 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 6 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 10 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 14 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 18 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 22 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 26 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 4 30 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 4 34 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 38 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 42 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 93 0 196 11 93 0 197 0 253 1 5 11 93 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 93 1 14 0 253 1 19 11 93 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 4 46 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[1 11 97 0 52 11 101 0 55] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 11 105 0 181 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[0 4 50 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 54 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 4 58 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 11 109 0 181 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 11 113 0 181 11 113 0 182 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 11 117 0 181 11 117 0 182 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 11 121 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 11 125 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 11 129 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 11 133 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 11 137 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 11 141 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 11 145 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 11 149 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 11 153 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 11 157 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 11 161 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 11 165 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 11 169 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 11 173 0 187 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 11 177 0 188 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 11 181 0 189 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 11 185 0 190 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 11 189 0 190 11 193 0 191 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 11 197 0 190 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 201 0 196 11 201 0 197 0 253 1 5 11 201 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 201 1 14 0 253 1 19 11 201 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 205 0 196 11 205 0 197 0 253 1 5 11 205 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 205 1 14 0 253 1 19 11 205 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 151 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 221 0 196 11 221 0 197 0 253 1 5 11 221 1 8 1 125 1 9 1 129 1 10 11 217 1 11 11 221 1 12 1 133 1 13 11 221 1 14 0 253 1 19 11 221 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 11 225 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[1 4 62 0 4 4 62 0 136 4 62 0 138 11 229 1 90 11 233 1 91] 
#[1 0 138 0 14 11 237 0 137 11 241 1 77 11 241 1 78 11 241 1 79 11 253 1 80 12 1 1 81 12 5 1 95] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 12 9 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 12 13 0 141 3 121 1 69 3 125 1 70 3 129 1 100 8 153 1 101 8 157 1 102 12 17 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 12 17 1 129 12 17 1 130 3 149 1 131 3 149 1 133] 
#[1 6 145 0 2 3 89 0 11 0 189 0 124 12 21 0 141 6 157 1 100 12 25 1 145] 
#[0 12 29 0 2] 
#[0 4 66 0 19] 
#[0 4 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 6 0 2 0 6 0 4 12 33 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 253 0 207 0 57 0 208 6 253 0 209 0 65 0 210 0 6 1 225] 
#[1 12 37 0 8 0 189 0 124 12 41 0 141] 
#[1 12 45 0 8 0 189 0 124 12 49 0 141] 
#[0 4 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 12 53 0 117] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 12 57 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 12 77 0 63 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 12 77 0 89 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 12 61 0 115 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 12 65 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 12 65 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 69 0 196 12 69 0 197 12 69 0 199 12 73 0 209 12 77 0 210 12 81 0 235 0 253 1 5 12 69 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 69 1 14 0 253 1 19 12 69 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 12 85 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 89 0 196 12 89 0 197 12 89 0 199 0 253 1 5 12 89 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 89 1 14 0 253 1 19 12 89 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 12 93 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 97 0 196 12 97 0 197 12 97 0 199 0 253 1 5 12 97 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 97 1 14 0 253 1 19 12 97 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 101 0 196 12 101 0 197 12 101 0 199 0 253 1 5 12 101 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 101 1 14 0 253 1 19 12 101 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 12 105 0 8 6 125 0 121] 
#[1 12 109 0 60 12 113 0 76 12 117 0 251 12 121 0 252] 
#[1 4 78 0 8 9 149 0 23 4 78 0 121 12 125 0 158] 
#[1 12 129 0 8 12 133 0 121] 
#[0 4 82 0 8 0 121] 
#[1 9 149 0 23 12 137 0 158] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 12 141 0 141 12 145 0 216 12 145 0 217 12 145 0 218 12 149 1 149 12 153 1 150] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 157 0 196 12 157 0 197 12 157 0 199 0 253 1 5 12 157 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 157 1 14 0 253 1 19 12 157 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 161 0 196 12 161 0 197 12 161 0 199 0 253 1 5 12 161 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 161 1 14 0 253 1 19 12 161 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 12 169 0 200 12 169 0 203 12 169 0 204 12 169 0 205 12 169 0 213 12 169 0 227 12 169 0 228 12 169 0 229 12 169 0 230 12 169 0 231 12 169 0 232 12 169 0 233 12 169 0 234 12 169 0 237 12 169 0 238 12 169 0 240 12 169 0 241 12 169 0 242 12 169 0 247 12 169 0 248 12 169 0 249 12 169 0 250 12 169 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 4 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 90 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 5 29 0 4 5 33 0 74 12 173 1 34 5 45 1 35 5 49 1 225] 
#[1 4 94 0 1 0 155 0 2 4 94 0 4 4 94 0 5 0 155 0 6 0 155 0 8 3 178 0 9 3 178 0 10 3 178 0 11 3 178 0 12 3 178 0 13 3 178 0 14 3 178 0 15 3 178 0 16 3 178 0 17 3 178 0 18 3 178 0 20 3 178 0 21 3 178 0 22 3 178 0 23 3 178 0 24 3 178 0 25 3 178 0 26 3 178 0 27 3 178 0 28 3 178 0 29 3 178 0 30 3 178 0 31 3 178 0 32 3 178 0 33 3 178 0 34 0 155 0 35 0 155 0 36 0 155 0 37 0 155 0 38 4 94 0 39 3 178 0 40 3 178 0 41 3 178 0 42 3 178 0 43 3 178 0 44 3 178 0 45 3 178 0 46 3 178 0 47 3 178 0 48 3 178 0 49 3 178 0 50 3 178 0 51 4 94 0 52 3 178 0 53 3 178 0 54 4 94 0 56 4 94 0 57 4 94 0 58 4 94 0 61 4 94 0 62 4 94 0 63 4 94 0 65 4 94 0 66 4 94 0 67 4 94 0 69 4 94 0 70 4 94 0 72 4 94 0 73 4 94 0 75 4 94 0 77 4 94 0 79 4 94 0 81 4 94 0 82 3 178 0 83 3 178 0 86 4 94 0 87 4 94 0 89 4 94 0 92 4 94 0 93 4 94 0 94 4 94 0 102 4 94 0 106 4 94 0 107 4 94 0 109 4 94 0 110 4 94 0 111 4 94 0 112 4 94 0 113 4 94 0 114 4 94 0 115 4 94 0 116 4 94 0 117 4 94 0 118 4 94 0 119 3 178 0 121 4 94 0 124 4 94 0 126 4 94 0 128 4 94 0 129 4 94 0 130 0 155 0 132 0 155 0 133 4 94 0 136 3 178 1 224 0 155 1 225 4 94 1 226] 
#[1 5 29 0 4 5 33 0 74 0 189 0 124 12 177 0 141 12 181 1 34 5 45 1 35 5 49 1 225] 
#[1 0 189 0 124 12 185 0 141] 
#[1 0 189 0 124 12 189 0 141] 
#[1 7 13 0 72 0 189 0 124 12 193 0 141 12 197 1 207 12 201 1 208] 
#[1 0 189 0 124 12 205 0 141] 
#[1 0 189 0 124 12 193 0 141 12 209 1 207 12 201 1 208] 
#[0 12 213 0 128 1 69] 
#[1 0 189 0 124 7 109 0 141 12 217 1 174] 
#[1 0 189 0 124 12 193 0 141 12 221 1 207 12 201 1 208] 
#[0 4 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 12 225 0 4] 
#[1 0 189 0 124 12 229 0 141] 
#[1 9 13 0 78 12 233 1 56] 
#[1 12 237 0 8 9 13 0 78 12 241 1 56] 
#[0 12 245 0 113] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 12 249 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 12 253 0 2 0 189 0 124 13 1 0 141] 
#[0 13 5 0 2] 
#[1 13 9 0 23 3 42 0 78 3 42 0 121] 
#[1 3 81 0 4 3 89 0 11 13 13 0 74 13 17 1 100 13 21 1 119 13 25 1 154] 
#[0 4 122 0 4 0 22] 
#[1 13 29 0 4 13 33 0 22] 
#[1 3 89 0 11 13 37 0 23 13 41 1 100] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 4 221 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 13 45 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 5 89 0 168 13 49 0 169 13 49 0 170 13 49 0 171 1 33 0 174 5 89 0 178 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 5 93 1 225] 
#[1 3 229 0 61 2 137 0 62 2 141 0 63 7 205 0 67 13 53 0 68 2 149 0 72 3 237 0 79 7 237 0 82 2 165 0 87 0 65 0 89 2 169 0 92 2 173 0 113 2 5 0 115 13 57 0 209 0 65 0 210 13 61 0 213 13 65 1 4 13 69 1 18 13 73 1 32 13 77 1 51 13 81 1 144 13 85 1 153 13 89 1 168 13 93 1 173 13 97 1 179 13 101 1 205 13 105 1 225] 
#[0 4 126 0 1 0 4 0 6 0 43 0 61 0 62 0 64 0 73 0 97 0 98 0 99 0 100 0 104 0 109 0 122 0 124 0 125 0 128 0 129 1 225] 
#[1 5 69 0 2 5 73 0 22 0 189 0 124 13 109 0 141] 
#[0 1 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 2 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 18 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 26 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 130 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 58 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 146 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 150 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 189 0 124 13 109 0 141] 
#[0 1 250 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 6 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 14 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 22 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 4 134 0 67 0 82 0 87 0 92 0 113 1 226] 
#[0 2 78 0 67 0 82 0 87 0 92 0 113 1 226] 
#[0 2 142 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 154 0 67 0 82 0 87 0 92 0 113 1 226] 
#[1 7 17 0 61 7 21 0 63 2 149 0 72 7 25 0 79 7 29 0 89 7 37 0 92 7 41 0 115 7 61 1 168 7 49 1 206 7 53 1 209 7 57 1 210 7 61 1 216 7 65 1 217] 
#[0 1 242 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 7 121 0 1 13 113 0 73 7 129 1 222] 
#[0 0 63 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 54 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 4 138 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 130 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 2 138 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 4 33 0 4 4 37 0 26 0 189 0 124 4 61 0 128 13 117 0 141 4 45 1 52 4 49 1 53 4 53 1 54 4 57 1 55 4 61 1 59 4 49 1 60 4 61 1 69 4 73 1 225] 
#[0 1 246 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[1 7 121 0 1 13 121 0 73 7 129 1 222] 
#[0 2 74 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 4 142 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 126 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 2 134 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[1 13 125 0 2 3 89 0 11 0 189 0 124 13 129 0 141 13 133 1 100 13 137 1 136 13 141 1 145] 
#[1 7 121 0 1 13 145 0 61 13 149 0 62 7 129 1 222] 
#[1 0 30 0 1 0 30 0 61 0 30 0 62 13 153 1 137] 
#[1 8 45 0 2 13 157 0 5 8 53 0 6 3 89 0 11 8 57 0 93 8 61 0 101 9 93 0 120 0 189 0 124 8 65 0 125 8 85 0 128 8 89 0 129 9 97 0 141 13 161 0 142 13 161 0 154 13 161 0 155 13 161 0 156 9 105 0 219 9 109 0 220 9 113 0 223 9 113 0 225 8 85 1 69 8 89 1 70 8 93 1 100 8 97 1 120 8 101 1 121 8 105 1 122 8 105 1 134 8 105 1 136 8 105 1 141 8 105 1 142 8 105 1 143 9 121 1 225] 
#[1 3 77 0 2 8 21 0 4 8 25 0 6 13 165 0 7 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 4 137 0 120 13 169 0 121 0 189 0 124 3 121 0 128 3 125 0 129 8 29 0 141 9 129 0 148 4 149 0 216 4 149 0 217 4 149 0 218 9 133 0 221 9 137 0 222 9 141 0 224 9 141 0 225 9 145 0 226 3 121 1 69 3 125 1 70 3 129 1 100 8 145 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 8 141 1 125 8 145 1 126 3 137 1 127 3 141 1 128 8 145 1 129 8 145 1 130 3 149 1 131 3 149 1 133 8 41 1 225] 
#[1 0 159 0 3 0 159 0 5 2 166 0 6 0 159 0 7 2 166 0 8 2 166 0 11 2 170 0 22 9 149 0 23 2 166 0 40 2 166 0 48 0 159 0 121 9 201 0 158] 
#[0 13 173 0 3] 
#[0 13 177 0 3] 
#[1 0 30 0 1 0 30 0 4 0 30 0 6 0 30 0 43 0 115 0 97 0 119 0 98 0 123 0 99 0 127 0 100 0 30 0 109 0 30 0 122 0 131 0 124 9 237 0 141 9 241 1 137 9 245 1 139] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 13 181 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 125 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 13 185 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 189 0 196 13 189 0 197 0 253 1 5 13 189 1 8 1 125 1 9 1 129 1 10 1 133 1 13 13 189 1 14 0 253 1 19 13 189 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 13 193 0 2 3 89 0 11 13 197 1 100] 
#[1 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 13 201 0 142 13 201 0 154 13 201 0 155 13 201 0 156 8 85 1 69 8 89 1 70] 
#[0 4 150 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 154 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[1 8 45 0 2 4 158 0 5 4 158 0 8 3 89 0 11 13 205 0 43 4 158 0 121 13 209 0 122 8 93 1 100 13 213 1 135 13 217 1 136] 
#[0 4 162 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 166 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 170 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 174 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 13 221 0 2] 
#[0 13 225 0 5] 
#[1 4 178 0 5 13 229 0 8 13 233 0 121] 
#[0 4 182 0 5 0 8 0 121] 
#[0 4 186 0 5 0 8 0 121] 
#[0 4 190 0 5 0 8 0 121] 
#[0 4 194 0 5 0 8 0 121] 
#[0 4 198 0 5 0 8 0 121] 
#[0 4 202 0 5 0 8 0 121] 
#[0 4 206 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 13 237 0 7] 
#[0 4 210 0 7 0 121] 
#[1 13 241 0 7 13 245 0 121] 
#[0 4 214 0 7 0 121] 
#[1 4 218 0 14 13 249 0 74 4 218 0 121 13 253 1 103] 
#[1 14 1 0 14 14 5 0 121] 
#[0 4 222 0 14 0 121] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 8 37 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 8 37 1 129 8 37 1 130 3 149 1 131 3 149 1 133] 
#[1 4 226 0 3 4 226 0 4 4 226 0 5 0 163 0 6 4 226 0 7 4 226 0 8 4 226 0 9 4 226 0 11 4 226 0 12 4 226 0 14 4 226 0 15 4 226 0 18 4 226 0 19 4 226 0 20 4 226 0 21 4 226 0 23 4 226 0 24 4 226 0 25 4 226 0 26 4 226 0 27 4 226 0 35 4 226 0 37 4 226 0 40 4 226 0 41 4 226 0 43 4 226 0 45 4 226 0 47 4 226 0 48 4 226 0 49 4 226 0 51 4 226 0 53 4 226 0 54 4 226 0 64 4 226 0 83 4 226 0 86 4 226 0 97 4 226 0 98 4 226 0 99 4 226 0 100 4 226 0 104 4 226 0 121 4 226 0 122 4 226 0 125 4 226 0 128 4 226 0 129 4 226 0 134 4 226 0 135 8 201 0 239 4 226 1 226] 
#[1 4 230 0 3 4 230 0 4 4 230 0 5 0 167 0 6 4 230 0 7 4 230 0 8 4 230 0 9 4 230 0 11 4 230 0 12 4 230 0 14 4 230 0 15 4 230 0 18 4 230 0 19 4 230 0 20 4 230 0 21 4 230 0 23 4 230 0 24 4 230 0 25 4 230 0 26 4 230 0 27 4 230 0 35 4 230 0 37 4 230 0 40 4 230 0 41 4 230 0 43 4 230 0 45 4 230 0 47 4 230 0 48 4 230 0 49 4 230 0 51 4 230 0 53 4 230 0 54 4 230 0 64 4 230 0 83 4 230 0 86 4 230 0 97 4 230 0 98 4 230 0 99 4 230 0 100 4 230 0 104 4 230 0 121 4 230 0 122 4 230 0 125 4 230 0 128 4 230 0 129 4 230 0 134 4 230 0 135 8 201 0 239 4 230 1 226] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 14 9 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 14 13 0 2] 
#[0 4 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 4 238 0 3 4 238 0 4 4 238 0 5 4 238 0 6 4 238 0 7 4 238 0 8 4 238 0 9 4 238 0 11 4 238 0 12 4 238 0 14 4 238 0 15 4 238 0 18 4 238 0 19 4 238 0 20 4 238 0 21 14 17 0 22 4 238 0 23 4 238 0 24 4 238 0 25 4 238 0 26 4 238 0 27 4 238 0 35 4 238 0 37 4 238 0 40 4 238 0 41 4 238 0 43 4 238 0 45 4 238 0 47 4 238 0 48 4 238 0 49 4 238 0 51 4 238 0 53 4 238 0 54 4 238 0 64 4 238 0 83 4 238 0 86 4 238 0 97 4 238 0 98 4 238 0 99 4 238 0 100 4 238 0 104 4 238 0 121 4 238 0 122 4 238 0 125 4 238 0 128 4 238 0 129 4 238 0 134 4 238 0 135 4 238 1 226] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 14 21 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 8 161 0 2 3 81 0 4 3 85 0 6 3 93 0 84 3 97 0 88 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 14 25 1 109 14 25 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 14 25 1 128 3 149 1 131 3 149 1 133] 
#[1 8 161 0 2 3 81 0 4 3 85 0 6 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 14 29 1 111 14 29 1 112 14 29 1 113 14 29 1 114 14 29 1 115 14 29 1 116 3 173 1 117 3 177 1 118 14 29 1 119 14 29 1 123 14 29 1 124 14 29 1 131 14 29 1 133] 
#[0 14 33 0 6] 
#[1 4 242 0 3 4 242 0 4 4 242 0 5 4 242 0 6 4 242 0 7 4 242 0 8 4 242 0 9 0 171 0 11 4 242 0 12 4 242 0 14 4 242 0 15 4 242 0 18 4 242 0 19 4 242 0 20 4 242 0 21 4 242 0 23 4 242 0 24 4 242 0 25 4 242 0 26 4 242 0 27 4 242 0 35 4 242 0 37 4 242 0 40 4 242 0 41 4 242 0 43 4 242 0 45 4 242 0 47 4 242 0 48 4 242 0 49 4 242 0 51 4 242 0 53 4 242 0 54 4 242 0 64 4 242 0 83 4 242 0 85 4 242 0 86 4 242 0 97 4 242 0 98 4 242 0 99 4 242 0 100 4 242 0 104 4 242 0 121 4 242 0 122 4 242 0 125 4 242 0 128 4 242 0 129 4 242 0 134 4 242 0 135 14 37 1 104 4 242 1 226] 
#[1 0 189 0 124 14 41 0 141] 
#[0 4 246 0 8 0 78] 
#[0 4 250 0 5 0 55 0 78 0 121] 
#[1 4 254 0 5 14 45 0 55 4 254 0 121] 
#[1 14 49 0 5 14 53 0 121] 
#[0 5 2 0 5 0 121] 
#[0 5 6 0 5 0 55 0 78 0 121] 
#[0 14 57 0 125 0 128 1 50 1 69] 
#[1 14 61 0 2 14 65 0 26 0 189 0 124 14 69 0 141] 
#[1 5 29 0 4 5 33 0 74 14 73 1 34 5 45 1 35 5 49 1 225] 
#[0 4 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 77 0 8] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 14 81 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 14 85 0 2 0 189 0 124 14 89 0 141] 
#[0 14 93 0 2] 
#[0 14 97 0 128 1 59 1 69] 
#[0 14 101 0 8] 
#[0 5 10 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 13 0 72] 
#[1 13 125 0 2 3 89 0 11 0 189 0 124 14 105 0 141 13 133 1 100 13 137 1 136 14 109 1 145] 
#[0 5 14 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 5 18 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 5 22 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 5 26 0 78] 
#[0 14 113 0 55] 
#[1 14 117 0 5 14 121 0 121] 
#[0 5 30 0 5 0 121] 
#[0 5 34 0 5 0 121] 
#[1 0 189 0 124 14 125 0 141 14 125 1 60] 
#[0 14 129 0 8] 
#[1 4 33 0 4 4 37 0 26 14 133 1 54 14 137 1 55] 
#[0 5 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 4 33 0 4 0 189 0 124 14 141 0 141 14 141 1 53 14 145 1 55 14 141 1 60] 
#[0 5 42 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 189 0 196 13 189 0 197 0 253 1 5 13 189 1 8 1 125 1 9 1 129 1 10 1 133 1 13 13 189 1 14 0 253 1 19 13 189 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 189 0 124 14 149 0 141] 
#[1 3 98 0 3 3 98 0 5 3 98 0 7 9 149 0 23 3 98 0 121 9 201 0 158] 
#[0 14 153 0 122] 
#[0 14 157 0 5] 
#[1 14 161 0 5 14 165 0 121] 
#[0 5 46 0 5 0 121] 
#[0 5 50 0 5 0 121] 
#[1 9 245 0 97 9 245 0 98 9 245 0 99 9 245 0 100 0 189 0 124 9 237 0 141 9 245 1 139] 
#[0 5 54 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 4 81 0 4 4 85 0 6 14 169 0 7 4 137 0 120 10 9 0 121 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 14 173 0 224 14 173 0 225 14 177 0 226 8 41 1 225] 
#[1 14 181 0 7 14 185 0 121] 
#[0 5 58 0 7 0 121] 
#[0 5 62 0 7 0 121] 
#[0 14 189 0 7] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 193 0 196 14 193 0 197 0 253 1 5 14 193 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 193 1 14 0 253 1 19 14 193 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 5 66 0 8 0 121] 
#[0 5 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 4 89 0 141 14 197 0 212 4 101 0 216 4 101 0 217 4 101 0 218 14 197 1 151 14 197 1 152 4 121 1 225] 
#[0 5 74 0 8 0 121] 
#[1 13 209 0 122 14 201 1 135] 
#[1 13 209 0 122 14 205 1 135] 
#[1 3 217 0 4 3 221 0 26 14 209 1 62 14 213 1 63] 
#[1 3 134 0 2 0 175 0 3 3 134 0 6 0 175 0 7 3 134 0 9 3 134 0 10 3 134 0 11 3 134 0 12 3 134 0 13 3 134 0 14 3 134 0 15 3 134 0 16 3 134 0 17 3 134 0 18 3 134 0 20 3 134 0 21 3 134 0 22 0 175 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 29 3 134 0 30 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 34 3 134 0 35 3 134 0 36 3 134 0 37 3 134 0 38 3 134 0 40 3 134 0 41 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 46 3 134 0 47 3 134 0 48 3 134 0 49 3 134 0 50 3 134 0 51 3 134 0 53 3 134 0 54 3 134 0 83 3 134 0 86 0 175 0 121 3 134 0 132 3 134 0 133 3 134 1 224 3 134 1 225] 
#[1 0 97 0 2 0 31 0 4 4 133 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 14 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 249 0 196 9 249 0 197 9 197 0 216 9 197 0 217 9 197 0 218 0 253 1 5 9 249 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 249 1 14 0 253 1 19 9 249 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 31 0 4 4 133 0 6 14 221 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 9 185 0 120 10 9 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 4 141 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 10 13 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 17 0 196 10 17 0 197 4 149 0 216 4 149 0 217 4 149 0 218 14 173 0 224 14 173 0 225 14 177 0 226 0 253 1 5 10 17 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 17 1 14 0 253 1 19 10 17 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 185 1 225] 
#[1 5 78 0 3 5 78 0 7 13 209 0 122 14 225 1 135] 
#[0 5 82 0 3 0 7] 
#[0 5 86 0 3 0 5 0 7 0 121] 
#[0 5 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 5 94 0 3 0 5 0 7 0 121] 
#[0 5 98 0 19] 
#[1 5 102 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 14 233 0 224 14 233 0 225 14 229 0 226 14 229 1 2 14 233 1 3 8 41 1 225] 
#[0 5 106 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 225] 
#[0 5 110 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 225] 
#[0 5 114 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 225] 
#[0 5 118 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 225] 
#[1 14 237 0 43 13 209 0 122 14 241 1 135] 
#[1 7 121 0 1 4 81 0 4 4 85 0 6 5 122 0 43 15 5 0 97 15 5 0 98 15 5 0 99 15 5 0 100 14 245 0 109 5 122 0 122 0 189 0 124 15 1 0 141 15 1 0 216 15 1 0 217 15 1 0 218 15 1 1 138 15 5 1 139 7 129 1 222] 
#[1 0 189 0 124 15 9 0 141] 
#[0 5 126 0 5 0 7 0 121] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 13 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 193 0 120 10 9 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 15 17 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 21 0 196 15 21 0 197 0 253 1 5 15 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 15 21 1 14 0 253 1 19 15 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 5 138 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 120 0 121 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 5 142 0 7 0 121] 
#[0 5 146 0 7 0 121] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 12 17 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 12 17 1 129 12 17 1 130 3 149 1 131 3 149 1 133] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 15 25 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 15 29 0 2 0 189 0 124 15 33 0 141] 
#[0 15 37 0 2] 
#[1 0 97 0 2 0 179 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 45 0 196 15 45 0 197 0 253 1 5 15 45 1 8 1 125 1 9 1 129 1 10 15 45 1 12 1 133 1 13 15 45 1 14 15 49 1 15 0 253 1 19 15 45 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 5 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 224 1 225 1 226] 
#[0 5 154 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 10 69 0 124 10 73 0 126 15 53 1 40] 
#[1 15 57 0 26 10 69 0 124 10 73 0 126 15 61 1 40] 
#[1 10 69 0 124 10 73 0 126 15 65 1 40] 
#[1 10 69 0 124 10 73 0 126 15 69 1 40] 
#[1 15 73 0 4 10 49 0 26 10 53 0 56 10 57 0 80 10 61 0 103 10 69 0 124 10 73 0 126 15 77 1 16 15 77 1 20 15 77 1 25 15 77 1 29 15 81 1 39 10 109 1 40 15 77 1 146 15 77 1 147 11 17 1 225] 
#[0 5 158 0 2 0 8 0 23] 
#[0 5 162 0 2 0 8 0 23] 
#[0 5 166 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 5 170 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 5 174 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 5 178 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 15 85 0 5] 
#[1 5 182 0 5 10 45 0 8 10 49 0 26 10 53 0 56 10 57 0 80 10 61 0 103 10 65 0 104 10 69 0 124 10 73 0 126 15 89 1 16 15 89 1 20 15 89 1 25 15 89 1 29 15 89 1 38 10 105 1 39 10 109 1 40 15 89 1 41 15 89 1 146 15 89 1 147 10 125 1 225] 
#[0 5 186 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 15 93 0 8] 
#[1 15 97 0 2 5 190 0 8 9 149 0 23 15 101 0 158] 
#[0 5 194 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 5 198 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 5 202 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[1 0 30 0 1 0 183 0 6 0 30 0 64 15 105 0 80 0 30 0 97 0 30 0 98 0 30 0 99 0 30 0 100 15 109 0 103 0 30 0 104 0 187 0 125 0 191 0 128 0 195 0 129 15 113 0 142 15 113 0 154 15 113 0 155 15 113 0 156 8 85 1 69 8 89 1 70 15 117 1 137 15 121 1 142 15 125 1 160 15 129 1 162 15 129 1 163 15 129 1 165 15 129 1 166 15 145 1 167 0 30 1 225] 
#[1 5 206 0 4 10 189 1 225] 
#[0 5 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 15 149 0 5 10 45 0 8 10 49 0 26 10 53 0 56 10 57 0 80 10 61 0 103 10 65 0 104 10 69 0 124 10 73 0 126 10 101 1 16 10 101 1 20 10 101 1 25 10 101 1 29 15 153 1 36 10 97 1 37 10 101 1 38 10 105 1 39 10 109 1 40 10 101 1 41 10 101 1 146 10 101 1 147 10 125 1 225] 
#[1 0 189 0 124 3 117 0 141 15 161 1 116 3 173 1 117 3 177 1 118 15 161 1 158] 
#[1 0 189 0 124 3 117 0 141 15 173 1 116 3 173 1 117 3 177 1 118 15 169 1 155 15 173 1 156] 
#[1 5 214 0 4 10 145 0 85 15 177 1 159] 
#[0 5 218 0 4] 
#[0 15 181 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 15 185 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 15 189 0 2] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 15 193 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 15 197 0 3] 
#[0 5 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 5 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 199 0 2 5 230 0 3 5 230 0 4 5 230 0 5 0 199 0 6 5 230 0 7 5 230 0 8 5 230 0 9 5 230 0 10 5 230 0 11 5 230 0 12 5 230 0 13 5 230 0 14 5 230 0 15 5 230 0 16 5 230 0 17 5 230 0 18 5 230 0 20 5 230 0 21 0 199 0 22 5 230 0 23 5 230 0 24 5 230 0 25 5 230 0 26 5 230 0 27 5 230 0 28 5 230 0 29 5 230 0 30 5 230 0 31 5 230 0 32 5 230 0 33 5 230 0 34 5 230 0 35 5 230 0 36 5 230 0 37 5 230 0 38 5 230 0 40 5 230 0 41 5 230 0 42 5 230 0 43 0 199 0 44 5 230 0 45 5 230 0 46 5 230 0 47 5 230 0 48 5 230 0 49 5 230 0 50 5 230 0 51 5 230 0 53 5 230 0 54 5 230 0 83 5 230 0 86 5 230 0 96 5 230 0 121 5 230 0 122 0 199 0 132 0 199 0 133 5 230 0 134 5 230 0 135 5 230 1 224 0 199 1 225 5 230 1 226] 
#[0 11 97 0 52] 
#[0 5 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 201 0 196 15 201 0 197 0 253 1 5 15 201 1 8 1 125 1 9 1 129 1 10 1 133 1 13 15 201 1 14 0 253 1 19 15 201 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 15 205 0 3 15 209 0 121] 
#[0 5 238 0 3 0 121] 
#[1 15 213 0 7 6 125 0 121] 
#[0 5 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 15 217 1 105 15 221 1 106 15 221 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 15 221 1 129 15 221 1 130 3 149 1 131 3 149 1 133] 
#[0 15 229 0 2] 
#[0 5 246 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[1 1 110 0 4 1 110 0 136 1 110 0 138 15 233 1 96] 
#[0 5 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 237 0 196 15 237 0 197 0 253 1 5 15 237 1 8 1 125 1 9 1 129 1 10 1 133 1 13 15 237 1 14 0 253 1 19 15 237 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 5 158 0 2 0 114 0 5 0 114 0 23 0 114 0 121] 
#[1 5 254 0 5 9 149 0 23 5 254 0 121 15 241 0 158] 
#[1 15 245 0 5 15 249 0 121] 
#[0 6 2 0 5 0 121] 
#[0 15 253 0 122] 
#[0 6 6 0 5 0 121] 
#[0 6 10 0 5 0 121] 
#[0 15 97 0 2] 
#[1 9 89 0 6 15 105 0 80 15 109 0 103 8 65 0 125 8 85 0 128 8 89 0 129 15 113 0 142 15 113 0 154 15 113 0 155 15 113 0 156 8 85 1 69 8 89 1 70] 
#[1 6 125 0 121 16 1 0 134 16 5 0 135 16 9 0 161 16 13 0 162] 
#[1 16 17 0 7 6 125 0 121] 
#[0 6 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 16 21 0 196 16 21 0 197 16 21 0 199 0 253 1 5 16 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 16 21 1 14 0 253 1 19 16 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 6 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 16 25 0 196 16 25 0 197 16 25 0 199 0 253 1 5 16 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 16 25 1 14 0 253 1 19 16 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 16 29 0 125 16 33 0 126] 
#[0 6 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 16 37 0 7 6 125 0 121] 
#[0 6 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 6 62 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 6 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 16 41 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 16 41 1 129 16 41 1 130 3 149 1 131 3 149 1 133] 
#[0 6 70 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[0 6 74 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 6 78 0 3 6 78 0 5 6 78 0 7 6 78 0 8 6 33 0 9 6 78 0 11 6 78 0 12 6 78 0 14 6 78 0 15 6 78 0 18 6 78 0 20 6 78 0 21 6 78 0 24 6 78 0 25 6 33 0 26 6 78 0 35 6 78 0 37 6 78 0 40 6 78 0 41 6 78 0 43 6 78 0 45 6 33 0 47 6 78 0 48 6 78 0 49 6 78 0 51 6 78 0 53 6 78 0 54 6 78 0 83 6 78 0 86 6 78 0 121 6 78 0 122 6 78 0 134 6 78 0 135 6 33 0 183 6 78 1 226] 
#[1 6 82 0 3 6 82 0 5 6 82 0 7 6 82 0 8 6 33 0 9 6 82 0 11 6 82 0 12 6 82 0 14 6 82 0 15 6 82 0 18 6 82 0 20 6 82 0 21 6 82 0 24 6 82 0 25 6 33 0 26 6 82 0 35 6 82 0 37 6 82 0 40 6 82 0 41 6 82 0 43 6 82 0 45 6 33 0 47 6 82 0 48 6 82 0 49 6 82 0 51 6 82 0 53 6 82 0 54 6 82 0 83 6 82 0 86 6 82 0 121 6 82 0 122 6 82 0 134 6 82 0 135 6 33 0 183 6 82 1 226] 
#[1 6 86 0 3 6 86 0 5 6 86 0 7 6 86 0 8 6 86 0 11 6 86 0 12 6 86 0 14 6 86 0 15 6 86 0 18 6 86 0 20 6 86 0 21 6 86 0 24 6 86 0 25 6 37 0 35 6 41 0 37 6 86 0 40 6 86 0 41 6 86 0 43 6 86 0 45 6 86 0 48 6 86 0 49 6 86 0 51 6 86 0 53 6 86 0 54 6 86 0 83 6 86 0 86 6 86 0 121 6 86 0 122 6 86 0 134 6 86 0 135 6 86 1 226] 
#[1 6 90 0 3 6 90 0 5 6 90 0 7 6 90 0 8 6 90 0 11 6 90 0 12 6 90 0 14 6 90 0 15 6 90 0 18 6 90 0 20 6 90 0 21 6 90 0 24 6 90 0 25 6 37 0 35 6 41 0 37 6 90 0 40 6 90 0 41 6 90 0 43 6 90 0 45 6 90 0 48 6 90 0 49 6 90 0 51 6 90 0 53 6 90 0 54 6 90 0 83 6 90 0 86 6 90 0 121 6 90 0 122 6 90 0 134 6 90 0 135 6 90 1 226] 
#[1 6 94 0 3 6 94 0 5 6 94 0 7 6 94 0 8 6 94 0 11 6 94 0 12 6 94 0 14 6 94 0 15 6 94 0 18 6 94 0 20 6 94 0 21 6 94 0 24 6 94 0 25 6 37 0 35 6 41 0 37 6 94 0 40 6 94 0 41 6 94 0 43 6 94 0 45 6 94 0 48 6 94 0 49 6 94 0 51 6 94 0 53 6 94 0 54 6 94 0 83 6 94 0 86 6 94 0 121 6 94 0 122 6 94 0 134 6 94 0 135 6 94 1 226] 
#[1 6 98 0 3 6 98 0 5 6 98 0 7 6 98 0 8 6 98 0 11 6 45 0 12 6 98 0 14 6 49 0 15 6 53 0 18 6 98 0 20 6 98 0 21 6 98 0 24 6 98 0 25 6 98 0 40 6 98 0 41 6 98 0 43 6 98 0 45 6 98 0 48 6 98 0 49 6 98 0 51 6 98 0 53 6 98 0 54 6 98 0 83 6 98 0 86 6 98 0 121 6 98 0 122 6 98 0 134 6 98 0 135 6 98 1 226] 
#[1 6 102 0 3 6 102 0 5 6 102 0 7 6 102 0 8 6 102 0 11 6 45 0 12 6 102 0 14 6 49 0 15 6 53 0 18 6 102 0 20 6 102 0 21 6 102 0 24 6 102 0 25 6 102 0 40 6 102 0 41 6 102 0 43 6 102 0 45 6 102 0 48 6 102 0 49 6 102 0 51 6 102 0 53 6 102 0 54 6 102 0 83 6 102 0 86 6 102 0 121 6 102 0 122 6 102 0 134 6 102 0 135 6 102 1 226] 
#[1 6 106 0 3 6 106 0 5 6 106 0 7 6 106 0 8 6 106 0 11 6 45 0 12 6 106 0 14 6 49 0 15 6 53 0 18 6 106 0 20 6 106 0 21 6 106 0 24 6 106 0 25 6 106 0 40 6 106 0 41 6 106 0 43 6 106 0 45 6 106 0 48 6 106 0 49 6 106 0 51 6 106 0 53 6 106 0 54 6 106 0 83 6 106 0 86 6 106 0 121 6 106 0 122 6 106 0 134 6 106 0 135 6 106 1 226] 
#[1 6 110 0 3 6 110 0 5 6 110 0 7 6 110 0 8 6 110 0 11 6 45 0 12 6 110 0 14 6 49 0 15 6 53 0 18 6 110 0 20 6 110 0 21 6 110 0 24 6 110 0 25 6 110 0 40 6 110 0 41 6 110 0 43 6 110 0 45 6 110 0 48 6 110 0 49 6 110 0 51 6 110 0 53 6 110 0 54 6 110 0 83 6 110 0 86 6 110 0 121 6 110 0 122 6 110 0 134 6 110 0 135 6 110 1 226] 
#[1 6 114 0 3 6 114 0 5 6 114 0 7 6 114 0 8 6 114 0 11 6 45 0 12 6 114 0 14 6 49 0 15 6 53 0 18 6 114 0 20 6 114 0 21 6 114 0 24 6 114 0 25 6 114 0 40 6 114 0 41 6 114 0 43 6 114 0 45 6 114 0 48 6 114 0 49 6 114 0 51 6 114 0 53 6 114 0 54 6 114 0 83 6 114 0 86 6 114 0 121 6 114 0 122 6 114 0 134 6 114 0 135 6 114 1 226] 
#[1 6 118 0 3 6 118 0 5 6 118 0 7 6 118 0 8 6 118 0 11 6 45 0 12 6 118 0 14 6 49 0 15 6 53 0 18 6 118 0 20 6 118 0 21 6 118 0 24 6 118 0 25 6 118 0 40 6 118 0 41 6 118 0 43 6 118 0 45 6 118 0 48 6 118 0 49 6 118 0 51 6 118 0 53 6 118 0 54 6 118 0 83 6 118 0 86 6 118 0 121 6 118 0 122 6 118 0 134 6 118 0 135 6 118 1 226] 
#[1 6 122 0 3 6 122 0 5 6 122 0 7 6 122 0 8 6 57 0 11 6 61 0 14 6 65 0 20 6 69 0 21 6 122 0 24 6 122 0 25 6 122 0 40 6 122 0 41 6 122 0 43 6 122 0 45 6 122 0 48 6 122 0 49 6 122 0 51 6 122 0 53 6 122 0 54 6 73 0 83 6 77 0 86 6 122 0 121 6 122 0 122 6 122 0 134 6 122 0 135 6 122 1 226] 
#[1 6 126 0 3 6 126 0 5 6 126 0 7 6 126 0 8 6 57 0 11 6 61 0 14 6 65 0 20 6 69 0 21 6 126 0 24 6 126 0 25 6 126 0 40 6 126 0 41 6 126 0 43 6 126 0 45 6 126 0 48 6 126 0 49 6 126 0 51 6 126 0 53 6 126 0 54 6 73 0 83 6 77 0 86 6 126 0 121 6 126 0 122 6 126 0 134 6 126 0 135 6 126 1 226] 
#[1 6 130 0 3 6 130 0 5 6 130 0 7 6 130 0 8 6 57 0 11 6 61 0 14 6 65 0 20 6 69 0 21 6 130 0 24 6 130 0 25 6 130 0 40 6 130 0 41 6 130 0 43 6 130 0 45 6 130 0 48 6 130 0 49 6 130 0 51 6 130 0 53 6 130 0 54 6 73 0 83 6 77 0 86 6 130 0 121 6 130 0 122 6 130 0 134 6 130 0 135 6 130 1 226] 
#[1 6 134 0 3 6 134 0 5 6 134 0 7 6 134 0 8 6 57 0 11 6 61 0 14 6 65 0 20 6 69 0 21 6 134 0 24 6 134 0 25 6 134 0 40 6 134 0 41 6 134 0 43 6 134 0 45 6 134 0 48 6 134 0 49 6 134 0 51 6 134 0 53 6 134 0 54 6 73 0 83 6 77 0 86 6 134 0 121 6 134 0 122 6 134 0 134 6 134 0 135 6 134 1 226] 
#[1 6 138 0 3 6 138 0 5 6 138 0 7 6 138 0 8 6 81 0 24 6 85 0 25 6 138 0 40 6 138 0 41 6 138 0 43 6 138 0 45 6 138 0 48 6 138 0 49 6 138 0 51 6 89 0 53 6 93 0 54 6 138 0 121 6 138 0 122 6 138 0 134 6 138 0 135 6 138 1 226] 
#[1 6 142 0 3 6 142 0 5 6 142 0 7 6 142 0 8 6 97 0 40 6 142 0 41 6 142 0 43 6 142 0 45 6 142 0 48 6 142 0 49 6 142 0 51 6 142 0 121 6 142 0 122 6 142 0 134 6 142 0 135 6 142 1 226] 
#[1 6 146 0 3 6 146 0 5 6 146 0 7 6 146 0 8 6 146 0 41 6 146 0 43 6 146 0 45 6 146 0 48 6 146 0 49 6 101 0 51 6 146 0 121 6 146 0 122 6 146 0 134 6 146 0 135 6 146 1 226] 
#[1 6 150 0 3 6 150 0 5 6 150 0 7 6 150 0 8 6 150 0 41 6 150 0 43 6 105 0 48 6 150 0 49 6 150 0 121 6 150 0 122 6 150 0 134 6 150 0 135 6 150 1 226] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 41 1 2 0 43 6 105 0 48 1 2 0 49 1 2 0 121 1 2 0 122 1 2 0 134 1 2 0 135 1 2 1 226] 
#[1 6 154 0 3 6 154 0 5 6 154 0 7 6 154 0 8 6 109 0 41 6 154 0 43 6 154 0 49 6 154 0 121 6 154 0 122 6 154 0 134 6 154 0 135 6 154 1 226] 
#[1 6 158 0 3 6 158 0 5 6 158 0 7 6 158 0 8 6 158 0 43 6 158 0 45 6 105 0 48 6 158 0 121 6 158 0 122 6 158 0 134 6 158 0 135 6 158 1 226] 
#[0 16 45 0 122] 
#[0 6 162 0 3 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 16 53 1 6 16 57 1 7 0 6 1 225] 
#[0 6 170 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 6 174 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 6 178 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[1 6 182 0 3 6 182 0 5 6 182 0 7 6 182 0 8 6 182 0 11 6 45 0 12 6 182 0 14 6 49 0 15 6 53 0 18 6 182 0 20 6 182 0 21 6 182 0 24 6 182 0 25 6 182 0 40 6 182 0 41 6 182 0 43 6 182 0 45 6 182 0 48 6 182 0 49 6 182 0 51 6 182 0 53 6 182 0 54 6 182 0 83 6 182 0 86 6 182 0 121 6 182 0 122 6 182 0 134 6 182 0 135 6 182 1 226] 
#[1 0 22 0 136 16 61 1 75 16 65 1 94] 
#[1 6 186 0 4 0 203 0 136 16 69 0 138 16 77 1 72 16 77 1 73 1 197 1 74 16 77 1 92 1 205 1 94 16 81 1 99] 
#[1 6 194 0 4 6 194 0 9 6 194 0 14 16 85 0 22 16 89 0 122 6 194 0 137] 
#[1 6 186 0 4 16 93 0 9 0 138 0 14 16 97 0 137 16 125 1 78 16 105 1 82 16 109 1 83 16 113 1 84 16 109 1 85 16 109 1 86 16 125 1 87 16 129 1 95 16 133 1 99] 
#[0 6 198 0 4 0 9 0 14 0 137] 
#[0 6 202 0 4 0 9 0 14 0 137] 
#[0 6 206 0 137] 
#[1 16 137 0 137 16 141 1 80] 
#[0 16 145 0 14] 
#[0 16 149 0 3] 
#[1 2 166 0 6 2 166 0 11 0 207 0 14 2 170 0 22 2 166 0 40 2 166 0 48 13 249 0 74 4 218 0 121 13 253 1 103] 
#[0 16 153 0 14] 
#[1 6 145 0 2 3 89 0 11 6 157 1 100 16 157 1 145] 
#[0 16 161 0 4] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 16 165 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 6 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 6 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 16 169 0 8] 
#[0 6 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 16 173 0 8] 
#[0 16 177 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 16 181 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 16 185 0 196 16 185 0 197 16 185 0 199 0 253 1 5 16 185 1 8 1 125 1 9 1 129 1 10 1 133 1 13 16 185 1 14 0 253 1 19 16 185 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 16 189 0 141 16 193 0 214 6 225 0 215 16 197 0 216 16 197 0 217 16 197 0 218 16 201 0 236 6 233 1 225] 
#[1 0 214 0 8 0 214 0 9 6 5 0 10 0 214 0 11 0 214 0 12 6 5 0 13 0 214 0 14 0 214 0 15 6 5 0 16 6 5 0 17 0 214 0 18 0 214 0 20 0 214 0 21 6 5 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 6 5 0 28 6 5 0 29 6 5 0 30 6 5 0 31 6 5 0 32 6 5 0 33 6 5 0 34 0 214 0 35 5 241 0 36 0 214 0 37 5 245 0 38 0 214 0 40 0 214 0 41 6 5 0 42 0 214 0 43 0 214 0 45 6 5 0 46 0 214 0 47 0 214 0 48 0 214 0 49 6 5 0 50 0 214 0 51 0 214 0 53 0 214 0 54 0 211 0 83 0 214 0 86 16 209 0 96 0 214 0 121 6 5 0 198 6 5 1 224 6 13 1 225] 
#[1 16 213 0 8 6 125 0 121] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 16 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 16 221 0 196 16 221 0 197 16 221 0 199 0 253 1 5 16 221 1 8 1 125 1 9 1 129 1 10 1 133 1 13 16 221 1 14 0 253 1 19 16 221 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 16 225 0 141 4 93 0 211 4 97 0 212 16 229 0 216 16 229 0 217 16 229 0 218 16 233 0 236 4 97 1 151 4 97 1 152 4 121 1 225] 
#[1 16 237 0 83 16 241 0 96] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 4 221 0 56 0 137 0 61 16 253 0 63 1 173 0 75 0 149 0 79 0 153 0 82 16 253 0 89 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 16 245 0 115 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 16 249 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 16 249 0 178 16 253 0 210 17 1 0 235 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 5 93 1 225] 
#[1 17 5 0 3 6 125 0 121] 
#[0 6 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 17 9 0 8 6 125 0 121] 
#[1 17 13 0 3 6 125 0 121] 
#[0 6 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 17 17 0 2 1 213 0 4 17 21 0 205] 
#[1 1 213 0 4 17 25 0 205] 
#[1 6 230 0 1 6 230 0 2 6 230 0 4 6 230 0 5 6 230 0 6 6 230 0 8 6 230 0 35 6 230 0 36 6 230 0 37 6 230 0 38 6 230 0 39 6 230 0 52 6 230 0 56 6 230 0 57 6 230 0 58 6 230 0 59 6 230 0 61 6 230 0 62 6 230 0 63 6 230 0 65 6 230 0 66 6 230 0 67 6 230 0 68 6 230 0 69 6 230 0 70 6 230 0 71 6 230 0 72 6 230 0 73 6 230 0 75 12 113 0 76 6 230 0 77 6 230 0 79 6 230 0 81 6 230 0 82 6 230 0 87 6 230 0 89 6 230 0 92 6 230 0 93 6 230 0 94 6 230 0 102 6 230 0 106 6 230 0 107 6 230 0 109 6 230 0 110 6 230 0 111 6 230 0 112 6 230 0 113 6 230 0 114 6 230 0 115 6 230 0 116 6 230 0 117 6 230 0 118 6 230 0 119 6 230 0 124 6 230 0 126 6 230 0 128 6 230 0 129 6 230 0 130 6 230 0 132 6 230 0 133 6 230 0 136 17 29 0 252 6 230 1 225 6 230 1 226] 
#[0 6 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 6 238 0 8 0 121] 
#[0 6 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 6 217 0 141 17 33 0 215 6 229 0 216 6 229 0 217 6 229 0 218 6 233 1 225] 
#[0 6 246 0 8 0 121] 
#[1 13 209 0 122 17 37 1 135] 
#[1 13 209 0 122 17 41 1 135] 
#[0 6 250 0 8 0 121] 
#[0 6 254 0 8 0 121] 
#[1 17 45 0 3 6 125 0 121] 
#[1 17 49 0 3 6 125 0 121] 
#[0 7 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 7 10 0 1 0 215 0 2 7 10 0 4 7 10 0 5 0 215 0 6 0 215 0 8 5 210 0 9 5 210 0 10 5 210 0 11 5 210 0 12 5 210 0 13 5 210 0 14 5 210 0 15 5 210 0 16 5 210 0 17 5 210 0 18 5 210 0 20 5 210 0 21 5 210 0 22 5 210 0 23 5 210 0 24 5 210 0 25 5 210 0 26 5 210 0 27 5 210 0 28 5 210 0 29 5 210 0 30 5 210 0 31 5 210 0 32 5 210 0 33 5 210 0 34 0 215 0 35 0 215 0 36 0 215 0 37 0 215 0 38 7 10 0 39 5 210 0 40 5 210 0 41 5 210 0 42 5 210 0 43 5 210 0 44 5 210 0 45 5 210 0 46 5 210 0 47 5 210 0 48 5 210 0 49 5 210 0 50 5 210 0 51 7 10 0 52 5 210 0 53 5 210 0 54 7 10 0 56 7 10 0 57 7 10 0 58 7 10 0 61 7 10 0 62 7 10 0 63 7 10 0 65 7 10 0 66 7 10 0 67 7 10 0 69 7 10 0 70 7 10 0 72 7 10 0 73 7 10 0 75 7 10 0 77 7 10 0 79 7 10 0 81 7 10 0 82 5 210 0 83 5 210 0 86 7 10 0 87 7 10 0 89 7 10 0 92 7 10 0 93 7 10 0 94 7 10 0 102 7 10 0 106 7 10 0 107 7 10 0 109 7 10 0 110 7 10 0 111 7 10 0 112 7 10 0 113 7 10 0 114 7 10 0 115 7 10 0 116 7 10 0 117 7 10 0 118 7 10 0 119 5 210 0 121 7 10 0 124 7 10 0 126 7 10 0 128 7 10 0 129 7 10 0 130 0 215 0 132 0 215 0 133 7 10 0 136 5 210 1 224 0 215 1 225 7 10 1 226] 
#[1 5 29 0 4 5 33 0 74 17 53 1 34 5 45 1 35 5 49 1 225] 
#[0 7 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 17 57 0 4] 
#[1 3 89 0 11 5 33 0 74 17 61 1 35 17 65 1 100 5 49 1 225] 
#[1 7 18 0 8 7 18 0 121 13 209 0 122 17 69 1 135] 
#[1 17 73 0 8 17 77 0 121] 
#[0 7 22 0 8 0 121] 
#[1 8 45 0 2 3 89 0 11 8 93 1 100 17 81 1 136] 
#[1 17 85 0 8 17 77 0 121] 
#[0 17 89 0 4] 
#[1 17 93 0 4 13 33 0 22] 
#[1 17 97 0 8 17 77 0 121] 
#[1 17 101 0 5 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 17 105 0 142 17 105 0 154 17 105 0 155 17 105 0 156 8 85 1 69 8 89 1 70 17 109 1 169 17 113 1 170 17 117 1 171] 
#[0 17 121 0 8] 
#[0 17 125 0 8] 
#[0 7 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 17 129 0 8] 
#[1 3 217 0 4 17 133 0 26 17 137 1 63] 
#[0 17 141 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 17 145 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 17 149 0 2] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 17 153 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 0 189 0 124 17 157 0 141 17 161 1 118 17 165 1 180 17 169 1 223] 
#[1 0 189 0 124 3 117 0 141 17 173 1 116 3 173 1 117 3 177 1 118 17 173 1 156] 
#[1 3 81 0 4 13 13 0 74 17 177 1 119 17 181 1 154] 
#[0 7 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 3 81 0 4 17 185 1 119] 
#[1 0 97 0 2 0 19 0 4 7 34 0 5 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 2 133 0 61 2 137 0 62 2 141 0 63 1 225 0 65 1 229 0 66 7 205 0 67 0 141 0 69 1 233 0 70 2 149 0 72 17 189 0 73 1 173 0 75 1 237 0 77 2 157 0 79 1 241 0 81 7 133 0 82 2 165 0 87 0 65 0 89 2 169 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 2 173 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 17 237 0 200 17 237 0 203 17 237 0 204 17 237 0 205 17 237 0 209 0 65 0 210 17 237 0 213 17 237 0 227 17 237 0 228 17 237 0 229 17 237 0 230 17 237 0 231 17 237 0 232 17 237 0 233 17 237 0 234 17 237 0 237 17 237 0 238 17 237 0 240 17 237 0 241 17 237 0 242 17 237 0 247 17 237 0 249 17 237 0 250 17 237 0 254 17 237 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 17 237 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 17 237 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 17 237 1 144 17 237 1 153 17 237 1 168 17 237 1 173 17 229 1 175 17 233 1 176 17 237 1 177 17 237 1 178 17 237 1 179 17 237 1 205 3 73 1 225] 
#[1 0 189 0 124 17 253 0 141] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 18 1 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 18 1 1 129 18 1 1 130 3 149 1 131 3 149 1 133] 
#[0 18 5 0 23] 
#[1 7 38 0 1 0 142 0 2 7 38 0 4 0 219 0 6 0 142 0 22 7 38 0 43 0 142 0 44 7 38 0 61 7 38 0 62 7 38 0 64 7 38 0 73 7 38 0 97 7 38 0 98 7 38 0 99 7 38 0 100 7 38 0 104 7 38 0 109 7 38 0 122 7 38 0 124 7 38 0 125 7 38 0 128 7 38 0 129 0 142 0 132 0 142 0 133 0 219 1 225] 
#[1 7 42 0 1 5 97 0 2 7 42 0 4 0 223 0 6 5 173 0 22 7 42 0 43 5 153 0 44 7 42 0 61 7 42 0 62 7 42 0 64 7 42 0 73 7 42 0 97 7 42 0 98 7 42 0 99 7 42 0 100 7 42 0 104 7 42 0 109 7 42 0 122 7 42 0 124 7 42 0 125 7 42 0 128 7 42 0 129 0 209 0 132 0 18 0 133 5 177 0 159 0 249 0 160 5 181 0 172 5 185 0 175 0 227 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 18 9 0 61 2 137 0 62 0 141 0 69 1 173 0 75 18 13 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 18 17 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 21 0 196 18 21 0 197 18 25 1 4 0 253 1 5 18 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 21 1 14 18 29 1 18 0 253 1 19 18 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 18 33 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 18 37 1 209 18 41 1 210 3 73 1 225] 
#[0 7 46 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 50 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 54 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 58 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 62 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 66 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 231 0 1 7 70 0 2 7 70 0 4 7 70 0 6 7 70 0 8 7 70 0 35 7 70 0 36 7 70 0 37 7 70 0 38 7 70 0 39 7 70 0 52 7 70 0 56 7 70 0 57 7 70 0 58 7 70 0 61 7 70 0 62 7 70 0 63 7 70 0 65 7 70 0 66 0 231 0 67 7 70 0 69 7 70 0 70 7 70 0 72 0 231 0 73 7 70 0 75 7 70 0 77 7 70 0 79 7 70 0 81 0 231 0 82 0 231 0 87 7 70 0 89 0 231 0 92 7 70 0 93 7 70 0 94 7 70 0 102 7 70 0 106 7 70 0 107 7 70 0 109 7 70 0 110 7 70 0 111 7 70 0 112 0 231 0 113 7 70 0 114 7 70 0 115 7 70 0 116 7 70 0 117 7 70 0 118 7 70 0 119 7 70 0 124 7 70 0 126 7 70 0 128 7 70 0 129 7 70 0 130 7 70 0 132 7 70 0 133 7 70 0 136 7 70 1 225 0 231 1 226] 
#[1 0 235 0 1 7 78 0 2 7 78 0 4 7 78 0 6 7 78 0 8 7 78 0 35 7 78 0 36 7 78 0 37 7 78 0 38 7 78 0 39 7 78 0 52 7 78 0 56 7 78 0 57 7 78 0 58 7 78 0 61 7 78 0 62 7 78 0 63 7 78 0 65 7 78 0 66 0 235 0 67 7 78 0 69 7 78 0 70 7 78 0 72 0 235 0 73 7 78 0 75 7 78 0 77 7 78 0 79 7 78 0 81 0 235 0 82 0 235 0 87 7 78 0 89 0 235 0 92 7 78 0 93 7 78 0 94 7 78 0 102 7 78 0 106 7 78 0 107 7 78 0 109 7 78 0 110 7 78 0 111 7 78 0 112 0 235 0 113 7 78 0 114 7 78 0 115 7 78 0 116 7 78 0 117 7 78 0 118 7 78 0 119 7 78 0 124 7 78 0 126 7 78 0 128 7 78 0 129 7 78 0 130 7 78 0 132 7 78 0 133 7 78 0 136 7 78 1 225 0 235 1 226] 
#[0 7 86 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 94 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[1 0 239 0 1 7 102 0 2 7 102 0 4 7 102 0 6 7 102 0 8 7 102 0 35 7 102 0 36 7 102 0 37 7 102 0 38 7 102 0 39 7 102 0 52 7 102 0 56 7 102 0 57 7 102 0 58 7 102 0 61 7 102 0 62 7 102 0 63 7 102 0 65 7 102 0 66 0 239 0 67 7 102 0 69 7 102 0 70 7 102 0 72 0 239 0 73 7 102 0 75 7 102 0 77 7 102 0 79 7 102 0 81 0 239 0 82 0 239 0 87 7 102 0 89 0 239 0 92 7 102 0 93 7 102 0 94 7 102 0 102 7 102 0 106 7 102 0 107 7 102 0 109 7 102 0 110 7 102 0 111 7 102 0 112 0 239 0 113 7 102 0 114 7 102 0 115 7 102 0 116 7 102 0 117 7 102 0 118 7 102 0 119 7 102 0 124 7 102 0 126 7 102 0 128 7 102 0 129 7 102 0 130 7 102 0 132 7 102 0 133 7 102 0 136 7 102 1 225 0 239 1 226] 
#[1 0 91 0 1 0 30 0 61 0 30 0 62 9 29 0 79 8 13 1 137 8 17 1 222] 
#[0 18 45 0 23] 
#[1 3 229 0 61 2 137 0 62 2 141 0 63 7 205 0 67 18 49 0 68 2 149 0 72 3 237 0 79 0 41 0 82 2 165 0 87 0 65 0 89 2 169 0 92 2 173 0 113 2 5 0 115 13 57 0 209 0 65 0 210 13 61 0 213 13 65 1 4 13 69 1 18 13 73 1 32 13 77 1 51 18 53 1 144 18 57 1 153 13 89 1 168 13 93 1 173 18 61 1 205 13 105 1 225] 
#[1 18 45 0 23 3 42 0 78 3 42 0 121] 
#[1 7 205 0 67 18 65 0 68 7 169 0 82 2 165 0 87 2 173 0 113 18 69 1 144 18 73 1 153 13 97 1 179 18 77 1 205] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 18 81 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 13 125 0 2 3 89 0 11 13 133 1 100 18 85 1 136 18 89 1 145] 
#[0 18 93 0 2] 
#[0 18 97 0 8] 
#[0 18 101 0 4] 
#[1 3 89 0 11 0 189 0 124 18 105 0 141 18 109 1 100] 
#[0 18 113 0 61] 
#[1 7 121 0 1 18 117 0 61 18 121 0 62 7 129 1 222] 
#[1 0 243 0 3 0 243 0 5 4 146 0 6 0 243 0 7 4 146 0 8 5 42 0 23 4 146 0 40 4 146 0 48 0 243 0 121] 
#[1 8 45 0 2 4 158 0 5 4 158 0 8 3 89 0 11 13 205 0 43 4 158 0 121 18 125 0 122 8 93 1 100 13 213 1 135 13 217 1 136] 
#[1 0 247 0 3 0 247 0 5 4 206 0 6 0 247 0 7 4 206 0 8 5 54 0 23 4 206 0 40 4 206 0 48 0 247 0 121] 
#[1 3 138 0 4 3 138 0 6 0 251 0 7 3 138 0 120 3 138 0 121 3 138 0 124 3 138 1 225] 
#[0 18 129 0 19] 
#[0 7 106 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 18 133 0 3] 
#[1 0 142 0 2 0 142 0 6 0 142 0 7 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 83 0 142 0 86 18 137 0 122 0 142 0 132 0 142 0 133 0 142 1 224 0 142 1 225] 
#[0 18 141 0 7] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 18 145 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 18 149 0 2] 
#[1 7 110 0 5 7 110 0 8 18 153 0 43 7 110 0 121 13 209 0 122 18 157 1 135] 
#[1 8 45 0 2 7 114 0 5 7 114 0 8 3 89 0 11 7 114 0 121 13 209 0 122 8 93 1 100 18 161 1 135 18 165 1 136] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 18 169 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 18 169 1 129 18 169 1 130 3 149 1 131 3 149 1 133] 
#[0 7 118 0 5 0 8 0 121] 
#[0 7 122 0 5 0 8 0 121] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 18 173 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 7 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 125 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 225 1 226] 
#[1 8 45 0 2 7 130 0 5 8 53 0 6 3 89 0 11 8 57 0 93 8 61 0 101 8 65 0 125 8 85 0 128 8 89 0 129 8 73 0 142 8 73 0 154 8 73 0 155 8 73 0 156 8 85 1 69 8 89 1 70 8 93 1 100 18 177 1 122 18 177 1 134 18 177 1 136 18 177 1 141 18 177 1 142 18 177 1 143] 
#[1 8 45 0 2 7 134 0 5 8 53 0 6 3 89 0 11 8 57 0 93 8 61 0 101 8 65 0 125 8 85 0 128 8 89 0 129 8 73 0 142 8 73 0 154 8 73 0 155 8 73 0 156 8 85 1 69 8 89 1 70 8 93 1 100 18 181 1 122 18 181 1 134 18 181 1 136 18 181 1 141 18 181 1 142 18 181 1 143] 
#[0 7 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 7 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 18 185 0 7 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 18 189 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 18 189 1 126 3 137 1 127 3 141 1 128 18 189 1 129 18 189 1 130 3 149 1 131 3 149 1 133] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 18 193 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 18 193 1 129 18 193 1 130 3 149 1 131 3 149 1 133] 
#[0 7 146 0 14 0 121] 
#[0 7 150 0 2 0 4 0 23 0 74 1 225] 
#[1 0 189 0 124 8 149 0 141 18 197 1 102] 
#[0 18 201 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 18 205 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 0 189 0 124 18 209 0 141] 
#[0 18 213 0 3] 
#[1 7 154 0 3 7 154 0 4 7 154 0 5 7 154 0 6 7 154 0 7 7 154 0 8 7 154 0 9 7 154 0 11 7 154 0 12 7 154 0 14 7 154 0 15 7 154 0 18 7 154 0 19 7 154 0 20 7 154 0 21 7 154 0 23 7 154 0 24 7 154 0 25 7 154 0 26 7 154 0 27 7 154 0 35 7 154 0 37 0 255 0 40 7 154 0 41 7 154 0 43 7 154 0 45 7 154 0 47 7 154 0 48 7 154 0 49 7 154 0 51 7 154 0 53 7 154 0 54 7 154 0 64 7 154 0 83 7 154 0 86 7 154 0 97 7 154 0 98 7 154 0 99 7 154 0 100 7 154 0 104 7 154 0 121 7 154 0 122 7 154 0 125 7 154 0 128 7 154 0 129 7 154 0 134 7 154 0 135 7 154 1 226] 
#[1 7 158 0 3 7 158 0 4 7 158 0 5 1 3 0 6 7 158 0 7 7 158 0 8 7 158 0 9 7 158 0 11 7 158 0 12 7 158 0 14 7 158 0 15 7 158 0 18 7 158 0 19 7 158 0 20 7 158 0 21 7 158 0 23 7 158 0 24 7 158 0 25 7 158 0 26 7 158 0 27 7 158 0 35 7 158 0 37 7 158 0 40 7 158 0 41 7 158 0 43 7 158 0 45 7 158 0 47 7 158 0 48 7 158 0 49 7 158 0 51 7 158 0 53 7 158 0 54 7 158 0 64 7 158 0 83 7 158 0 86 7 158 0 97 7 158 0 98 7 158 0 99 7 158 0 100 7 158 0 104 7 158 0 121 7 158 0 122 7 158 0 125 7 158 0 128 7 158 0 129 7 158 0 134 7 158 0 135 8 201 0 239 7 158 1 226] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 18 217 0 7 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 18 221 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 18 221 1 129 18 221 1 130 3 149 1 131 3 149 1 133] 
#[0 7 162 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 7 166 0 3 7 166 0 4 7 166 0 5 7 166 0 6 7 166 0 7 7 166 0 8 7 166 0 9 7 166 0 11 7 166 0 12 7 166 0 14 7 166 0 15 7 166 0 18 7 166 0 19 7 166 0 20 7 166 0 21 7 170 0 22 7 166 0 23 7 166 0 24 7 166 0 25 7 166 0 26 7 166 0 27 7 166 0 35 7 166 0 37 7 166 0 40 7 166 0 41 7 166 0 43 7 166 0 45 7 166 0 47 7 166 0 48 7 166 0 49 7 166 0 51 7 166 0 53 7 166 0 54 7 166 0 64 7 166 0 83 7 166 0 85 7 166 0 86 7 166 0 97 7 166 0 98 7 166 0 99 7 166 0 100 7 166 0 104 7 166 0 121 7 166 0 122 7 166 0 125 7 166 0 128 7 166 0 129 7 166 0 134 7 166 0 135 7 166 1 226] 
#[0 18 225 0 125 0 128 1 50 1 69] 
#[0 7 174 0 8 0 78] 
#[1 18 229 0 5 8 221 0 125 8 221 0 128 8 221 1 50 18 233 1 65 8 221 1 69] 
#[0 7 178 0 78] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 18 237 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 18 241 0 2 0 189 0 124 18 245 0 141] 
#[0 18 249 0 2] 
#[0 7 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 182 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 18 253 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 19 1 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 19 5 0 2] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 19 9 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 7 186 0 8] 
#[0 7 190 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 13 125 0 2 3 89 0 11 13 133 1 100 18 85 1 136 19 13 1 145] 
#[0 19 17 0 4] 
#[1 0 189 0 124 19 21 0 141 19 21 1 60] 
#[0 7 194 0 78] 
#[1 19 25 0 5 0 189 0 124 9 49 0 125 9 49 0 128 9 61 0 141 9 49 1 50 19 29 1 58 9 61 1 60 9 49 1 69] 
#[0 7 198 0 78] 
#[0 7 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 206 0 78] 
#[0 7 210 0 78] 
#[0 7 214 0 78] 
#[0 7 218 0 78] 
#[0 7 222 0 5] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 19 33 0 224 19 33 0 225 8 41 1 225] 
#[0 7 226 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 230 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 19 37 0 5 9 89 0 6 9 93 0 120 0 189 0 124 8 65 0 125 8 85 0 128 8 89 0 129 9 97 0 141 9 101 0 142 9 101 0 154 9 101 0 155 9 101 0 156 19 41 0 219 19 45 0 223 19 45 0 225 8 85 1 69 8 89 1 70 9 121 1 225] 
#[0 7 234 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 238 0 7 0 121] 
#[0 19 49 0 7] 
#[0 7 242 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 4 81 0 4 4 85 0 6 19 53 0 7 4 137 0 120 4 197 0 121 0 189 0 124 9 97 0 141 19 57 0 148 4 149 0 216 4 149 0 217 4 149 0 218 19 61 0 222 9 141 0 224 9 141 0 225 19 65 0 226 8 41 1 225] 
#[0 7 246 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 250 0 3 0 5 0 7 0 8 0 121] 
#[0 7 254 0 8 0 121] 
#[1 8 2 0 8 9 149 0 23 8 2 0 121 19 69 0 158] 
#[1 8 6 0 8 9 149 0 23 8 6 0 121 19 73 0 158] 
#[1 9 13 0 78 19 77 1 56] 
#[0 3 38 0 78] 
#[1 0 142 0 2 0 142 0 6 1 7 0 7 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 83 0 142 0 86 0 142 0 121 13 209 0 122 0 142 0 132 0 142 0 133 14 225 1 135 0 142 1 224 0 142 1 225] 
#[1 5 134 0 2 1 11 0 3 5 134 0 6 1 11 0 7 5 134 0 9 5 134 0 10 5 134 0 11 5 134 0 12 5 134 0 13 5 134 0 14 5 134 0 15 5 134 0 16 5 134 0 17 5 134 0 18 5 134 0 20 5 134 0 21 5 134 0 22 1 11 0 23 5 134 0 24 5 134 0 25 5 134 0 26 5 134 0 27 5 134 0 28 5 134 0 29 5 134 0 30 5 134 0 31 5 134 0 32 5 134 0 33 5 134 0 34 5 134 0 35 5 134 0 36 5 134 0 37 5 134 0 38 5 134 0 40 5 134 0 41 5 134 0 42 5 134 0 43 5 134 0 44 5 134 0 45 5 134 0 46 5 134 0 47 5 134 0 48 5 134 0 49 5 134 0 50 5 134 0 51 5 134 0 53 5 134 0 54 5 134 0 83 5 134 0 86 1 11 0 121 5 134 0 132 5 134 0 133 5 134 1 224 5 134 1 225] 
#[0 8 10 0 3 0 7] 
#[0 8 14 0 3] 
#[0 8 18 0 3 0 121] 
#[0 8 22 0 3 0 5 0 7 0 121] 
#[1 8 26 0 3 8 26 0 5 8 26 0 7 9 149 0 23 8 26 0 121 19 81 0 158] 
#[0 8 30 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[0 8 34 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[0 8 38 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[1 19 85 0 43 13 209 0 122 19 89 1 135] 
#[1 5 122 0 3 4 81 0 4 5 122 0 5 4 85 0 6 5 122 0 7 5 122 0 23 5 122 0 43 14 245 0 109 5 122 0 121 5 122 0 122 0 189 0 124 19 93 0 141 19 93 0 216 19 93 0 217 19 93 0 218 19 93 1 138] 
#[1 8 42 0 3 8 42 0 5 8 42 0 7 9 149 0 23 19 97 0 43 8 42 0 121 13 209 0 122 19 101 0 158 19 105 1 135] 
#[0 8 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 8 50 0 7 0 121] 
#[0 8 54 0 7 0 121] 
#[0 19 109 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 19 113 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 19 117 0 2] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 19 121 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 19 125 1 6 16 57 1 7 19 129 1 30 0 6 1 225] 
#[0 8 58 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 8 62 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 19 133 0 2] 
#[1 10 69 0 124 10 73 0 126 19 137 1 40] 
#[0 19 141 0 2] 
#[0 19 145 0 2] 
#[0 19 149 0 2] 
#[1 0 6 0 2 0 6 0 4 8 66 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 19 153 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 19 157 1 42 19 161 1 43 0 6 1 225] 
#[0 8 70 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 19 165 0 8] 
#[0 8 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 224 1 225 1 226] 
#[0 8 78 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 8 82 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 19 169 0 255 4 169 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 8 86 0 8] 
#[1 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 19 173 0 142 19 173 0 154 19 173 0 155 19 173 0 156 8 85 1 69 8 89 1 70] 
#[1 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 19 177 0 142 19 177 0 154 19 177 0 155 19 177 0 156 8 85 1 69 8 89 1 70] 
#[1 6 145 0 2 3 89 0 11 19 181 0 43 6 157 1 100 19 185 1 145] 
#[1 7 121 0 1 9 89 0 6 19 189 0 64 19 201 0 97 19 201 0 98 19 201 0 99 19 201 0 100 19 193 0 104 8 65 0 125 8 85 0 128 8 89 0 129 19 197 0 142 19 197 0 154 19 197 0 155 19 197 0 156 8 85 1 69 8 89 1 70 19 201 1 139 19 205 1 146 19 209 1 147 7 129 1 222 19 213 1 225] 
#[0 19 217 0 8] 
#[0 8 90 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 8 94 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 8 98 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 8 102 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 8 106 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 8 110 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 8 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 224 1 225 1 226] 
#[0 19 221 0 5] 
#[0 8 118 0 4 0 85] 
#[0 8 122 0 4 0 85] 
#[0 8 126 0 4 0 121] 
#[1 8 130 0 4 19 225 0 121] 
#[0 8 134 0 4 0 121] 
#[0 8 138 0 4] 
#[0 19 229 0 4] 
#[0 19 233 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 19 237 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 19 241 0 3] 
#[0 8 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 8 146 0 3 0 121] 
#[0 8 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 19 245 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 19 249 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 19 253 0 196 19 253 0 197 0 253 1 5 19 253 1 8 1 125 1 9 1 129 1 10 1 133 1 13 19 253 1 14 0 253 1 19 19 253 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 8 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 20 1 0 14 20 5 0 121] 
#[0 8 158 0 14 0 121] 
#[0 8 162 0 14 0 121] 
#[1 0 97 0 2 20 9 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 10 197 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 20 13 0 173 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 205 0 196 10 205 0 197 0 253 1 5 10 205 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 205 1 14 0 253 1 19 10 205 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 4 62 0 4 4 62 0 136 4 62 0 138 20 17 1 90 11 233 1 91] 
#[0 8 166 0 5 0 121] 
#[0 8 170 0 5 0 121] 
#[0 8 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 20 21 0 5 9 89 0 6 10 49 0 26 10 53 0 56 10 57 0 80 10 61 0 103 10 237 0 120 10 241 0 124 8 65 0 125 10 73 0 126 8 85 0 128 8 89 0 129 10 245 0 141 11 1 0 142 20 25 0 153 11 1 0 154 11 1 0 155 11 1 0 156 20 25 0 157 20 25 1 16 20 25 1 20 20 25 1 25 20 25 1 29 11 13 1 40 8 85 1 69 8 89 1 70 20 25 1 146 20 25 1 147 11 17 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 29 0 196 20 29 0 197 0 253 1 5 20 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 29 1 14 0 253 1 19 20 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 33 0 196 20 33 0 197 20 33 0 199 0 253 1 5 20 33 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 33 1 14 0 253 1 19 20 33 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 8 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 8 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 20 37 0 134 20 41 0 135] 
#[0 8 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 20 45 0 7 6 125 0 121] 
#[1 20 49 0 7 6 125 0 121] 
#[0 8 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 8 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 8 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 8 202 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 53 0 196 20 53 0 197 0 253 1 5 20 53 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 53 1 14 0 253 1 19 20 53 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 6 0 2 0 6 0 4 8 206 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 253 0 207 0 57 0 208 6 253 0 209 0 65 0 210 0 6 1 225] 
#[0 20 57 0 5] 
#[0 8 210 0 5] 
#[0 8 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 224 1 225 1 226] 
#[0 20 61 0 136] 
#[0 8 218 0 4 0 136 0 138] 
#[0 8 222 0 4 0 136 0 138] 
#[0 8 226 0 4 0 136 0 138] 
#[0 20 65 0 4] 
#[0 8 230 0 137] 
#[0 20 69 0 137] 
#[1 8 234 0 14 20 73 1 97] 
#[1 8 238 0 4 8 238 0 9 8 238 0 14 8 238 0 23 16 89 0 122 8 238 0 137] 
#[0 8 242 0 4 0 9 0 14 0 23 0 137] 
#[1 20 77 0 9 0 138 0 14 20 81 1 95] 
#[0 8 246 0 4 0 9 0 14 0 137] 
#[1 6 186 0 4 8 250 0 9 8 250 0 14 16 97 0 137 16 125 1 78 20 85 1 83 20 85 1 85 20 85 1 86 16 125 1 87 16 133 1 99] 
#[0 8 254 0 4 0 9 0 14 0 137] 
#[0 9 2 0 4 0 9 0 14 0 137] 
#[1 9 6 0 4 9 6 0 9 9 6 0 14 20 89 0 23 9 6 0 137 20 93 1 88] 
#[0 20 97 0 14] 
#[0 20 101 0 4] 
#[1 9 10 0 4 9 10 0 9 9 10 0 14 16 85 0 22 9 10 0 137] 
#[0 9 14 0 137] 
#[0 9 18 0 4 0 136 0 138] 
#[1 9 22 0 4 9 22 0 8 9 22 0 19 13 209 0 122 20 105 1 135] 
#[1 4 217 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 221 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 229 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 229 0 178 20 109 0 179 20 109 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 20 109 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 237 1 225] 
#[0 20 113 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 20 117 1 6 16 57 1 7 0 6 1 225] 
#[0 20 121 0 3] 
#[0 9 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 125 0 196 20 125 0 197 20 125 0 199 0 253 1 5 20 125 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 125 1 14 0 253 1 19 20 125 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 20 129 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 133 0 196 20 133 0 197 20 133 0 199 0 253 1 5 20 133 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 133 1 14 0 253 1 19 20 133 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 20 137 0 8 6 125 0 121] 
#[1 4 78 0 8 9 149 0 23 9 34 0 83 9 34 0 96 4 78 0 121 12 125 0 158] 
#[1 20 141 0 8 12 133 0 121] 
#[1 9 149 0 23 9 38 0 83 9 38 0 96 12 137 0 158] 
#[1 20 145 0 83 20 149 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 153 0 196 20 153 0 197 20 153 0 199 0 253 1 5 20 153 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 153 1 14 0 253 1 19 20 153 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 157 0 196 20 157 0 197 0 253 1 5 20 157 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 157 1 14 0 253 1 19 20 157 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 20 161 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 165 0 196 20 165 0 197 20 165 0 199 0 253 1 5 20 165 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 165 1 14 0 253 1 19 20 165 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 20 169 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 173 0 196 20 173 0 197 20 173 0 199 0 253 1 5 20 173 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 173 1 14 0 253 1 19 20 173 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 20 177 0 8 6 125 0 121] 
#[1 3 70 0 8 9 149 0 23 9 34 0 83 9 34 0 96 3 70 0 121 9 153 0 158] 
#[1 9 149 0 23 9 38 0 83 9 38 0 96 9 165 0 158] 
#[0 9 42 0 83 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 181 0 196 20 181 0 197 20 181 0 199 0 253 1 5 20 181 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 181 1 14 0 253 1 19 20 181 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 185 0 196 20 185 0 197 0 253 1 5 20 185 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 185 1 14 0 253 1 19 20 185 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 20 197 0 141 20 197 0 216 20 197 0 217 20 197 0 218 20 197 0 236] 
#[1 20 201 0 96 10 189 1 225] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 16 233 0 141 16 233 0 216 16 233 0 217 16 233 0 218 16 233 0 236] 
#[0 20 205 0 96] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 20 209 0 200 20 209 0 203 20 209 0 204 20 209 0 205 20 209 0 213 20 209 0 227 20 209 0 228 20 209 0 229 20 209 0 230 20 209 0 231 20 209 0 232 20 209 0 233 20 209 0 234 20 209 0 237 20 209 0 238 20 209 0 240 20 209 0 241 20 209 0 242 20 209 0 247 20 209 0 249 20 209 0 250 20 209 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 9 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 20 213 0 4 20 217 0 243] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 20 229 0 141 20 229 0 216 20 229 0 217 20 229 0 218 20 229 0 253] 
#[0 9 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 62 0 8 0 121] 
#[1 9 66 0 8 9 149 0 23 9 66 0 121 20 233 0 158] 
#[1 9 149 0 23 20 237 0 158] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 20 241 0 200 20 241 0 203 20 241 0 204 20 241 0 205 20 241 0 213 20 241 0 227 20 241 0 228 20 241 0 229 20 241 0 230 20 241 0 231 20 241 0 232 20 241 0 233 20 241 0 234 20 241 0 237 20 241 0 238 20 241 0 240 20 241 0 241 20 241 0 242 20 241 0 247 20 241 0 249 20 241 0 250 20 241 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 20 245 0 200 20 245 0 203 20 245 0 204 20 245 0 205 20 245 0 213 20 245 0 227 20 245 0 228 20 245 0 229 20 245 0 230 20 245 0 231 20 245 0 232 20 245 0 233 20 245 0 234 20 245 0 237 20 245 0 238 20 245 0 240 20 245 0 241 20 245 0 242 20 245 0 247 20 245 0 249 20 245 0 250 20 245 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 9 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 20 249 0 5 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 17 105 0 142 17 105 0 154 17 105 0 155 17 105 0 156 8 85 1 69 8 89 1 70 20 253 1 169 17 113 1 170 17 117 1 171] 
#[0 21 1 0 4] 
#[1 5 33 0 74 21 5 1 35 5 49 1 225] 
#[0 9 74 0 8 0 121] 
#[0 9 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 189 0 124 12 193 0 141 21 9 1 208] 
#[0 21 13 0 8] 
#[0 9 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 30 0 1 0 38 0 5 7 205 0 67 0 23 0 73 7 237 0 82 2 165 0 87 2 169 0 92 2 173 0 113 3 33 1 51 7 245 1 137 3 33 1 144 3 33 1 153 3 33 1 173 3 33 1 179 3 33 1 191 21 17 1 195 3 29 1 196 3 33 1 197 3 33 1 200 3 33 1 202 3 33 1 203 3 33 1 204 3 33 1 205] 
#[1 9 86 0 5 7 17 0 61 21 21 0 63 2 149 0 72 21 25 0 73 7 25 0 79 7 169 0 82 2 165 0 87 21 29 0 89 7 37 0 92 7 41 0 115 21 33 0 209 0 65 0 210 21 37 1 153 21 57 1 168 21 41 1 179 21 45 1 206 21 49 1 209 21 53 1 210 21 57 1 216 21 61 1 217 21 65 1 218 21 69 1 219 21 73 1 220] 
#[0 9 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 9 98 0 5 21 77 0 23 9 98 0 121] 
#[0 21 81 0 5] 
#[1 9 102 0 5 21 85 0 121] 
#[0 9 106 0 5 0 121] 
#[0 9 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 9 13 0 78 21 89 1 56] 
#[1 21 93 0 8 9 13 0 78 21 97 1 56] 
#[0 21 101 0 4] 
#[0 21 105 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 21 109 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 21 113 0 3] 
#[0 2 170 0 8 0 22] 
#[1 9 122 0 8 21 117 0 22] 
#[0 21 121 0 8] 
#[0 21 125 0 2] 
#[0 9 126 0 4] 
#[0 9 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 3 81 0 4 21 129 1 119] 
#[0 9 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 3 229 0 61 2 137 0 62 2 141 0 63 7 205 0 67 2 149 0 72 3 237 0 79 7 169 0 82 2 165 0 87 0 65 0 89 2 169 0 92 2 173 0 113 2 5 0 115 21 133 0 209 0 65 0 210 21 137 0 213 21 141 1 4 21 145 1 18 21 149 1 32 21 153 1 144 21 157 1 153 21 161 1 168 21 165 1 173 21 169 1 179 21 173 1 205 13 105 1 225] 
#[0 9 138 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 142 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 146 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 150 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 154 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 158 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 162 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 170 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 21 177 0 5] 
#[1 0 97 0 2 0 19 0 4 9 174 0 5 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 2 133 0 61 2 137 0 62 2 141 0 63 1 225 0 65 1 229 0 66 7 205 0 67 0 141 0 69 1 233 0 70 2 149 0 72 17 189 0 73 1 173 0 75 1 237 0 77 2 157 0 79 1 241 0 81 7 133 0 82 2 165 0 87 0 65 0 89 2 169 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 2 173 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 21 181 0 200 21 181 0 203 21 181 0 204 21 181 0 205 21 181 0 209 0 65 0 210 21 181 0 213 21 181 0 227 21 181 0 228 21 181 0 229 21 181 0 230 21 181 0 231 21 181 0 232 21 181 0 233 21 181 0 234 21 181 0 237 21 181 0 238 21 181 0 240 21 181 0 241 21 181 0 242 21 181 0 247 21 181 0 249 21 181 0 250 21 181 0 254 21 181 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 21 181 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 21 181 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 21 181 1 144 21 181 1 153 21 181 1 168 21 181 1 173 21 181 1 177 21 181 1 178 21 181 1 179 21 181 1 205 3 73 1 225] 
#[0 9 178 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 182 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 186 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 190 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 9 194 0 4 0 22] 
#[0 21 185 0 8] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 21 189 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 21 189 1 129 21 189 1 130 3 149 1 131 3 149 1 133] 
#[1 5 29 0 4 5 33 0 74 0 189 0 124 21 193 0 141 7 5 1 34 5 45 1 35 5 49 1 225] 
#[1 7 89 0 2 7 93 0 26 0 189 0 124 21 197 0 141] 
#[1 0 142 0 2 0 142 0 6 1 15 0 8 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 83 0 142 0 86 0 142 0 132 0 142 0 133 0 142 1 224 0 142 1 225] 
#[0 21 205 0 8] 
#[0 9 198 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 202 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 206 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 9 210 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 9 214 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[1 0 189 0 124 17 157 0 141 17 161 1 118 17 165 1 180] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 2 133 0 61 2 137 0 62 0 141 0 69 1 173 0 75 2 157 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 21 0 196 18 21 0 197 18 25 1 4 0 253 1 5 18 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 21 1 14 18 29 1 18 0 253 1 19 18 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 18 33 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 3 73 1 225] 
#[0 7 70 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 78 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 7 102 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 7 17 0 61 7 25 0 79 0 189 0 124 21 209 0 141 18 37 1 209 18 41 1 210] 
#[0 7 74 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 7 82 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 7 98 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 21 213 0 3] 
#[0 21 217 0 8] 
#[0 21 221 0 4] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 21 225 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 9 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 21 229 1 6 16 57 1 7 0 6 1 225] 
#[1 3 89 0 11 21 233 1 100] 
#[1 5 29 0 4 5 33 0 74 21 237 1 34 5 45 1 35 5 49 1 225] 
#[1 3 89 0 11 0 189 0 124 21 241 0 141 21 245 1 100] 
#[1 5 29 0 4 5 33 0 74 0 189 0 124 21 249 0 141 21 253 1 34 5 45 1 35 5 49 1 225] 
#[0 22 1 0 61] 
#[1 3 77 0 2 8 21 0 4 8 25 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 8 29 0 141 4 149 0 216 4 149 0 217 4 149 0 218 19 33 0 224 19 33 0 225 3 121 1 69 3 125 1 70 3 129 1 100 18 169 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 18 169 1 129 18 169 1 130 3 149 1 131 3 149 1 133 8 41 1 225] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 22 5 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 22 5 1 129 22 5 1 130 3 149 1 131 3 149 1 133] 
#[1 9 222 0 4 9 222 0 5 9 222 0 8 9 222 0 121 13 209 0 122 22 9 1 135] 
#[1 22 13 0 95 22 17 0 105] 
#[0 9 226 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 22 21 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 22 25 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 9 230 0 5 9 230 0 8 9 230 0 121 13 209 0 122 22 29 1 135] 
#[0 9 234 0 5 0 8 0 121] 
#[0 9 238 0 5 0 8 0 121] 
#[0 9 242 0 5 0 8 0 121] 
#[0 9 246 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 22 33 0 3] 
#[0 9 250 0 5 0 8 0 121] 
#[0 9 254 0 5 0 8 0 121] 
#[0 10 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 10 6 0 7 0 121] 
#[0 10 10 0 14 0 121] 
#[0 10 14 0 14 0 121] 
#[0 22 37 0 19] 
#[0 22 41 0 3] 
#[0 10 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 22 45 0 19] 
#[0 10 22 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 22 49 0 7] 
#[0 10 26 0 5 0 121] 
#[0 10 30 0 8 0 78] 
#[0 10 34 0 5 0 121] 
#[0 22 53 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 22 57 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 22 61 0 2] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 22 65 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 22 69 0 4] 
#[0 22 73 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 22 77 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 22 81 0 3] 
#[0 22 85 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 22 89 1 6 16 57 1 7 0 6 1 225] 
#[0 10 38 0 5 0 121] 
#[0 10 42 0 78] 
#[0 10 46 0 5 0 121] 
#[0 10 50 0 5 0 121] 
#[0 10 54 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 22 93 0 5] 
#[0 10 58 0 5 0 121] 
#[0 10 62 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 10 66 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 4 81 0 4 4 85 0 6 22 97 0 7 4 137 0 120 10 9 0 121 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 14 173 0 224 14 173 0 225 22 101 0 226 8 41 1 225] 
#[0 10 70 0 7 0 121] 
#[0 22 105 0 7] 
#[0 10 74 0 8 0 121] 
#[0 10 78 0 8 0 121] 
#[0 22 109 0 8] 
#[0 10 82 0 3 0 5 0 7 0 121] 
#[1 10 86 0 3 10 86 0 5 10 86 0 7 10 86 0 121 13 209 0 122 22 113 1 135] 
#[1 10 90 0 3 10 90 0 5 10 90 0 7 9 149 0 23 10 90 0 121 22 117 0 158] 
#[1 10 94 0 3 10 94 0 5 10 94 0 7 9 149 0 23 22 121 0 43 10 94 0 121 13 209 0 122 22 125 0 158 22 129 1 135] 
#[0 10 98 0 3 0 5 0 7 0 121] 
#[0 10 102 0 3 0 5 0 7 0 121] 
#[1 10 106 0 3 10 106 0 5 10 106 0 7 9 149 0 23 10 106 0 121 22 133 0 158] 
#[0 22 137 0 4] 
#[0 22 141 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 22 145 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 22 149 0 3] 
#[0 10 110 0 5] 
#[0 22 153 0 5] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 22 157 0 255 4 169 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 22 161 0 2] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 22 165 0 255 4 169 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 22 169 0 3] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 22 177 0 224 22 177 0 225 22 177 1 3 22 177 1 17 8 41 1 225] 
#[1 0 6 0 2 0 6 0 4 10 114 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 253 0 207 0 57 0 208 6 253 0 209 0 65 0 210 0 6 1 225] 
#[0 22 181 0 5] 
#[0 10 118 0 5] 
#[0 10 122 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 22 185 0 3] 
#[0 22 189 0 2] 
#[0 22 193 0 2] 
#[1 6 145 0 2 3 89 0 11 6 157 1 100 22 197 1 145] 
#[0 22 201 0 4] 
#[1 22 205 0 2 22 209 1 161] 
#[1 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 22 213 0 142 22 213 0 154 22 213 0 155 22 213 0 156 8 85 1 69 8 89 1 70 22 217 1 146 22 221 1 147 19 213 1 225] 
#[1 8 45 0 2 10 126 0 8 3 89 0 11 9 149 0 23 22 225 0 43 13 209 0 122 22 229 0 158 8 93 1 100 22 233 1 135 22 237 1 136 22 241 1 164] 
#[1 9 89 0 6 22 245 0 64 22 249 0 104 8 65 0 125 8 85 0 128 8 89 0 129 22 253 0 142 22 253 0 154 22 253 0 155 22 253 0 156 8 85 1 69 8 89 1 70 23 1 1 146 23 5 1 147 19 213 1 225] 
#[0 10 130 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 10 134 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 15 105 0 80 15 109 0 103] 
#[0 10 138 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 10 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 224 1 225 1 226] 
#[1 0 189 0 124 3 117 0 141 23 9 1 116 3 173 1 117 3 177 1 118 23 9 1 156] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 23 13 1 6 16 57 1 7 0 6 1 225] 
#[0 23 17 0 4] 
#[0 23 21 0 3] 
#[0 23 25 0 4] 
#[0 10 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 29 0 196 23 29 0 197 0 253 1 5 23 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 29 1 14 0 253 1 19 23 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 10 150 0 3 0 121] 
#[0 10 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 23 33 1 106 23 33 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 23 33 1 129 23 33 1 130 3 149 1 131 3 149 1 133] 
#[0 10 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 23 37 0 3 23 41 0 121] 
#[0 23 45 0 136] 
#[0 10 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 10 166 0 5 0 121] 
#[0 10 170 0 5 0 121] 
#[1 6 125 0 121 10 174 0 134 10 174 0 135] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 49 0 196 23 49 0 197 23 49 0 199 0 253 1 5 23 49 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 49 1 14 0 253 1 19 23 49 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 10 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 10 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 10 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 10 190 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 10 194 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 23 53 0 9] 
#[1 0 97 0 2 0 14 0 4 0 138 0 5 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 193 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 23 65 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 65 0 196 23 65 0 197 0 253 1 5 23 65 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 65 1 14 0 253 1 19 23 65 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 23 65 1 93 1 205 1 94 23 69 1 95 1 209 1 225] 
#[0 10 198 0 4 0 9 0 14 0 23 0 137] 
#[0 23 73 0 14] 
#[1 8 234 0 14 23 77 1 97] 
#[0 23 81 0 14] 
#[0 10 202 0 4 0 9 0 14 0 137] 
#[1 6 186 0 4 23 85 0 128 0 15 0 136 23 85 1 69 23 97 1 72 23 97 1 73 1 197 1 74 23 97 1 76 23 97 1 89 1 205 1 94 23 101 1 99] 
#[0 10 206 0 4 0 9 0 14 0 137] 
#[0 10 210 0 4 0 136 0 138] 
#[1 4 193 0 120 23 105 0 149] 
#[0 10 214 0 4 0 8 0 19] 
#[0 10 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 226] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 23 109 1 6 16 57 1 7 0 6 1 225] 
#[0 23 113 0 5] 
#[1 10 222 0 4 10 222 0 8 10 222 0 19 13 209 0 122 23 117 1 135] 
#[1 23 121 0 3 6 125 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 23 125 0 200 23 125 0 203 23 125 0 204 23 125 0 205 23 125 0 213 23 125 0 227 23 125 0 228 23 125 0 229 23 125 0 230 23 125 0 231 23 125 0 232 23 125 0 233 23 125 0 234 23 125 0 237 23 125 0 238 23 125 0 240 23 125 0 241 23 125 0 242 23 125 0 247 23 125 0 249 23 125 0 250 23 125 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 23 129 0 3 6 125 0 121] 
#[1 0 97 0 2 23 133 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 137 0 196 23 137 0 197 23 137 0 199 0 253 1 5 23 137 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 137 1 14 0 253 1 19 23 137 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 23 141 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 145 0 196 23 145 0 197 23 145 0 199 0 253 1 5 23 145 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 145 1 14 0 253 1 19 23 145 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 149 0 196 23 149 0 197 23 149 0 199 0 253 1 5 23 149 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 149 1 14 0 253 1 19 23 149 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 153 0 196 23 153 0 197 0 253 1 5 23 153 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 153 1 14 0 253 1 19 23 153 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 23 157 0 3 6 125 0 121] 
#[0 23 161 0 3] 
#[1 0 97 0 2 23 165 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 169 0 196 23 169 0 197 23 169 0 199 0 253 1 5 23 169 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 169 1 14 0 253 1 19 23 169 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 23 173 0 8 6 125 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 23 177 0 200 23 177 0 203 23 177 0 204 23 177 0 205 23 177 0 213 23 177 0 227 23 177 0 228 23 177 0 229 23 177 0 230 23 177 0 231 23 177 0 232 23 177 0 233 23 177 0 234 23 177 0 237 23 177 0 238 23 177 0 240 23 177 0 241 23 177 0 242 23 177 0 247 23 177 0 249 23 177 0 250 23 177 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 23 181 0 3 6 125 0 121] 
#[1 0 97 0 2 23 185 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 189 0 196 23 189 0 197 23 189 0 199 0 253 1 5 23 189 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 189 1 14 0 253 1 19 23 189 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 23 193 0 3 6 125 0 121] 
#[0 23 197 0 3] 
#[0 9 34 0 96] 
#[0 9 38 0 96] 
#[0 23 201 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 205 0 196 23 205 0 197 0 253 1 5 23 205 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 205 1 14 0 253 1 19 23 205 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 23 209 0 196 23 209 0 197 0 253 1 5 23 209 1 8 1 125 1 9 1 129 1 10 1 133 1 13 23 209 1 14 0 253 1 19 23 209 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 10 226 0 1 10 226 0 2 10 226 0 4 10 226 0 5 10 226 0 6 10 226 0 8 10 226 0 35 10 226 0 36 10 226 0 37 10 226 0 38 10 226 0 39 10 226 0 52 10 226 0 56 10 226 0 57 10 226 0 58 10 226 0 59 10 226 0 61 10 226 0 62 10 226 0 63 10 226 0 65 10 226 0 66 10 226 0 67 10 226 0 68 10 226 0 69 10 226 0 70 23 213 0 71 10 226 0 72 10 226 0 73 10 226 0 75 10 226 0 77 10 226 0 79 10 226 0 81 10 226 0 82 10 226 0 87 10 226 0 89 10 226 0 92 10 226 0 93 10 226 0 94 10 226 0 102 10 226 0 106 10 226 0 107 10 226 0 109 10 226 0 110 10 226 0 111 10 226 0 112 10 226 0 113 10 226 0 114 10 226 0 115 10 226 0 116 10 226 0 117 10 226 0 118 10 226 0 119 10 226 0 124 10 226 0 126 10 226 0 128 10 226 0 129 10 226 0 130 10 226 0 132 10 226 0 133 10 226 0 136 10 226 1 225 10 226 1 226] 
#[1 23 217 0 5 23 221 0 59 23 225 0 68 23 229 0 244 23 233 0 245 23 237 0 246] 
#[0 10 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 10 234 0 3] 
#[0 10 238 0 3] 
#[0 23 241 0 3] 
#[0 10 242 0 8 0 121] 
#[0 10 246 0 8 0 121] 
#[0 10 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 10 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 11 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 23 245 0 5] 
#[1 11 6 0 5 8 53 0 6 23 249 0 64 24 5 0 97 24 5 0 98 24 5 0 99 24 5 0 100 23 253 0 104 8 65 0 125 8 85 0 128 8 89 0 129 24 1 0 142 24 1 0 154 24 1 0 155 24 1 0 156 8 85 1 69 8 89 1 70 24 5 1 139 24 21 1 142 24 13 1 211 24 17 1 212 24 21 1 213 24 21 1 214 24 21 1 215] 
#[0 24 33 0 4] 
#[0 11 10 0 8 0 121] 
#[0 11 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 24 37 0 5] 
#[1 0 50 0 4 0 50 0 6 7 13 0 72 1 19 0 124 12 193 0 141 12 197 1 207 12 201 1 208 0 50 1 225] 
#[1 7 17 0 61 21 21 0 63 2 149 0 72 7 25 0 79 7 169 0 82 2 165 0 87 21 29 0 89 7 37 0 92 7 41 0 115 24 41 0 209 0 65 0 210 24 45 1 153 24 65 1 168 24 49 1 179 24 53 1 206 24 57 1 209 24 61 1 210 24 65 1 216 24 69 1 217] 
#[1 0 54 0 4 0 54 0 6 1 23 0 124 12 193 0 141 12 209 1 207 12 201 1 208 0 54 1 225] 
#[0 11 18 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 22 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 26 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 30 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 34 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 38 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 42 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 46 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 24 73 0 5] 
#[1 11 50 0 5 7 17 0 61 21 21 0 63 2 149 0 72 21 25 0 73 7 25 0 79 7 169 0 82 2 165 0 87 21 29 0 89 7 37 0 92 7 41 0 115 21 33 0 209 0 65 0 210 21 37 1 153 21 57 1 168 21 41 1 179 21 45 1 206 21 49 1 209 21 53 1 210 21 57 1 216 21 61 1 217 24 77 1 220] 
#[0 11 54 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 24 85 0 196 24 85 0 197 0 253 1 5 24 85 1 8 1 125 1 9 1 129 1 10 1 133 1 13 24 85 1 14 0 253 1 19 24 85 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 24 85 1 172 1 209 1 225] 
#[0 11 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 11 62 0 5 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 17 105 0 142 17 105 0 154 17 105 0 155 17 105 0 156 8 85 1 69 8 89 1 70 24 89 1 171] 
#[0 24 93 0 8] 
#[0 11 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 24 97 0 8] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 101 1 6 16 57 1 7 0 6 1 225] 
#[0 24 105 0 4] 
#[0 24 109 0 3] 
#[0 24 113 0 4] 
#[1 0 189 0 124 24 117 0 141] 
#[0 11 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 24 121 0 128 1 69] 
#[0 11 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 11 78 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 82 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 86 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 90 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 94 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 98 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 102 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 106 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 110 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 118 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 11 126 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225] 
#[0 11 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 24 125 0 8] 
#[1 5 29 0 4 3 89 0 11 5 33 0 74 12 173 1 34 24 129 1 35 17 65 1 100 5 49 1 225] 
#[1 24 133 0 2 3 89 0 11 8 93 1 100 17 81 1 136] 
#[0 11 134 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113 1 226] 
#[0 11 138 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 21 201 0 8] 
#[1 9 22 0 4 9 222 0 8 13 209 0 122 24 137 1 135] 
#[0 11 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 141 1 6 16 57 1 7 0 6 1 225] 
#[0 24 145 0 3] 
#[0 24 149 0 5] 
#[1 5 29 0 4 5 33 0 74 24 153 1 34 5 45 1 35 5 49 1 225] 
#[0 11 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 3 89 0 11 24 157 1 100] 
#[1 5 29 0 4 5 33 0 74 24 161 1 34 5 45 1 35 5 49 1 225] 
#[1 5 29 0 4 5 33 0 74 24 165 1 34 5 45 1 35 5 49 1 225] 
#[0 11 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 5 29 0 4 5 33 0 74 0 189 0 124 24 169 0 141 24 173 1 34 5 45 1 35 5 49 1 225] 
#[0 11 154 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 11 158 0 4 0 5 0 8 0 121] 
#[0 24 177 0 7] 
#[0 24 181 0 7] 
#[1 11 162 0 5 11 162 0 8 11 162 0 121 13 209 0 122 24 185 1 135] 
#[0 24 189 0 3] 
#[0 11 166 0 5 0 8 0 121] 
#[1 11 170 0 4 11 170 0 5 11 170 0 8 11 170 0 121 13 209 0 122 24 193 1 135] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 24 197 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 24 197 1 129 24 197 1 130 3 149 1 131 3 149 1 133] 
#[0 24 201 0 19] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 24 205 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 24 205 1 129 24 205 1 130 3 149 1 131 3 149 1 133] 
#[0 11 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 24 209 0 4] 
#[0 24 213 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 24 217 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 24 221 0 3] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 225 1 6 16 57 1 7 0 6 1 225] 
#[0 24 229 0 4] 
#[0 24 233 0 3] 
#[0 24 237 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 241 1 6 16 57 1 7 0 6 1 225] 
#[0 24 245 0 5] 
#[0 11 178 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 11 182 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 24 249 0 7] 
#[0 11 186 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 11 190 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 11 194 0 3 0 5 0 7 0 121] 
#[0 11 198 0 3 0 5 0 7 0 121] 
#[1 11 202 0 3 11 202 0 5 11 202 0 7 11 202 0 121 13 209 0 122 24 253 1 135] 
#[0 11 206 0 3 0 5 0 7 0 121] 
#[1 11 210 0 3 11 210 0 5 11 210 0 7 9 149 0 23 11 210 0 121 25 1 0 158] 
#[0 11 214 0 3 0 5 0 7 0 121] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 19 125 1 6 16 57 1 7 25 5 1 30 0 6 1 225] 
#[0 25 9 0 4] 
#[0 25 13 0 3] 
#[0 25 17 0 4] 
#[0 11 218 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 226] 
#[0 25 21 0 3] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 25 25 0 255 4 169 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[0 25 29 0 3] 
#[0 25 33 0 4] 
#[0 11 222 0 3] 
#[0 25 37 0 3] 
#[0 11 226 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 25 41 0 4] 
#[0 25 45 0 3] 
#[1 4 81 0 4 4 85 0 6 0 189 0 124 25 49 0 141 25 53 0 216 25 53 0 217 25 53 0 218 25 57 0 224 25 57 0 225 25 57 1 3 25 57 1 17 25 61 1 140 25 65 1 148 8 41 1 225] 
#[1 25 69 0 4 25 73 0 8] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 77 1 6 16 57 1 7 0 6 1 225] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 25 81 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 25 85 0 4 25 89 0 8] 
#[1 8 45 0 2 10 126 0 8 3 89 0 11 9 149 0 23 25 93 0 43 13 209 0 122 22 229 0 158 8 93 1 100 25 97 1 135 25 101 1 136 25 105 1 164] 
#[0 11 230 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 11 234 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 10 126 0 8 9 149 0 23 13 209 0 122 22 229 0 158 25 109 1 135 25 113 1 164] 
#[0 11 238 0 8] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 25 117 1 164] 
#[1 25 121 0 4 25 125 0 8] 
#[0 25 129 0 8] 
#[1 22 205 0 2 25 133 1 161] 
#[1 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 25 137 0 142 25 137 0 154 25 137 0 155 25 137 0 156 8 85 1 69 8 89 1 70 25 141 1 146 25 145 1 147 19 213 1 225] 
#[1 8 45 0 2 10 126 0 8 3 89 0 11 9 149 0 23 25 149 0 43 13 209 0 122 22 229 0 158 8 93 1 100 25 153 1 135 25 157 1 136 25 161 1 164] 
#[0 11 242 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 11 246 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 11 250 0 4 0 121] 
#[0 25 165 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 169 1 6 16 57 1 7 25 173 1 21 0 6 1 225] 
#[0 25 177 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 181 1 6 16 57 1 7 0 6 1 225] 
#[0 11 254 0 3 0 121] 
#[0 12 2 0 14 0 121] 
#[0 12 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 19 249 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 19 253 0 196 19 253 0 197 0 253 1 5 19 253 1 8 1 125 1 9 1 129 1 10 1 133 1 13 19 253 1 14 0 253 1 19 19 253 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 25 185 0 9] 
#[1 6 125 0 121 12 10 0 134 12 10 0 135] 
#[1 12 14 0 14 11 237 0 137 25 189 1 77 25 189 1 78 25 189 1 79 11 253 1 80 12 1 1 81 25 193 1 98] 
#[0 12 18 0 5] 
#[0 12 22 0 5] 
#[1 0 138 0 5 25 197 1 95] 
#[0 25 201 0 5] 
#[0 12 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 224 1 225 1 226] 
#[0 25 205 0 14] 
#[0 12 30 0 4 0 136 0 138] 
#[0 12 34 0 4 0 9 0 14 0 137] 
#[0 12 38 0 4 0 9 0 14 0 137] 
#[0 12 42 0 4 0 9 0 14 0 137] 
#[0 12 46 0 4 0 9 0 14 0 137] 
#[0 25 209 0 4] 
#[1 0 22 0 5 25 213 1 94] 
#[0 25 217 0 5] 
#[0 12 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 12 54 0 4 0 8 0 19] 
#[0 25 221 0 8] 
#[0 12 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 25 225 0 200 25 225 0 203 25 225 0 204 25 225 0 205 25 225 0 213 25 225 0 227 25 225 0 228 25 225 0 229 25 225 0 230 25 225 0 231 25 225 0 232 25 225 0 233 25 225 0 234 25 225 0 237 25 225 0 238 25 225 0 240 25 225 0 241 25 225 0 242 25 225 0 247 25 225 0 249 25 225 0 250 25 225 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 25 229 0 200 25 229 0 203 25 229 0 204 25 229 0 205 25 229 0 213 25 229 0 227 25 229 0 228 25 229 0 229 25 229 0 230 25 229 0 231 25 229 0 232 25 229 0 233 25 229 0 234 25 229 0 237 25 229 0 238 25 229 0 240 25 229 0 241 25 229 0 242 25 229 0 247 25 229 0 249 25 229 0 250 25 229 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 25 233 0 3 6 125 0 121] 
#[1 0 97 0 2 25 237 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 25 241 0 196 25 241 0 197 25 241 0 199 0 253 1 5 25 241 1 8 1 125 1 9 1 129 1 10 1 133 1 13 25 241 1 14 0 253 1 19 25 241 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 25 245 0 8 6 125 0 121] 
#[1 25 249 0 3 6 125 0 121] 
#[0 25 253 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 1 0 200 26 1 0 203 26 1 0 204 26 1 0 205 26 1 0 213 26 1 0 227 26 1 0 228 26 1 0 229 26 1 0 230 26 1 0 231 26 1 0 232 26 1 0 233 26 1 0 234 26 1 0 237 26 1 0 238 26 1 0 240 26 1 0 241 26 1 0 242 26 1 0 247 26 1 0 249 26 1 0 250 26 1 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 5 0 200 26 5 0 203 26 5 0 204 26 5 0 205 26 5 0 213 26 5 0 227 26 5 0 228 26 5 0 229 26 5 0 230 26 5 0 231 26 5 0 232 26 5 0 233 26 5 0 234 26 5 0 237 26 5 0 238 26 5 0 240 26 5 0 241 26 5 0 242 26 5 0 247 26 5 0 249 26 5 0 250 26 5 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 9 0 200 26 9 0 203 26 9 0 204 26 9 0 205 26 9 0 213 26 9 0 227 26 9 0 228 26 9 0 229 26 9 0 230 26 9 0 231 26 9 0 232 26 9 0 233 26 9 0 234 26 9 0 237 26 9 0 238 26 9 0 240 26 9 0 241 26 9 0 242 26 9 0 247 26 9 0 249 26 9 0 250 26 9 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 26 13 0 3 6 125 0 121] 
#[1 0 97 0 2 26 17 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 26 21 0 196 26 21 0 197 26 21 0 199 0 253 1 5 26 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 26 21 1 14 0 253 1 19 26 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 12 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 25 0 200 26 25 0 203 26 25 0 204 26 25 0 205 26 25 0 213 26 25 0 227 26 25 0 228 26 25 0 229 26 25 0 230 26 25 0 231 26 25 0 232 26 25 0 233 26 25 0 234 26 25 0 237 26 25 0 238 26 25 0 240 26 25 0 241 26 25 0 242 26 25 0 247 26 25 0 249 26 25 0 250 26 25 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 29 0 200 26 29 0 203 26 29 0 204 26 29 0 205 26 29 0 213 26 29 0 227 26 29 0 228 26 29 0 229 26 29 0 230 26 29 0 231 26 29 0 232 26 29 0 233 26 29 0 234 26 29 0 237 26 29 0 238 26 29 0 240 26 29 0 241 26 29 0 242 26 29 0 247 26 29 0 249 26 29 0 250 26 29 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 26 33 0 3 6 125 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 37 0 200 26 37 0 203 26 37 0 204 26 37 0 205 26 37 0 213 26 37 0 227 26 37 0 228 26 37 0 229 26 37 0 230 26 37 0 231 26 37 0 232 26 37 0 233 26 37 0 234 26 37 0 237 26 37 0 238 26 37 0 240 26 37 0 241 26 37 0 242 26 37 0 247 26 37 0 249 26 37 0 250 26 37 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 41 0 200 26 41 0 203 26 41 0 204 26 41 0 205 26 41 0 213 26 41 0 227 26 41 0 228 26 41 0 229 26 41 0 230 26 41 0 231 26 41 0 232 26 41 0 233 26 41 0 234 26 41 0 237 26 41 0 238 26 41 0 240 26 41 0 241 26 41 0 242 26 41 0 247 26 41 0 249 26 41 0 250 26 41 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 26 45 0 196 26 45 0 197 0 253 1 5 26 45 1 8 1 125 1 9 1 129 1 10 1 133 1 13 26 45 1 14 0 253 1 19 26 45 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 26 49 0 3] 
#[0 26 53 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 57 0 200 26 57 0 203 26 57 0 204 26 57 0 205 26 57 0 213 26 57 0 227 26 57 0 228 26 57 0 229 26 57 0 230 26 57 0 231 26 57 0 232 26 57 0 233 26 57 0 234 26 57 0 237 26 57 0 238 26 57 0 240 26 57 0 241 26 57 0 242 26 57 0 247 26 57 0 249 26 57 0 250 26 57 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 12 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 26 61 0 196 26 61 0 197 26 61 0 199 0 253 1 5 26 61 1 8 1 125 1 9 1 129 1 10 1 133 1 13 26 61 1 14 0 253 1 19 26 61 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 26 65 0 122] 
#[1 26 69 0 5 23 221 0 59 23 225 0 68 26 73 0 245 26 77 0 246] 
#[0 12 70 0 5 0 59 0 68] 
#[1 26 81 0 5 23 221 0 59 26 85 0 244 23 233 0 245] 
#[1 1 213 0 4 26 89 0 205] 
#[0 12 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 26 93 0 2] 
#[1 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 26 97 0 142 26 97 0 154 26 97 0 155 26 97 0 156 8 85 1 69 8 89 1 70] 
#[1 8 45 0 2 26 101 0 8 3 89 0 11 13 209 0 122 8 93 1 100 26 105 1 135 26 109 1 136] 
#[1 9 89 0 6 26 113 0 64 26 117 0 104 8 65 0 125 8 85 0 128 8 89 0 129 26 121 0 142 26 121 0 154 26 121 0 155 26 121 0 156 8 85 1 69 8 89 1 70] 
#[0 12 78 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 26 125 0 5] 
#[1 12 82 0 5 8 53 0 6 23 249 0 64 24 5 0 97 24 5 0 98 24 5 0 99 24 5 0 100 23 253 0 104 8 65 0 125 8 85 0 128 8 89 0 129 24 1 0 142 24 1 0 154 24 1 0 155 24 1 0 156 8 85 1 69 8 89 1 70 24 5 1 139 26 129 1 142 26 129 1 213 26 129 1 214 26 129 1 215] 
#[0 12 86 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 12 90 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 12 94 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 11 6 0 5 8 53 0 6 23 249 0 64 24 5 0 97 24 5 0 98 24 5 0 99 24 5 0 100 23 253 0 104 8 65 0 125 8 85 0 128 8 89 0 129 24 1 0 142 24 1 0 154 24 1 0 155 24 1 0 156 8 85 1 69 8 89 1 70 24 5 1 139 24 21 1 142 26 133 1 211 24 17 1 212 24 21 1 213 24 21 1 214 24 21 1 215] 
#[0 12 98 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 12 102 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 106 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 110 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 114 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 118 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 122 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 126 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 130 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 12 138 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 142 0 5 0 121] 
#[0 12 146 0 5 0 121] 
#[0 12 150 0 5 0 121] 
#[0 12 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 12 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 26 137 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 169 1 6 16 57 1 7 26 141 1 21 0 6 1 225] 
#[0 26 145 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 149 1 6 16 57 1 7 0 6 1 225] 
#[0 7 170 0 8 0 22] 
#[0 26 153 0 3] 
#[0 12 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 26 157 0 4] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 26 161 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 10 214 0 4 11 158 0 8] 
#[0 26 165 0 5] 
#[1 10 222 0 4 11 170 0 8 13 209 0 122 26 169 1 135] 
#[1 12 166 0 1 1 27 0 2 12 166 0 4 12 166 0 5 1 27 0 6 1 27 0 8 12 50 0 9 12 50 0 10 12 50 0 11 12 50 0 12 12 50 0 13 12 50 0 14 12 50 0 15 12 50 0 16 12 50 0 17 12 50 0 18 12 50 0 20 12 50 0 21 12 50 0 22 12 50 0 23 12 50 0 24 12 50 0 25 12 50 0 26 12 50 0 27 12 50 0 28 12 50 0 29 12 50 0 30 12 50 0 31 12 50 0 32 12 50 0 33 12 50 0 34 1 27 0 35 1 27 0 36 1 27 0 37 1 27 0 38 12 166 0 39 12 50 0 40 12 50 0 41 12 50 0 42 12 50 0 43 12 50 0 44 12 50 0 45 12 50 0 46 12 50 0 47 12 50 0 48 12 50 0 49 12 50 0 50 12 50 0 51 12 166 0 52 12 50 0 53 12 50 0 54 12 166 0 56 12 166 0 57 12 166 0 58 12 166 0 61 12 166 0 62 12 166 0 63 12 166 0 65 12 166 0 66 12 166 0 67 12 166 0 69 12 166 0 70 12 166 0 72 12 166 0 73 12 166 0 75 12 166 0 77 12 166 0 79 12 166 0 81 12 166 0 82 12 50 0 83 12 50 0 86 12 166 0 87 12 166 0 89 12 166 0 92 12 166 0 93 12 166 0 94 12 166 0 102 12 166 0 106 12 166 0 107 12 166 0 109 12 166 0 110 12 166 0 111 12 166 0 112 12 166 0 113 12 166 0 114 12 166 0 115 12 166 0 116 12 166 0 117 12 166 0 118 12 166 0 119 12 50 0 121 12 166 0 124 12 166 0 126 12 166 0 128 12 166 0 129 12 166 0 130 1 27 0 132 1 27 0 133 12 166 0 136 12 50 1 224 1 27 1 225 12 166 1 226] 
#[0 12 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 5 29 0 4 5 33 0 74 26 173 1 34 5 45 1 35 5 49 1 225] 
#[0 12 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 12 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 5 29 0 4 5 33 0 74 26 177 1 34 5 45 1 35 5 49 1 225] 
#[0 12 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 13 209 0 122 26 181 1 135] 
#[1 13 209 0 122 26 185 1 135] 
#[0 12 186 0 5 0 8 0 121] 
#[1 12 190 0 5 12 190 0 8 12 190 0 121 13 209 0 122 26 189 1 135] 
#[0 12 194 0 4 0 5 0 8 0 121] 
#[0 12 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 3 77 0 2 3 81 0 4 3 85 0 6 3 89 0 11 3 93 0 84 3 97 0 88 3 101 0 93 3 105 0 109 3 109 0 114 3 113 0 116 0 189 0 124 3 121 0 128 3 125 0 129 3 117 0 141 3 121 1 69 3 125 1 70 3 129 1 100 26 193 1 107 3 137 1 108 3 141 1 109 3 141 1 110 3 149 1 111 3 149 1 112 3 149 1 113 3 149 1 114 3 149 1 115 3 149 1 116 3 173 1 117 3 177 1 118 3 149 1 119 3 149 1 123 3 149 1 124 3 137 1 127 3 141 1 128 26 193 1 129 26 193 1 130 3 149 1 131 3 149 1 133] 
#[0 12 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 19 125 1 6 16 57 1 7 26 197 1 30 0 6 1 225] 
#[0 26 201 0 4] 
#[0 26 205 0 3] 
#[0 26 209 0 4] 
#[0 26 213 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 169 1 6 16 57 1 7 26 217 1 21 0 6 1 225] 
#[0 26 221 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 225 1 6 16 57 1 7 0 6 1 225] 
#[0 26 229 0 5] 
#[0 12 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 12 206 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 12 210 0 3 0 5 0 7 0 121] 
#[0 12 214 0 3 0 5 0 7 0 121] 
#[0 26 233 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 237 1 6 16 57 1 7 26 241 1 26 0 6 1 225] 
#[0 26 245 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 19 125 1 6 16 57 1 7 26 249 1 30 0 6 1 225] 
#[0 26 253 0 4] 
#[0 27 1 0 3] 
#[0 27 5 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 9 1 6 16 57 1 7 0 6 1 225] 
#[0 27 13 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 17 1 6 16 57 1 7 0 6 1 225] 
#[1 13 209 0 122 27 21 1 135] 
#[1 3 98 0 3 9 149 0 23 12 218 0 122 9 201 0 158] 
#[1 3 102 0 3 9 149 0 23 12 222 0 122 9 209 0 158] 
#[0 27 25 0 3] 
#[1 13 209 0 122 27 29 1 135] 
#[0 27 33 0 3] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 37 1 6 16 57 1 7 0 6 1 225] 
#[0 12 226 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 27 41 0 5] 
#[0 27 45 0 3] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 49 1 6 16 57 1 7 0 6 1 225] 
#[0 12 230 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 10 126 0 8 9 149 0 23 13 209 0 122 22 229 0 158 27 53 1 135 27 57 1 164] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 27 61 1 164] 
#[1 27 65 0 4 27 69 0 8] 
#[0 27 73 0 8] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 27 77 1 164] 
#[0 27 81 0 8] 
#[0 27 85 0 8] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 89 1 6 16 57 1 7 0 6 1 225] 
#[0 12 234 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 12 238 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 27 93 0 4 27 97 0 8] 
#[1 8 45 0 2 10 126 0 8 3 89 0 11 9 149 0 23 27 101 0 43 13 209 0 122 22 229 0 158 8 93 1 100 27 105 1 135 27 109 1 136 27 113 1 164] 
#[0 12 242 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 12 246 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 10 126 0 8 9 149 0 23 13 209 0 122 22 229 0 158 27 117 1 135 27 121 1 164] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 27 125 1 164] 
#[1 27 129 0 4 27 133 0 8] 
#[0 27 137 0 8] 
#[0 12 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 12 254 0 5] 
#[0 27 141 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 169 1 6 16 57 1 7 27 145 1 21 0 6 1 225] 
#[0 27 149 0 5] 
#[1 12 14 0 14 27 153 1 98] 
#[1 12 14 0 14 27 157 1 98] 
#[0 27 161 0 14] 
#[0 27 165 0 5] 
#[0 13 2 0 4 0 136 0 138] 
#[0 13 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 224 1 225 1 226] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 27 169 0 196 27 169 0 197 0 253 1 5 27 169 1 8 1 125 1 9 1 129 1 10 1 133 1 13 27 169 1 14 0 253 1 19 27 169 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 27 173 0 5] 
#[0 13 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 13 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 177 0 200 27 177 0 203 27 177 0 204 27 177 0 205 27 177 0 213 27 177 0 227 27 177 0 228 27 177 0 229 27 177 0 230 27 177 0 231 27 177 0 232 27 177 0 233 27 177 0 234 27 177 0 237 27 177 0 238 27 177 0 240 27 177 0 241 27 177 0 242 27 177 0 247 27 177 0 249 27 177 0 250 27 177 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 181 0 200 27 181 0 203 27 181 0 204 27 181 0 205 27 181 0 213 27 181 0 227 27 181 0 228 27 181 0 229 27 181 0 230 27 181 0 231 27 181 0 232 27 181 0 233 27 181 0 234 27 181 0 237 27 181 0 238 27 181 0 240 27 181 0 241 27 181 0 242 27 181 0 247 27 181 0 249 27 181 0 250 27 181 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 27 185 0 3 6 125 0 121] 
#[1 0 97 0 2 27 189 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 27 193 0 196 27 193 0 197 27 193 0 199 0 253 1 5 27 193 1 8 1 125 1 9 1 129 1 10 1 133 1 13 27 193 1 14 0 253 1 19 27 193 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 197 0 200 27 197 0 203 27 197 0 204 27 197 0 205 27 197 0 213 27 197 0 227 27 197 0 228 27 197 0 229 27 197 0 230 27 197 0 231 27 197 0 232 27 197 0 233 27 197 0 234 27 197 0 237 27 197 0 238 27 197 0 240 27 197 0 241 27 197 0 242 27 197 0 247 27 197 0 249 27 197 0 250 27 197 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 201 0 200 27 201 0 203 27 201 0 204 27 201 0 205 27 201 0 213 27 201 0 227 27 201 0 228 27 201 0 229 27 201 0 230 27 201 0 231 27 201 0 232 27 201 0 233 27 201 0 234 27 201 0 237 27 201 0 238 27 201 0 240 27 201 0 241 27 201 0 242 27 201 0 247 27 201 0 249 27 201 0 250 27 201 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 13 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 205 0 200 27 205 0 203 27 205 0 204 27 205 0 205 27 205 0 213 27 205 0 227 27 205 0 228 27 205 0 229 27 205 0 230 27 205 0 231 27 205 0 232 27 205 0 233 27 205 0 234 27 205 0 237 27 205 0 238 27 205 0 240 27 205 0 241 27 205 0 242 27 205 0 247 27 205 0 249 27 205 0 250 27 205 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 209 0 200 27 209 0 203 27 209 0 204 27 209 0 205 27 209 0 213 27 209 0 227 27 209 0 228 27 209 0 229 27 209 0 230 27 209 0 231 27 209 0 232 27 209 0 233 27 209 0 234 27 209 0 237 27 209 0 238 27 209 0 240 27 209 0 241 27 209 0 242 27 209 0 247 27 209 0 249 27 209 0 250 27 209 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 27 213 0 3 6 125 0 121] 
#[0 13 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 217 0 200 27 217 0 203 27 217 0 204 27 217 0 205 27 217 0 213 27 217 0 227 27 217 0 228 27 217 0 229 27 217 0 230 27 217 0 231 27 217 0 232 27 217 0 233 27 217 0 234 27 217 0 237 27 217 0 238 27 217 0 240 27 217 0 241 27 217 0 242 27 217 0 247 27 217 0 249 27 217 0 250 27 217 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 13 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 27 221 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 225 0 200 27 225 0 203 27 225 0 204 27 225 0 205 27 225 0 213 27 225 0 227 27 225 0 228 27 225 0 229 27 225 0 230 27 225 0 231 27 225 0 232 27 225 0 233 27 225 0 234 27 225 0 237 27 225 0 238 27 225 0 240 27 225 0 241 27 225 0 242 27 225 0 247 27 225 0 249 27 225 0 250 27 225 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 229 0 200 27 229 0 203 27 229 0 204 27 229 0 205 27 229 0 213 27 229 0 227 27 229 0 228 27 229 0 229 27 229 0 230 27 229 0 231 27 229 0 232 27 229 0 233 27 229 0 234 27 229 0 237 27 229 0 238 27 229 0 240 27 229 0 241 27 229 0 242 27 229 0 247 27 229 0 249 27 229 0 250 27 229 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 13 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 6 125 0 121 27 233 0 122] 
#[1 0 6 0 2 0 6 0 4 13 58 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 58 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 27 237 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 0 6 1 225] 
#[0 13 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 66 0 5 0 59 0 68] 
#[1 27 241 0 5 23 221 0 59 27 245 0 244 23 233 0 245] 
#[0 13 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 27 249 0 5 23 221 0 59 26 73 0 245] 
#[0 13 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 27 253 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 8 45 0 2 28 1 0 8 3 89 0 11 13 209 0 122 8 93 1 100 28 5 1 135 28 9 1 136] 
#[0 13 78 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 28 13 0 8] 
#[0 28 17 0 8] 
#[0 28 21 0 2] 
#[1 9 89 0 6 8 65 0 125 8 85 0 128 8 89 0 129 28 25 0 142 28 25 0 154 28 25 0 155 28 25 0 156 8 85 1 69 8 89 1 70] 
#[1 8 45 0 2 28 29 0 8 3 89 0 11 13 209 0 122 8 93 1 100 28 33 1 135 28 37 1 136] 
#[0 13 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 86 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 28 41 0 5] 
#[1 13 90 0 1 1 31 0 2 13 90 0 4 13 90 0 5 1 31 0 6 1 31 0 8 12 250 0 9 12 250 0 10 12 250 0 11 12 250 0 12 12 250 0 13 12 250 0 14 12 250 0 15 12 250 0 16 12 250 0 17 12 250 0 18 12 250 0 20 12 250 0 21 12 250 0 22 12 250 0 23 12 250 0 24 12 250 0 25 12 250 0 26 12 250 0 27 12 250 0 28 12 250 0 29 12 250 0 30 12 250 0 31 12 250 0 32 12 250 0 33 12 250 0 34 1 31 0 35 1 31 0 36 1 31 0 37 1 31 0 38 13 90 0 39 12 250 0 40 12 250 0 41 12 250 0 42 12 250 0 43 12 250 0 44 12 250 0 45 12 250 0 46 12 250 0 47 12 250 0 48 12 250 0 49 12 250 0 50 12 250 0 51 13 90 0 52 12 250 0 53 12 250 0 54 13 90 0 56 13 90 0 57 13 90 0 58 13 90 0 61 13 90 0 62 13 90 0 63 13 90 0 65 13 90 0 66 13 90 0 67 13 90 0 69 13 90 0 70 13 90 0 72 13 90 0 73 13 90 0 75 13 90 0 77 13 90 0 79 13 90 0 81 13 90 0 82 12 250 0 83 12 250 0 86 13 90 0 87 13 90 0 89 13 90 0 92 13 90 0 93 13 90 0 94 13 90 0 102 13 90 0 106 13 90 0 107 13 90 0 109 13 90 0 110 13 90 0 111 13 90 0 112 13 90 0 113 13 90 0 114 13 90 0 115 13 90 0 116 13 90 0 117 13 90 0 118 13 90 0 119 12 250 0 121 13 90 0 124 13 90 0 126 13 90 0 128 13 90 0 129 13 90 0 130 1 31 0 132 1 31 0 133 13 90 0 136 12 250 1 224 1 31 1 225 13 90 1 226] 
#[0 28 45 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 169 1 6 16 57 1 7 28 49 1 21 0 6 1 225] 
#[0 28 53 0 5] 
#[0 28 57 0 8] 
#[1 1 35 0 5 8 53 0 6 10 45 0 8 10 49 0 26 10 53 0 56 23 249 0 64 10 57 0 80 24 5 0 97 24 5 0 98 24 5 0 99 24 5 0 100 10 61 0 103 28 61 0 104 10 69 0 124 8 65 0 125 10 73 0 126 8 85 0 128 8 89 0 129 24 1 0 142 24 1 0 154 24 1 0 155 24 1 0 156 10 101 1 16 10 101 1 20 10 101 1 25 10 101 1 29 15 153 1 36 10 97 1 37 10 101 1 38 10 105 1 39 10 109 1 40 10 101 1 41 8 85 1 69 8 89 1 70 24 5 1 139 24 21 1 142 10 101 1 146 10 101 1 147 24 13 1 211 24 17 1 212 24 21 1 213 24 21 1 214 24 21 1 215 10 125 1 225] 
#[0 28 65 0 3] 
#[1 13 94 0 1 1 39 0 2 13 94 0 4 13 94 0 5 1 39 0 6 1 39 0 8 13 10 0 9 13 10 0 10 13 10 0 11 13 10 0 12 13 10 0 13 13 10 0 14 13 10 0 15 13 10 0 16 13 10 0 17 13 10 0 18 13 10 0 20 13 10 0 21 13 10 0 22 13 10 0 23 13 10 0 24 13 10 0 25 13 10 0 26 13 10 0 27 13 10 0 28 13 10 0 29 13 10 0 30 13 10 0 31 13 10 0 32 13 10 0 33 13 10 0 34 1 39 0 35 1 39 0 36 1 39 0 37 1 39 0 38 13 94 0 39 13 10 0 40 13 10 0 41 13 10 0 42 13 10 0 43 13 10 0 44 13 10 0 45 13 10 0 46 13 10 0 47 13 10 0 48 13 10 0 49 13 10 0 50 13 10 0 51 13 94 0 52 13 10 0 53 13 10 0 54 13 94 0 56 13 94 0 57 13 94 0 58 13 94 0 61 13 94 0 62 13 94 0 63 13 94 0 65 13 94 0 66 13 94 0 67 13 94 0 69 13 94 0 70 13 94 0 72 13 94 0 73 13 94 0 75 13 94 0 77 13 94 0 79 13 94 0 81 13 94 0 82 13 10 0 83 13 10 0 86 13 94 0 87 13 94 0 89 13 94 0 92 13 94 0 93 13 94 0 94 13 94 0 102 13 94 0 106 13 94 0 107 13 94 0 109 13 94 0 110 13 94 0 111 13 94 0 112 13 94 0 113 13 94 0 114 13 94 0 115 13 94 0 116 13 94 0 117 13 94 0 118 13 94 0 119 13 10 0 121 13 94 0 124 13 94 0 126 13 94 0 128 13 94 0 129 13 94 0 130 1 39 0 132 1 39 0 133 13 94 0 136 13 10 1 224 1 39 1 225 13 94 1 226] 
#[1 12 54 0 4 12 194 0 8] 
#[0 13 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 106 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 13 110 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 13 114 0 5 0 8 0 121] 
#[0 13 118 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 226] 
#[0 28 69 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 237 1 6 16 57 1 7 28 73 1 26 0 6 1 225] 
#[0 28 77 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 19 125 1 6 16 57 1 7 28 81 1 30 0 6 1 225] 
#[0 13 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 28 85 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 169 1 6 16 57 1 7 28 89 1 21 0 6 1 225] 
#[0 28 93 0 5] 
#[0 13 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 13 126 0 5] 
#[0 28 97 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 237 1 6 16 57 1 7 28 101 1 26 0 6 1 225] 
#[0 28 105 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 169 1 6 16 57 1 7 28 109 1 21 0 6 1 225] 
#[0 28 113 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 19 125 1 6 16 57 1 7 28 117 1 30 0 6 1 225] 
#[0 28 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 125 1 6 16 57 1 7 0 6 1 225] 
#[0 28 129 0 5] 
#[0 28 133 0 4] 
#[1 13 209 0 122 28 137 1 135] 
#[0 13 130 0 3] 
#[1 28 141 0 4 13 209 0 122 28 145 1 135] 
#[0 28 149 0 5] 
#[0 13 134 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[1 13 138 0 4 13 138 0 8 13 209 0 122 28 153 1 135] 
#[0 28 157 0 5] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 28 161 1 164] 
#[0 28 165 0 8] 
#[0 28 169 0 8] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 173 1 6 16 57 1 7 0 6 1 225] 
#[0 13 142 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 13 146 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 28 177 0 8] 
#[0 13 150 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 13 154 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 28 181 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 185 1 6 16 57 1 7 0 6 1 225] 
#[0 13 158 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[1 10 126 0 8 9 149 0 23 13 209 0 122 22 229 0 158 28 189 1 135 28 193 1 164] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 28 197 1 164] 
#[1 28 201 0 4 28 205 0 8] 
#[0 28 209 0 8] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 28 213 1 164] 
#[0 28 217 0 8] 
#[0 28 221 0 8] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 225 1 6 16 57 1 7 0 6 1 225] 
#[0 13 162 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 13 166 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 13 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 28 229 0 5] 
#[0 13 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 28 233 0 14] 
#[0 28 237 0 14] 
#[0 13 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 224 1 225 1 226] 
#[0 13 182 0 4 0 136 0 138] 
#[1 0 22 0 5 28 241 1 94] 
#[0 13 186 0 4 0 9 0 14 0 137] 
#[0 13 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 28 245 0 200 28 245 0 203 28 245 0 204 28 245 0 205 28 245 0 213 28 245 0 227 28 245 0 228 28 245 0 229 28 245 0 230 28 245 0 231 28 245 0 232 28 245 0 233 28 245 0 234 28 245 0 237 28 245 0 238 28 245 0 240 28 245 0 241 28 245 0 242 28 245 0 247 28 245 0 249 28 245 0 250 28 245 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 28 249 0 200 28 249 0 203 28 249 0 204 28 249 0 205 28 249 0 213 28 249 0 227 28 249 0 228 28 249 0 229 28 249 0 230 28 249 0 231 28 249 0 232 28 249 0 233 28 249 0 234 28 249 0 237 28 249 0 238 28 249 0 240 28 249 0 241 28 249 0 242 28 249 0 247 28 249 0 249 28 249 0 250 28 249 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[1 28 253 0 3 6 125 0 121] 
#[0 13 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 29 1 0 200 29 1 0 203 29 1 0 204 29 1 0 205 29 1 0 213 29 1 0 227 29 1 0 228 29 1 0 229 29 1 0 230 29 1 0 231 29 1 0 232 29 1 0 233 29 1 0 234 29 1 0 237 29 1 0 238 29 1 0 240 29 1 0 241 29 1 0 242 29 1 0 247 29 1 0 249 29 1 0 250 29 1 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 13 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 29 5 0 200 29 5 0 203 29 5 0 204 29 5 0 205 29 5 0 213 29 5 0 227 29 5 0 228 29 5 0 229 29 5 0 230 29 5 0 231 29 5 0 232 29 5 0 233 29 5 0 234 29 5 0 237 29 5 0 238 29 5 0 240 29 5 0 241 29 5 0 242 29 5 0 247 29 5 0 249 29 5 0 250 29 5 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 13 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 13 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 6 0 2 0 6 0 4 13 226 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 226 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 13 226 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 29 9 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 0 6 1 225] 
#[1 0 6 0 2 0 6 0 4 13 230 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 230 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 253 0 207 0 57 0 208 6 253 0 209 0 65 0 210 0 6 1 225] 
#[0 13 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 29 13 0 5 23 221 0 59 26 73 0 245] 
#[0 13 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 29 17 0 3] 
#[0 13 242 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 21 0 8] 
#[0 29 25 0 8] 
#[0 13 246 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 13 250 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 0 90 0 3 4 81 0 4 4 85 0 6 4 137 0 120 0 189 0 124 9 97 0 141 4 149 0 216 4 149 0 217 4 149 0 218 4 181 0 224 4 181 0 225 4 177 0 226 29 29 1 0 4 173 1 1 4 177 1 2 4 181 1 3 8 41 1 225] 
#[1 8 45 0 2 29 33 0 8 3 89 0 11 13 209 0 122 8 93 1 100 29 37 1 135 29 41 1 136] 
#[0 13 254 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 45 0 8] 
#[0 29 49 0 8] 
#[0 14 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 14 6 0 1 1 43 0 2 14 6 0 4 14 6 0 5 1 43 0 6 1 43 0 8 13 170 0 9 13 170 0 10 13 170 0 11 13 170 0 12 13 170 0 13 13 170 0 14 13 170 0 15 13 170 0 16 13 170 0 17 13 170 0 18 13 170 0 20 13 170 0 21 13 170 0 22 13 170 0 23 13 170 0 24 13 170 0 25 13 170 0 26 13 170 0 27 13 170 0 28 13 170 0 29 13 170 0 30 13 170 0 31 13 170 0 32 13 170 0 33 13 170 0 34 1 43 0 35 1 43 0 36 1 43 0 37 1 43 0 38 14 6 0 39 13 170 0 40 13 170 0 41 13 170 0 42 13 170 0 43 13 170 0 44 13 170 0 45 13 170 0 46 13 170 0 47 13 170 0 48 13 170 0 49 13 170 0 50 13 170 0 51 14 6 0 52 13 170 0 53 13 170 0 54 14 6 0 56 14 6 0 57 14 6 0 58 14 6 0 61 14 6 0 62 14 6 0 63 14 6 0 65 14 6 0 66 14 6 0 67 14 6 0 69 14 6 0 70 14 6 0 72 14 6 0 73 14 6 0 75 14 6 0 77 14 6 0 79 14 6 0 81 14 6 0 82 13 170 0 83 13 170 0 86 14 6 0 87 14 6 0 89 14 6 0 92 14 6 0 93 14 6 0 94 14 6 0 102 14 6 0 106 14 6 0 107 14 6 0 109 14 6 0 110 14 6 0 111 14 6 0 112 14 6 0 113 14 6 0 114 14 6 0 115 14 6 0 116 14 6 0 117 14 6 0 118 14 6 0 119 13 170 0 121 14 6 0 124 14 6 0 126 14 6 0 128 14 6 0 129 14 6 0 130 1 43 0 132 1 43 0 133 14 6 0 136 13 170 1 224 1 43 1 225 14 6 1 226] 
#[0 29 53 0 5] 
#[1 14 10 0 1 1 47 0 2 14 10 0 4 14 10 0 5 1 47 0 6 1 47 0 8 13 174 0 9 13 174 0 10 13 174 0 11 13 174 0 12 13 174 0 13 13 174 0 14 13 174 0 15 13 174 0 16 13 174 0 17 13 174 0 18 13 174 0 20 13 174 0 21 13 174 0 22 13 174 0 23 13 174 0 24 13 174 0 25 13 174 0 26 13 174 0 27 13 174 0 28 13 174 0 29 13 174 0 30 13 174 0 31 13 174 0 32 13 174 0 33 13 174 0 34 1 47 0 35 1 47 0 36 1 47 0 37 1 47 0 38 14 10 0 39 13 174 0 40 13 174 0 41 13 174 0 42 13 174 0 43 13 174 0 44 13 174 0 45 13 174 0 46 13 174 0 47 13 174 0 48 13 174 0 49 13 174 0 50 13 174 0 51 14 10 0 52 13 174 0 53 13 174 0 54 14 10 0 56 14 10 0 57 14 10 0 58 14 10 0 61 14 10 0 62 14 10 0 63 14 10 0 65 14 10 0 66 14 10 0 67 14 10 0 69 14 10 0 70 14 10 0 72 14 10 0 73 14 10 0 75 14 10 0 77 14 10 0 79 14 10 0 81 14 10 0 82 13 174 0 83 13 174 0 86 14 10 0 87 14 10 0 89 14 10 0 92 14 10 0 93 14 10 0 94 14 10 0 102 14 10 0 106 14 10 0 107 14 10 0 109 14 10 0 110 14 10 0 111 14 10 0 112 14 10 0 113 14 10 0 114 14 10 0 115 14 10 0 116 14 10 0 117 14 10 0 118 14 10 0 119 13 174 0 121 14 10 0 124 14 10 0 126 14 10 0 128 14 10 0 129 14 10 0 130 1 47 0 132 1 47 0 133 14 10 0 136 13 174 1 224 1 47 1 225 14 10 1 226] 
#[0 14 14 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 15 73 0 4 9 89 0 6 10 49 0 26 10 53 0 56 10 57 0 80 10 61 0 103 10 69 0 124 8 65 0 125 10 73 0 126 8 85 0 128 8 89 0 129 26 97 0 142 26 97 0 154 26 97 0 155 26 97 0 156 15 77 1 16 15 77 1 20 15 77 1 25 15 77 1 29 15 81 1 39 10 109 1 40 8 85 1 69 8 89 1 70 15 77 1 146 15 77 1 147 11 17 1 225] 
#[1 24 113 0 4 9 222 0 8 13 209 0 122 22 9 1 135] 
#[0 14 18 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 29 57 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 237 1 6 16 57 1 7 29 61 1 26 0 6 1 225] 
#[0 29 65 0 5] 
#[0 14 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 29 69 0 5] 
#[0 14 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 29 73 0 5] 
#[0 14 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 29 77 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 237 1 6 16 57 1 7 29 81 1 26 0 6 1 225] 
#[0 29 85 0 5] 
#[0 14 30 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 29 89 0 5] 
#[0 14 34 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 29 93 1 6 16 57 1 7 0 6 1 225] 
#[0 29 97 0 4] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 29 101 1 6 16 57 1 7 0 6 1 225] 
#[0 29 105 0 4] 
#[0 14 38 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 14 42 0 4 0 8] 
#[0 14 46 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 29 109 0 8] 
#[0 14 50 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 54 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 29 113 0 5] 
#[0 14 58 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 62 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 29 117 0 5] 
#[1 10 126 0 8 9 149 0 23 22 229 0 158 29 121 1 164] 
#[0 29 125 0 8] 
#[0 29 129 0 8] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 29 133 1 6 16 57 1 7 0 6 1 225] 
#[0 14 66 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 70 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 29 137 0 8] 
#[0 14 74 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 78 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 29 141 0 5] 
#[0 14 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 14 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 137 1 224 1 225 1 226] 
#[0 14 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 224 1 225 1 226] 
#[0 29 145 0 5] 
#[0 14 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 29 149 0 200 29 149 0 203 29 149 0 204 29 149 0 205 29 149 0 213 29 149 0 227 29 149 0 228 29 149 0 229 29 149 0 230 29 149 0 231 29 149 0 232 29 149 0 233 29 149 0 234 29 149 0 237 29 149 0 238 29 149 0 240 29 149 0 241 29 149 0 242 29 149 0 247 29 149 0 249 29 149 0 250 29 149 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 225] 
#[0 14 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[1 0 6 0 2 0 6 0 4 14 110 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 14 110 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 14 110 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 253 0 207 0 57 0 208 6 253 0 209 0 65 0 210 0 6 1 225] 
#[0 14 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 29 153 0 8] 
#[0 14 118 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 122 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 157 0 3] 
#[0 14 126 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 161 0 8] 
#[0 29 165 0 8] 
#[0 14 130 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 134 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 14 138 0 1 1 51 0 2 14 138 0 4 14 138 0 5 1 51 0 6 1 51 0 8 14 82 0 9 14 82 0 10 14 82 0 11 14 82 0 12 14 82 0 13 14 82 0 14 14 82 0 15 14 82 0 16 14 82 0 17 14 82 0 18 14 82 0 20 14 82 0 21 14 82 0 22 14 82 0 23 14 82 0 24 14 82 0 25 14 82 0 26 14 82 0 27 14 82 0 28 14 82 0 29 14 82 0 30 14 82 0 31 14 82 0 32 14 82 0 33 14 82 0 34 1 51 0 35 1 51 0 36 1 51 0 37 1 51 0 38 14 138 0 39 14 82 0 40 14 82 0 41 14 82 0 42 14 82 0 43 14 82 0 44 14 82 0 45 14 82 0 46 14 82 0 47 14 82 0 48 14 82 0 49 14 82 0 50 14 82 0 51 14 138 0 52 14 82 0 53 14 82 0 54 14 138 0 56 14 138 0 57 14 138 0 58 14 138 0 61 14 138 0 62 14 138 0 63 14 138 0 65 14 138 0 66 14 138 0 67 14 138 0 69 14 138 0 70 14 138 0 72 14 138 0 73 14 138 0 75 14 138 0 77 14 138 0 79 14 138 0 81 14 138 0 82 14 82 0 83 14 82 0 86 14 138 0 87 14 138 0 89 14 138 0 92 14 138 0 93 14 138 0 94 14 138 0 102 14 138 0 106 14 138 0 107 14 138 0 109 14 138 0 110 14 138 0 111 14 138 0 112 14 138 0 113 14 138 0 114 14 138 0 115 14 138 0 116 14 138 0 117 14 138 0 118 14 138 0 119 14 82 0 121 14 138 0 124 14 138 0 126 14 138 0 128 14 138 0 129 14 138 0 130 1 51 0 132 1 51 0 133 14 138 0 136 14 82 1 224 1 51 1 225 14 138 1 226] 
#[0 14 142 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 29 169 0 5] 
#[0 14 146 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 224 1 225 1 226] 
#[0 14 154 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 29 173 0 5] 
#[0 14 158 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 14 162 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 29 177 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 29 181 1 6 16 57 1 7 0 6 1 225] 
#[0 29 185 0 5] 
#[1 0 6 0 2 0 6 0 4 6 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 16 49 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 29 189 1 6 16 57 1 7 0 6 1 225] 
#[0 14 166 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 170 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 174 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 29 193 0 8] 
#[0 14 178 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 182 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 29 197 0 5] 
#[0 14 186 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 190 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 194 0 4 0 9 0 14 0 137] 
#[0 14 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 202 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 201 0 8] 
#[0 14 206 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 210 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 214 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 225 1 226] 
#[0 14 218 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 14 222 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 29 205 0 5] 
#[0 14 226 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 29 209 0 5] 
#[0 14 230 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 234 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 225] 
#[0 14 238 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 242 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225] 
#[0 14 246 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 225]
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
	self addSemicolons: actions.
	actions isEmpty
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
							^ self actionsForCurrentToken ] ] ].
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
	(actions isEmpty and: [ self canInsertSemicolon ])
		ifTrue: [ self addActionsFor: self scanner semicolonId to: actions.
			actions notEmpty
				ifTrue: [ currentState
						attributeNamed: #lastInsertedSemicolonPosition
						put: self positionForInsertedSemicolon.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class
							value: ';'
							start: nil
							ids: (Array with: self scanner semicolonId) ] ]
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
JSParser >> reduceActionForUnaryExpression11: nodes [
	| result |
	result := JSAsExpressionNode new.
	result expression: (nodes at: 1).
	result asToken: (nodes at: 3).
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
