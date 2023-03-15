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
#[ 0 14 1 209] 
#[ 0 30 2 149] 
#[ 0 34 0 38 0 42 0 46] 
#[ 0 14 4 69] 
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
#[ 0 30 7 105] 
#[ 2 182 8 173] 
#[ 2 186 8 177] 
#[ 1 122 2 194] 
#[ 0 142 3 94] 
#[ 0 142 9 125] 
#[ 0 30 9 193] 
#[ 0 30 9 197] 
#[ 0 30 9 201] 
#[ 0 30 0 185] 
#[ 0 14 11 169] 
#[ 3 174 4 90] 
#[ 2 166 3 94] 
#[ 1 122 4 222] 
#[ 1 122 4 226] 
#[ 4 238 10 181] 
#[ 3 130 5 50] 
#[ 0 14 14 241] 
#[ 0 30 8 37] 
#[ 0 30 8 45] 
#[ 0 30 0 193] 
#[ 0 30 0 197] 
#[ 0 22 6 178] 
#[ 2 166 4 214] 
#[ 0 214 16 149] 
#[ 5 202 6 254] 
#[ 0 142 7 26] 
#[ 5 157 7 30] 
#[ 5 101 7 30] 
#[ 7 58 7 62] 
#[ 7 66 7 70] 
#[ 7 86 7 90] 
#[ 4 142 5 38] 
#[ 4 202 5 50] 
#[ 3 134 13 197] 
#[ 7 138 8 177] 
#[ 1 122 7 142] 
#[ 0 142 5 74] 
#[ 5 126 7 210] 
#[ 0 142 21 109] 
#[ 0 50 0 185] 
#[ 0 54 0 185] 
#[ 11 250 12 102] 
#[ 12 190 13 30] 
#[ 10 222 15 93] 
#[ 12 206 13 34] 
#[ 13 110 13 202] 
#[ 13 114 13 206] 
#[ 14 6 14 62]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2023-03-15T05:56:31.742292-05:00'
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
	#(206 0 #reduceActionForStartStatementListItem1: 25123841 true) 
	#(300 0 #reduceActionForModule1: 39451649 false) 
	#(149 0 #reduceActionForValidationNotArrowFunction1: 12283905 true) 
	#(158 0 #reduceActionForStartTemplateLiteral1: 13541377 true) 
	#(348 0 #reduceActionForSwitchToJSX1: 45118465 true) 
	#(298 0 #reduceActionForScript1: 39387137 false) 
	#(390 0 #reduceActionForDecoratorExpression__decorator__1: 49335297 false) 
	#(439 0 #reduceActionForDecoratorExpression__decorator__1: 61618177 false) 
	#(446 0 #reduceActionForDecoratorExpression__decorator__1: 62492673 false) 
	#(443 0 #reduceActionForDecoratorExpression__decorator__1: 62033921 false) 
	#(435 0 #reduceActionForDecoratorExpression__decorator__1: 61050881 false) 
	#(208 1 #liftFirstValue: 25302018 false) 
	#(208 1 #liftFirstValue: 25302017 false) 
	#(303 1 #liftFirstValue: 39595011 false) 
	#(205 1 #liftFirstValue: 25022466 false) 
	#(138 1 #liftFirstValue: 9538561 false) 
	#(300 1 #reduceActionForModule2: 39451650 false) 
	#(301 1 #reduceActionForModuleBody1: 39483393 false) 
	#(302 1 #reduceActionForModuleItemList1: 39517185 false) 
	#(303 1 #liftFirstValue: 39595009 false) 
	#(303 1 #liftFirstValue: 39595010 false) 
	#(254 0 #reduceActionForFormalParameters1: 33173505 false) 
	#(322 1 #liftFirstValue: 42277890 false) 
	#(321 1 #liftFirstValue: 42251265 false) 
	#(141 1 #reduceActionForPrimaryExpression1: 9971713 false) 
	#(322 1 #liftFirstValue: 42277889 false) 
	#(276 1 #reduceActionForYieldExpression1: 36282369 false) 
	#(139 1 #reduceActionForIdentifier1: 9662465 false) 
	#(320 1 #reduceActionForIdentifier1: 42178561 false) 
	#(323 1 #liftFirstValue: 42318849 false) 
	#(324 1 #liftFirstValue: 42357761 false) 
	#(325 1 #reduceActionForRegularExpressionLiteral1: 42398721 false) 
	#(157 1 #reduceActionForTemplateLiteral1: 13381633 false) 
	#(349 0 #reduceActionForSwitchToJSXText1: 45162497 true) 
	#(141 1 #liftFirstValue: 9971714 false) 
	#(264 1 #reduceActionForArrowParameterDeclaration1: 34279425 false) 
	#(161 1 #liftFirstValue: 13822977 false) 
	#(141 1 #liftFirstValue: 9971725 false) 
	#(141 1 #liftFirstValue: 9971715 false) 
	#(141 1 #liftFirstValue: 9971716 false) 
	#(141 1 #liftFirstValue: 9971717 false) 
	#(141 1 #liftFirstValue: 9971724 false) 
	#(166 1 #liftFirstValue: 14958593 false) 
	#(161 1 #liftFirstValue: 13822981 false) 
	#(161 1 #liftFirstValue: 13822982 false) 
	#(163 1 #liftFirstValue: 14716929 false) 
	#(163 1 #liftFirstValue: 14716930 false) 
	#(176 1 #liftFirstValue: 17339393 false) 
	#(176 1 #liftFirstValue: 17339394 false) 
	#(167 1 #liftFirstValue: 15052802 false) 
	#(167 1 #liftFirstValue: 15052803 false) 
	#(176 1 #liftFirstValue: 17339395 false) 
	#(177 1 #liftFirstValue: 17426433 false) 
	#(178 1 #liftFirstValue: 17802241 false) 
	#(179 1 #liftFirstValue: 18266113 false) 
	#(180 1 #liftFirstValue: 18440193 false) 
	#(182 1 #liftFirstValue: 18709505 false) 
	#(183 1 #liftFirstValue: 19012609 false) 
	#(184 1 #liftFirstValue: 19403777 false) 
	#(185 1 #liftFirstValue: 20262913 false) 
	#(186 1 #liftFirstValue: 20800513 false) 
	#(187 1 #liftFirstValue: 20968449 false) 
	#(188 1 #liftFirstValue: 21140481 false) 
	#(189 1 #liftFirstValue: 21311489 false) 
	#(192 1 #liftFirstValue: 21820418 false) 
	#(190 1 #liftFirstValue: 21485569 false) 
	#(193 1 #liftFirstValue: 21898241 false) 
	#(193 1 #liftFirstValue: 21898242 false) 
	#(192 1 #liftFirstValue: 21820417 false) 
	#(194 1 #liftFirstValue: 21976065 false) 
	#(195 1 #liftFirstValue: 22207489 false) 
	#(197 1 #liftFirstValue: 24053761 false) 
	#(141 1 #liftFirstValue: 9971718 false) 
	#(195 1 #liftFirstValue: 22207491 false) 
	#(263 1 #reduceActionForArrowParameters1: 34185217 false) 
	#(263 1 #reduceActionForArrowParameters2: 34185218 false) 
	#(195 1 #liftFirstValue: 22207492 false) 
	#(141 1 #liftFirstValue: 9971720 false) 
	#(195 1 #liftFirstValue: 22207490 false) 
	#(141 1 #liftFirstValue: 9971722 false) 
	#(141 1 #liftFirstValue: 9971721 false) 
	#(178 1 #liftFirstValue: 17802249 false) 
	#(141 1 #liftFirstValue: 9971719 false) 
	#(143 1 #reduceActionForLiteral1: 11099137 false) 
	#(143 1 #reduceActionForLiteral2: 11099138 false) 
	#(143 1 #reduceActionForLiteral4: 11099140 false) 
	#(143 1 #reduceActionForLiteral3: 11099139 false) 
	#(141 1 #liftFirstValue: 9971723 false) 
	#(141 1 #liftFirstValue: 9971726 false) 
	#(326 1 #liftFirstValue: 42663937 false) 
	#(350 0 #reduceActionForStartJSXText1: 45214721 true) 
	#(141 1 #liftFirstValue: 9971727 false) 
	#(225 1 #reduceActionForEmptyStatement1: 27717633 false) 
	#(237 0 #reduceActionForCheckEOL1: 31383553 true) 
	#(198 1 #liftFirstValue: 24210438 false) 
	#(198 1 #liftFirstValue: 24210433 false) 
	#(202 1 #liftFirstValue: 24792065 false) 
	#(198 1 #liftFirstValue: 24210434 false) 
	#(198 1 #liftFirstValue: 24210435 false) 
	#(198 1 #liftFirstValue: 24210436 false) 
	#(198 1 #liftFirstValue: 24210437 false) 
	#(201 1 #liftFirstValue: 24725505 false) 
	#(228 1 #liftFirstValue: 28148737 false) 
	#(228 1 #liftFirstValue: 28148738 false) 
	#(228 1 #liftFirstValue: 28148739 false) 
	#(228 1 #liftFirstValue: 28148740 false) 
	#(198 1 #liftFirstValue: 24210439 false) 
	#(198 1 #liftFirstValue: 24210440 false) 
	#(198 1 #liftFirstValue: 24210441 false) 
	#(198 1 #liftFirstValue: 24210442 false) 
	#(201 1 #liftFirstValue: 24725506 false) 
	#(198 1 #liftFirstValue: 24210443 false) 
	#(198 1 #liftFirstValue: 24210444 false) 
	#(198 1 #liftFirstValue: 24210445 false) 
	#(198 1 #liftFirstValue: 24210446 false) 
	#(299 1 #reduceActionForModuleBody1: 39418881 false) 
	#(204 1 #reduceActionForModuleItemList1: 24921089 false) 
	#(298 1 #reduceActionForScript2: 39387138 false) 
	#(438 1 #liftFirstValue: 61344769 false) 
	#(438 1 #liftFirstValue: 61344770 false) 
	#(438 1 #liftFirstValue: 61344771 false) 
	#(438 1 #liftFirstValue: 61344772 false) 
	#(438 1 #liftFirstValue: 61344773 false) 
	#(448 1 #liftFirstValue: 62681090 false) 
	#(445 1 #liftFirstValue: 62240770 false) 
	#(442 1 #liftFirstValue: 61887490 false) 
	#(438 1 #liftFirstValue: 61344775 false) 
	#(438 1 #liftFirstValue: 61344774 false) 
	#(442 1 #liftFirstValue: 61887489 false) 
	#(438 1 #liftFirstValue: 61344776 false) 
	#(442 1 #liftFirstValue: 61887491 false) 
	#(438 1 #liftFirstValue: 61344777 false) 
	#(442 1 #liftFirstValue: 61887493 false) 
	#(445 1 #liftFirstValue: 62240771 false) 
	#(438 1 #liftFirstValue: 61344779 false) 
	#(432 1 #reduceActionForSourceFile1: 60797953 false) 
	#(432 1 #reduceActionForSourceFile1: 60797954 false) 
	#(433 1 #reduceActionForModuleBody1: 60902401 false) 
	#(435 1 #reduceActionForModuleBody1: 61050882 false) 
	#(436 1 #reduceActionForModuleItemList1: 61110273 false) 
	#(445 1 #liftFirstValue: 62240769 false) 
	#(437 1 #liftFirstValue: 61257729 false) 
	#(434 1 #reduceActionForModuleBody1: 60981249 false) 
	#(439 1 #reduceActionForModuleBody1: 61618178 false) 
	#(440 1 #reduceActionForModuleItemList1: 61671425 false) 
	#(448 1 #liftFirstValue: 62681089 false) 
	#(441 1 #liftFirstValue: 61806593 false) 
	#(433 1 #reduceActionForModuleBody1: 60902402 false) 
	#(443 1 #reduceActionForModuleBody1: 62033922 false) 
	#(444 1 #reduceActionForModuleItemList1: 62093313 false) 
	#(434 1 #reduceActionForModuleBody1: 60981250 false) 
	#(446 1 #reduceActionForModuleBody1: 62492674 false) 
	#(447 1 #reduceActionForModuleItemList1: 62545921 false) 
	#(445 1 #liftFirstValue: 62240772 false) 
	#(445 1 #liftFirstValue: 62240773 false) 
	#(448 1 #liftFirstValue: 62681091 false) 
	#(445 1 #liftFirstValue: 62240774 false) 
	#(448 1 #liftFirstValue: 62681092 false) 
	#(448 1 #liftFirstValue: 62681093 false) 
	#(445 1 #liftFirstValue: 62240775 false) 
	#(445 1 #liftFirstValue: 62240776 false) 
	#(448 1 #liftFirstValue: 62681094 false) 
	#(438 1 #liftFirstValue: 61344778 false) 
	#(442 1 #liftFirstValue: 61887492 false) 
	#(437 1 #liftFirstValue: 61257730 false) 
	#(441 1 #liftFirstValue: 61806594 false) 
	#(386 1 #reduceActionForThisType1: 48843777 false) 
	#(368 1 #reduceActionForPredefinedType1: 46812161 false) 
	#(370 1 #reduceActionForTypeName1: 46964737 false) 
	#(371 1 #reduceActionForNamespaceName1: 47075329 false) 
	#(366 1 #reduceActionForLiteralType1: 46642177 false) 
	#(366 1 #reduceActionForLiteralType1: 46642178 false) 
	#(361 1 #liftFirstValue: 46076929 false) 
	#(362 1 #liftFirstValue: 46158850 false) 
	#(363 1 #liftFirstValue: 46239746 false) 
	#(364 1 #liftFirstValue: 46305281 false) 
	#(365 1 #liftFirstValue: 46453769 false) 
	#(365 1 #liftFirstValue: 46453761 false) 
	#(365 1 #liftFirstValue: 46453762 false) 
	#(365 1 #liftFirstValue: 46453763 false) 
	#(365 1 #liftFirstValue: 46453764 false) 
	#(365 1 #liftFirstValue: 46453765 false) 
	#(365 1 #liftFirstValue: 46453766 false) 
	#(362 1 #liftFirstValue: 46158849 false) 
	#(363 1 #liftFirstValue: 46239745 false) 
	#(361 1 #liftFirstValue: 46076930 false) 
	#(361 1 #liftFirstValue: 46076931 false) 
	#(365 1 #liftFirstValue: 46453767 false) 
	#(365 1 #liftFirstValue: 46453768 false) 
	#(316 1 #reduceActionForExportFromClause1: 41608193 false) 
	#(315 2 #reduceActionForExportDeclaration4: 40913924 false) 
	#(199 1 #liftFirstValue: 24509441 false) 
	#(199 1 #liftFirstValue: 24509443 false) 
	#(315 2 #reduceActionForExportDeclaration3: 40913923 false) 
	#(200 1 #liftFirstValue: 24593409 false) 
	#(200 1 #liftFirstValue: 24593410 false) 
	#(200 1 #liftFirstValue: 24593412 false) 
	#(200 1 #liftFirstValue: 24593411 false) 
	#(199 1 #liftFirstValue: 24509442 false) 
	#(316 1 #reduceActionForExportFromClause3: 41608195 false) 
	#(314 1 #liftFirstValue: 40876033 false) 
	#(306 1 #reduceActionForImportClause1: 39910401 false) 
	#(306 1 #reduceActionForImportClause1: 39910402 false) 
	#(306 1 #reduceActionForImportClause1: 39910403 false) 
	#(307 1 #liftFirstValue: 40170497 false) 
	#(313 1 #liftFirstValue: 40830977 false) 
	#(205 2 #liftSecondValue: 25022465 false) 
	#(210 1 #reduceActionForArrowParameterDeclaration1: 25440257 false) 
	#(209 1 #reduceActionForNamespaceName1: 25337857 false) 
	#(214 1 #liftFirstValue: 26002433 false) 
	#(214 1 #liftFirstValue: 26002434 false) 
	#(210 1 #liftFirstValue: 25440260 false) 
	#(210 1 #liftFirstValue: 25440261 false) 
	#(302 2 #reduceActionForModuleItemList2: 39517186 false) 
	#(223 1 #reduceActionForArrowParameterDeclaration1: 27442177 false) 
	#(222 1 #reduceActionForBindingElement2: 27327490 false) 
	#(257 1 #liftFirstValue: 33557505 false) 
	#(222 1 #liftFirstValue: 27327489 false) 
	#(256 1 #liftFirstValue: 33508353 false) 
	#(253 1 #reduceActionForModuleBody1: 33125377 false) 
	#(254 1 #reduceActionForFormalParameters3: 33173507 false) 
	#(254 1 #reduceActionForFormalParameters2: 33173506 false) 
	#(255 1 #reduceActionForNamespaceName1: 33382401 false) 
	#(144 2 #reduceActionForArrayLiteral1: 11287553 false) 
	#(146 1 #reduceActionForModuleItemList1: 11778049 false) 
	#(145 1 #reduceActionForNamespaceName1: 11553795 false) 
	#(145 1 #reduceActionForNamespaceName1: 11553793 false) 
	#(178 2 #reduceActionForUnaryExpression5: 17802245 false) 
	#(177 2 #reduceActionForUpdateExpression4: 17426436 false) 
	#(178 2 #reduceActionForUnaryExpression5: 17802246 false) 
	#(177 2 #reduceActionForUpdateExpression4: 17426437 false) 
	#(178 2 #reduceActionForUnaryExpression5: 17802247 false) 
	#(178 2 #reduceActionForUnaryExpression5: 17802248 false) 
	#(285 2 #reduceActionForAwaitExpression1: 38045697 false) 
	#(287 2 #reduceActionForClassExpression1: 38249473 false) 
	#(178 2 #reduceActionForUnaryExpression5: 17802242 false) 
	#(166 2 #reduceActionForNewExpression2: 14958594 false) 
	#(168 2 #reduceActionForSuperCall1: 15662081 false) 
	#(178 2 #reduceActionForUnaryExpression5: 17802244 false) 
	#(178 2 #reduceActionForUnaryExpression5: 17802243 false) 
	#(276 2 #reduceActionForYieldExpression2: 36282370 false) 
	#(161 2 #reduceActionForMemberExpression4: 13822980 false) 
	#(167 2 #reduceActionForCallExpression1: 15052801 false) 
	#(172 2 #reduceActionForOptionalExpression1: 16344065 false) 
	#(167 2 #reduceActionForMemberExpression4: 15052807 false) 
	#(167 2 #reduceActionForCallExpression1: 15052804 false) 
	#(172 2 #reduceActionForOptionalExpression1: 16344066 false) 
	#(172 2 #reduceActionForOptionalExpression1: 16344067 false) 
	#(196 1 #liftFirstValue: 22419459 false) 
	#(196 1 #liftFirstValue: 22419463 false) 
	#(196 1 #liftFirstValue: 22419464 false) 
	#(196 1 #liftFirstValue: 22419465 false) 
	#(196 1 #liftFirstValue: 22419457 false) 
	#(196 1 #liftFirstValue: 22419458 false) 
	#(196 1 #liftFirstValue: 22419460 false) 
	#(196 1 #liftFirstValue: 22419466 false) 
	#(196 1 #liftFirstValue: 22419467 false) 
	#(196 1 #liftFirstValue: 22419468 false) 
	#(196 1 #liftFirstValue: 22419462 false) 
	#(196 1 #liftFirstValue: 22419461 false) 
	#(177 2 #reduceActionForUpdateExpression2: 17426434 false) 
	#(177 2 #reduceActionForUpdateExpression2: 17426435 false) 
	#(196 1 #liftFirstValue: 22419470 false) 
	#(196 1 #liftFirstValue: 22419472 false) 
	#(196 1 #liftFirstValue: 22419471 false) 
	#(196 1 #liftFirstValue: 22419469 false) 
	#(181 1 #liftFirstValue: 18647042 false) 
	#(181 1 #liftFirstValue: 18647041 false) 
	#(181 1 #liftFirstValue: 18647043 false) 
	#(345 0 #reduceActionForDecoratorExpression__decorator__1: 44789761 false) 
	#(267 2 #reduceActionForArrowFormalParameters2: 34540546 false) 
	#(203 2 #reduceActionForBlock1: 24820737 false) 
	#(252 2 #reduceActionForDebuggerStatement1: 33035265 false) 
	#(213 1 #reduceActionForArrowParameterDeclaration1: 25837569 false) 
	#(212 1 #reduceActionForNamespaceName1: 25697281 false) 
	#(226 2 #reduceActionForExpressionStatement1: 27770881 false) 
	#(204 2 #reduceActionForModuleItemList2: 24921090 false) 
	#(286 2 #reduceActionForClassExpression1: 38125569 false) 
	#(467 1 #liftFirstValue: 68231169 false) 
	#(456 2 #reduceActionForAmbientDeclaration1: 66114561 false) 
	#(456 2 #reduceActionForAmbientDeclaration1: 66114562 false) 
	#(456 2 #reduceActionForAmbientDeclaration1: 66114563 false) 
	#(456 2 #reduceActionForAmbientDeclaration1: 66114564 false) 
	#(456 2 #reduceActionForAmbientDeclaration1: 66114565 false) 
	#(425 1 #reduceActionForNamespaceName1: 59239425 false) 
	#(390 2 #reduceActionForModuleItemList2: 49335298 false) 
	#(436 2 #reduceActionForModuleItemList2: 61110274 false) 
	#(440 2 #reduceActionForModuleItemList2: 61671426 false) 
	#(444 2 #reduceActionForModuleItemList2: 62093314 false) 
	#(447 2 #reduceActionForModuleItemList2: 62545922 false) 
	#(372 2 #reduceActionForObjectType1: 47183873 false) 
	#(140 1 #reduceActionForIdentifier1: 9864193 false) 
	#(153 1 #liftFirstValue: 12972033 false) 
	#(387 1 #reduceActionForPropertySignature1: 48884737 false) 
	#(152 1 #liftFirstValue: 12905473 false) 
	#(152 1 #liftFirstValue: 12905474 false) 
	#(153 1 #reduceActionForIdentifier1: 12972034 false) 
	#(153 1 #reduceActionForIdentifier1: 12972035 false) 
	#(373 1 #reduceActionForModuleBody1: 47268865 false) 
	#(374 1 #reduceActionForNamespaceName1: 47369217 false) 
	#(375 1 #liftFirstValue: 47528961 false) 
	#(375 1 #liftFirstValue: 47528962 false) 
	#(375 1 #liftFirstValue: 47528963 false) 
	#(375 1 #liftFirstValue: 47528964 false) 
	#(375 1 #liftFirstValue: 47528965 false) 
	#(377 2 #reduceActionForTupleType1: 47754241 false) 
	#(379 1 #liftFirstValue: 47988737 false) 
	#(378 1 #reduceActionForNamespaceName1: 47876097 false) 
	#(356 1 #reduceActionForTypeParameter1: 45746177 false) 
	#(355 1 #reduceActionForNamespaceName1: 45629441 false) 
	#(364 2 #reduceActionForPrefixType3: 46305283 false) 
	#(364 2 #reduceActionForPrefixType2: 46305282 false) 
	#(385 1 #reduceActionForTypeQueryExpression1: 48715777 false) 
	#(384 2 #reduceActionForTypeQuery1: 48638977 false) 
	#(369 2 #reduceActionForTypeReference1: 46867457 false) 
	#(317 2 #reduceActionForNamedExports1: 41720833 false) 
	#(304 1 #liftFirstValue: 39674881 false) 
	#(319 1 #reduceActionForExportSpecifier1: 42050561 false) 
	#(318 1 #reduceActionForNamespaceName1: 41942017 false) 
	#(304 1 #liftFirstValue: 39674882 false) 
	#(315 3 #reduceActionForExportDeclaration2: 40913922 false) 
	#(199 2 #liftSecondValue: 24509445 false) 
	#(199 2 #liftSecondValue: 24509444 false) 
	#(199 2 #liftSecondValue: 24509446 false) 
	#(309 2 #reduceActionForNamedImports1: 40301569 false) 
	#(311 1 #reduceActionForNamespaceName1: 40592385 false) 
	#(312 1 #reduceActionForImportSpecifier1: 40700929 false) 
	#(305 3 #reduceActionForImportDeclaration2: 39734274 false) 
	#(215 2 #reduceActionForObjectBindingPattern1: 26070017 false) 
	#(218 1 #reduceActionForNamespaceName1: 26909697 false) 
	#(221 1 #liftFirstValue: 27209729 false) 
	#(216 2 #reduceActionForArrayBindingPattern1: 26464257 false) 
	#(219 1 #reduceActionForBindingElementList1: 27032577 false) 
	#(220 1 #reduceActionForBindingElisionElement1: 27145217 false) 
	#(210 2 #reduceActionForLexicalBinding2: 25440258 false) 
	#(207 3 #reduceActionForLexicalDeclaration1: 25209857 false) 
	#(210 2 #reduceActionForLexicalBinding3: 25440259 false) 
	#(224 2 #reduceActionForBindingRestElement1: 27531265 false) 
	#(224 2 #reduceActionForBindingRestElement1: 27531266 false) 
	#(223 2 #reduceActionForLexicalBinding2: 27442178 false) 
	#(142 3 #reduceActionForParenthesizedExpression1: 10352641 false) 
	#(222 2 #reduceActionForLexicalBinding3: 27327491 false) 
	#(267 3 #reduceActionForArrowFormalParameters1: 34540545 false) 
	#(254 2 #reduceActionForFormalParameters4: 33173508 false) 
	#(392 1 #liftFirstValue: 51225602 false) 
	#(392 1 #liftFirstValue: 51225603 false) 
	#(392 1 #liftFirstValue: 51225601 false) 
	#(391 0 #nil 49850372 false) 
	#(147 2 #reduceActionForSpreadElement1: 11837441 false) 
	#(144 3 #reduceActionForArrayLiteral3: 11287555 false) 
	#(144 3 #reduceActionForArrayLiteral2: 11287554 false) 
	#(146 2 #reduceActionForModuleItemList2: 11778050 false) 
	#(145 2 #reduceActionForElementList4: 11553796 false) 
	#(145 2 #reduceActionForElementList4: 11553794 false) 
	#(288 2 #reduceActionForClassTail1: 38332417 false) 
	#(292 1 #reduceActionForEmptyStatement1: 38638598 false) 
	#(294 1 #reduceActionForIdentifier1: 39027713 false) 
	#(294 1 #reduceActionForIdentifier1: 39027714 false) 
	#(292 1 #liftFirstValue: 38638593 false) 
	#(270 1 #liftFirstValue: 34866178 false) 
	#(270 1 #liftFirstValue: 34866180 false) 
	#(270 1 #liftFirstValue: 34866179 false) 
	#(290 1 #reduceActionForModuleBody1: 38511617 false) 
	#(291 1 #reduceActionForModuleItemList1: 38546433 false) 
	#(293 1 #reduceActionForFieldDefinition1: 38962177 false) 
	#(292 1 #liftFirstValue: 38638597 false) 
	#(270 1 #liftFirstValue: 34866184 false) 
	#(270 1 #liftFirstValue: 34866185 false) 
	#(289 2 #reduceActionForClassHeritage1: 38427649 false) 
	#(287 3 #reduceActionForClassExpression2: 38249474 false) 
	#(289 2 #reduceActionForClassHeritage4: 38427652 false) 
	#(289 2 #reduceActionForClassHeritage2: 38427650 false) 
	#(165 3 #reduceActionForImportMeta1: 14868481 false) 
	#(164 3 #reduceActionForNewTarget1: 14761985 false) 
	#(161 3 #reduceActionForMemberExpression7: 13822983 false) 
	#(170 2 #reduceActionForArguments1: 15879169 false) 
	#(171 1 #reduceActionForArgumentList1: 16069633 false) 
	#(162 3 #reduceActionForSuperProperty2: 14447618 false) 
	#(276 3 #reduceActionForYieldExpression3: 36282371 false) 
	#(148 3 #reduceActionForObjectLiteral1: 11938817 false) 
	#(151 1 #liftFirstValue: 12649473 false) 
	#(150 1 #reduceActionForNamespaceName1: 12510209 false) 
	#(151 1 #liftFirstValue: 12649474 false) 
	#(151 1 #liftFirstValue: 12649476 false) 
	#(161 3 #reduceActionForMemberExpression3: 13822979 false) 
	#(161 3 #reduceActionForMemberExpression3: 13822984 false) 
	#(175 1 #reduceActionForOptionalFirst3: 17019907 false) 
	#(175 1 #reduceActionForOptionalFirst3: 17019909 false) 
	#(175 1 #reduceActionForOptionalFirst4: 17019908 false) 
	#(175 1 #reduceActionForOptionalFirst1: 17019905 false) 
	#(173 2 #reduceActionForOptionalChain1: 16527361 false) 
	#(174 1 #reduceActionForOptionalFirst4: 16654340 false) 
	#(174 1 #reduceActionForOptionalFirst1: 16654337 false) 
	#(173 2 #reduceActionForOptionalChain2: 16527362 false) 
	#(167 3 #reduceActionForMemberExpression3: 15052806 false) 
	#(167 3 #reduceActionForMemberExpression3: 15052808 false) 
	#(195 3 #reduceActionForAssignmentExpression5: 22207493 false) 
	#(179 3 #reduceActionForExponentiationExpression2: 18266114 false) 
	#(180 3 #reduceActionForExponentiationExpression2: 18440194 false) 
	#(182 3 #reduceActionForExponentiationExpression2: 18709506 false) 
	#(182 3 #reduceActionForExponentiationExpression2: 18709507 false) 
	#(183 3 #reduceActionForExponentiationExpression2: 19012610 false) 
	#(183 3 #reduceActionForExponentiationExpression2: 19012611 false) 
	#(183 3 #reduceActionForExponentiationExpression2: 19012612 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19403778 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19403779 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19403780 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19403781 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19403783 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19403782 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 20262914 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 20262916 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 20262915 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 20262917 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 20800514 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 20968450 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 21140482 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 21311490 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 21485570 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 21659649 false) 
	#(197 3 #reduceActionForExpression2: 24053762 false) 
	#(261 0 #reduceActionForDecoratorExpression__decorator__1: 34069505 false) 
	#(266 1 #liftFirstValue: 34496513 false) 
	#(262 3 #reduceActionForArrowFunction1: 34114561 false) 
	#(265 1 #reduceActionForConciseBody1: 34377729 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 19403784 false) 
	#(353 0 #reduceActionForSwitchToDefault1: 45385729 true) 
	#(344 1 #reduceActionForModuleBody1: 44774401 false) 
	#(331 1 #reduceActionForJSXElementName1: 43593729 false) 
	#(331 1 #liftFirstValue: 43593730 false) 
	#(331 1 #liftFirstValue: 43593731 false) 
	#(335 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 43932673 false) 
	#(203 3 #reduceActionForBlock2: 24820738 false) 
	#(236 3 #reduceActionForBreakStatement1: 31272961 false) 
	#(235 3 #reduceActionForContinueStatement1: 31155201 false) 
	#(238 3 #reduceActionForReturnStatement1: 31421441 false) 
	#(247 3 #reduceActionForThrowStatement1: 32468993 false) 
	#(248 3 #reduceActionForTryStatement1: 32568321 false) 
	#(248 3 #reduceActionForTryStatement2: 32568322 false) 
	#(213 2 #reduceActionForLexicalBinding2: 25837570 false) 
	#(211 3 #reduceActionForVariableStatement1: 25598977 false) 
	#(213 2 #reduceActionForLexicalBinding3: 25837571 false) 
	#(213 2 #liftSecondValue: 25837572 false) 
	#(213 2 #liftSecondValue: 25837573 false) 
	#(246 1 #liftFirstValue: 32370689 false) 
	#(245 3 #reduceActionForLabelledStatement1: 32268289 false) 
	#(286 3 #reduceActionForClassExpression2: 38125570 false) 
	#(286 3 #reduceActionForClassDeclaration3: 38125571 false) 
	#(459 1 #reduceActionForArrowParameterDeclaration1: 66928641 false) 
	#(458 1 #reduceActionForNamespaceName1: 66811905 false) 
	#(454 3 #reduceActionForExportListDeclaration3: 65719299 false) 
	#(406 3 #reduceActionForInterfaceDeclaration1: 55760897 false) 
	#(426 0 #reduceActionForDecoratorExpression__decorator__1: 59348993 false) 
	#(473 2 #reduceActionForDecoratorExpression2: 69606402 false) 
	#(473 2 #reduceActionForDecoratorExpression2: 69606401 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148034 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148033 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148035 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148036 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148037 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148043 false) 
	#(451 3 #reduceActionForExportDeclarationElement2: 64275458 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148039 false) 
	#(451 3 #reduceActionForExportDeclarationElement2: 64275457 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148038 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148040 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148041 false) 
	#(451 3 #reduceActionForExportDeclarationElement2: 64275460 false) 
	#(450 3 #reduceActionForExportImplementationElement2: 63148042 false) 
	#(451 3 #reduceActionForExportDeclarationElement2: 64275459 false) 
	#(367 3 #reduceActionForParenthesizedExpression1: 46721025 false) 
	#(387 2 #reduceActionForPropertySignature3: 48884739 false) 
	#(387 2 #reduceActionForPropertySignature2: 48884738 false) 
	#(396 2 #reduceActionForMethodSignature1: 52489217 false) 
	#(372 3 #reduceActionForObjectType2: 47183874 false) 
	#(373 2 #reduceActionForOptionalChain2: 47268866 false) 
	#(373 2 #reduceActionForOptionalChain2: 47268868 false) 
	#(377 3 #reduceActionForTupleType2: 47754242 false) 
	#(377 3 #reduceActionForTupleType3: 47754243 false) 
	#(356 2 #reduceActionForTypeParameter2: 45746178 false) 
	#(354 3 #reduceActionForTypeParameters1: 45547521 false) 
	#(380 3 #reduceActionForUnionType1: 48018433 false) 
	#(381 3 #reduceActionForIntersectionType1: 48142337 false) 
	#(369 3 #reduceActionForTypeReference2: 46867458 false) 
	#(370 3 #reduceActionForTypeName2: 46964738 false) 
	#(371 3 #reduceActionForNamespaceName2: 47075330 false) 
	#(317 3 #reduceActionForNamedExports2: 41720834 false) 
	#(316 3 #reduceActionForExportFromClause2: 41608194 false) 
	#(315 4 #reduceActionForExportDeclaration5: 40913925 false) 
	#(310 2 #reduceActionForFromClause1: 40538113 false) 
	#(315 4 #reduceActionForExportDeclaration1: 40913921 false) 
	#(309 3 #reduceActionForNamedImports2: 40301570 false) 
	#(308 3 #reduceActionForNameSpaceImport1: 40217601 false) 
	#(305 4 #reduceActionForImportDeclaration1: 39734273 false) 
	#(306 3 #reduceActionForImportClause4: 39910404 false) 
	#(306 3 #reduceActionForImportClause4: 39910405 false) 
	#(217 2 #reduceActionForBindingRestProperty1: 26834945 false) 
	#(215 3 #reduceActionForObjectBindingPattern2: 26070018 false) 
	#(215 3 #reduceActionForObjectBindingPattern3: 26070019 false) 
	#(216 3 #reduceActionForArrayBindingPattern3: 26464259 false) 
	#(220 2 #reduceActionForBindingElisionElement2: 27145218 false) 
	#(216 3 #reduceActionForArrayBindingPattern5: 26464261 false) 
	#(216 3 #reduceActionForArrayBindingPattern2: 26464258 false) 
	#(156 2 #reduceActionForFromClause1: 13314049 false) 
	#(209 3 #reduceActionForNamespaceName2: 25337858 false) 
	#(404 3 #reduceActionForSimpleLexicalBinding1: 55205889 false) 
	#(405 3 #reduceActionForDestructuringLexicalBinding1: 55318529 false) 
	#(224 3 #reduceActionForBindingRestElement3: 27531267 false) 
	#(254 3 #reduceActionForFormalParameters5: 33173509 false) 
	#(255 3 #reduceActionForNamespaceName2: 33382402 false) 
	#(223 3 #reduceActionForSingleNameBinding9: 27442185 false) 
	#(223 3 #reduceActionForSimpleLexicalBinding1: 27442179 false) 
	#(391 1 #reduceActionForIdentifier1: 49850370 false) 
	#(391 1 #liftFirstValue: 49850369 false) 
	#(391 1 #liftFirstValue: 49850371 false) 
	#(223 3 #reduceActionForSingleNameBinding7: 27442183 false) 
	#(144 4 #reduceActionForArrayLiteral4: 11287556 false) 
	#(145 3 #reduceActionForElementList6: 11553798 false) 
	#(145 3 #reduceActionForElementList6: 11553797 false) 
	#(269 1 #reduceActionForConciseBody1: 34741249 false) 
	#(268 4 #reduceActionForAsyncArrowFunction1: 34635777 false) 
	#(297 0 #reduceActionForDecoratorExpression__decorator__1: 39327745 false) 
	#(292 2 #reduceActionForClassElement2: 38638594 false) 
	#(288 3 #reduceActionForClassTail2: 38332418 false) 
	#(291 2 #reduceActionForModuleItemList2: 38546434 false) 
	#(292 2 #reduceActionForClassElement3: 38638595 false) 
	#(293 2 #reduceActionForFieldDefinition2: 38962178 false) 
	#(292 2 #liftSecondValue: 38638599 false) 
	#(292 2 #liftSecondValue: 38638600 false) 
	#(414 1 #liftFirstValue: 57524225 false) 
	#(414 1 #liftFirstValue: 57524226 false) 
	#(414 1 #liftFirstValue: 57524227 false) 
	#(292 2 #liftSecondValue: 38638601 false) 
	#(288 3 #reduceActionForClassTail3: 38332419 false) 
	#(411 1 #liftFirstValue: 56732673 false) 
	#(410 2 #reduceActionForFromClause1: 56670209 false) 
	#(409 1 #liftFirstValue: 56142849 false) 
	#(412 2 #reduceActionForImplementsClause1: 56777729 false) 
	#(408 1 #reduceActionForNamespaceName1: 56007681 false) 
	#(289 3 #reduceActionForClassHeritage3: 38427651 false) 
	#(169 4 #reduceActionForImportCall1: 15735809 false) 
	#(171 2 #reduceActionForArgumentList2: 16069634 false) 
	#(170 3 #reduceActionForArguments2: 15879170 false) 
	#(162 4 #reduceActionForSuperProperty1: 14447617 false) 
	#(359 1 #reduceActionForNamespaceName1: 45940737 false) 
	#(360 1 #liftFirstValue: 46051329 false) 
	#(151 2 #reduceActionForPropertyDefinition5: 12649477 false) 
	#(155 2 #reduceActionForCoverInitializedName1: 13228033 false) 
	#(148 4 #reduceActionForObjectLiteral2: 11938818 false) 
	#(159 1 #reduceActionForNamespaceName1: 13582337 false) 
	#(157 4 #reduceActionForTemplateLiteral2: 13381634 false) 
	#(161 4 #reduceActionForMemberExpression2: 13822978 false) 
	#(174 2 #reduceActionForOptionalRest3: 16654339 false) 
	#(174 2 #reduceActionForOptionalRest3: 16654341 false) 
	#(167 4 #reduceActionForMemberExpression2: 15052805 false) 
	#(178 4 #reduceActionForUnaryExpression11: 17802251 false) 
	#(261 1 #reduceActionForModuleBody1: 34069506 false) 
	#(260 1 #reduceActionForModuleBody1: 34025473 false) 
	#(326 4 #reduceActionForJSXElement2: 42663938 false) 
	#(346 1 #reduceActionForJSXChild1: 44812289 false) 
	#(346 1 #liftFirstValue: 44812290 false) 
	#(345 2 #reduceActionForModuleItemList2: 44789762 false) 
	#(334 2 #reduceActionForFromClause1: 43932673 false) 
	#(351 0 #reduceActionForSwitchToJSXTextOrDefault11: 45246465 true) 
	#(341 1 #reduceActionForJSXElementName1: 44367873 false) 
	#(341 1 #liftFirstValue: 44367874 false) 
	#(338 1 #reduceActionForModuleItemList1: 44062721 false) 
	#(336 1 #reduceActionForModuleBody1: 44045313 false) 
	#(337 1 #liftFirstValue: 44062721 false) 
	#(337 1 #liftFirstValue: 44062722 false) 
	#(340 1 #reduceActionForJSXAttribute1: 44281857 false) 
	#(333 2 #reduceActionForJSXMemberExpression1: 43909121 false) 
	#(335 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 43932674 false) 
	#(328 4 #reduceActionForJSXOpeningElement3: 43004931 false) 
	#(236 4 #reduceActionForBreakStatement2: 31272962 false) 
	#(235 4 #reduceActionForContinueStatement2: 31155202 false) 
	#(234 1 #liftFirstValue: 31104001 false) 
	#(234 1 #liftFirstValue: 31104002 false) 
	#(233 2 #reduceActionForFromClause1: 31036417 false) 
	#(238 4 #reduceActionForReturnStatement2: 31421442 false) 
	#(249 2 #reduceActionForCatch2: 32744450 false) 
	#(250 2 #reduceActionForFromClause1: 32916481 false) 
	#(248 4 #reduceActionForTryStatement3: 32568323 false) 
	#(212 3 #reduceActionForNamespaceName2: 25697282 false) 
	#(402 2 #reduceActionForSimpleVariableDeclaration1: 54895617 false) 
	#(286 4 #reduceActionForClassDeclaration4: 38125572 false) 
	#(459 2 #reduceActionForAmbientBinding2: 66928642 false) 
	#(457 3 #reduceActionForLexicalDeclaration1: 66510851 false) 
	#(457 3 #reduceActionForLexicalDeclaration1: 66510850 false) 
	#(469 0 #reduceActionForDecoratorExpression__decorator__1: 68457473 false) 
	#(457 3 #reduceActionForLexicalDeclaration1: 66510849 false) 
	#(419 4 #reduceActionForEnumDeclaration1: 58643457 false) 
	#(422 1 #reduceActionForEnumMember1: 58939393 false) 
	#(420 1 #reduceActionForModuleBody1: 58793985 false) 
	#(421 1 #reduceActionForNamespaceName1: 58843137 false) 
	#(455 4 #reduceActionForExportAssignment1: 65978369 false) 
	#(454 4 #reduceActionForExportListDeclaration1: 65719297 false) 
	#(454 4 #reduceActionForExportListDeclaration2: 65719298 false) 
	#(431 1 #reduceActionForModuleBody1: 60681217 false) 
	#(407 2 #reduceActionForFromClause1: 55919617 false) 
	#(406 4 #reduceActionForInterfaceDeclaration3: 55760899 false) 
	#(406 4 #reduceActionForInterfaceDeclaration2: 55760898 false) 
	#(428 1 #liftFirstValue: 59492353 false) 
	#(428 1 #liftFirstValue: 59492354 false) 
	#(428 1 #liftFirstValue: 59492355 false) 
	#(428 1 #liftFirstValue: 59492356 false) 
	#(428 1 #liftFirstValue: 59492357 false) 
	#(428 1 #liftFirstValue: 59492359 false) 
	#(428 1 #liftFirstValue: 59492358 false) 
	#(428 1 #liftFirstValue: 59492360 false) 
	#(428 1 #liftFirstValue: 59492361 false) 
	#(426 1 #reduceActionForModuleBody1: 59348994 false) 
	#(427 1 #reduceActionForModuleItemList1: 59389953 false) 
	#(428 1 #liftFirstValue: 59492364 false) 
	#(428 1 #liftFirstValue: 59492363 false) 
	#(428 1 #liftFirstValue: 59492362 false) 
	#(425 3 #reduceActionForNamespaceName2: 59239426 false) 
	#(452 4 #reduceActionForExportDefaultImplementationElement1: 64710657 false) 
	#(452 4 #reduceActionForExportDefaultImplementationElement1: 64710658 false) 
	#(452 4 #reduceActionForExportDefaultImplementationElement1: 64710659 false) 
	#(453 4 #reduceActionForExportDefaultDeclarationElement1: 65277953 false) 
	#(453 4 #reduceActionForExportDefaultDeclarationElement1: 65277954 false) 
	#(258 4 #reduceActionForFunctionDeclaration5: 33596421 false) 
	#(389 3 #reduceActionForCallSignature1: 49118209 false) 
	#(154 3 #reduceActionForComputedPropertyName1: 13104129 false) 
	#(387 3 #reduceActionForPropertySignature4: 48884740 false) 
	#(396 3 #reduceActionForMethodSignature2: 52489218 false) 
	#(388 2 #reduceActionForFromClause1: 49061889 false) 
	#(374 3 #reduceActionForNamespaceName2: 47369218 false) 
	#(374 3 #reduceActionForNamespaceName2: 47369219 false) 
	#(377 4 #reduceActionForTupleType4: 47754244 false) 
	#(378 3 #reduceActionForNamespaceName2: 47876098 false) 
	#(357 2 #reduceActionForFromClause1: 45803521 false) 
	#(355 3 #reduceActionForNamespaceName2: 45629442 false) 
	#(385 3 #reduceActionForTypeQueryExpression2: 48715778 false) 
	#(376 4 #reduceActionForArrayType1: 47643649 false) 
	#(319 3 #reduceActionForExportSpecifier2: 42050562 false) 
	#(317 4 #reduceActionForNamedExports3: 41720835 false) 
	#(318 3 #reduceActionForNamespaceName2: 41942018 false) 
	#(312 3 #reduceActionForImportSpecifier2: 40700930 false) 
	#(309 4 #reduceActionForNamedImports3: 40301571 false) 
	#(311 3 #reduceActionForNamespaceName2: 40592386 false) 
	#(221 3 #reduceActionForBindingProperty2: 27209730 false) 
	#(215 4 #reduceActionForObjectBindingPattern4: 26070020 false) 
	#(218 3 #reduceActionForNamespaceName2: 26909698 false) 
	#(216 4 #reduceActionForArrayBindingPattern4: 26464260 false) 
	#(216 4 #reduceActionForArrayBindingPattern6: 26464262 false) 
	#(219 3 #reduceActionForBindingElementList2: 27032578 false) 
	#(404 4 #reduceActionForSimpleLexicalBinding2: 55205890 false) 
	#(405 4 #reduceActionForDestructuringLexicalBinding2: 55318530 false) 
	#(223 4 #reduceActionForSimpleLexicalBinding2: 27442180 false) 
	#(222 4 #reduceActionForBindingElement10: 27327498 false) 
	#(222 4 #reduceActionForBindingElement4: 27327492 false) 
	#(222 4 #reduceActionForBindingElement8: 27327496 false) 
	#(223 4 #reduceActionForSingleNameBinding10: 27442186 false) 
	#(223 4 #reduceActionForSingleNameBinding8: 27442184 false) 
	#(223 4 #reduceActionForSingleNameBinding5: 27442181 false) 
	#(284 1 #reduceActionForModuleBody1: 38006785 false) 
	#(297 1 #reduceActionForModuleBody1: 39327746 false) 
	#(296 1 #reduceActionForModuleBody1: 39268353 false) 
	#(292 3 #reduceActionForClassElement4: 38638596 false) 
	#(417 2 #reduceActionForMemberAccessorDeclaration1: 58267649 false) 
	#(417 2 #reduceActionForMemberAccessorDeclaration1: 58267653 false) 
	#(418 2 #reduceActionForIndexMemberDeclaration1: 58548225 false) 
	#(288 4 #reduceActionForClassTail4: 38332420 false) 
	#(170 4 #reduceActionForArguments3: 15879171 false) 
	#(171 3 #reduceActionForArgumentList3: 16069635 false) 
	#(358 3 #reduceActionForTypeArguments1: 45859841 false) 
	#(170 4 #reduceActionForArguments4: 15879172 false) 
	#(148 5 #reduceActionForObjectLiteral3: 11938819 false) 
	#(150 3 #reduceActionForNamespaceName2: 12510210 false) 
	#(151 3 #reduceActionForPropertyDefinition3: 12649475 false) 
	#(160 2 #reduceActionForTemplateMiddleList1: 13673473 false) 
	#(159 2 #reduceActionForTemplateSpans2: 13582338 false) 
	#(175 3 #reduceActionForOptionalFirst2: 17019906 false) 
	#(174 3 #reduceActionForOptionalFirst2: 16654338 false) 
	#(194 5 #reduceActionForConditionalExpression2: 21976066 false) 
	#(265 3 #reduceActionForConciseBody2: 34377730 false) 
	#(332 3 #reduceActionForJSXNamespacedName1: 43782145 false) 
	#(338 2 #reduceActionForModuleItemList2: 44062722 false) 
	#(340 2 #reduceActionForJSXAttribute2: 44281858 false) 
	#(328 5 #reduceActionForJSXOpeningElement1: 43004929 false) 
	#(398 4 #reduceActionForTypeCallSignature1: 52942849 false) 
	#(178 5 #reduceActionForUnaryExpression10: 17802250 false) 
	#(398 4 #reduceActionForTypeCallSignature3: 52942851 false) 
	#(227 5 #reduceActionForIfStatement2: 27853826 false) 
	#(240 5 #reduceActionForSwitchStatement1: 31673345 false) 
	#(251 1 #liftFirstValue: 32979969 false) 
	#(251 1 #liftFirstValue: 32979970 false) 
	#(402 3 #reduceActionForSimpleVariableDeclaration2: 54895618 false) 
	#(403 3 #reduceActionForDestructuringVariableDeclaration1: 55004161 false) 
	#(230 5 #reduceActionForWhileStatement1: 28444673 false) 
	#(239 5 #reduceActionForWithStatement1: 31538177 false) 
	#(419 5 #reduceActionForEnumDeclaration3: 58643459 false) 
	#(462 0 #reduceActionForDecoratorExpression__decorator__1: 67374081 false) 
	#(458 3 #reduceActionForNamespaceName2: 66811906 false) 
	#(460 4 #reduceActionForAmbientFunctionDeclaration1: 67014657 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643843 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643849 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643855 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643841 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643845 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643847 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643851 false) 
	#(471 1 #reduceActionForAmbientNamespaceElement3: 68643853 false) 
	#(469 1 #reduceActionForModuleBody1: 68457474 false) 
	#(470 1 #reduceActionForModuleItemList1: 68512769 false) 
	#(419 5 #reduceActionForEnumDeclaration2: 58643458 false) 
	#(420 2 #reduceActionForOptionalChain2: 58793986 false) 
	#(430 5 #reduceActionForImportAliasDeclaration1: 60542977 false) 
	#(406 5 #reduceActionForInterfaceDeclaration4: 55760900 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787266 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787265 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787267 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787268 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787269 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787271 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787270 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787272 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787273 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787275 false) 
	#(429 2 #reduceActionForExportNamespaceElement2: 59787274 false) 
	#(424 5 #reduceActionForNamespaceDeclaration1: 59095041 false) 
	#(427 2 #reduceActionForModuleItemList2: 59389954 false) 
	#(397 5 #reduceActionForTypeAliasDeclaration1: 52597761 false) 
	#(453 5 #reduceActionForExportDefaultDeclarationElement3: 65277955 false) 
	#(452 5 #reduceActionForExportDefaultImplementationElement4: 64710660 false) 
	#(258 5 #reduceActionForFunctionDeclaration6: 33596422 false) 
	#(286 5 #reduceActionForClassDeclaration5: 38125573 false) 
	#(286 5 #reduceActionForClassDeclaration9: 38125577 false) 
	#(382 5 #reduceActionForFunctionType1: 48251905 false) 
	#(389 4 #reduceActionForCallSignature2: 49118210 false) 
	#(394 4 #reduceActionForConstructSignature1: 51988481 false) 
	#(389 4 #reduceActionForCallSignature3: 49118211 false) 
	#(215 5 #reduceActionForObjectBindingPattern5: 26070021 false) 
	#(216 5 #reduceActionForArrayBindingPattern8: 26464264 false) 
	#(216 5 #reduceActionForArrayBindingPattern7: 26464263 false) 
	#(222 5 #reduceActionForBindingElement11: 27327499 false) 
	#(222 5 #reduceActionForBindingElement5: 27327493 false) 
	#(222 5 #reduceActionForBindingElement12: 27327500 false) 
	#(222 5 #reduceActionForBindingElement9: 27327497 false) 
	#(222 5 #reduceActionForBindingElement6: 27327494 false) 
	#(223 5 #reduceActionForSingleNameBinding6: 27442182 false) 
	#(269 3 #reduceActionForConciseBody2: 34741250 false) 
	#(271 1 #liftFirstValue: 35484673 false) 
	#(295 4 #reduceActionForClassStaticBlock1: 39142401 false) 
	#(417 3 #reduceActionForMemberAccessorDeclaration2: 58267650 false) 
	#(417 3 #reduceActionForMemberAccessorDeclaration2: 58267654 false) 
	#(415 3 #reduceActionForMemberVariableDeclaration1: 57644033 false) 
	#(417 3 #reduceActionForMemberAccessorDeclaration3: 58267651 false) 
	#(417 3 #reduceActionForMemberAccessorDeclaration3: 58267655 false) 
	#(408 3 #reduceActionForNamespaceName2: 56007682 false) 
	#(171 4 #reduceActionForArgumentList4: 16069636 false) 
	#(359 3 #reduceActionForNamespaceName2: 45940738 false) 
	#(170 5 #reduceActionForArguments5: 15879173 false) 
	#(160 3 #reduceActionForTemplateMiddleList2: 13673474 false) 
	#(352 0 #reduceActionForSwitchToJSXTextOrDefault21: 45316097 true) 
	#(347 1 #liftFirstValue: 45052930 false) 
	#(347 1 #liftFirstValue: 45052929 false) 
	#(327 6 #reduceActionForJSXSelfClosingElement1: 42818561 false) 
	#(328 6 #reduceActionForJSXOpeningElement2: 43004930 false) 
	#(343 1 #reduceActionForLiteral4: 44539905 false) 
	#(343 1 #liftFirstValue: 44539907 false) 
	#(343 1 #liftFirstValue: 44539908 false) 
	#(342 2 #reduceActionForFromClause1: 44463105 false) 
	#(259 6 #reduceActionForFunctionExpression3: 33811459 false) 
	#(398 5 #reduceActionForTypeCallSignature2: 52942850 false) 
	#(231 6 #reduceActionForForStatement1: 28596225 false) 
	#(231 6 #reduceActionForForStatement13: 28596237 false) 
	#(241 2 #reduceActionForCaseBlock1: 31802369 false) 
	#(242 1 #reduceActionForModuleItemList1: 31990785 false) 
	#(419 6 #reduceActionForEnumDeclaration4: 58643460 false) 
	#(464 1 #liftFirstValue: 67556355 false) 
	#(462 1 #reduceActionForModuleBody1: 67374082 false) 
	#(463 1 #reduceActionForModuleItemList1: 67425281 false) 
	#(464 1 #liftFirstValue: 67556353 false) 
	#(464 1 #liftFirstValue: 67556354 false) 
	#(472 6 #reduceActionForAmbientModuleDeclaration1: 69426177 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643844 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643850 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643856 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643842 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643846 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643848 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643852 false) 
	#(471 2 #reduceActionForExportNamespaceElement2: 68643854 false) 
	#(468 5 #reduceActionForNamespaceDeclaration1: 68278273 false) 
	#(470 2 #reduceActionForModuleItemList2: 68512770 false) 
	#(423 1 #liftFirstValue: 59048961 false) 
	#(422 3 #reduceActionForEnumMember2: 58939394 false) 
	#(421 3 #reduceActionForNamespaceName2: 58843138 false) 
	#(397 6 #reduceActionForTypeAliasDeclaration2: 52597762 false) 
	#(258 6 #reduceActionForFunctionExpression3: 33596419 false) 
	#(286 6 #reduceActionForClassDeclaration6: 38125574 false) 
	#(286 6 #reduceActionForClassDeclaration7: 38125575 false) 
	#(286 6 #reduceActionForClassDeclaration10: 38125578 false) 
	#(286 6 #reduceActionForClassDeclaration11: 38125579 false) 
	#(394 5 #reduceActionForConstructSignature2: 51988482 false) 
	#(394 5 #reduceActionForConstructSignature3: 51988483 false) 
	#(389 5 #reduceActionForCallSignature4: 49118212 false) 
	#(383 6 #reduceActionForConstructorType1: 48435201 false) 
	#(382 6 #reduceActionForFunctionType2: 48251906 false) 
	#(216 6 #reduceActionForArrayBindingPattern9: 26464265 false) 
	#(222 6 #reduceActionForBindingElement13: 27327501 false) 
	#(222 6 #reduceActionForBindingElement7: 27327495 false) 
	#(393 1 #liftFirstValue: 51293185 false) 
	#(393 1 #liftFirstValue: 51293186 false) 
	#(415 4 #reduceActionForMemberVariableDeclaration5: 57644037 false) 
	#(415 4 #reduceActionForMemberVariableDeclaration2: 57644034 false) 
	#(415 4 #reduceActionForMemberVariableDeclaration3: 57644035 false) 
	#(416 4 #reduceActionForMemberFunctionDeclaration5: 57850885 false) 
	#(417 4 #reduceActionForMemberAccessorDeclaration4: 58267652 false) 
	#(417 4 #reduceActionForMemberAccessorDeclaration4: 58267656 false) 
	#(415 4 #reduceActionForMemberVariableDeclaration9: 57644041 false) 
	#(259 7 #reduceActionForFunctionExpression1: 33811457 false) 
	#(275 1 #reduceActionForModuleBody1: 36247553 false) 
	#(346 4 #reduceActionForJSXChild3: 44812291 false) 
	#(327 7 #reduceActionForJSXSelfClosingElement2: 42818562 false) 
	#(259 7 #reduceActionForFunctionExpression4: 33811460 false) 
	#(229 7 #reduceActionForDoWhileStatement1: 28249089 false) 
	#(231 7 #reduceActionForForStatement2: 28596226 false) 
	#(231 7 #reduceActionForForStatement3: 28596227 false) 
	#(232 7 #reduceActionForForInOfStatement1: 29322241 false) 
	#(232 7 #reduceActionForForInOfStatement4: 29322244 false) 
	#(231 7 #reduceActionForForStatement5: 28596229 false) 
	#(231 7 #reduceActionForForStatement14: 28596238 false) 
	#(231 7 #reduceActionForForStatement15: 28596239 false) 
	#(232 7 #reduceActionForForInOfStatement3: 29322243 false) 
	#(232 7 #reduceActionForForInOfStatement6: 29322246 false) 
	#(227 7 #reduceActionForIfStatement1: 27853825 false) 
	#(244 2 #reduceActionForDefaultClause1: 32177153 false) 
	#(241 3 #reduceActionForCaseBlock2: 31802370 false) 
	#(242 2 #reduceActionForModuleItemList2: 31990786 false) 
	#(241 3 #reduceActionForCaseBlock3: 31802371 false) 
	#(249 5 #reduceActionForCatch1: 32744449 false) 
	#(466 2 #reduceActionForAmbientPropertyMemberDeclaration1: 67884033 false) 
	#(461 6 #reduceActionForAmbientClassDeclaration1: 67165185 false) 
	#(463 2 #reduceActionForModuleItemList2: 67425282 false) 
	#(258 7 #reduceActionForFunctionExpression1: 33596417 false) 
	#(258 7 #reduceActionForFunctionExpression4: 33596420 false) 
	#(286 7 #reduceActionForClassDeclaration8: 38125576 false) 
	#(286 7 #reduceActionForClassDeclaration12: 38125580 false) 
	#(395 6 #reduceActionForIndexSignature2: 52184066 false) 
	#(395 6 #reduceActionForIndexSignature2: 52184065 false) 
	#(394 6 #reduceActionForConstructSignature4: 51988484 false) 
	#(383 7 #reduceActionForConstructorType2: 48435202 false) 
	#(282 8 #reduceActionForAsyncFunctionExpression1: 37527553 false) 
	#(280 1 #reduceActionForModuleBody1: 37234689 false) 
	#(401 2 #reduceActionForTypedPropertySetParameterList1: 53991425 false) 
	#(270 6 #reduceActionForMethodDefinition7: 34866183 false) 
	#(415 5 #reduceActionForMemberVariableDeclaration6: 57644038 false) 
	#(415 5 #reduceActionForMemberVariableDeclaration7: 57644039 false) 
	#(416 5 #reduceActionForMemberFunctionDeclaration6: 57850886 false) 
	#(415 5 #reduceActionForMemberVariableDeclaration4: 57644036 false) 
	#(415 5 #reduceActionForMemberVariableDeclaration13: 57644045 false) 
	#(415 5 #reduceActionForMemberVariableDeclaration10: 57644042 false) 
	#(415 5 #reduceActionForMemberVariableDeclaration11: 57644043 false) 
	#(416 5 #reduceActionForMemberFunctionDeclaration7: 57850887 false) 
	#(273 8 #reduceActionForGeneratorExpression1: 35785729 false) 
	#(259 8 #reduceActionForFunctionExpression2: 33811458 false) 
	#(329 5 #reduceActionForJSXClosingElement1: 43238401 false) 
	#(346 5 #reduceActionForJSXChild4: 44812292 false) 
	#(339 5 #reduceActionForJSXSpreadAttribute1: 44129281 false) 
	#(231 8 #reduceActionForForStatement4: 28596228 false) 
	#(231 8 #reduceActionForForStatement9: 28596233 false) 
	#(232 8 #reduceActionForForInOfStatement2: 29322242 false) 
	#(232 8 #reduceActionForForInOfStatement5: 29322245 false) 
	#(231 8 #reduceActionForForStatement6: 28596230 false) 
	#(231 8 #reduceActionForForStatement7: 28596231 false) 
	#(231 8 #reduceActionForForStatement16: 28596240 false) 
	#(232 8 #reduceActionForForInOfStatement7: 29322247 false) 
	#(232 8 #reduceActionForForInOfStatement9: 29322249 false) 
	#(243 3 #reduceActionForCaseClause1: 32067585 false) 
	#(244 3 #reduceActionForDefaultClause2: 32177154 false) 
	#(241 4 #reduceActionForCaseBlock5: 31802373 false) 
	#(241 4 #reduceActionForCaseBlock4: 31802372 false) 
	#(466 3 #reduceActionForAmbientPropertyMemberDeclaration3: 67884035 false) 
	#(466 3 #reduceActionForAmbientPropertyMemberDeclaration2: 67884034 false) 
	#(466 3 #reduceActionForAmbientPropertyMemberDeclaration9: 67884041 false) 
	#(466 3 #reduceActionForAmbientPropertyMemberDeclaration5: 67884037 false) 
	#(461 7 #reduceActionForAmbientClassDeclaration2: 67165186 false) 
	#(272 8 #reduceActionForGeneratorExpression1: 35546113 false) 
	#(258 8 #reduceActionForFunctionExpression2: 33596418 false) 
	#(449 8 #reduceActionForImportRequireDeclaration1: 62925825 false) 
	#(281 8 #reduceActionForAsyncFunctionExpression1: 37274625 false) 
	#(278 9 #reduceActionForAsyncGeneratorExpression1: 36697089 false) 
	#(282 9 #reduceActionForAsyncFunctionExpression2: 37527554 false) 
	#(270 7 #reduceActionForMethodDefinition5: 34866181 false) 
	#(270 7 #reduceActionForMethodDefinition1: 34866177 false) 
	#(413 6 #reduceActionForConstructorDeclaration3: 56993795 false) 
	#(415 6 #reduceActionForMemberVariableDeclaration8: 57644040 false) 
	#(416 6 #reduceActionForMemberFunctionDeclaration1: 57850881 false) 
	#(415 6 #reduceActionForMemberVariableDeclaration14: 57644046 false) 
	#(415 6 #reduceActionForMemberVariableDeclaration15: 57644047 false) 
	#(416 6 #reduceActionForMemberFunctionDeclaration8: 57850888 false) 
	#(415 6 #reduceActionForMemberVariableDeclaration12: 57644044 false) 
	#(273 9 #reduceActionForGeneratorExpression2: 35785730 false) 
	#(330 9 #reduceActionForJSXFragment1: 43402241 false) 
	#(329 6 #reduceActionForJSXClosingElement2: 43238402 false) 
	#(231 9 #reduceActionForForStatement10: 28596234 false) 
	#(231 9 #reduceActionForForStatement11: 28596235 false) 
	#(231 9 #reduceActionForForStatement8: 28596232 false) 
	#(232 9 #reduceActionForForInOfStatement8: 29322248 false) 
	#(243 4 #reduceActionForCaseClause2: 32067586 false) 
	#(241 5 #reduceActionForCaseBlock6: 31802374 false) 
	#(466 4 #reduceActionForAmbientPropertyMemberDeclaration4: 67884036 false) 
	#(466 4 #reduceActionForAmbientPropertyMemberDeclaration10: 67884042 false) 
	#(466 4 #reduceActionForAmbientPropertyMemberDeclaration7: 67884039 false) 
	#(466 4 #reduceActionForAmbientPropertyMemberDeclaration6: 67884038 false) 
	#(466 4 #reduceActionForAmbientPropertyMemberDeclaration11: 67884043 false) 
	#(272 9 #reduceActionForGeneratorExpression2: 35546114 false) 
	#(277 9 #reduceActionForAsyncGeneratorExpression1: 36418561 false) 
	#(281 9 #reduceActionForAsyncFunctionExpression2: 37274626 false) 
	#(278 10 #reduceActionForAsyncGeneratorExpression2: 36697090 false) 
	#(274 8 #reduceActionForGeneratorMethod1: 36024321 false) 
	#(283 8 #reduceActionForAsyncMethod1: 37780481 false) 
	#(270 8 #reduceActionForMethodDefinition6: 34866182 false) 
	#(416 7 #reduceActionForMemberFunctionDeclaration2: 57850882 false) 
	#(413 7 #reduceActionForConstructorDeclaration4: 56993796 false) 
	#(415 7 #reduceActionForMemberVariableDeclaration16: 57644048 false) 
	#(416 7 #reduceActionForMemberFunctionDeclaration3: 57850883 false) 
	#(343 5 #reduceActionForJSXChild4: 44539906 false) 
	#(231 10 #reduceActionForForStatement12: 28596236 false) 
	#(465 5 #reduceActionForAmbientConstructorDeclaration1: 67674113 false) 
	#(466 5 #reduceActionForAmbientPropertyMemberDeclaration8: 67884040 false) 
	#(466 5 #reduceActionForAmbientPropertyMemberDeclaration12: 67884044 false) 
	#(277 10 #reduceActionForAsyncGeneratorExpression2: 36418562 false) 
	#(279 9 #reduceActionForAsyncGeneratorMethod1: 36974593 false) 
	#(399 9 #reduceActionForGetAccessor1: 53313537 false) 
	#(400 9 #reduceActionForSetAccessor2: 53522434 false) 
	#(413 8 #reduceActionForConstructorDeclaration1: 56993793 false) 
	#(416 8 #reduceActionForMemberFunctionDeclaration4: 57850884 false) 
	#(400 10 #reduceActionForSetAccessor1: 53522433 false) 
	#(400 10 #reduceActionForSetAccessor1: 53522435 false) 
	#(413 9 #reduceActionForConstructorDeclaration2: 56993794 false)
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'DecoratorExpression ''decorator''*' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 0 49 0 138 0 81 0 205 0 57 0 206 0 81 0 207 0 65 0 208 0 49 1 44 0 73 1 45 0 77 1 46 0 81 1 47 0 81 1 49 0 81 1 59 0 6 1 220 0 10 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 1 109 0 194 1 109 0 195 1 109 0 197 0 249 1 3 1 109 1 6 1 121 1 7 1 125 1 8 1 129 1 11 1 109 1 12 0 249 1 17 1 109 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 2 21 0 198 2 21 0 201 2 21 0 202 2 21 0 203 2 21 0 211 2 21 0 225 2 21 0 226 2 21 0 227 2 21 0 228 2 21 0 229 2 21 0 230 2 21 0 231 2 21 0 232 2 21 0 235 2 21 0 236 2 21 0 238 2 21 0 239 2 21 0 240 2 21 0 245 2 21 0 247 2 21 0 248 2 21 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 2 109 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 2 117 1 42 2 121 1 43 0 6 1 220 0 26 1 221] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 0 81 0 205 0 57 0 206 0 81 0 207 0 65 0 208 2 125 1 44 0 73 1 45 0 77 1 46 0 81 1 47 0 81 1 49 0 81 1 59 0 6 1 220 0 10 1 221] 
#[1 0 30 0 1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 2 129 0 61 2 133 0 62 2 137 0 63 1 221 0 65 1 225 0 66 2 141 0 67 0 137 0 69 1 229 0 70 2 145 0 72 0 19 0 73 1 169 0 75 1 233 0 77 2 153 0 79 1 237 0 81 2 157 0 82 2 161 0 87 0 65 0 89 2 165 0 92 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 2 169 0 111 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 2 245 0 198 2 245 0 201 2 245 0 202 2 245 0 203 2 245 0 207 0 65 0 208 2 245 0 211 2 245 0 225 2 245 0 226 2 245 0 227 2 245 0 228 2 245 0 229 2 245 0 230 2 245 0 231 2 245 0 232 2 245 0 235 2 245 0 236 2 245 0 238 2 245 0 239 2 245 0 240 2 245 0 245 2 245 0 247 2 245 0 248 2 245 0 252 2 245 1 2 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 2 245 1 16 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 2 245 1 30 0 249 1 31 2 193 1 49 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 2 197 1 134 2 201 1 141 2 205 1 150 2 245 1 163 2 213 1 168 2 217 1 174 2 221 1 176 2 225 1 177 2 229 1 178 2 233 1 179 2 237 1 180 2 241 1 181 2 245 1 182 2 249 1 183 2 253 1 184 3 1 1 185 3 5 1 186 3 9 1 187 3 13 1 188 3 17 1 189 3 21 1 190 3 25 1 191 3 29 1 192 3 17 1 193 3 17 1 194 3 29 1 195 3 17 1 196 3 29 1 197 3 53 1 198 3 57 1 199 3 61 1 200 3 65 1 216 3 69 1 220 0 23 1 221] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 3 129 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 3 129 1 126 3 129 1 127 3 145 1 128 3 145 1 130] 
#[0 0 50 0 4 0 6 0 122 1 220] 
#[1 3 209 0 4 3 213 0 26 3 217 0 56 3 221 0 61 2 133 0 62 0 65 0 63 3 225 0 68 3 229 0 79 0 65 0 89 2 1 0 113 3 233 0 199 3 233 0 200 3 233 0 207 0 65 0 208 3 245 0 211 3 233 1 2 3 233 1 16 3 233 1 21 3 233 1 25 3 233 1 30 4 13 1 60 4 17 1 61 4 21 1 220] 
#[1 4 25 0 4 4 29 0 26 0 185 0 122 4 53 0 126 4 41 0 139 4 37 1 50 4 41 1 51 4 45 1 52 4 49 1 53 4 53 1 57 4 41 1 58 4 53 1 67] 
#[0 0 54 0 4 0 6 0 122 1 220] 
#[0 0 0 1 221] 
#[0 0 58 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 4 65 0 198 4 65 0 201 4 65 0 202 4 65 0 203 4 65 0 211 4 65 0 225 4 65 0 226 4 65 0 227 4 65 0 228 4 65 0 229 4 65 0 230 4 65 0 231 4 65 0 232 4 65 0 235 4 65 0 236 4 65 0 238 4 65 0 239 4 65 0 240 4 65 0 245 4 65 0 247 4 65 0 248 4 65 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 0 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 4 77 0 139 4 81 0 209 4 85 0 210 4 89 0 214 4 89 0 215 4 89 0 216 4 85 1 148 4 85 1 149 4 109 1 220] 
#[0 0 66 1 221] 
#[0 0 70 1 221] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 4 113 0 205 0 57 0 206 4 113 0 207 0 65 0 208 4 113 1 47 4 113 1 49 4 113 1 59 0 6 1 220 0 74 1 221] 
#[0 0 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 0 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 0 86 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 90 0 3 0 27 0 4 4 117 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 4 121 0 118 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 4 125 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 4 129 0 194 4 129 0 195 4 129 0 197 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 4 149 0 253 4 153 0 254 4 157 0 255 4 161 1 0 4 165 1 1 0 249 1 3 4 129 1 6 1 121 1 7 1 125 1 8 1 129 1 11 4 129 1 12 0 249 1 17 4 129 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 169 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 4 173 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 4 177 0 118 4 181 0 119 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 4 185 0 145 4 189 0 146 4 193 0 147 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 4 197 0 194 4 197 0 195 0 249 1 3 4 197 1 6 1 121 1 7 1 125 1 8 1 129 1 11 4 197 1 12 0 249 1 17 4 197 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 4 217 0 177 4 217 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 4 217 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 4 225 0 177 4 225 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 4 225 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 4 229 0 177 4 229 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 4 229 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 4 233 0 177 4 233 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 4 233 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 4 237 0 177 4 237 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 4 237 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 4 241 0 177 4 241 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 4 241 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 245 0 2 4 249 0 79 0 185 0 122 4 253 0 139 5 1 1 7 1 125 1 8 1 129 1 11 5 5 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 5 9 0 177 5 9 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 5 9 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 5 13 0 4 5 17 0 74 0 185 0 122 5 21 0 139 5 25 1 32 5 29 1 33 5 33 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 5 37 0 177 5 37 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 5 37 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 5 41 0 2 5 45 0 26 0 185 0 122 5 49 0 139] 
#[1 5 53 0 2 5 57 0 22] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 5 61 0 22 4 205 0 56 0 133 0 61 1 169 0 75 0 145 0 79 5 65 0 82 0 153 0 93 1 165 0 94 5 69 0 104 0 165 0 107 1 169 0 109 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 5 73 0 139 5 73 0 141 5 73 0 142 5 73 0 143 5 73 0 144 5 73 0 148 0 237 0 149 5 73 0 157 0 245 0 158 5 73 0 161 5 73 0 162 5 73 0 163 5 73 0 164 5 73 0 165 5 77 0 166 5 73 1 3 5 73 1 17 5 73 1 22 5 73 1 26 5 73 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 5 73 1 69 5 73 1 70 5 73 1 71 1 193 1 72 5 73 1 74 1 201 1 92 5 81 1 220] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 5 85 0 2 5 89 0 6 5 93 0 22 5 97 0 170 5 101 1 220] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 5 105 0 177 5 105 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 5 105 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 5 109 0 177 5 109 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 5 109 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 0 93 0 2 0 110 0 3 0 14 0 4 0 110 0 5 0 97 0 6 0 110 0 7 0 110 0 8 5 113 0 26 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 110 0 119 0 110 0 120 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 110 0 132 0 110 0 133 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 5 117 0 194 5 117 0 195 0 249 1 3 5 117 1 6 1 121 1 7 1 125 1 8 1 129 1 11 5 117 1 12 0 249 1 17 5 117 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220 0 110 1 221] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 74 0 78 0 83 0 85 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 118 0 83] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 64 0 78 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 130 0 131 0 132 0 133 0 135 1 219 1 220 1 221] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 64 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 138 0 14 5 121 1 93] 
#[1 0 142 0 2 0 142 0 3 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 55 0 142 0 83 0 142 0 86 0 142 0 96 0 142 0 119 0 142 0 120 0 142 0 130 0 142 0 131 0 142 0 132 0 142 0 133 0 142 1 219 0 142 1 220 0 142 1 221] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 5 125 0 4] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 5 129 0 131] 
#[1 5 85 0 2 0 174 0 3 0 174 0 4 0 174 0 5 5 133 0 6 0 174 0 7 0 174 0 8 0 174 0 9 0 174 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 174 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 20 0 174 0 21 5 137 0 22 0 174 0 23 0 174 0 24 0 174 0 25 0 174 0 26 0 174 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 40 0 174 0 41 0 174 0 42 0 174 0 43 5 141 0 44 0 174 0 45 0 174 0 46 0 174 0 47 0 174 0 48 0 174 0 49 0 174 0 50 0 174 0 51 0 174 0 53 0 174 0 54 0 174 0 55 0 174 0 83 0 174 0 86 0 174 0 96 0 174 0 119 0 174 0 120 0 205 0 130 0 18 0 131 0 174 0 132 0 174 0 133 5 145 0 157 0 245 0 158 5 149 0 170 5 153 0 173 0 174 1 219 5 101 1 220 0 174 1 221] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 194 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 132 0 133 1 219 1 221] 
#[1 5 85 0 2 0 198 0 3 0 198 0 4 0 198 0 5 5 157 0 6 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 161 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 5 141 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 55 0 198 0 83 0 198 0 86 0 198 0 96 0 198 0 119 0 198 0 120 0 205 0 130 0 18 0 131 0 198 0 132 0 198 0 133 5 165 0 157 0 245 0 158 5 169 0 170 5 173 0 173 0 198 1 219 5 101 1 220 0 198 1 221] 
#[0 0 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 0 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 15 0 210 0 16 0 210 0 17 0 210 0 18 0 210 0 20 0 210 0 21 0 210 0 23 0 210 0 24 0 210 0 25 0 210 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 210 0 34 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 40 0 210 0 41 0 210 0 42 0 210 0 43 5 141 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 0 210 0 49 0 210 0 50 0 210 0 51 0 210 0 53 0 210 0 54 0 210 0 55 0 210 0 83 0 210 0 86 0 210 0 96 0 210 0 119 0 210 0 120 0 210 0 132 0 210 0 133 5 177 0 173 0 210 1 219 0 210 1 221] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 0 214 0 9 5 253 0 10 0 214 0 11 0 214 0 12 5 253 0 13 0 214 0 14 0 214 0 15 5 253 0 16 5 253 0 17 0 214 0 18 0 214 0 20 0 214 0 21 5 253 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 5 253 0 28 5 253 0 29 5 253 0 30 5 253 0 31 5 253 0 32 5 253 0 33 5 253 0 34 0 214 0 35 5 229 0 36 0 214 0 37 5 233 0 38 0 214 0 40 0 214 0 41 5 253 0 42 0 214 0 43 0 214 0 45 5 253 0 46 0 214 0 47 0 214 0 48 0 214 0 49 5 253 0 50 0 214 0 51 0 214 0 53 0 214 0 54 5 249 0 55 0 214 0 83 0 214 0 86 0 214 0 119 0 214 0 120 0 214 0 132 0 214 0 133 5 253 0 196 5 253 1 219 0 214 1 221] 
#[0 0 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 9 0 222 0 11 0 222 0 12 0 222 0 14 0 222 0 15 0 222 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 0 222 0 26 6 5 0 27 0 222 0 35 0 222 0 37 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 47 0 222 0 48 0 222 0 49 0 222 0 51 0 222 0 53 0 222 0 54 0 222 0 83 0 222 0 86 0 222 0 119 0 222 0 120 0 222 0 132 0 222 0 133 0 222 1 221] 
#[0 0 226 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 6 21 0 9 0 230 0 11 0 230 0 12 0 230 0 14 0 230 0 15 0 230 0 18 0 230 0 20 0 230 0 21 0 230 0 24 0 230 0 25 6 21 0 26 0 230 0 35 0 230 0 37 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 6 21 0 47 0 230 0 48 0 230 0 49 0 230 0 51 0 230 0 53 0 230 0 54 0 230 0 83 0 230 0 86 0 230 0 119 0 230 0 120 0 230 0 132 0 230 0 133 6 21 0 181 0 230 1 221] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 0 234 0 11 0 234 0 12 0 234 0 14 0 234 0 15 0 234 0 18 0 234 0 20 0 234 0 21 0 234 0 24 0 234 0 25 6 25 0 35 6 29 0 37 0 234 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 48 0 234 0 49 0 234 0 51 0 234 0 53 0 234 0 54 0 234 0 83 0 234 0 86 0 234 0 119 0 234 0 120 0 234 0 132 0 234 0 133 0 234 1 221] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 0 238 0 11 6 33 0 12 0 238 0 14 6 37 0 15 6 41 0 18 0 238 0 20 0 238 0 21 0 238 0 24 0 238 0 25 0 238 0 40 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 48 0 238 0 49 0 238 0 51 0 238 0 53 0 238 0 54 0 238 0 83 0 238 0 86 0 238 0 119 0 238 0 120 0 238 0 132 0 238 0 133 0 238 1 221] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 6 45 0 11 6 49 0 14 6 53 0 20 6 57 0 21 0 242 0 24 0 242 0 25 0 242 0 40 0 242 0 41 0 242 0 43 0 242 0 45 0 242 0 48 0 242 0 49 0 242 0 51 0 242 0 53 0 242 0 54 6 61 0 83 6 65 0 86 0 242 0 119 0 242 0 120 0 242 0 132 0 242 0 133 0 242 1 221] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 6 69 0 24 6 73 0 25 0 246 0 40 0 246 0 41 0 246 0 43 0 246 0 45 0 246 0 48 0 246 0 49 0 246 0 51 6 77 0 53 6 81 0 54 0 246 0 119 0 246 0 120 0 246 0 132 0 246 0 133 0 246 1 221] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 6 85 0 40 0 250 0 41 0 250 0 43 0 250 0 45 0 250 0 48 0 250 0 49 0 250 0 51 0 250 0 119 0 250 0 120 0 250 0 132 0 250 0 133 0 250 1 221] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 0 254 0 41 0 254 0 43 0 254 0 45 0 254 0 48 0 254 0 49 6 89 0 51 0 254 0 119 0 254 0 120 0 254 0 132 0 254 0 133 0 254 1 221] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 41 1 2 0 43 1 6 0 45 6 93 0 48 1 2 0 49 1 2 0 119 1 2 0 120 1 2 0 132 1 2 0 133 1 2 1 221] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 6 97 0 41 1 10 0 43 1 10 0 49 1 10 0 119 1 10 0 120 1 10 0 132 1 10 0 133 1 10 1 221] 
#[1 1 14 0 3 1 14 0 5 1 14 0 7 1 14 0 8 1 14 0 43 6 101 0 49 1 14 0 119 1 14 0 120 1 14 0 132 1 14 0 133 1 14 1 221] 
#[1 1 18 0 3 1 18 0 5 1 18 0 7 1 18 0 8 1 18 0 43 1 22 0 45 1 18 0 119 1 18 0 120 1 18 0 132 1 18 0 133 1 18 1 221] 
#[0 6 105 0 45] 
#[1 1 26 0 3 1 26 0 5 1 26 0 7 1 26 0 8 6 109 0 43 1 26 0 119 1 26 0 120 1 26 0 132 1 26 0 133 1 26 1 221] 
#[0 1 30 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 1 34 0 3 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[1 6 113 0 119 0 0 1 221] 
#[0 1 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 42 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 6 117 0 19] 
#[0 1 46 0 19] 
#[0 1 50 0 19] 
#[0 1 54 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 62 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 74 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 121 0 83] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 0 134 0 135 0 136 1 219 1 220 1 221] 
#[1 1 110 0 4 1 110 0 134 1 110 0 136 6 125 1 94] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 129 0 134] 
#[1 6 133 0 2 6 137 0 11 6 141 0 79 6 145 1 98 6 149 1 142] 
#[1 0 6 0 2 0 6 0 4 6 153 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 6 157 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 0 6 1 220] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 1 122 0 8 1 122 0 122 6 161 0 237] 
#[1 1 122 0 8 1 122 0 122 6 165 0 237] 
#[0 6 169 0 8] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 6 173 0 198 6 173 0 201 6 173 0 202 6 173 0 203 6 173 0 211 6 173 0 225 6 173 0 226 6 173 0 227 6 173 0 228 6 173 0 229 6 173 0 230 6 173 0 231 6 173 0 232 6 173 0 235 6 173 0 236 6 173 0 238 6 173 0 239 6 173 0 240 6 173 0 245 6 173 0 247 6 173 0 248 6 173 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 6 177 0 2 6 181 0 57] 
#[0 6 185 0 2] 
#[1 1 122 0 2 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 52 1 122 0 56 1 122 0 57 1 122 0 61 1 122 0 69 1 122 0 75 1 122 0 79 1 122 0 82 1 122 0 93 1 122 0 94 1 122 0 104 1 122 0 107 1 122 0 109 1 122 0 112 1 122 0 114 1 122 0 117 1 122 0 122 1 122 0 124 1 122 0 126 1 122 0 127 1 122 0 128 1 122 0 130 1 122 0 131 1 122 0 134 6 189 0 237 1 122 1 220] 
#[0 6 193 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 6 197 0 194 6 197 0 195 6 197 0 197 0 249 1 3 6 197 1 6 1 121 1 7 1 125 1 8 1 129 1 11 6 197 1 12 0 249 1 17 6 197 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 1 209 0 4 6 201 0 203] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 6 205 0 139 6 209 0 212 6 213 0 213 6 217 0 214 6 217 0 215 6 217 0 216 6 221 1 220] 
#[0 6 225 0 2] 
#[0 6 229 0 2] 
#[1 0 114 0 2 0 114 0 6 0 114 0 8 0 114 0 9 0 114 0 10 0 114 0 11 0 114 0 12 0 114 0 13 0 114 0 14 0 114 0 15 0 114 0 16 0 114 0 17 0 114 0 18 0 114 0 19 0 114 0 20 0 114 0 21 0 114 0 22 0 114 0 23 0 114 0 24 0 114 0 25 0 114 0 26 0 114 0 27 0 114 0 28 0 114 0 29 0 114 0 30 0 114 0 31 0 114 0 32 0 114 0 33 0 114 0 34 0 114 0 35 0 114 0 36 0 114 0 37 0 114 0 38 0 114 0 40 0 114 0 41 0 114 0 42 0 114 0 43 0 114 0 44 0 114 0 45 0 114 0 46 0 114 0 47 0 114 0 48 0 114 0 49 0 114 0 50 0 114 0 51 0 114 0 53 0 114 0 54 0 114 0 55 0 114 0 83 0 114 0 86 0 114 0 119 6 233 0 120 0 114 0 130 0 114 0 131 0 114 1 219 0 114 1 220] 
#[1 6 237 0 8 6 113 0 119] 
#[0 0 0 1 221] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 6 241 0 205 0 57 0 206 6 241 0 207 0 65 0 208 0 6 1 220 1 210 1 221] 
#[0 1 214 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 0 0 1 221] 
#[0 1 218 1 221] 
#[0 0 0 1 221] 
#[1 5 13 0 4 5 17 0 74 0 185 0 122 6 245 0 139 6 249 1 32 5 29 1 33 5 33 1 220] 
#[0 6 253 0 61] 
#[1 0 50 0 4 0 50 0 6 7 1 0 72 0 50 0 122 0 50 1 220] 
#[1 7 5 0 61 7 9 0 63 2 145 0 72 7 13 0 79 7 17 0 89 7 21 0 91 7 25 0 92 7 29 0 113 7 49 1 163 7 37 1 201 7 41 1 204 7 45 1 205 7 49 1 211 7 53 1 212] 
#[1 0 185 0 122 7 57 0 139] 
#[1 3 209 0 4 7 61 0 23 7 65 0 26 7 69 1 61] 
#[1 7 73 0 2 7 77 0 26 0 185 0 122 7 81 0 139] 
#[1 5 53 0 2 4 25 0 4 5 57 0 22 4 29 0 26 0 185 0 122 4 53 0 126 7 85 0 139 4 37 1 50 4 41 1 51 4 45 1 52 4 49 1 53 4 53 1 57 4 41 1 58 4 53 1 67] 
#[1 0 185 0 122 7 89 0 139] 
#[1 0 185 0 122 7 93 0 139 7 97 1 169] 
#[1 0 185 0 122 7 101 0 139] 
#[0 1 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 1 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 31 0 1 1 246 0 2 1 246 0 4 1 246 0 6 1 246 0 8 1 246 0 35 1 246 0 36 1 246 0 37 1 246 0 38 1 246 0 39 1 246 0 52 1 246 0 56 1 246 0 57 1 246 0 58 1 246 0 61 1 246 0 62 1 246 0 63 1 246 0 65 1 246 0 66 0 31 0 67 1 246 0 69 1 246 0 70 1 246 0 72 0 31 0 73 1 246 0 75 1 246 0 77 1 246 0 79 1 246 0 81 0 31 0 82 0 31 0 87 1 246 0 89 0 31 0 92 1 246 0 93 1 246 0 94 1 246 0 100 1 246 0 104 1 246 0 105 1 246 0 107 1 246 0 108 1 246 0 109 1 246 0 110 0 31 0 111 1 246 0 112 1 246 0 113 1 246 0 114 1 246 0 115 1 246 0 116 1 246 0 117 1 246 0 122 1 246 0 124 1 246 0 126 1 246 0 127 1 246 0 128 1 246 0 130 1 246 0 131 1 246 0 134 1 246 1 220 0 31 1 221] 
#[1 7 105 0 1 7 109 0 73 7 113 1 217] 
#[1 0 35 0 1 1 254 0 2 1 254 0 4 1 254 0 6 1 254 0 8 1 254 0 35 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 52 1 254 0 56 1 254 0 57 1 254 0 58 1 254 0 61 1 254 0 62 1 254 0 63 1 254 0 65 1 254 0 66 0 35 0 67 1 254 0 69 1 254 0 70 1 254 0 72 0 35 0 73 1 254 0 75 1 254 0 77 1 254 0 79 1 254 0 81 0 35 0 82 0 35 0 87 1 254 0 89 0 35 0 92 1 254 0 93 1 254 0 94 1 254 0 100 1 254 0 104 1 254 0 105 1 254 0 107 1 254 0 108 1 254 0 109 1 254 0 110 0 35 0 111 1 254 0 112 1 254 0 113 1 254 0 114 1 254 0 115 1 254 0 116 1 254 0 117 1 254 0 122 1 254 0 124 1 254 0 126 1 254 0 127 1 254 0 128 1 254 0 130 1 254 0 131 1 254 0 134 1 254 1 220 0 35 1 221] 
#[1 0 39 0 1 2 2 0 2 2 2 0 4 2 2 0 6 2 2 0 8 2 2 0 35 2 2 0 36 2 2 0 37 2 2 0 38 2 2 0 39 2 2 0 52 2 2 0 56 2 2 0 57 2 2 0 58 2 2 0 61 2 2 0 62 2 2 0 63 2 2 0 65 2 2 0 66 0 39 0 67 2 2 0 69 2 2 0 70 2 2 0 72 0 39 0 73 2 2 0 75 2 2 0 77 2 2 0 79 2 2 0 81 0 39 0 82 0 39 0 87 2 2 0 89 0 39 0 92 2 2 0 93 2 2 0 94 2 2 0 100 2 2 0 104 2 2 0 105 2 2 0 107 2 2 0 108 2 2 0 109 2 2 0 110 0 39 0 111 2 2 0 112 2 2 0 113 2 2 0 114 2 2 0 115 2 2 0 116 2 2 0 117 2 2 0 122 2 2 0 124 2 2 0 126 2 2 0 127 2 2 0 128 2 2 0 130 2 2 0 131 2 2 0 134 2 2 1 220 0 39 1 221] 
#[0 2 10 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 43 0 1 2 18 0 2 2 18 0 4 2 18 0 6 2 18 0 8 2 18 0 35 2 18 0 36 2 18 0 37 2 18 0 38 2 18 0 39 2 18 0 52 2 18 0 56 2 18 0 57 2 18 0 58 2 18 0 61 2 18 0 62 2 18 0 63 2 18 0 65 2 18 0 66 0 43 0 67 2 18 0 69 2 18 0 70 2 18 0 72 0 43 0 73 2 18 0 75 2 18 0 77 2 18 0 79 2 18 0 81 0 43 0 82 0 43 0 87 2 18 0 89 0 43 0 92 2 18 0 93 2 18 0 94 2 18 0 100 2 18 0 104 2 18 0 105 2 18 0 107 2 18 0 108 2 18 0 109 2 18 0 110 0 43 0 111 2 18 0 112 2 18 0 113 2 18 0 114 2 18 0 115 2 18 0 116 2 18 0 117 2 18 0 122 2 18 0 124 2 18 0 126 2 18 0 127 2 18 0 128 2 18 0 130 2 18 0 131 2 18 0 134 2 18 1 220 0 43 1 221] 
#[1 0 47 0 1 0 51 0 2 0 51 0 4 0 51 0 6 0 51 0 8 0 51 0 35 0 51 0 36 0 51 0 37 0 51 0 38 0 51 0 39 0 51 0 52 0 51 0 56 0 51 0 57 0 51 0 58 0 51 0 61 0 51 0 62 0 51 0 63 0 51 0 65 0 51 0 66 0 47 0 67 0 51 0 69 0 51 0 70 0 51 0 72 0 47 0 73 0 51 0 75 0 51 0 77 0 51 0 79 0 51 0 81 0 47 0 82 0 47 0 87 0 51 0 89 0 47 0 92 0 51 0 93 0 51 0 94 0 51 0 100 0 51 0 104 0 51 0 105 0 51 0 107 0 51 0 108 0 51 0 109 0 51 0 110 0 47 0 111 0 51 0 112 0 51 0 113 0 51 0 114 0 51 0 115 0 51 0 116 0 51 0 117 0 51 0 122 0 51 0 124 0 51 0 126 0 51 0 127 0 51 0 128 0 51 0 130 0 51 0 131 0 51 0 134 0 51 1 220 0 47 1 221] 
#[0 0 0 1 221] 
#[0 2 34 1 221] 
#[0 2 38 1 221] 
#[0 2 42 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 2 129 0 61 2 133 0 62 2 137 0 63 1 221 0 65 1 225 0 66 2 141 0 67 0 137 0 69 1 229 0 70 2 145 0 72 1 169 0 75 1 233 0 77 2 153 0 79 1 237 0 81 7 117 0 82 2 161 0 87 0 65 0 89 2 165 0 92 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 2 169 0 111 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 7 137 0 198 7 137 0 201 7 137 0 202 7 137 0 203 7 137 0 207 0 65 0 208 7 137 0 211 7 137 0 225 7 137 0 226 7 137 0 227 7 137 0 228 7 137 0 229 7 137 0 230 7 137 0 231 7 137 0 232 7 137 0 235 7 137 0 236 7 137 0 238 7 137 0 239 7 137 0 240 7 137 0 245 7 137 0 247 7 137 0 248 7 137 0 252 7 137 1 2 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 7 137 1 16 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 7 137 1 30 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 7 137 1 141 7 137 1 150 7 137 1 163 7 137 1 168 7 137 1 174 7 137 1 181 7 137 1 182 7 137 1 200 7 137 1 216 3 69 1 220 2 46 1 221] 
#[0 2 50 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 2 54 0 1 0 55 0 2 0 55 0 4 0 55 0 6 0 55 0 8 0 55 0 35 0 55 0 36 0 55 0 37 0 55 0 38 0 55 0 39 0 55 0 52 0 55 0 56 0 55 0 57 0 55 0 58 0 55 0 61 0 55 0 62 0 55 0 63 0 55 0 65 0 55 0 66 0 55 0 67 0 55 0 69 0 55 0 70 0 55 0 72 2 54 0 73 0 55 0 75 0 55 0 77 0 55 0 79 0 55 0 81 0 55 0 82 0 55 0 87 0 55 0 89 0 55 0 92 0 55 0 93 0 55 0 94 0 55 0 100 0 55 0 104 0 55 0 105 0 55 0 107 0 55 0 108 0 55 0 109 0 55 0 110 0 55 0 111 0 55 0 112 0 55 0 113 0 55 0 114 0 55 0 115 0 55 0 116 0 55 0 117 0 55 0 122 0 55 0 124 0 55 0 126 0 55 0 127 0 55 0 128 0 55 0 130 0 55 0 131 0 55 0 134 0 55 1 220 0 55 1 221] 
#[0 2 62 1 221] 
#[1 2 141 0 67 7 153 0 82 2 161 0 87 2 165 0 92 2 169 0 111 7 173 1 141 7 173 1 150 7 173 1 168 7 173 1 174 7 173 1 185 7 173 1 186 7 173 1 200 7 173 1 216 2 66 1 221] 
#[0 2 70 0 67 0 82 0 87 0 92 0 111 1 221] 
#[1 2 74 0 1 0 59 0 67 2 74 0 73 0 59 0 82 0 59 0 87 0 59 0 92 0 59 0 111 0 59 1 221] 
#[0 2 82 1 221] 
#[1 0 30 0 1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 2 129 0 61 2 133 0 62 2 137 0 63 1 221 0 65 1 225 0 66 7 189 0 67 0 137 0 69 1 229 0 70 2 145 0 72 0 19 0 73 1 169 0 75 1 233 0 77 2 153 0 79 1 237 0 81 2 157 0 82 2 161 0 87 0 65 0 89 2 165 0 92 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 2 169 0 111 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 7 209 0 198 7 209 0 201 7 209 0 202 7 209 0 203 7 209 0 207 0 65 0 208 7 209 0 211 7 209 0 225 7 209 0 226 7 209 0 227 7 209 0 228 7 209 0 229 7 209 0 230 7 209 0 231 7 209 0 232 7 209 0 235 7 209 0 236 7 209 0 238 7 209 0 239 7 209 0 240 7 209 0 245 7 209 0 247 7 209 0 248 7 209 0 252 7 209 1 2 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 7 209 1 16 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 7 209 1 30 0 249 1 31 7 209 1 49 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 7 197 1 134 7 209 1 141 7 209 1 150 7 209 1 163 7 209 1 168 7 201 1 174 7 209 1 182 7 209 1 189 7 209 1 193 7 209 1 194 7 209 1 196 7 209 1 198 7 209 1 199 7 209 1 200 3 69 1 220 2 86 1 221] 
#[0 2 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 94 1 221] 
#[1 0 30 0 1 2 98 0 5 7 189 0 67 0 19 0 73 7 221 0 82 2 161 0 87 2 165 0 92 2 169 0 111 7 237 1 49 7 229 1 134 7 237 1 141 7 237 1 150 7 237 1 168 7 237 1 174 7 237 1 186 7 237 1 192 7 237 1 195 7 237 1 197 7 237 1 198 7 237 1 199 7 237 1 200 2 98 1 221] 
#[0 2 102 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 106 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 110 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 114 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 118 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 122 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[1 0 63 0 1 2 130 0 2 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 2 130 0 52 2 130 0 56 2 130 0 57 2 130 0 58 2 130 0 61 2 130 0 62 2 130 0 63 2 130 0 65 2 130 0 66 0 63 0 67 2 130 0 69 2 130 0 70 2 130 0 72 0 63 0 73 2 130 0 75 2 130 0 77 2 130 0 79 2 130 0 81 0 63 0 82 0 63 0 87 2 130 0 89 0 63 0 92 2 130 0 93 2 130 0 94 2 130 0 100 2 130 0 104 2 130 0 105 2 130 0 107 2 130 0 108 2 130 0 109 2 130 0 110 0 63 0 111 2 130 0 112 2 130 0 113 2 130 0 114 2 130 0 115 2 130 0 116 2 130 0 117 2 130 0 122 2 130 0 124 2 130 0 126 2 130 0 127 2 130 0 128 2 130 0 130 2 130 0 131 2 130 0 134 2 130 1 220 0 63 1 221] 
#[1 0 67 0 1 2 134 0 2 2 134 0 4 2 134 0 6 2 134 0 8 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 38 2 134 0 39 2 134 0 52 2 134 0 56 2 134 0 57 2 134 0 58 2 134 0 61 2 134 0 62 2 134 0 63 2 134 0 65 2 134 0 66 0 67 0 67 2 134 0 69 2 134 0 70 2 134 0 72 0 67 0 73 2 134 0 75 2 134 0 77 2 134 0 79 2 134 0 81 0 67 0 82 0 67 0 87 2 134 0 89 0 67 0 92 2 134 0 93 2 134 0 94 2 134 0 100 2 134 0 104 2 134 0 105 2 134 0 107 2 134 0 108 2 134 0 109 2 134 0 110 0 67 0 111 2 134 0 112 2 134 0 113 2 134 0 114 2 134 0 115 2 134 0 116 2 134 0 117 2 134 0 122 2 134 0 124 2 134 0 126 2 134 0 127 2 134 0 128 2 134 0 130 2 134 0 131 2 134 0 134 2 134 1 220 0 67 1 221] 
#[1 0 71 0 1 2 142 0 2 2 142 0 4 2 142 0 6 2 142 0 8 2 142 0 35 2 142 0 36 2 142 0 37 2 142 0 38 2 142 0 39 2 142 0 52 2 142 0 56 2 142 0 57 2 142 0 58 2 142 0 61 2 142 0 62 2 142 0 63 2 142 0 65 2 142 0 66 0 71 0 67 2 142 0 69 2 142 0 70 2 142 0 72 0 71 0 73 2 142 0 75 2 142 0 77 2 142 0 79 2 142 0 81 0 71 0 82 0 71 0 87 2 142 0 89 0 71 0 92 2 142 0 93 2 142 0 94 2 142 0 100 2 142 0 104 2 142 0 105 2 142 0 107 2 142 0 108 2 142 0 109 2 142 0 110 0 71 0 111 2 142 0 112 2 142 0 113 2 142 0 114 2 142 0 115 2 142 0 116 2 142 0 117 2 142 0 122 2 142 0 124 2 142 0 126 2 142 0 127 2 142 0 128 2 142 0 130 2 142 0 131 2 142 0 134 2 142 1 220 0 71 1 221] 
#[1 2 150 0 2 2 150 0 4 2 150 0 6 2 150 0 8 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 38 2 150 0 39 2 150 0 52 2 150 0 56 2 150 0 57 2 150 0 58 2 150 0 61 2 150 0 62 2 150 0 63 2 150 0 65 2 150 0 66 0 75 0 67 2 150 0 69 2 150 0 70 2 150 0 72 2 150 0 75 2 150 0 77 2 150 0 79 2 150 0 81 0 75 0 82 0 75 0 87 2 150 0 89 0 75 0 92 2 150 0 93 2 150 0 94 2 150 0 100 2 150 0 104 2 150 0 105 2 150 0 107 2 150 0 108 2 150 0 109 2 150 0 110 0 75 0 111 2 150 0 112 2 150 0 113 2 150 0 114 2 150 0 115 2 150 0 116 2 150 0 117 2 150 0 122 2 150 0 124 2 150 0 126 2 150 0 127 2 150 0 128 2 150 0 130 2 150 0 131 2 150 0 134 2 150 1 220 0 75 1 221] 
#[1 0 79 0 1 6 133 0 2 6 137 0 11 0 30 0 61 0 30 0 62 7 249 0 79 6 145 1 98 7 253 1 134 6 149 1 142 8 1 1 217] 
#[1 3 73 0 2 0 90 0 3 8 5 0 4 8 9 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 4 121 0 118 0 185 0 122 3 117 0 126 3 121 0 127 8 13 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 8 17 0 254 4 157 0 255 4 161 1 0 4 165 1 1 3 117 1 67 3 121 1 68 3 125 1 98 8 21 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 8 21 1 126 8 21 1 127 3 145 1 128 3 145 1 130 8 25 1 220] 
#[1 8 29 0 2 8 33 0 5 8 37 0 6 3 85 0 11 8 41 0 93 8 45 0 123 8 65 0 126 8 69 0 127 8 53 0 140 8 53 0 152 8 53 0 153 8 53 0 154 8 65 1 67 8 69 1 68 8 73 1 98 8 77 1 117 8 81 1 118 8 85 1 119 8 85 1 131 8 85 1 133 8 85 1 138 8 85 1 139 8 85 1 140] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 8 109 0 7 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 8 113 0 119 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 8 125 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 8 121 1 122 8 125 1 123 3 133 1 124 3 137 1 125 8 125 1 126 8 125 1 127 3 145 1 128 3 145 1 130] 
#[1 0 185 0 122 8 129 0 139 8 133 1 99 8 137 1 100] 
#[1 8 141 0 2 3 77 0 4 3 81 0 6 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 8 145 1 109 8 145 1 110 8 145 1 111 8 145 1 112 8 145 1 113 3 165 1 114 3 169 1 115 8 145 1 116 8 145 1 120 8 145 1 121 8 145 1 128 8 145 1 130] 
#[1 8 141 0 2 3 77 0 4 3 81 0 6 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 8 149 1 109 8 149 1 110 8 149 1 111 8 149 1 112 8 149 1 113 3 165 1 114 3 169 1 115 8 149 1 116 8 149 1 120 8 149 1 121 8 149 1 128 8 149 1 130] 
#[1 8 153 0 2 3 85 0 11 8 157 1 98] 
#[0 2 158 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 0 185 0 122 8 161 0 139 8 165 1 129] 
#[0 2 162 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 2 166 0 3 2 166 0 4 2 166 0 5 2 166 0 6 2 166 0 7 2 166 0 8 2 166 0 9 2 166 0 11 2 166 0 12 2 166 0 14 2 166 0 15 2 166 0 18 2 166 0 19 2 166 0 20 2 166 0 21 2 170 0 22 2 166 0 23 2 166 0 24 2 166 0 25 2 166 0 26 2 166 0 27 2 166 0 35 2 166 0 37 2 166 0 40 2 166 0 41 2 166 0 43 2 166 0 45 2 166 0 47 2 166 0 48 2 166 0 49 2 166 0 51 2 166 0 53 2 166 0 54 2 166 0 64 2 166 0 83 2 166 0 85 2 166 0 86 2 166 0 97 2 166 0 98 2 166 0 99 2 166 0 102 2 166 0 119 2 166 0 120 2 166 0 123 2 166 0 126 2 166 0 127 2 166 0 132 2 166 0 133 2 166 1 221] 
#[0 2 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 8 169 0 2] 
#[0 0 0 1 221] 
#[1 2 182 0 3 2 182 0 4 2 182 0 5 2 182 0 6 2 182 0 7 2 182 0 8 2 182 0 9 2 182 0 11 2 182 0 12 2 182 0 14 2 182 0 15 2 182 0 18 2 182 0 19 2 182 0 20 2 182 0 21 2 182 0 23 2 182 0 24 2 182 0 25 2 182 0 26 2 182 0 27 2 182 0 35 2 182 0 37 2 182 0 40 2 182 0 41 2 182 0 43 2 182 0 45 2 182 0 47 0 83 0 48 2 182 0 49 2 182 0 51 2 182 0 53 2 182 0 54 2 182 0 64 2 182 0 83 2 182 0 86 2 182 0 97 2 182 0 98 2 182 0 99 2 182 0 102 2 182 0 119 2 182 0 120 2 182 0 123 2 182 0 126 2 182 0 127 2 182 0 132 2 182 0 133 2 182 1 221] 
#[1 2 186 0 3 2 186 0 4 2 186 0 5 2 186 0 6 2 186 0 7 2 186 0 8 2 186 0 9 2 186 0 11 2 186 0 12 2 186 0 14 2 186 0 15 2 186 0 18 2 186 0 19 2 186 0 20 2 186 0 21 2 186 0 23 2 186 0 24 2 186 0 25 2 186 0 26 2 186 0 27 2 186 0 35 2 186 0 37 0 87 0 40 2 186 0 41 2 186 0 43 2 186 0 45 2 186 0 47 2 186 0 48 2 186 0 49 2 186 0 51 2 186 0 53 2 186 0 54 2 186 0 64 2 186 0 83 2 186 0 86 2 186 0 97 2 186 0 98 2 186 0 99 2 186 0 102 2 186 0 119 2 186 0 120 2 186 0 123 2 186 0 126 2 186 0 127 2 186 0 132 2 186 0 133 2 186 1 221] 
#[0 2 190 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 2 194 0 3 2 194 0 4 2 194 0 5 0 91 0 6 2 194 0 7 2 194 0 8 2 194 0 9 2 194 0 11 2 194 0 12 2 194 0 14 2 194 0 15 2 194 0 18 2 194 0 19 2 194 0 20 2 194 0 21 2 194 0 23 2 194 0 24 2 194 0 25 2 194 0 26 2 194 0 27 2 194 0 35 2 194 0 37 2 194 0 40 2 194 0 41 2 194 0 43 2 194 0 45 2 194 0 47 2 194 0 48 2 194 0 49 2 194 0 51 2 194 0 53 2 194 0 54 2 194 0 64 2 194 0 83 2 194 0 86 2 194 0 97 2 194 0 98 2 194 0 99 2 194 0 102 2 194 0 119 2 194 0 120 2 194 0 123 2 194 0 126 2 194 0 127 2 194 0 132 2 194 0 133 8 181 0 237 2 194 1 221] 
#[0 2 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 206 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 210 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 1 122 0 3 1 122 0 4 1 122 0 5 1 122 0 6 1 122 0 7 1 122 0 8 1 122 0 9 1 122 0 11 1 122 0 12 1 122 0 14 1 122 0 15 1 122 0 18 1 122 0 19 1 122 0 20 1 122 0 21 1 122 0 23 1 122 0 24 1 122 0 25 1 122 0 26 1 122 0 27 1 122 0 35 1 122 0 37 1 122 0 40 1 122 0 41 1 122 0 43 1 122 0 45 1 122 0 47 1 122 0 48 1 122 0 49 1 122 0 51 1 122 0 53 1 122 0 54 1 122 0 64 1 122 0 83 1 122 0 85 1 122 0 86 1 122 0 97 1 122 0 98 1 122 0 99 1 122 0 102 1 122 0 119 1 122 0 120 1 122 0 123 1 122 0 126 1 122 0 127 1 122 0 132 1 122 0 133 8 185 0 237 1 122 1 221] 
#[0 8 189 0 22] 
#[0 2 214 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 226 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 230 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 242 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 2 246 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 8 193 0 5 8 201 0 123 8 201 0 126 8 201 1 48 8 205 1 62 8 209 1 63 8 201 1 67] 
#[1 8 217 0 55 2 250 0 78] 
#[0 8 221 0 79] 
#[1 5 13 0 4 5 17 0 74 0 185 0 122 8 225 0 139 8 229 1 32 5 29 1 33 5 33 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 8 233 0 194 8 233 0 195 0 249 1 3 8 233 1 6 1 121 1 7 1 125 1 8 1 129 1 11 8 233 1 12 0 249 1 17 8 233 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 8 237 0 2 8 241 0 26 0 185 0 122 8 245 0 139] 
#[0 2 254 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 2 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 6 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 10 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 14 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 18 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 22 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 26 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 3 30 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 8 249 0 78 8 253 1 54] 
#[1 9 1 0 8 3 34 0 78] 
#[1 0 79 0 1 0 30 0 61 0 30 0 62 9 5 0 63 2 145 0 72 9 9 0 79 2 161 0 87 2 169 0 111 7 253 1 134 9 13 1 141 9 17 1 150 9 21 1 163 8 1 1 217] 
#[1 9 25 0 5 0 185 0 122 9 29 0 123 9 29 0 126 9 41 0 139 9 29 1 48 9 33 1 55 9 37 1 56 9 41 1 58 9 29 1 67] 
#[0 9 45 0 55] 
#[0 3 38 0 5 0 78 0 119] 
#[1 8 249 0 78 9 49 1 54] 
#[1 3 42 0 78 9 53 0 119] 
#[0 3 46 0 78] 
#[0 3 50 0 78] 
#[0 9 57 0 8] 
#[0 3 54 0 78 0 119] 
#[0 3 58 0 8] 
#[0 3 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 9 61 0 5 9 65 0 6 9 69 0 118 0 185 0 122 8 45 0 123 8 65 0 126 8 69 0 127 9 73 0 139 9 77 0 140 9 77 0 152 9 77 0 153 9 77 0 154 9 81 0 217 9 85 0 218 9 89 0 221 9 89 0 223 8 65 1 67 8 69 1 68 9 97 1 220] 
#[1 4 69 0 4 4 73 0 6 9 101 0 7 4 121 0 118 4 181 0 119 0 185 0 122 9 73 0 139 9 105 0 146 4 133 0 214 4 133 0 215 4 133 0 216 9 109 0 219 9 113 0 220 9 117 0 222 9 117 0 223 9 121 0 224 8 25 1 220] 
#[1 3 66 0 8 9 125 0 23 3 66 0 119 9 129 0 156] 
#[1 9 133 0 8 9 137 0 119] 
#[0 3 70 0 8 0 119] 
#[1 9 125 0 23 9 141 0 156] 
#[0 3 74 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 3 78 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 3 82 0 8 0 119] 
#[0 3 86 0 8 0 119] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 9 145 0 139 9 149 0 214 9 149 0 215 9 149 0 216] 
#[0 3 90 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 27 0 4 4 117 0 6 9 153 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 9 157 0 118 4 181 0 119 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 4 125 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 4 185 0 145 9 161 0 146 4 193 0 147 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 4 197 0 194 4 197 0 195 4 133 0 214 4 133 0 215 4 133 0 216 9 109 0 219 9 113 0 220 9 117 0 222 9 117 0 223 9 121 0 224 0 249 1 3 4 197 1 6 1 121 1 7 1 125 1 8 1 129 1 11 4 197 1 12 0 249 1 17 4 197 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 169 1 220] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 9 165 0 139 9 169 0 214 9 169 0 215 9 169 0 216] 
#[1 0 142 0 2 0 95 0 3 0 142 0 6 0 95 0 7 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 99 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 55 0 142 0 83 0 142 0 86 0 95 0 119 0 142 0 130 0 142 0 131 9 173 0 156 0 142 1 219 0 142 1 220] 
#[1 9 177 0 3 6 113 0 119] 
#[1 3 98 0 3 3 98 0 5 3 98 0 7 9 125 0 23 3 98 0 119 9 181 0 156] 
#[0 3 102 0 3 0 119] 
#[0 3 106 0 3 0 5 0 7 0 119] 
#[0 3 110 0 3] 
#[0 9 185 0 3] 
#[0 3 114 0 3] 
#[1 3 118 0 3 9 189 0 119] 
#[0 3 122 0 3] 
#[0 3 126 0 3 0 119] 
#[1 0 30 0 1 6 133 0 2 0 30 0 4 0 30 0 6 6 137 0 11 0 30 0 43 6 141 0 79 0 103 0 97 0 107 0 98 0 111 0 99 0 30 0 107 0 30 0 120 0 115 0 122 9 205 0 139 6 145 1 98 9 209 1 134 9 213 1 136 6 149 1 142] 
#[0 3 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 9 217 0 194 9 217 0 195 0 249 1 3 9 217 1 6 1 121 1 7 1 125 1 8 1 129 1 11 9 217 1 12 0 249 1 17 9 217 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 3 134 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 118 0 119 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[1 9 221 0 7 4 181 0 119 9 225 0 146] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 9 229 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 4 177 0 118 9 233 0 119 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 9 237 0 147 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 9 241 0 194 9 241 0 195 0 249 1 3 9 241 1 6 1 121 1 7 1 125 1 8 1 129 1 11 9 241 1 12 0 249 1 17 9 241 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 3 138 0 7 0 119] 
#[0 3 142 0 7 0 119] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 4 129 0 194 4 129 0 195 4 129 0 197 0 249 1 3 4 129 1 6 1 121 1 7 1 125 1 8 1 129 1 11 4 129 1 12 0 249 1 17 4 129 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 4 249 0 79] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 11 0 214 0 12 0 214 0 14 0 214 0 15 0 214 0 18 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 35 5 229 0 36 0 214 0 37 5 233 0 38 0 214 0 40 0 214 0 41 0 214 0 43 0 214 0 45 0 214 0 47 0 214 0 48 0 214 0 49 0 214 0 51 0 214 0 53 0 214 0 54 5 249 0 55 0 214 0 83 0 214 0 86 0 214 0 119 0 214 0 120 0 214 0 132 0 214 0 133 0 214 1 221] 
#[0 3 146 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 9 245 0 11 6 141 0 79] 
#[0 3 150 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 3 154 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 3 158 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 3 162 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 3 166 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 4 149 0 253 4 153 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 9 249 0 2 9 253 0 26 0 185 0 122 10 1 0 139] 
#[0 0 146 0 19] 
#[0 10 5 0 19] 
#[1 6 133 0 2 3 85 0 11 6 145 1 98 6 149 1 142] 
#[0 3 170 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 10 9 0 5 10 13 0 8 10 17 0 26 10 21 0 56 10 25 0 80 10 29 0 101 10 33 0 102 10 37 0 122 10 41 0 124 10 69 1 14 10 69 1 18 10 69 1 23 10 69 1 27 10 61 1 34 10 65 1 35 10 69 1 36 10 73 1 37 10 77 1 38 10 69 1 39 10 69 1 143 10 69 1 144 10 93 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 4 205 0 56 0 133 0 61 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 10 97 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 10 97 0 176 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 5 81 1 220] 
#[1 5 13 0 4 5 17 0 74 10 101 1 32 5 29 1 33 5 33 1 220] 
#[0 3 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 10 105 0 4] 
#[1 10 109 0 74 10 113 0 85 10 117 1 154 10 121 1 156] 
#[0 3 178 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 10 125 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 10 129 0 2 0 185 0 122 10 133 0 139] 
#[0 10 137 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 10 141 0 194 10 141 0 195 0 249 1 3 10 141 1 6 1 121 1 7 1 125 1 8 1 129 1 11 10 141 1 12 0 249 1 17 10 141 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 10 145 0 90] 
#[0 10 149 0 106] 
#[0 5 57 0 22] 
#[1 5 89 0 6 5 93 0 22] 
#[1 5 85 0 2 0 174 0 3 0 174 0 4 0 174 0 5 5 133 0 6 0 174 0 7 0 174 0 8 0 174 0 9 0 174 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 174 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 20 0 174 0 21 5 137 0 22 0 174 0 23 0 174 0 24 0 174 0 25 0 174 0 26 0 174 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 40 0 174 0 41 0 174 0 42 0 174 0 43 0 174 0 45 0 174 0 46 0 174 0 47 0 174 0 48 0 174 0 49 0 174 0 50 0 174 0 51 0 174 0 53 0 174 0 54 0 174 0 55 0 174 0 83 0 174 0 86 0 174 0 96 0 174 0 119 0 174 0 120 0 205 0 130 0 18 0 131 0 174 0 132 0 174 0 133 5 145 0 157 0 245 0 158 10 153 0 170 0 174 1 219 5 101 1 220 0 174 1 221] 
#[0 3 182 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 132 0 133 1 219 1 221] 
#[0 6 141 0 79] 
#[1 0 93 0 2 10 157 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 10 161 0 118 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 10 165 0 171 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 10 169 0 194 10 169 0 195 0 249 1 3 10 169 1 6 1 121 1 7 1 125 1 8 1 129 1 11 10 169 1 12 0 249 1 17 10 169 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 10 173 0 194 10 173 0 195 10 173 0 197 0 249 1 3 10 173 1 6 1 121 1 7 1 125 1 8 1 129 1 11 10 173 1 12 0 249 1 17 10 173 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 10 177 0 123] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 10 181 0 11 10 185 1 102] 
#[0 3 190 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 3 194 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 10 189 0 194 10 189 0 195 0 249 1 3 10 189 1 6 1 121 1 7 1 125 1 8 1 129 1 11 10 189 1 12 0 249 1 17 10 189 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 3 198 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 10 193 0 14] 
#[1 10 197 0 5 9 65 0 6 10 17 0 26 10 21 0 56 10 25 0 80 10 29 0 101 10 201 0 118 10 205 0 122 8 45 0 123 10 41 0 124 8 65 0 126 8 69 0 127 10 209 0 139 10 221 0 140 10 213 0 150 10 217 0 151 10 221 0 152 10 221 0 153 10 221 0 154 10 217 0 155 10 217 1 14 10 217 1 18 10 217 1 23 10 217 1 27 10 233 1 38 8 65 1 67 8 69 1 68 10 217 1 143 10 217 1 144 10 237 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 10 241 0 194 10 241 0 195 10 241 0 197 0 249 1 3 10 241 1 6 1 121 1 7 1 125 1 8 1 129 1 11 10 241 1 12 0 249 1 17 10 241 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 10 245 0 194 10 245 0 195 10 245 0 197 0 249 1 3 10 245 1 6 1 121 1 7 1 125 1 8 1 129 1 11 10 245 1 12 0 249 1 17 10 245 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 10 249 0 123 10 253 0 124] 
#[1 5 85 0 2 11 1 0 6 11 5 0 123 11 9 0 124 0 205 0 130 0 18 0 131 11 13 0 157 0 245 0 158 11 17 0 170 11 21 0 175 5 101 1 220] 
#[0 3 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 5 85 0 2 3 210 0 3 3 210 0 4 3 210 0 5 11 25 0 6 3 210 0 7 3 210 0 8 3 210 0 9 3 210 0 10 3 210 0 11 3 210 0 12 3 210 0 13 3 210 0 14 3 210 0 15 3 210 0 16 3 210 0 17 3 210 0 18 3 210 0 20 3 210 0 21 11 29 0 22 3 210 0 23 3 210 0 24 3 210 0 25 3 210 0 26 3 210 0 27 3 210 0 28 3 210 0 29 3 210 0 30 3 210 0 31 3 210 0 32 3 210 0 33 3 210 0 34 3 210 0 35 3 210 0 36 3 210 0 37 3 210 0 38 3 210 0 40 3 210 0 41 3 210 0 42 3 210 0 43 3 210 0 44 3 210 0 45 3 210 0 46 3 210 0 47 3 210 0 48 3 210 0 49 3 210 0 50 3 210 0 51 3 210 0 53 3 210 0 54 3 210 0 55 3 210 0 83 3 210 0 86 3 210 0 96 3 210 0 119 3 210 0 120 0 205 0 130 0 18 0 131 3 210 0 132 3 210 0 133 11 33 0 157 0 245 0 158 11 37 0 170 11 41 0 174 3 210 1 219 5 101 1 220 3 210 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 11 45 0 194 11 45 0 195 11 45 0 197 0 249 1 3 11 45 1 6 1 121 1 7 1 125 1 8 1 129 1 11 11 45 1 12 0 249 1 17 11 45 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 11 49 0 123 11 53 0 124] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 5 85 0 2 3 222 0 3 3 222 0 4 3 222 0 5 11 25 0 6 3 222 0 7 3 222 0 8 3 222 0 9 3 222 0 10 3 222 0 11 3 222 0 12 3 222 0 13 3 222 0 14 3 222 0 15 3 222 0 16 3 222 0 17 3 222 0 18 3 222 0 20 3 222 0 21 11 29 0 22 3 222 0 23 3 222 0 24 3 222 0 25 3 222 0 26 3 222 0 27 3 222 0 28 3 222 0 29 3 222 0 30 3 222 0 31 3 222 0 32 3 222 0 33 3 222 0 34 3 222 0 35 3 222 0 36 3 222 0 37 3 222 0 38 3 222 0 40 3 222 0 41 3 222 0 42 3 222 0 43 3 222 0 44 3 222 0 45 3 222 0 46 3 222 0 47 3 222 0 48 3 222 0 49 3 222 0 50 3 222 0 51 3 222 0 53 3 222 0 54 3 222 0 55 3 222 0 83 3 222 0 86 3 222 0 96 3 222 0 119 3 222 0 120 0 205 0 130 0 18 0 131 3 222 0 132 3 222 0 133 11 33 0 157 0 245 0 158 11 37 0 170 11 41 0 174 3 222 1 219 5 101 1 220 3 222 1 221] 
#[1 5 85 0 2 3 226 0 3 3 226 0 4 3 226 0 5 11 25 0 6 3 226 0 7 3 226 0 8 3 226 0 9 3 226 0 10 3 226 0 11 3 226 0 12 3 226 0 13 3 226 0 14 3 226 0 15 3 226 0 16 3 226 0 17 3 226 0 18 3 226 0 20 3 226 0 21 11 29 0 22 3 226 0 23 3 226 0 24 3 226 0 25 3 226 0 26 3 226 0 27 3 226 0 28 3 226 0 29 3 226 0 30 3 226 0 31 3 226 0 32 3 226 0 33 3 226 0 34 3 226 0 35 3 226 0 36 3 226 0 37 3 226 0 38 3 226 0 40 3 226 0 41 3 226 0 42 3 226 0 43 3 226 0 44 3 226 0 45 3 226 0 46 3 226 0 47 3 226 0 48 3 226 0 49 3 226 0 50 3 226 0 51 3 226 0 53 3 226 0 54 3 226 0 55 3 226 0 83 3 226 0 86 3 226 0 96 3 226 0 119 3 226 0 120 0 205 0 130 0 18 0 131 3 226 0 132 3 226 0 133 11 33 0 157 0 245 0 158 11 37 0 170 11 41 0 174 3 226 1 219 5 101 1 220 3 226 1 221] 
#[0 3 230 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 3 234 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 3 238 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 3 242 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 3 246 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 3 250 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 3 254 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 2 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 6 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 10 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 14 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 18 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 22 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 4 26 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 4 30 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 34 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 38 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 57 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 11 61 0 194 11 61 0 195 0 249 1 3 11 61 1 6 1 121 1 7 1 125 1 8 1 129 1 11 11 61 1 12 0 249 1 17 11 61 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 4 42 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 11 65 0 179 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[0 4 46 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 122 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 50 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 122 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 4 54 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 122 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 11 69 0 179 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 11 73 0 179 11 73 0 180 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 11 77 0 179 11 77 0 180 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 11 81 0 182 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 11 85 0 182 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 11 89 0 182 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 11 93 0 183 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 11 97 0 183 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 11 101 0 183 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 11 105 0 183 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 11 109 0 183 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 11 113 0 183 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 11 117 0 184 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 11 121 0 184 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 11 125 0 184 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 11 129 0 184 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 11 133 0 185 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 11 137 0 186 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 11 141 0 187 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 11 145 0 188 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 11 149 0 188 11 153 0 189 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 11 157 0 188 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 11 161 0 194 11 161 0 195 0 249 1 3 11 161 1 6 1 121 1 7 1 125 1 8 1 129 1 11 11 161 1 12 0 249 1 17 11 161 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 11 165 0 194 11 165 0 195 0 249 1 3 11 165 1 6 1 121 1 7 1 125 1 8 1 129 1 11 11 165 1 12 0 249 1 17 11 165 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 119 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 11 181 0 194 11 181 0 195 0 249 1 3 11 181 1 6 1 121 1 7 1 125 1 8 11 177 1 9 11 181 1 10 1 129 1 11 11 181 1 12 0 249 1 17 11 181 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 11 185 0 183 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[1 4 58 0 4 4 58 0 134 4 58 0 136 11 189 1 88 11 193 1 89] 
#[1 0 138 0 14 11 197 0 135 11 201 1 75 11 201 1 76 11 201 1 77 11 213 1 78 11 217 1 79 11 221 1 93] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 11 225 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 11 229 0 139 3 117 1 67 3 121 1 68 3 125 1 98 8 133 1 99 8 137 1 100 11 233 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 11 233 1 126 11 233 1 127 3 145 1 128 3 145 1 130] 
#[1 6 133 0 2 3 85 0 11 0 185 0 122 11 237 0 139 6 145 1 98 11 241 1 142] 
#[0 11 245 0 2] 
#[0 4 62 0 19] 
#[0 4 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 6 0 2 0 6 0 4 11 249 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 6 241 0 205 0 57 0 206 6 241 0 207 0 65 0 208 0 6 1 220] 
#[1 11 253 0 8 0 185 0 122 12 1 0 139] 
#[1 12 5 0 8 0 185 0 122 12 9 0 139] 
#[0 4 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 13 0 115] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 12 17 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 12 37 0 63 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 12 37 0 89 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 12 21 0 113 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 12 25 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 12 25 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 12 29 0 194 12 29 0 195 12 29 0 197 12 33 0 207 12 37 0 208 12 41 0 233 0 249 1 3 12 29 1 6 1 121 1 7 1 125 1 8 1 129 1 11 12 29 1 12 0 249 1 17 12 29 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 12 45 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 12 49 0 194 12 49 0 195 12 49 0 197 0 249 1 3 12 49 1 6 1 121 1 7 1 125 1 8 1 129 1 11 12 49 1 12 0 249 1 17 12 49 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 12 53 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 12 57 0 194 12 57 0 195 12 57 0 197 0 249 1 3 12 57 1 6 1 121 1 7 1 125 1 8 1 129 1 11 12 57 1 12 0 249 1 17 12 57 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 12 61 0 194 12 61 0 195 12 61 0 197 0 249 1 3 12 61 1 6 1 121 1 7 1 125 1 8 1 129 1 11 12 61 1 12 0 249 1 17 12 61 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 12 65 0 8 6 113 0 119] 
#[1 12 69 0 60 12 73 0 76 12 77 0 249 12 81 0 250] 
#[1 4 74 0 8 9 125 0 23 4 74 0 119 12 85 0 156] 
#[1 12 89 0 8 12 93 0 119] 
#[0 4 78 0 8 0 119] 
#[1 9 125 0 23 12 97 0 156] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 12 101 0 139 12 105 0 214 12 105 0 215 12 105 0 216 12 109 1 146 12 113 1 147] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 12 117 0 194 12 117 0 195 12 117 0 197 0 249 1 3 12 117 1 6 1 121 1 7 1 125 1 8 1 129 1 11 12 117 1 12 0 249 1 17 12 117 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 12 121 0 194 12 121 0 195 12 121 0 197 0 249 1 3 12 121 1 6 1 121 1 7 1 125 1 8 1 129 1 11 12 121 1 12 0 249 1 17 12 121 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 12 129 0 198 12 129 0 201 12 129 0 202 12 129 0 203 12 129 0 211 12 129 0 225 12 129 0 226 12 129 0 227 12 129 0 228 12 129 0 229 12 129 0 230 12 129 0 231 12 129 0 232 12 129 0 235 12 129 0 236 12 129 0 238 12 129 0 239 12 129 0 240 12 129 0 245 12 129 0 246 12 129 0 247 12 129 0 248 12 129 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 4 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 86 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 5 13 0 4 5 17 0 74 12 133 1 32 5 29 1 33 5 33 1 220] 
#[1 4 90 0 1 0 123 0 2 4 90 0 4 4 90 0 5 0 123 0 6 0 123 0 8 3 174 0 9 3 174 0 10 3 174 0 11 3 174 0 12 3 174 0 13 3 174 0 14 3 174 0 15 3 174 0 16 3 174 0 17 3 174 0 18 3 174 0 20 3 174 0 21 3 174 0 22 3 174 0 23 3 174 0 24 3 174 0 25 3 174 0 26 3 174 0 27 3 174 0 28 3 174 0 29 3 174 0 30 3 174 0 31 3 174 0 32 3 174 0 33 3 174 0 34 0 123 0 35 0 123 0 36 0 123 0 37 0 123 0 38 4 90 0 39 3 174 0 40 3 174 0 41 3 174 0 42 3 174 0 43 3 174 0 44 3 174 0 45 3 174 0 46 3 174 0 47 3 174 0 48 3 174 0 49 3 174 0 50 3 174 0 51 4 90 0 52 3 174 0 53 3 174 0 54 3 174 0 55 4 90 0 56 4 90 0 57 4 90 0 58 4 90 0 61 4 90 0 62 4 90 0 63 4 90 0 65 4 90 0 66 4 90 0 67 4 90 0 69 4 90 0 70 4 90 0 72 4 90 0 73 4 90 0 75 4 90 0 77 4 90 0 79 4 90 0 81 4 90 0 82 3 174 0 83 3 174 0 86 4 90 0 87 4 90 0 89 4 90 0 92 4 90 0 93 4 90 0 94 4 90 0 100 4 90 0 104 4 90 0 105 4 90 0 107 4 90 0 108 4 90 0 109 4 90 0 110 4 90 0 111 4 90 0 112 4 90 0 113 4 90 0 114 4 90 0 115 4 90 0 116 4 90 0 117 3 174 0 119 4 90 0 122 4 90 0 124 4 90 0 126 4 90 0 127 4 90 0 128 0 123 0 130 0 123 0 131 4 90 0 134 3 174 1 219 0 123 1 220 4 90 1 221] 
#[1 5 13 0 4 5 17 0 74 0 185 0 122 12 137 0 139 12 141 1 32 5 29 1 33 5 33 1 220] 
#[1 0 185 0 122 12 145 0 139] 
#[1 0 185 0 122 12 149 0 139] 
#[1 7 1 0 72 0 185 0 122 12 153 0 139 12 157 1 202 12 161 1 203] 
#[1 0 185 0 122 12 165 0 139] 
#[1 0 185 0 122 12 153 0 139 12 169 1 202 12 161 1 203] 
#[0 12 173 0 126 1 67] 
#[1 0 185 0 122 7 93 0 139 12 177 1 169] 
#[1 0 185 0 122 12 153 0 139 12 181 1 202 12 161 1 203] 
#[0 4 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 185 0 4] 
#[1 0 185 0 122 12 189 0 139] 
#[1 8 249 0 78 12 193 1 54] 
#[1 12 197 0 8 8 249 0 78 12 201 1 54] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 12 205 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 12 209 0 2 0 185 0 122 12 213 0 139] 
#[0 12 217 0 2] 
#[1 12 221 0 23 3 38 0 78 3 38 0 119] 
#[1 3 77 0 4 3 85 0 11 12 225 0 74 12 229 1 98 12 233 1 116 12 237 1 151] 
#[0 4 118 0 4 0 22] 
#[1 12 241 0 4 12 245 0 22] 
#[1 3 85 0 11 12 249 0 23 12 253 1 98] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 4 205 0 56 0 133 0 61 1 169 0 75 0 145 0 79 0 149 0 82 13 1 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 13 5 0 139 13 9 0 141 13 9 0 142 13 9 0 143 13 9 0 144 13 9 0 148 0 237 0 149 13 9 0 157 0 245 0 158 13 9 0 161 13 9 0 162 13 9 0 163 13 9 0 164 13 9 0 165 13 13 0 167 13 13 0 168 13 13 0 169 13 9 1 3 13 9 1 17 13 9 1 22 13 9 1 26 13 9 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 13 9 1 69 13 9 1 70 13 9 1 71 1 193 1 72 13 9 1 74 1 201 1 92 5 81 1 220] 
#[1 3 221 0 61 2 133 0 62 2 137 0 63 7 189 0 67 13 17 0 68 2 145 0 72 3 229 0 79 7 221 0 82 2 161 0 87 0 65 0 89 2 165 0 92 2 169 0 111 2 1 0 113 13 21 0 207 0 65 0 208 13 25 0 211 13 29 1 2 13 33 1 16 13 37 1 30 13 41 1 49 13 45 1 141 13 49 1 150 13 53 1 163 13 57 1 168 13 61 1 174 13 65 1 200 13 69 1 220] 
#[0 4 122 0 1 0 4 0 6 0 43 0 61 0 62 0 64 0 73 0 97 0 98 0 99 0 102 0 107 0 120 0 122 0 123 0 126 0 127 1 220] 
#[1 5 53 0 2 5 57 0 22 0 185 0 122 13 73 0 139] 
#[0 1 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 2 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 18 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 30 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 126 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 58 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 142 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 150 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 185 0 122 13 73 0 139] 
#[0 1 250 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 6 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 14 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 22 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 4 130 0 67 0 82 0 87 0 92 0 111 1 221] 
#[0 2 78 0 67 0 82 0 87 0 92 0 111 1 221] 
#[0 2 146 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 154 0 67 0 82 0 87 0 92 0 111 1 221] 
#[1 7 5 0 61 7 9 0 63 2 145 0 72 7 13 0 79 7 17 0 89 7 25 0 92 7 29 0 113 7 49 1 163 7 37 1 201 7 41 1 204 7 45 1 205 7 49 1 211 7 53 1 212] 
#[0 1 246 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 7 105 0 1 13 77 0 73 7 113 1 217] 
#[0 0 51 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 54 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 4 134 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 130 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 2 134 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 4 25 0 4 4 29 0 26 0 185 0 122 4 53 0 126 13 81 0 139 4 37 1 50 4 41 1 51 4 45 1 52 4 49 1 53 4 53 1 57 4 41 1 58 4 53 1 67] 
#[0 1 242 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[1 7 105 0 1 13 85 0 73 7 113 1 217] 
#[0 2 74 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 4 138 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 126 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 2 138 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[1 13 89 0 2 3 85 0 11 0 185 0 122 13 93 0 139 13 97 1 98 13 101 1 133 13 105 1 142] 
#[1 7 105 0 1 13 109 0 61 13 113 0 62 7 113 1 217] 
#[1 0 30 0 1 0 30 0 61 0 30 0 62 13 117 1 134] 
#[1 8 29 0 2 13 121 0 5 8 37 0 6 3 85 0 11 8 41 0 93 9 69 0 118 0 185 0 122 8 45 0 123 8 65 0 126 8 69 0 127 9 73 0 139 13 125 0 140 13 125 0 152 13 125 0 153 13 125 0 154 9 81 0 217 9 85 0 218 9 89 0 221 9 89 0 223 8 65 1 67 8 69 1 68 8 73 1 98 8 77 1 117 8 81 1 118 8 85 1 119 8 85 1 131 8 85 1 133 8 85 1 138 8 85 1 139 8 85 1 140 9 97 1 220] 
#[1 3 73 0 2 8 5 0 4 8 9 0 6 13 129 0 7 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 4 121 0 118 13 133 0 119 0 185 0 122 3 117 0 126 3 121 0 127 8 13 0 139 9 105 0 146 4 133 0 214 4 133 0 215 4 133 0 216 9 109 0 219 9 113 0 220 9 117 0 222 9 117 0 223 9 121 0 224 3 117 1 67 3 121 1 68 3 125 1 98 8 125 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 8 121 1 122 8 125 1 123 3 133 1 124 3 137 1 125 8 125 1 126 8 125 1 127 3 145 1 128 3 145 1 130 8 25 1 220] 
#[1 0 127 0 3 0 127 0 5 2 166 0 6 0 127 0 7 2 166 0 8 2 166 0 11 2 170 0 22 9 125 0 23 2 166 0 40 2 166 0 48 0 127 0 119 9 173 0 156] 
#[0 13 137 0 3] 
#[0 13 141 0 3] 
#[1 0 30 0 1 0 30 0 4 0 30 0 6 0 30 0 43 0 103 0 97 0 107 0 98 0 111 0 99 0 30 0 107 0 30 0 120 0 115 0 122 9 205 0 139 9 209 1 134 9 213 1 136] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 13 145 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 122 0 123 0 124 0 126 0 127 0 128 0 130 0 131 0 132 0 133 0 134 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 13 149 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 13 153 0 194 13 153 0 195 0 249 1 3 13 153 1 6 1 121 1 7 1 125 1 8 1 129 1 11 13 153 1 12 0 249 1 17 13 153 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 13 157 0 2 3 85 0 11 13 161 1 98] 
#[0 4 146 0 2 0 5 0 8 0 11 0 23 0 43 0 119 0 120] 
#[0 4 150 0 2 0 5 0 8 0 11 0 23 0 43 0 119 0 120] 
#[1 8 29 0 2 4 154 0 5 4 154 0 8 3 85 0 11 13 165 0 43 4 154 0 119 13 169 0 120 8 73 1 98 13 173 1 132 13 177 1 133] 
#[0 4 158 0 2 0 5 0 8 0 11 0 23 0 43 0 119 0 120] 
#[0 4 162 0 2 0 5 0 8 0 11 0 23 0 43 0 119 0 120] 
#[0 4 166 0 2 0 5 0 8 0 11 0 23 0 43 0 119 0 120] 
#[0 4 170 0 2 0 5 0 8 0 11 0 23 0 43 0 119 0 120] 
#[0 13 181 0 2] 
#[0 13 185 0 5] 
#[1 4 174 0 5 13 189 0 8 13 193 0 119] 
#[0 4 178 0 5 0 8 0 119] 
#[0 4 182 0 5 0 8 0 119] 
#[0 4 186 0 5 0 8 0 119] 
#[0 4 190 0 5 0 8 0 119] 
#[0 4 194 0 5 0 8 0 119] 
#[0 4 198 0 5 0 8 0 119] 
#[0 4 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 13 197 0 7] 
#[0 4 206 0 7 0 119] 
#[1 13 201 0 7 13 205 0 119] 
#[0 4 210 0 7 0 119] 
#[1 4 214 0 14 13 209 0 74 4 214 0 119 13 213 1 101] 
#[1 13 217 0 14 13 221 0 119] 
#[0 4 218 0 14 0 119] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 8 21 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 8 21 1 126 8 21 1 127 3 145 1 128 3 145 1 130] 
#[1 4 222 0 3 4 222 0 4 4 222 0 5 0 131 0 6 4 222 0 7 4 222 0 8 4 222 0 9 4 222 0 11 4 222 0 12 4 222 0 14 4 222 0 15 4 222 0 18 4 222 0 19 4 222 0 20 4 222 0 21 4 222 0 23 4 222 0 24 4 222 0 25 4 222 0 26 4 222 0 27 4 222 0 35 4 222 0 37 4 222 0 40 4 222 0 41 4 222 0 43 4 222 0 45 4 222 0 47 4 222 0 48 4 222 0 49 4 222 0 51 4 222 0 53 4 222 0 54 4 222 0 64 4 222 0 83 4 222 0 86 4 222 0 97 4 222 0 98 4 222 0 99 4 222 0 102 4 222 0 119 4 222 0 120 4 222 0 123 4 222 0 126 4 222 0 127 4 222 0 132 4 222 0 133 8 181 0 237 4 222 1 221] 
#[1 4 226 0 3 4 226 0 4 4 226 0 5 0 135 0 6 4 226 0 7 4 226 0 8 4 226 0 9 4 226 0 11 4 226 0 12 4 226 0 14 4 226 0 15 4 226 0 18 4 226 0 19 4 226 0 20 4 226 0 21 4 226 0 23 4 226 0 24 4 226 0 25 4 226 0 26 4 226 0 27 4 226 0 35 4 226 0 37 4 226 0 40 4 226 0 41 4 226 0 43 4 226 0 45 4 226 0 47 4 226 0 48 4 226 0 49 4 226 0 51 4 226 0 53 4 226 0 54 4 226 0 64 4 226 0 83 4 226 0 86 4 226 0 97 4 226 0 98 4 226 0 99 4 226 0 102 4 226 0 119 4 226 0 120 4 226 0 123 4 226 0 126 4 226 0 127 4 226 0 132 4 226 0 133 8 181 0 237 4 226 1 221] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 13 225 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 13 229 0 2] 
#[0 4 230 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 4 234 0 3 4 234 0 4 4 234 0 5 4 234 0 6 4 234 0 7 4 234 0 8 4 234 0 9 4 234 0 11 4 234 0 12 4 234 0 14 4 234 0 15 4 234 0 18 4 234 0 19 4 234 0 20 4 234 0 21 13 233 0 22 4 234 0 23 4 234 0 24 4 234 0 25 4 234 0 26 4 234 0 27 4 234 0 35 4 234 0 37 4 234 0 40 4 234 0 41 4 234 0 43 4 234 0 45 4 234 0 47 4 234 0 48 4 234 0 49 4 234 0 51 4 234 0 53 4 234 0 54 4 234 0 64 4 234 0 83 4 234 0 86 4 234 0 97 4 234 0 98 4 234 0 99 4 234 0 102 4 234 0 119 4 234 0 120 4 234 0 123 4 234 0 126 4 234 0 127 4 234 0 132 4 234 0 133 4 234 1 221] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 13 237 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 8 141 0 2 3 77 0 4 3 81 0 6 3 89 0 84 3 93 0 88 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 13 241 1 107 13 241 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 13 241 1 125 3 145 1 128 3 145 1 130] 
#[1 8 141 0 2 3 77 0 4 3 81 0 6 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 13 245 1 109 13 245 1 110 13 245 1 111 13 245 1 112 13 245 1 113 3 165 1 114 3 169 1 115 13 245 1 116 13 245 1 120 13 245 1 121 13 245 1 128 13 245 1 130] 
#[0 13 249 0 6] 
#[1 4 238 0 3 4 238 0 4 4 238 0 5 4 238 0 6 4 238 0 7 4 238 0 8 4 238 0 9 0 139 0 11 4 238 0 12 4 238 0 14 4 238 0 15 4 238 0 18 4 238 0 19 4 238 0 20 4 238 0 21 4 238 0 23 4 238 0 24 4 238 0 25 4 238 0 26 4 238 0 27 4 238 0 35 4 238 0 37 4 238 0 40 4 238 0 41 4 238 0 43 4 238 0 45 4 238 0 47 4 238 0 48 4 238 0 49 4 238 0 51 4 238 0 53 4 238 0 54 4 238 0 64 4 238 0 83 4 238 0 85 4 238 0 86 4 238 0 97 4 238 0 98 4 238 0 99 4 238 0 102 4 238 0 119 4 238 0 120 4 238 0 123 4 238 0 126 4 238 0 127 4 238 0 132 4 238 0 133 13 253 1 102 4 238 1 221] 
#[1 0 185 0 122 14 1 0 139] 
#[0 4 242 0 8 0 78] 
#[0 4 246 0 5 0 55 0 78 0 119] 
#[1 4 250 0 5 14 5 0 55 4 250 0 119] 
#[1 14 9 0 5 14 13 0 119] 
#[0 4 254 0 5 0 119] 
#[0 5 2 0 5 0 55 0 78 0 119] 
#[0 14 17 0 123 0 126 1 48 1 67] 
#[1 14 21 0 2 14 25 0 26 0 185 0 122 14 29 0 139] 
#[1 5 13 0 4 5 17 0 74 14 33 1 32 5 29 1 33 5 33 1 220] 
#[0 4 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 14 37 0 8] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 14 41 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 14 45 0 2 0 185 0 122 14 49 0 139] 
#[0 14 53 0 2] 
#[0 14 57 0 126 1 57 1 67] 
#[0 14 61 0 8] 
#[0 5 6 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 1 0 72] 
#[1 13 89 0 2 3 85 0 11 0 185 0 122 14 65 0 139 13 97 1 98 13 101 1 133 14 69 1 142] 
#[0 5 10 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 5 14 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 5 18 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 5 22 0 78] 
#[0 14 73 0 55] 
#[1 14 77 0 5 14 81 0 119] 
#[0 5 26 0 5 0 119] 
#[0 5 30 0 5 0 119] 
#[1 0 185 0 122 14 85 0 139 14 85 1 58] 
#[0 14 89 0 8] 
#[1 4 25 0 4 4 29 0 26 14 93 1 52 14 97 1 53] 
#[0 5 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 5 38 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 13 153 0 194 13 153 0 195 0 249 1 3 13 153 1 6 1 121 1 7 1 125 1 8 1 129 1 11 13 153 1 12 0 249 1 17 13 153 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 185 0 122 14 101 0 139] 
#[1 3 94 0 3 3 94 0 5 3 94 0 7 9 125 0 23 3 94 0 119 9 173 0 156] 
#[0 14 105 0 120] 
#[0 14 109 0 5] 
#[1 14 113 0 5 14 117 0 119] 
#[0 5 42 0 5 0 119] 
#[0 5 46 0 5 0 119] 
#[1 9 213 0 97 9 213 0 98 9 213 0 99 0 185 0 122 9 205 0 139 9 213 1 136] 
#[0 5 50 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[1 4 69 0 4 4 73 0 6 14 121 0 7 4 121 0 118 9 233 0 119 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 14 125 0 222 14 125 0 223 14 129 0 224 8 25 1 220] 
#[1 14 133 0 7 14 137 0 119] 
#[0 5 54 0 7 0 119] 
#[0 5 58 0 7 0 119] 
#[0 14 141 0 7] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 14 145 0 194 14 145 0 195 0 249 1 3 14 145 1 6 1 121 1 7 1 125 1 8 1 129 1 11 14 145 1 12 0 249 1 17 14 145 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 5 62 0 8 0 119] 
#[0 5 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 4 77 0 139 14 149 0 210 4 89 0 214 4 89 0 215 4 89 0 216 14 149 1 148 14 149 1 149 4 109 1 220] 
#[0 5 70 0 8 0 119] 
#[1 13 169 0 120 14 153 1 132] 
#[1 13 169 0 120 14 157 1 132] 
#[1 3 130 0 2 0 143 0 3 3 130 0 6 0 143 0 7 3 130 0 9 3 130 0 10 3 130 0 11 3 130 0 12 3 130 0 13 3 130 0 14 3 130 0 15 3 130 0 16 3 130 0 17 3 130 0 18 3 130 0 20 3 130 0 21 3 130 0 22 0 143 0 23 3 130 0 24 3 130 0 25 3 130 0 26 3 130 0 27 3 130 0 28 3 130 0 29 3 130 0 30 3 130 0 31 3 130 0 32 3 130 0 33 3 130 0 34 3 130 0 35 3 130 0 36 3 130 0 37 3 130 0 38 3 130 0 40 3 130 0 41 3 130 0 42 3 130 0 43 3 130 0 44 3 130 0 45 3 130 0 46 3 130 0 47 3 130 0 48 3 130 0 49 3 130 0 50 3 130 0 51 3 130 0 53 3 130 0 54 3 130 0 55 3 130 0 83 3 130 0 86 0 143 0 119 3 130 0 130 3 130 0 131 3 130 1 219 3 130 1 220] 
#[1 0 93 0 2 0 27 0 4 4 117 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 14 161 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 9 217 0 194 9 217 0 195 9 169 0 214 9 169 0 215 9 169 0 216 0 249 1 3 9 217 1 6 1 121 1 7 1 125 1 8 1 129 1 11 9 217 1 12 0 249 1 17 9 217 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 27 0 4 4 117 0 6 14 165 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 9 157 0 118 9 233 0 119 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 4 125 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 9 237 0 147 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 9 241 0 194 9 241 0 195 4 133 0 214 4 133 0 215 4 133 0 216 14 125 0 222 14 125 0 223 14 129 0 224 0 249 1 3 9 241 1 6 1 121 1 7 1 125 1 8 1 129 1 11 9 241 1 12 0 249 1 17 9 241 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 169 1 220] 
#[1 5 74 0 3 5 74 0 7 13 169 0 120 14 169 1 132] 
#[0 5 78 0 3 0 7] 
#[0 5 82 0 3 0 5 0 7 0 119] 
#[0 5 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 5 90 0 3 0 5 0 7 0 119] 
#[0 5 94 0 19] 
#[1 5 98 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 14 177 0 222 14 177 0 223 14 173 0 224 14 173 1 0 14 177 1 1 8 25 1 220] 
#[0 5 102 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 1 220] 
#[0 5 106 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 1 220] 
#[0 5 110 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 1 220] 
#[1 14 181 0 43 13 169 0 120 14 185 1 132] 
#[1 7 105 0 1 4 69 0 4 4 73 0 6 5 114 0 43 14 205 0 97 14 205 0 98 14 205 0 99 14 189 0 107 5 114 0 120 0 185 0 122 14 201 0 139 14 201 0 214 14 201 0 215 14 201 0 216 14 201 1 135 14 205 1 136 7 113 1 217] 
#[1 0 185 0 122 14 209 0 139] 
#[0 5 118 0 5 0 7 0 119] 
#[0 5 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 14 213 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 4 177 0 118 9 233 0 119 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 14 217 0 147 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 14 221 0 194 14 221 0 195 0 249 1 3 14 221 1 6 1 121 1 7 1 125 1 8 1 129 1 11 14 221 1 12 0 249 1 17 14 221 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 5 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 5 130 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 104 0 107 0 109 0 112 0 114 0 117 0 118 0 119 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 5 134 0 7 0 119] 
#[0 5 138 0 7 0 119] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 11 233 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 11 233 1 126 11 233 1 127 3 145 1 128 3 145 1 130] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 14 225 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 14 229 0 2 0 185 0 122 14 233 0 139] 
#[0 14 237 0 2] 
#[1 0 93 0 2 0 147 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 14 245 0 194 14 245 0 195 0 249 1 3 14 245 1 6 1 121 1 7 1 125 1 8 14 245 1 10 1 129 1 11 14 245 1 12 14 249 1 13 0 249 1 17 14 245 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 5 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 132 0 133 0 134 1 219 1 220 1 221] 
#[0 5 146 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[1 10 37 0 122 10 41 0 124 14 253 1 38] 
#[1 15 1 0 26 10 37 0 122 10 41 0 124 15 5 1 38] 
#[1 10 37 0 122 10 41 0 124 15 9 1 38] 
#[1 10 37 0 122 10 41 0 124 15 13 1 38] 
#[1 15 17 0 4 10 17 0 26 10 21 0 56 10 25 0 80 10 29 0 101 10 37 0 122 10 41 0 124 15 21 1 14 15 21 1 18 15 21 1 23 15 21 1 27 15 25 1 37 10 77 1 38 15 21 1 143 15 21 1 144 10 237 1 220] 
#[0 5 150 0 2 0 8 0 23] 
#[0 5 154 0 2 0 8 0 23] 
#[0 5 158 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 5 162 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 5 166 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 5 170 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 15 29 0 5] 
#[1 5 174 0 5 10 13 0 8 10 17 0 26 10 21 0 56 10 25 0 80 10 29 0 101 10 33 0 102 10 37 0 122 10 41 0 124 15 33 1 14 15 33 1 18 15 33 1 23 15 33 1 27 15 33 1 36 10 73 1 37 10 77 1 38 15 33 1 39 15 33 1 143 15 33 1 144 10 93 1 220] 
#[0 5 178 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 15 37 0 8] 
#[1 15 41 0 2 5 182 0 8 9 125 0 23 15 45 0 156] 
#[0 5 186 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 5 190 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 5 194 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[1 0 30 0 1 0 151 0 6 0 30 0 64 15 49 0 80 0 30 0 97 0 30 0 98 0 30 0 99 15 53 0 101 0 30 0 102 0 155 0 123 0 159 0 126 0 163 0 127 15 57 0 140 15 57 0 152 15 57 0 153 15 57 0 154 8 65 1 67 8 69 1 68 15 61 1 134 15 65 1 139 15 69 1 157 15 73 1 158 15 73 1 159 15 73 1 160 15 73 1 161 15 89 1 162 0 30 1 220] 
#[0 5 198 0 4] 
#[0 5 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 15 93 0 5 10 13 0 8 10 17 0 26 10 21 0 56 10 25 0 80 10 29 0 101 10 33 0 102 10 37 0 122 10 41 0 124 10 69 1 14 10 69 1 18 10 69 1 23 10 69 1 27 15 97 1 34 10 65 1 35 10 69 1 36 10 73 1 37 10 77 1 38 10 69 1 39 10 69 1 143 10 69 1 144 10 93 1 220] 
#[1 0 185 0 122 3 113 0 139 15 105 1 113 3 165 1 114 3 169 1 115 15 105 1 155] 
#[1 0 185 0 122 3 113 0 139 15 117 1 113 3 165 1 114 3 169 1 115 15 113 1 152 15 117 1 153] 
#[1 5 206 0 4 10 113 0 85 15 121 1 156] 
#[0 5 210 0 4] 
#[0 15 125 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 15 129 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 15 133 0 2] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 15 137 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 15 141 0 3] 
#[0 5 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 5 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 5 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 5 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 15 145 0 194 15 145 0 195 0 249 1 3 15 145 1 6 1 121 1 7 1 125 1 8 1 129 1 11 15 145 1 12 0 249 1 17 15 145 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 15 149 0 3 15 153 0 119] 
#[0 5 230 0 3 0 119] 
#[1 15 157 0 7 6 113 0 119] 
#[0 5 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 15 161 1 103 15 165 1 104 15 165 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 15 165 1 126 15 165 1 127 3 145 1 128 3 145 1 130] 
#[0 15 173 0 2] 
#[0 5 238 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[1 1 110 0 4 1 110 0 134 1 110 0 136 15 177 1 94] 
#[0 5 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 15 181 0 194 15 181 0 195 0 249 1 3 15 181 1 6 1 121 1 7 1 125 1 8 1 129 1 11 15 181 1 12 0 249 1 17 15 181 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 5 150 0 2 0 114 0 5 0 114 0 23 0 114 0 119] 
#[1 5 246 0 5 9 125 0 23 5 246 0 119 15 185 0 156] 
#[1 15 189 0 5 15 193 0 119] 
#[0 5 250 0 5 0 119] 
#[0 15 197 0 120] 
#[0 5 254 0 5 0 119] 
#[0 6 2 0 5 0 119] 
#[0 15 41 0 2] 
#[1 9 65 0 6 15 49 0 80 15 53 0 101 8 45 0 123 8 65 0 126 8 69 0 127 15 57 0 140 15 57 0 152 15 57 0 153 15 57 0 154 8 65 1 67 8 69 1 68] 
#[1 6 113 0 119 15 201 0 132 15 205 0 133 15 209 0 159 15 213 0 160] 
#[1 15 217 0 7 6 113 0 119] 
#[0 6 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 15 221 0 194 15 221 0 195 15 221 0 197 0 249 1 3 15 221 1 6 1 121 1 7 1 125 1 8 1 129 1 11 15 221 1 12 0 249 1 17 15 221 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 6 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 15 225 0 194 15 225 0 195 15 225 0 197 0 249 1 3 15 225 1 6 1 121 1 7 1 125 1 8 1 129 1 11 15 225 1 12 0 249 1 17 15 225 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 15 229 0 123 15 233 0 124] 
#[0 6 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 15 237 0 7 6 113 0 119] 
#[0 6 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 6 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 15 241 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 15 241 1 126 15 241 1 127 3 145 1 128 3 145 1 130] 
#[0 6 54 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 6 58 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[0 6 62 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 6 66 0 3 6 66 0 5 6 66 0 7 6 66 0 8 6 21 0 9 6 66 0 11 6 66 0 12 6 66 0 14 6 66 0 15 6 66 0 18 6 66 0 20 6 66 0 21 6 66 0 24 6 66 0 25 6 21 0 26 6 66 0 35 6 66 0 37 6 66 0 40 6 66 0 41 6 66 0 43 6 66 0 45 6 21 0 47 6 66 0 48 6 66 0 49 6 66 0 51 6 66 0 53 6 66 0 54 6 66 0 83 6 66 0 86 6 66 0 119 6 66 0 120 6 66 0 132 6 66 0 133 6 21 0 181 6 66 1 221] 
#[1 6 70 0 3 6 70 0 5 6 70 0 7 6 70 0 8 6 21 0 9 6 70 0 11 6 70 0 12 6 70 0 14 6 70 0 15 6 70 0 18 6 70 0 20 6 70 0 21 6 70 0 24 6 70 0 25 6 21 0 26 6 70 0 35 6 70 0 37 6 70 0 40 6 70 0 41 6 70 0 43 6 70 0 45 6 21 0 47 6 70 0 48 6 70 0 49 6 70 0 51 6 70 0 53 6 70 0 54 6 70 0 83 6 70 0 86 6 70 0 119 6 70 0 120 6 70 0 132 6 70 0 133 6 21 0 181 6 70 1 221] 
#[1 6 74 0 3 6 74 0 5 6 74 0 7 6 74 0 8 6 74 0 11 6 74 0 12 6 74 0 14 6 74 0 15 6 74 0 18 6 74 0 20 6 74 0 21 6 74 0 24 6 74 0 25 6 25 0 35 6 29 0 37 6 74 0 40 6 74 0 41 6 74 0 43 6 74 0 45 6 74 0 48 6 74 0 49 6 74 0 51 6 74 0 53 6 74 0 54 6 74 0 83 6 74 0 86 6 74 0 119 6 74 0 120 6 74 0 132 6 74 0 133 6 74 1 221] 
#[1 6 78 0 3 6 78 0 5 6 78 0 7 6 78 0 8 6 78 0 11 6 78 0 12 6 78 0 14 6 78 0 15 6 78 0 18 6 78 0 20 6 78 0 21 6 78 0 24 6 78 0 25 6 25 0 35 6 29 0 37 6 78 0 40 6 78 0 41 6 78 0 43 6 78 0 45 6 78 0 48 6 78 0 49 6 78 0 51 6 78 0 53 6 78 0 54 6 78 0 83 6 78 0 86 6 78 0 119 6 78 0 120 6 78 0 132 6 78 0 133 6 78 1 221] 
#[1 6 82 0 3 6 82 0 5 6 82 0 7 6 82 0 8 6 82 0 11 6 82 0 12 6 82 0 14 6 82 0 15 6 82 0 18 6 82 0 20 6 82 0 21 6 82 0 24 6 82 0 25 6 25 0 35 6 29 0 37 6 82 0 40 6 82 0 41 6 82 0 43 6 82 0 45 6 82 0 48 6 82 0 49 6 82 0 51 6 82 0 53 6 82 0 54 6 82 0 83 6 82 0 86 6 82 0 119 6 82 0 120 6 82 0 132 6 82 0 133 6 82 1 221] 
#[1 6 86 0 3 6 86 0 5 6 86 0 7 6 86 0 8 6 86 0 11 6 33 0 12 6 86 0 14 6 37 0 15 6 41 0 18 6 86 0 20 6 86 0 21 6 86 0 24 6 86 0 25 6 86 0 40 6 86 0 41 6 86 0 43 6 86 0 45 6 86 0 48 6 86 0 49 6 86 0 51 6 86 0 53 6 86 0 54 6 86 0 83 6 86 0 86 6 86 0 119 6 86 0 120 6 86 0 132 6 86 0 133 6 86 1 221] 
#[1 6 90 0 3 6 90 0 5 6 90 0 7 6 90 0 8 6 90 0 11 6 33 0 12 6 90 0 14 6 37 0 15 6 41 0 18 6 90 0 20 6 90 0 21 6 90 0 24 6 90 0 25 6 90 0 40 6 90 0 41 6 90 0 43 6 90 0 45 6 90 0 48 6 90 0 49 6 90 0 51 6 90 0 53 6 90 0 54 6 90 0 83 6 90 0 86 6 90 0 119 6 90 0 120 6 90 0 132 6 90 0 133 6 90 1 221] 
#[1 6 94 0 3 6 94 0 5 6 94 0 7 6 94 0 8 6 94 0 11 6 33 0 12 6 94 0 14 6 37 0 15 6 41 0 18 6 94 0 20 6 94 0 21 6 94 0 24 6 94 0 25 6 94 0 40 6 94 0 41 6 94 0 43 6 94 0 45 6 94 0 48 6 94 0 49 6 94 0 51 6 94 0 53 6 94 0 54 6 94 0 83 6 94 0 86 6 94 0 119 6 94 0 120 6 94 0 132 6 94 0 133 6 94 1 221] 
#[1 6 98 0 3 6 98 0 5 6 98 0 7 6 98 0 8 6 98 0 11 6 33 0 12 6 98 0 14 6 37 0 15 6 41 0 18 6 98 0 20 6 98 0 21 6 98 0 24 6 98 0 25 6 98 0 40 6 98 0 41 6 98 0 43 6 98 0 45 6 98 0 48 6 98 0 49 6 98 0 51 6 98 0 53 6 98 0 54 6 98 0 83 6 98 0 86 6 98 0 119 6 98 0 120 6 98 0 132 6 98 0 133 6 98 1 221] 
#[1 6 102 0 3 6 102 0 5 6 102 0 7 6 102 0 8 6 102 0 11 6 33 0 12 6 102 0 14 6 37 0 15 6 41 0 18 6 102 0 20 6 102 0 21 6 102 0 24 6 102 0 25 6 102 0 40 6 102 0 41 6 102 0 43 6 102 0 45 6 102 0 48 6 102 0 49 6 102 0 51 6 102 0 53 6 102 0 54 6 102 0 83 6 102 0 86 6 102 0 119 6 102 0 120 6 102 0 132 6 102 0 133 6 102 1 221] 
#[1 6 106 0 3 6 106 0 5 6 106 0 7 6 106 0 8 6 106 0 11 6 33 0 12 6 106 0 14 6 37 0 15 6 41 0 18 6 106 0 20 6 106 0 21 6 106 0 24 6 106 0 25 6 106 0 40 6 106 0 41 6 106 0 43 6 106 0 45 6 106 0 48 6 106 0 49 6 106 0 51 6 106 0 53 6 106 0 54 6 106 0 83 6 106 0 86 6 106 0 119 6 106 0 120 6 106 0 132 6 106 0 133 6 106 1 221] 
#[1 6 110 0 3 6 110 0 5 6 110 0 7 6 110 0 8 6 45 0 11 6 49 0 14 6 53 0 20 6 57 0 21 6 110 0 24 6 110 0 25 6 110 0 40 6 110 0 41 6 110 0 43 6 110 0 45 6 110 0 48 6 110 0 49 6 110 0 51 6 110 0 53 6 110 0 54 6 61 0 83 6 65 0 86 6 110 0 119 6 110 0 120 6 110 0 132 6 110 0 133 6 110 1 221] 
#[1 6 114 0 3 6 114 0 5 6 114 0 7 6 114 0 8 6 45 0 11 6 49 0 14 6 53 0 20 6 57 0 21 6 114 0 24 6 114 0 25 6 114 0 40 6 114 0 41 6 114 0 43 6 114 0 45 6 114 0 48 6 114 0 49 6 114 0 51 6 114 0 53 6 114 0 54 6 61 0 83 6 65 0 86 6 114 0 119 6 114 0 120 6 114 0 132 6 114 0 133 6 114 1 221] 
#[1 6 118 0 3 6 118 0 5 6 118 0 7 6 118 0 8 6 45 0 11 6 49 0 14 6 53 0 20 6 57 0 21 6 118 0 24 6 118 0 25 6 118 0 40 6 118 0 41 6 118 0 43 6 118 0 45 6 118 0 48 6 118 0 49 6 118 0 51 6 118 0 53 6 118 0 54 6 61 0 83 6 65 0 86 6 118 0 119 6 118 0 120 6 118 0 132 6 118 0 133 6 118 1 221] 
#[1 6 122 0 3 6 122 0 5 6 122 0 7 6 122 0 8 6 45 0 11 6 49 0 14 6 53 0 20 6 57 0 21 6 122 0 24 6 122 0 25 6 122 0 40 6 122 0 41 6 122 0 43 6 122 0 45 6 122 0 48 6 122 0 49 6 122 0 51 6 122 0 53 6 122 0 54 6 61 0 83 6 65 0 86 6 122 0 119 6 122 0 120 6 122 0 132 6 122 0 133 6 122 1 221] 
#[1 6 126 0 3 6 126 0 5 6 126 0 7 6 126 0 8 6 69 0 24 6 73 0 25 6 126 0 40 6 126 0 41 6 126 0 43 6 126 0 45 6 126 0 48 6 126 0 49 6 126 0 51 6 77 0 53 6 81 0 54 6 126 0 119 6 126 0 120 6 126 0 132 6 126 0 133 6 126 1 221] 
#[1 6 130 0 3 6 130 0 5 6 130 0 7 6 130 0 8 6 85 0 40 6 130 0 41 6 130 0 43 6 130 0 45 6 130 0 48 6 130 0 49 6 130 0 51 6 130 0 119 6 130 0 120 6 130 0 132 6 130 0 133 6 130 1 221] 
#[1 6 134 0 3 6 134 0 5 6 134 0 7 6 134 0 8 6 134 0 41 6 134 0 43 6 134 0 45 6 134 0 48 6 134 0 49 6 89 0 51 6 134 0 119 6 134 0 120 6 134 0 132 6 134 0 133 6 134 1 221] 
#[1 6 138 0 3 6 138 0 5 6 138 0 7 6 138 0 8 6 138 0 41 6 138 0 43 6 93 0 48 6 138 0 49 6 138 0 119 6 138 0 120 6 138 0 132 6 138 0 133 6 138 1 221] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 41 1 2 0 43 6 93 0 48 1 2 0 49 1 2 0 119 1 2 0 120 1 2 0 132 1 2 0 133 1 2 1 221] 
#[1 6 142 0 3 6 142 0 5 6 142 0 7 6 142 0 8 6 97 0 41 6 142 0 43 6 142 0 49 6 142 0 119 6 142 0 120 6 142 0 132 6 142 0 133 6 142 1 221] 
#[1 6 146 0 3 6 146 0 5 6 146 0 7 6 146 0 8 6 146 0 43 6 146 0 45 6 93 0 48 6 146 0 119 6 146 0 120 6 146 0 132 6 146 0 133 6 146 1 221] 
#[0 15 245 0 120] 
#[0 6 150 0 3 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 15 253 1 4 16 1 1 5 0 6 1 220] 
#[0 6 158 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 6 162 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 6 166 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[1 6 170 0 3 6 170 0 5 6 170 0 7 6 170 0 8 6 170 0 11 6 33 0 12 6 170 0 14 6 37 0 15 6 41 0 18 6 170 0 20 6 170 0 21 6 170 0 24 6 170 0 25 6 170 0 40 6 170 0 41 6 170 0 43 6 170 0 45 6 170 0 48 6 170 0 49 6 170 0 51 6 170 0 53 6 170 0 54 6 170 0 83 6 170 0 86 6 170 0 119 6 170 0 120 6 170 0 132 6 170 0 133 6 170 1 221] 
#[1 0 22 0 134 16 5 1 73 16 9 1 92] 
#[1 6 174 0 4 0 167 0 134 16 13 0 136 16 21 1 70 16 21 1 71 1 193 1 72 16 21 1 90 1 201 1 92 16 25 1 97] 
#[1 6 182 0 4 6 182 0 9 6 182 0 14 16 29 0 22 16 33 0 120 6 182 0 135] 
#[1 6 174 0 4 16 37 0 9 0 138 0 14 16 41 0 135 16 69 1 76 16 49 1 80 16 53 1 81 16 57 1 82 16 53 1 83 16 53 1 84 16 69 1 85 16 73 1 93 16 77 1 97] 
#[0 6 186 0 4 0 9 0 14 0 135] 
#[0 6 190 0 4 0 9 0 14 0 135] 
#[0 6 194 0 135] 
#[1 16 81 0 135 16 85 1 78] 
#[0 16 89 0 14] 
#[0 16 93 0 3] 
#[1 2 166 0 6 2 166 0 11 0 171 0 14 2 170 0 22 2 166 0 40 2 166 0 48 13 209 0 74 4 214 0 119 13 213 1 101] 
#[0 16 97 0 14] 
#[1 6 133 0 2 3 85 0 11 6 145 1 98 16 101 1 142] 
#[0 16 105 0 4] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 16 109 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 6 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 6 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 16 113 0 8] 
#[0 6 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 16 117 0 8] 
#[0 16 121 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 16 125 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 16 129 0 194 16 129 0 195 16 129 0 197 0 249 1 3 16 129 1 6 1 121 1 7 1 125 1 8 1 129 1 11 16 129 1 12 0 249 1 17 16 129 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 16 133 0 139 16 137 0 212 6 213 0 213 16 141 0 214 16 141 0 215 16 141 0 216 16 145 0 234 6 221 1 220] 
#[1 0 214 0 8 0 214 0 9 5 253 0 10 0 214 0 11 0 214 0 12 5 253 0 13 0 214 0 14 0 214 0 15 5 253 0 16 5 253 0 17 0 214 0 18 0 214 0 20 0 214 0 21 5 253 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 5 253 0 28 5 253 0 29 5 253 0 30 5 253 0 31 5 253 0 32 5 253 0 33 5 253 0 34 0 214 0 35 5 229 0 36 0 214 0 37 5 233 0 38 0 214 0 40 0 214 0 41 5 253 0 42 0 214 0 43 0 214 0 45 5 253 0 46 0 214 0 47 0 214 0 48 0 214 0 49 5 253 0 50 0 214 0 51 0 214 0 53 0 214 0 54 5 249 0 55 0 175 0 83 0 214 0 86 16 153 0 96 0 214 0 119 5 253 0 196 5 253 1 219] 
#[1 16 157 0 8 6 113 0 119] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 16 161 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 16 165 0 194 16 165 0 195 16 165 0 197 0 249 1 3 16 165 1 6 1 121 1 7 1 125 1 8 1 129 1 11 16 165 1 12 0 249 1 17 16 165 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 16 169 0 139 4 81 0 209 4 85 0 210 16 173 0 214 16 173 0 215 16 173 0 216 16 177 0 234 4 85 1 148 4 85 1 149 4 109 1 220] 
#[1 16 181 0 83 16 185 0 96] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 4 205 0 56 0 133 0 61 16 197 0 63 1 169 0 75 0 145 0 79 0 149 0 82 16 197 0 89 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 16 189 0 113 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 16 193 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 16 193 0 176 16 197 0 208 16 201 0 233 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 5 81 1 220] 
#[1 16 205 0 3 6 113 0 119] 
#[0 6 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 16 209 0 8 6 113 0 119] 
#[1 16 213 0 3 6 113 0 119] 
#[0 6 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 16 217 0 2 1 209 0 4 16 221 0 203] 
#[1 1 209 0 4 16 225 0 203] 
#[1 6 218 0 1 6 218 0 2 6 218 0 4 6 218 0 5 6 218 0 6 6 218 0 8 6 218 0 35 6 218 0 36 6 218 0 37 6 218 0 38 6 218 0 39 6 218 0 52 6 218 0 56 6 218 0 57 6 218 0 58 6 218 0 59 6 218 0 61 6 218 0 62 6 218 0 63 6 218 0 65 6 218 0 66 6 218 0 67 6 218 0 68 6 218 0 69 6 218 0 70 6 218 0 71 6 218 0 72 6 218 0 73 6 218 0 75 12 73 0 76 6 218 0 77 6 218 0 79 6 218 0 81 6 218 0 82 6 218 0 87 6 218 0 89 6 218 0 92 6 218 0 93 6 218 0 94 6 218 0 100 6 218 0 104 6 218 0 105 6 218 0 107 6 218 0 108 6 218 0 109 6 218 0 110 6 218 0 111 6 218 0 112 6 218 0 113 6 218 0 114 6 218 0 115 6 218 0 116 6 218 0 117 6 218 0 122 6 218 0 124 6 218 0 126 6 218 0 127 6 218 0 128 6 218 0 130 6 218 0 131 6 218 0 134 16 229 0 250 6 218 1 220 6 218 1 221] 
#[0 6 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 6 226 0 8 0 119] 
#[0 6 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 6 205 0 139 16 233 0 213 6 217 0 214 6 217 0 215 6 217 0 216 6 221 1 220] 
#[0 6 234 0 8 0 119] 
#[1 13 169 0 120 16 237 1 132] 
#[1 13 169 0 120 16 241 1 132] 
#[0 6 238 0 8 0 119] 
#[0 6 242 0 8 0 119] 
#[1 16 245 0 3 6 113 0 119] 
#[1 16 249 0 3 6 113 0 119] 
#[0 6 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 6 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 6 254 0 1 0 179 0 2 6 254 0 4 6 254 0 5 0 179 0 6 0 179 0 8 5 202 0 9 5 202 0 10 5 202 0 11 5 202 0 12 5 202 0 13 5 202 0 14 5 202 0 15 5 202 0 16 5 202 0 17 5 202 0 18 5 202 0 20 5 202 0 21 5 202 0 22 5 202 0 23 5 202 0 24 5 202 0 25 5 202 0 26 5 202 0 27 5 202 0 28 5 202 0 29 5 202 0 30 5 202 0 31 5 202 0 32 5 202 0 33 5 202 0 34 0 179 0 35 0 179 0 36 0 179 0 37 0 179 0 38 6 254 0 39 5 202 0 40 5 202 0 41 5 202 0 42 5 202 0 43 5 202 0 44 5 202 0 45 5 202 0 46 5 202 0 47 5 202 0 48 5 202 0 49 5 202 0 50 5 202 0 51 6 254 0 52 5 202 0 53 5 202 0 54 5 202 0 55 6 254 0 56 6 254 0 57 6 254 0 58 6 254 0 61 6 254 0 62 6 254 0 63 6 254 0 65 6 254 0 66 6 254 0 67 6 254 0 69 6 254 0 70 6 254 0 72 6 254 0 73 6 254 0 75 6 254 0 77 6 254 0 79 6 254 0 81 6 254 0 82 5 202 0 83 5 202 0 86 6 254 0 87 6 254 0 89 6 254 0 92 6 254 0 93 6 254 0 94 6 254 0 100 6 254 0 104 6 254 0 105 6 254 0 107 6 254 0 108 6 254 0 109 6 254 0 110 6 254 0 111 6 254 0 112 6 254 0 113 6 254 0 114 6 254 0 115 6 254 0 116 6 254 0 117 5 202 0 119 6 254 0 122 6 254 0 124 6 254 0 126 6 254 0 127 6 254 0 128 0 179 0 130 0 179 0 131 6 254 0 134 5 202 1 219 0 179 1 220 6 254 1 221] 
#[1 5 13 0 4 5 17 0 74 16 253 1 32 5 29 1 33 5 33 1 220] 
#[0 7 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 17 1 0 4] 
#[1 3 85 0 11 5 17 0 74 17 5 1 33 17 9 1 98 5 33 1 220] 
#[1 7 6 0 8 7 6 0 119 13 169 0 120 17 13 1 132] 
#[1 17 17 0 8 17 21 0 119] 
#[0 7 10 0 8 0 119] 
#[1 8 29 0 2 3 85 0 11 8 73 1 98 17 25 1 133] 
#[1 17 29 0 8 17 21 0 119] 
#[0 17 33 0 4] 
#[1 17 37 0 4 12 245 0 22] 
#[1 17 41 0 8 17 21 0 119] 
#[1 17 45 0 5 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 17 49 0 140 17 49 0 152 17 49 0 153 17 49 0 154 8 65 1 67 8 69 1 68 17 53 1 164 17 57 1 165 17 61 1 166] 
#[0 17 65 0 8] 
#[0 17 69 0 8] 
#[0 7 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 17 73 0 8] 
#[0 17 77 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 17 81 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 17 85 0 2] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 17 89 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 0 185 0 122 17 93 0 139 17 97 1 115 17 101 1 175 17 105 1 218] 
#[1 0 185 0 122 3 113 0 139 17 109 1 113 3 165 1 114 3 169 1 115 17 109 1 153] 
#[1 3 77 0 4 12 225 0 74 17 113 1 116 17 117 1 151] 
#[0 7 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 3 77 0 4 17 121 1 116] 
#[1 0 93 0 2 0 15 0 4 7 22 0 5 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 2 129 0 61 2 133 0 62 2 137 0 63 1 221 0 65 1 225 0 66 7 189 0 67 0 137 0 69 1 229 0 70 2 145 0 72 17 125 0 73 1 169 0 75 1 233 0 77 2 153 0 79 1 237 0 81 7 117 0 82 2 161 0 87 0 65 0 89 2 165 0 92 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 2 169 0 111 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 17 173 0 198 17 173 0 201 17 173 0 202 17 173 0 203 17 173 0 207 0 65 0 208 17 173 0 211 17 173 0 225 17 173 0 226 17 173 0 227 17 173 0 228 17 173 0 229 17 173 0 230 17 173 0 231 17 173 0 232 17 173 0 235 17 173 0 236 17 173 0 238 17 173 0 239 17 173 0 240 17 173 0 245 17 173 0 247 17 173 0 248 17 173 0 252 17 173 1 2 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 17 173 1 16 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 17 173 1 30 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 17 173 1 141 17 173 1 150 17 173 1 163 17 173 1 168 17 165 1 170 17 169 1 171 17 173 1 172 17 173 1 173 17 173 1 174 17 173 1 200 3 69 1 220] 
#[1 0 185 0 122 17 189 0 139] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 17 193 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 17 193 1 126 17 193 1 127 3 145 1 128 3 145 1 130] 
#[0 17 197 0 23] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 5 61 0 22 4 205 0 56 0 133 0 61 1 169 0 75 0 145 0 79 5 65 0 82 13 1 0 93 1 165 0 94 5 69 0 104 0 165 0 107 1 169 0 109 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 17 201 0 139 17 201 0 141 17 201 0 142 17 201 0 143 17 201 0 144 17 201 0 148 0 237 0 149 17 201 0 157 0 245 0 158 17 201 0 161 17 201 0 162 17 201 0 163 17 201 0 164 17 201 0 165 17 201 1 3 17 201 1 17 17 201 1 22 17 201 1 26 17 201 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 17 201 1 69 17 201 1 70 17 201 1 71 1 193 1 72 17 201 1 74 1 201 1 92 5 81 1 220] 
#[1 7 26 0 1 0 142 0 2 7 26 0 4 0 183 0 6 0 142 0 22 7 26 0 43 7 26 0 61 7 26 0 62 7 26 0 64 7 26 0 73 7 26 0 97 7 26 0 98 7 26 0 99 7 26 0 102 7 26 0 107 7 26 0 120 7 26 0 122 7 26 0 123 7 26 0 126 7 26 0 127 0 142 0 130 0 142 0 131 0 183 1 220] 
#[1 5 85 0 2 5 133 0 6 5 137 0 22 0 205 0 130 0 18 0 131 5 145 0 157 0 245 0 158 5 149 0 170 5 101 1 220] 
#[1 7 30 0 1 5 85 0 2 7 30 0 4 0 187 0 6 5 161 0 22 7 30 0 43 7 30 0 61 7 30 0 62 7 30 0 64 7 30 0 73 7 30 0 97 7 30 0 98 7 30 0 99 7 30 0 102 7 30 0 107 7 30 0 120 7 30 0 122 7 30 0 123 7 30 0 126 7 30 0 127 0 205 0 130 0 18 0 131 5 165 0 157 0 245 0 158 5 169 0 170 0 191 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 17 205 0 61 2 133 0 62 0 137 0 69 1 169 0 75 17 209 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 17 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 17 217 0 194 17 217 0 195 17 221 1 2 0 249 1 3 17 217 1 6 1 121 1 7 1 125 1 8 1 129 1 11 17 217 1 12 17 225 1 16 0 249 1 17 17 217 1 20 0 249 1 22 0 249 1 26 1 41 1 29 17 229 1 30 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 17 233 1 204 17 237 1 205 3 69 1 220] 
#[0 7 34 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 38 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 42 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 46 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 50 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 54 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 195 0 1 7 62 0 2 7 62 0 4 7 62 0 6 7 62 0 8 7 62 0 35 7 62 0 36 7 62 0 37 7 62 0 38 7 62 0 39 7 62 0 52 7 62 0 56 7 62 0 57 7 62 0 58 7 62 0 61 7 62 0 62 7 62 0 63 7 62 0 65 7 62 0 66 0 195 0 67 7 62 0 69 7 62 0 70 7 62 0 72 0 195 0 73 7 62 0 75 7 62 0 77 7 62 0 79 7 62 0 81 0 195 0 82 0 195 0 87 7 62 0 89 0 195 0 92 7 62 0 93 7 62 0 94 7 62 0 100 7 62 0 104 7 62 0 105 7 62 0 107 7 62 0 108 7 62 0 109 7 62 0 110 0 195 0 111 7 62 0 112 7 62 0 113 7 62 0 114 7 62 0 115 7 62 0 116 7 62 0 117 7 62 0 122 7 62 0 124 7 62 0 126 7 62 0 127 7 62 0 128 7 62 0 130 7 62 0 131 7 62 0 134 7 62 1 220 0 195 1 221] 
#[1 0 199 0 1 7 70 0 2 7 70 0 4 7 70 0 6 7 70 0 8 7 70 0 35 7 70 0 36 7 70 0 37 7 70 0 38 7 70 0 39 7 70 0 52 7 70 0 56 7 70 0 57 7 70 0 58 7 70 0 61 7 70 0 62 7 70 0 63 7 70 0 65 7 70 0 66 0 199 0 67 7 70 0 69 7 70 0 70 7 70 0 72 0 199 0 73 7 70 0 75 7 70 0 77 7 70 0 79 7 70 0 81 0 199 0 82 0 199 0 87 7 70 0 89 0 199 0 92 7 70 0 93 7 70 0 94 7 70 0 100 7 70 0 104 7 70 0 105 7 70 0 107 7 70 0 108 7 70 0 109 7 70 0 110 0 199 0 111 7 70 0 112 7 70 0 113 7 70 0 114 7 70 0 115 7 70 0 116 7 70 0 117 7 70 0 122 7 70 0 124 7 70 0 126 7 70 0 127 7 70 0 128 7 70 0 130 7 70 0 131 7 70 0 134 7 70 1 220 0 199 1 221] 
#[0 7 74 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 78 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 82 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[1 0 203 0 1 7 86 0 2 7 86 0 4 7 86 0 6 7 86 0 8 7 86 0 35 7 86 0 36 7 86 0 37 7 86 0 38 7 86 0 39 7 86 0 52 7 86 0 56 7 86 0 57 7 86 0 58 7 86 0 61 7 86 0 62 7 86 0 63 7 86 0 65 7 86 0 66 0 203 0 67 7 86 0 69 7 86 0 70 7 86 0 72 0 203 0 73 7 86 0 75 7 86 0 77 7 86 0 79 7 86 0 81 0 203 0 82 0 203 0 87 7 86 0 89 0 203 0 92 7 86 0 93 7 86 0 94 7 86 0 100 7 86 0 104 7 86 0 105 7 86 0 107 7 86 0 108 7 86 0 109 7 86 0 110 0 203 0 111 7 86 0 112 7 86 0 113 7 86 0 114 7 86 0 115 7 86 0 116 7 86 0 117 7 86 0 122 7 86 0 124 7 86 0 126 7 86 0 127 7 86 0 128 7 86 0 130 7 86 0 131 7 86 0 134 7 86 1 220 0 203 1 221] 
#[1 0 79 0 1 0 30 0 61 0 30 0 62 9 9 0 79 7 253 1 134 8 1 1 217] 
#[0 17 241 0 23] 
#[1 3 221 0 61 2 133 0 62 2 137 0 63 7 189 0 67 17 245 0 68 2 145 0 72 3 229 0 79 0 41 0 82 2 161 0 87 0 65 0 89 2 165 0 92 2 169 0 111 2 1 0 113 13 21 0 207 0 65 0 208 13 25 0 211 13 29 1 2 13 33 1 16 13 37 1 30 13 41 1 49 17 249 1 141 17 253 1 150 13 53 1 163 13 57 1 168 18 1 1 200 13 69 1 220] 
#[1 17 241 0 23 3 38 0 78 3 38 0 119] 
#[1 7 189 0 67 18 5 0 68 7 153 0 82 2 161 0 87 2 169 0 111 18 9 1 141 18 13 1 150 13 61 1 174 18 17 1 200] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 18 21 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 13 89 0 2 3 85 0 11 13 97 1 98 18 25 1 133 18 29 1 142] 
#[0 18 33 0 2] 
#[0 18 37 0 8] 
#[0 18 41 0 4] 
#[1 3 85 0 11 0 185 0 122 18 45 0 139 18 49 1 98] 
#[0 18 53 0 61] 
#[1 7 105 0 1 18 57 0 61 18 61 0 62 7 113 1 217] 
#[1 0 207 0 3 0 207 0 5 4 142 0 6 0 207 0 7 4 142 0 8 5 38 0 23 4 142 0 40 4 142 0 48 0 207 0 119] 
#[1 8 29 0 2 4 154 0 5 4 154 0 8 3 85 0 11 13 165 0 43 4 154 0 119 18 65 0 120 8 73 1 98 13 173 1 132 13 177 1 133] 
#[1 0 211 0 3 0 211 0 5 4 202 0 6 0 211 0 7 4 202 0 8 5 50 0 23 4 202 0 40 4 202 0 48 0 211 0 119] 
#[1 3 134 0 4 3 134 0 6 0 215 0 7 3 134 0 118 3 134 0 119 3 134 0 122 3 134 1 220] 
#[0 18 69 0 19] 
#[0 7 94 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 18 73 0 3] 
#[1 0 142 0 2 0 142 0 6 0 142 0 7 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 55 0 142 0 83 0 142 0 86 18 77 0 120 0 142 0 130 0 142 0 131 0 142 1 219 0 142 1 220] 
#[0 18 81 0 7] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 18 85 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 18 89 0 2] 
#[1 8 29 0 2 7 98 0 5 7 98 0 8 3 85 0 11 7 98 0 119 13 169 0 120 8 73 1 98 18 93 1 132 18 97 1 133] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 18 101 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 18 101 1 126 18 101 1 127 3 145 1 128 3 145 1 130] 
#[0 7 102 0 5 0 8 0 119] 
#[0 7 106 0 5 0 8 0 119] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 18 105 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 7 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 122 0 123 0 124 0 126 0 127 0 128 0 130 0 131 0 132 0 133 0 134 1 220 1 221] 
#[1 8 29 0 2 7 114 0 5 8 37 0 6 3 85 0 11 8 41 0 93 8 45 0 123 8 65 0 126 8 69 0 127 8 53 0 140 8 53 0 152 8 53 0 153 8 53 0 154 8 65 1 67 8 69 1 68 8 73 1 98 18 109 1 119 18 109 1 131 18 109 1 133 18 109 1 138 18 109 1 139 18 109 1 140] 
#[1 8 29 0 2 7 118 0 5 8 37 0 6 3 85 0 11 8 41 0 93 8 45 0 123 8 65 0 126 8 69 0 127 8 53 0 140 8 53 0 152 8 53 0 153 8 53 0 154 8 65 1 67 8 69 1 68 8 73 1 98 18 113 1 119 18 113 1 131 18 113 1 133 18 113 1 138 18 113 1 139 18 113 1 140] 
#[0 7 122 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 7 126 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 18 117 0 7 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 18 121 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 18 121 1 123 3 133 1 124 3 137 1 125 18 121 1 126 18 121 1 127 3 145 1 128 3 145 1 130] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 18 125 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 18 125 1 126 18 125 1 127 3 145 1 128 3 145 1 130] 
#[0 7 130 0 14 0 119] 
#[0 7 134 0 2 0 4 0 23 0 74 1 220] 
#[1 0 185 0 122 8 129 0 139 18 129 1 100] 
#[0 18 133 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 18 137 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 0 185 0 122 18 141 0 139] 
#[0 18 145 0 3] 
#[1 7 138 0 3 7 138 0 4 7 138 0 5 7 138 0 6 7 138 0 7 7 138 0 8 7 138 0 9 7 138 0 11 7 138 0 12 7 138 0 14 7 138 0 15 7 138 0 18 7 138 0 19 7 138 0 20 7 138 0 21 7 138 0 23 7 138 0 24 7 138 0 25 7 138 0 26 7 138 0 27 7 138 0 35 7 138 0 37 0 219 0 40 7 138 0 41 7 138 0 43 7 138 0 45 7 138 0 47 7 138 0 48 7 138 0 49 7 138 0 51 7 138 0 53 7 138 0 54 7 138 0 64 7 138 0 83 7 138 0 86 7 138 0 97 7 138 0 98 7 138 0 99 7 138 0 102 7 138 0 119 7 138 0 120 7 138 0 123 7 138 0 126 7 138 0 127 7 138 0 132 7 138 0 133 7 138 1 221] 
#[1 7 142 0 3 7 142 0 4 7 142 0 5 0 223 0 6 7 142 0 7 7 142 0 8 7 142 0 9 7 142 0 11 7 142 0 12 7 142 0 14 7 142 0 15 7 142 0 18 7 142 0 19 7 142 0 20 7 142 0 21 7 142 0 23 7 142 0 24 7 142 0 25 7 142 0 26 7 142 0 27 7 142 0 35 7 142 0 37 7 142 0 40 7 142 0 41 7 142 0 43 7 142 0 45 7 142 0 47 7 142 0 48 7 142 0 49 7 142 0 51 7 142 0 53 7 142 0 54 7 142 0 64 7 142 0 83 7 142 0 86 7 142 0 97 7 142 0 98 7 142 0 99 7 142 0 102 7 142 0 119 7 142 0 120 7 142 0 123 7 142 0 126 7 142 0 127 7 142 0 132 7 142 0 133 8 181 0 237 7 142 1 221] 
#[0 18 149 0 7] 
#[0 7 146 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 7 150 0 3 7 150 0 4 7 150 0 5 7 150 0 6 7 150 0 7 7 150 0 8 7 150 0 9 7 150 0 11 7 150 0 12 7 150 0 14 7 150 0 15 7 150 0 18 7 150 0 19 7 150 0 20 7 150 0 21 7 154 0 22 7 150 0 23 7 150 0 24 7 150 0 25 7 150 0 26 7 150 0 27 7 150 0 35 7 150 0 37 7 150 0 40 7 150 0 41 7 150 0 43 7 150 0 45 7 150 0 47 7 150 0 48 7 150 0 49 7 150 0 51 7 150 0 53 7 150 0 54 7 150 0 64 7 150 0 83 7 150 0 85 7 150 0 86 7 150 0 97 7 150 0 98 7 150 0 99 7 150 0 102 7 150 0 119 7 150 0 120 7 150 0 123 7 150 0 126 7 150 0 127 7 150 0 132 7 150 0 133 7 150 1 221] 
#[0 18 153 0 123 0 126 1 48 1 67] 
#[0 7 158 0 8 0 78] 
#[1 18 157 0 5 8 201 0 123 8 201 0 126 8 201 1 48 18 161 1 63 8 201 1 67] 
#[0 7 162 0 78] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 18 165 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 18 169 0 2 0 185 0 122 18 173 0 139] 
#[0 18 177 0 2] 
#[0 6 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 166 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 18 181 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 18 185 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 18 189 0 2] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 18 193 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 7 170 0 8] 
#[0 7 174 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 13 89 0 2 3 85 0 11 13 97 1 98 18 25 1 133 18 197 1 142] 
#[0 18 201 0 4] 
#[1 0 185 0 122 18 205 0 139 18 205 1 58] 
#[0 7 178 0 78] 
#[1 18 209 0 5 0 185 0 122 9 29 0 123 9 29 0 126 9 41 0 139 9 29 1 48 18 213 1 56 9 41 1 58 9 29 1 67] 
#[0 7 182 0 78] 
#[0 7 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 190 0 78] 
#[0 7 194 0 78] 
#[0 7 198 0 5] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 18 217 0 222 18 217 0 223 8 25 1 220] 
#[0 7 202 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 7 206 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[1 18 221 0 5 9 65 0 6 9 69 0 118 0 185 0 122 8 45 0 123 8 65 0 126 8 69 0 127 9 73 0 139 9 77 0 140 9 77 0 152 9 77 0 153 9 77 0 154 18 225 0 217 18 229 0 221 18 229 0 223 8 65 1 67 8 69 1 68 9 97 1 220] 
#[0 7 210 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 7 214 0 7 0 119] 
#[0 18 233 0 7] 
#[0 7 218 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[1 4 69 0 4 4 73 0 6 18 237 0 7 4 121 0 118 4 181 0 119 0 185 0 122 9 73 0 139 18 241 0 146 4 133 0 214 4 133 0 215 4 133 0 216 18 245 0 220 9 117 0 222 9 117 0 223 18 249 0 224 8 25 1 220] 
#[0 7 222 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 7 226 0 3 0 5 0 7 0 8 0 119] 
#[0 7 230 0 8 0 119] 
#[1 7 234 0 8 9 125 0 23 7 234 0 119 18 253 0 156] 
#[1 7 238 0 8 9 125 0 23 7 238 0 119 19 1 0 156] 
#[1 0 142 0 2 0 142 0 6 0 227 0 7 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 55 0 142 0 83 0 142 0 86 0 142 0 119 13 169 0 120 0 142 0 130 0 142 0 131 14 169 1 132 0 142 1 219 0 142 1 220] 
#[1 5 126 0 2 0 231 0 3 5 126 0 6 0 231 0 7 5 126 0 9 5 126 0 10 5 126 0 11 5 126 0 12 5 126 0 13 5 126 0 14 5 126 0 15 5 126 0 16 5 126 0 17 5 126 0 18 5 126 0 20 5 126 0 21 5 126 0 22 0 231 0 23 5 126 0 24 5 126 0 25 5 126 0 26 5 126 0 27 5 126 0 28 5 126 0 29 5 126 0 30 5 126 0 31 5 126 0 32 5 126 0 33 5 126 0 34 5 126 0 35 5 126 0 36 5 126 0 37 5 126 0 38 5 126 0 40 5 126 0 41 5 126 0 42 5 126 0 43 5 126 0 44 5 126 0 45 5 126 0 46 5 126 0 47 5 126 0 48 5 126 0 49 5 126 0 50 5 126 0 51 5 126 0 53 5 126 0 54 5 126 0 55 5 126 0 83 5 126 0 86 0 231 0 119 5 126 0 130 5 126 0 131 5 126 1 219 5 126 1 220] 
#[0 7 242 0 3 0 7] 
#[0 7 246 0 3] 
#[0 7 250 0 3 0 119] 
#[0 7 254 0 3 0 5 0 7 0 119] 
#[1 8 2 0 3 8 2 0 5 8 2 0 7 9 125 0 23 8 2 0 119 19 5 0 156] 
#[0 8 6 0 3 0 5 0 7 0 23 0 43 0 119 0 120] 
#[0 8 10 0 3 0 5 0 7 0 23 0 43 0 119 0 120] 
#[0 8 14 0 3 0 5 0 7 0 23 0 43 0 119 0 120] 
#[1 19 9 0 43 13 169 0 120 19 13 1 132] 
#[1 5 114 0 3 4 69 0 4 5 114 0 5 4 73 0 6 5 114 0 7 5 114 0 23 5 114 0 43 14 189 0 107 5 114 0 119 5 114 0 120 0 185 0 122 19 17 0 139 19 17 0 214 19 17 0 215 19 17 0 216 19 17 1 135] 
#[1 8 18 0 3 8 18 0 5 8 18 0 7 9 125 0 23 19 21 0 43 8 18 0 119 13 169 0 120 19 25 0 156 19 29 1 132] 
#[0 8 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 8 26 0 7 0 119] 
#[0 8 30 0 7 0 119] 
#[0 19 33 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 19 37 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 19 41 0 2] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 19 45 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 19 49 1 4 16 1 1 5 19 53 1 28 0 6 1 220] 
#[0 8 34 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 8 38 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 19 57 0 2] 
#[1 10 37 0 122 10 41 0 124 19 61 1 38] 
#[0 19 65 0 2] 
#[0 19 69 0 2] 
#[0 19 73 0 2] 
#[1 0 6 0 2 0 6 0 4 8 42 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 19 77 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 19 81 1 40 19 85 1 41 0 6 1 220] 
#[0 8 46 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 19 89 0 8] 
#[0 8 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 132 0 133 0 134 1 219 1 220 1 221] 
#[0 8 54 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 8 58 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 19 93 0 253 4 153 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 8 62 0 8] 
#[1 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 19 97 0 140 19 97 0 152 19 97 0 153 19 97 0 154 8 65 1 67 8 69 1 68] 
#[1 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 19 101 0 140 19 101 0 152 19 101 0 153 19 101 0 154 8 65 1 67 8 69 1 68] 
#[1 6 133 0 2 3 85 0 11 6 145 1 98 19 105 1 142] 
#[1 7 105 0 1 9 65 0 6 19 109 0 64 19 121 0 97 19 121 0 98 19 121 0 99 19 113 0 102 8 45 0 123 8 65 0 126 8 69 0 127 19 117 0 140 19 117 0 152 19 117 0 153 19 117 0 154 8 65 1 67 8 69 1 68 19 121 1 136 19 125 1 143 19 129 1 144 7 113 1 217 19 133 1 220] 
#[0 19 137 0 8] 
#[0 8 66 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 8 70 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 8 74 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 8 78 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 8 82 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 8 86 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 8 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 132 0 133 0 134 1 219 1 220 1 221] 
#[0 19 141 0 5] 
#[0 8 94 0 4 0 85] 
#[0 8 98 0 4 0 85] 
#[0 8 102 0 4 0 119] 
#[1 8 106 0 4 19 145 0 119] 
#[0 8 110 0 4 0 119] 
#[0 8 114 0 4] 
#[0 19 149 0 4] 
#[0 19 153 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 19 157 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 19 161 0 3] 
#[0 8 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 8 122 0 3 0 119] 
#[0 8 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 19 165 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 19 169 0 118 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 19 173 0 194 19 173 0 195 0 249 1 3 19 173 1 6 1 121 1 7 1 125 1 8 1 129 1 11 19 173 1 12 0 249 1 17 19 173 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 8 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 19 177 0 14 19 181 0 119] 
#[0 8 134 0 14 0 119] 
#[0 8 138 0 14 0 119] 
#[1 0 93 0 2 19 185 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 10 161 0 118 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 19 189 0 171 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 10 169 0 194 10 169 0 195 0 249 1 3 10 169 1 6 1 121 1 7 1 125 1 8 1 129 1 11 10 169 1 12 0 249 1 17 10 169 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 4 58 0 4 4 58 0 134 4 58 0 136 19 193 1 88 11 193 1 89] 
#[0 8 142 0 5 0 119] 
#[0 8 146 0 5 0 119] 
#[0 8 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 19 197 0 5 9 65 0 6 10 17 0 26 10 21 0 56 10 25 0 80 10 29 0 101 10 201 0 118 10 205 0 122 8 45 0 123 10 41 0 124 8 65 0 126 8 69 0 127 10 209 0 139 10 221 0 140 19 201 0 151 10 221 0 152 10 221 0 153 10 221 0 154 19 201 0 155 19 201 1 14 19 201 1 18 19 201 1 23 19 201 1 27 10 233 1 38 8 65 1 67 8 69 1 68 19 201 1 143 19 201 1 144 10 237 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 19 205 0 194 19 205 0 195 0 249 1 3 19 205 1 6 1 121 1 7 1 125 1 8 1 129 1 11 19 205 1 12 0 249 1 17 19 205 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 19 209 0 194 19 209 0 195 19 209 0 197 0 249 1 3 19 209 1 6 1 121 1 7 1 125 1 8 1 129 1 11 19 209 1 12 0 249 1 17 19 209 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 8 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 8 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 19 213 0 132 19 217 0 133] 
#[0 8 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 19 221 0 7 6 113 0 119] 
#[1 19 225 0 7 6 113 0 119] 
#[0 8 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 8 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 8 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 8 178 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 19 229 0 194 19 229 0 195 0 249 1 3 19 229 1 6 1 121 1 7 1 125 1 8 1 129 1 11 19 229 1 12 0 249 1 17 19 229 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 6 0 2 0 6 0 4 8 182 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 6 241 0 205 0 57 0 206 6 241 0 207 0 65 0 208 0 6 1 220] 
#[0 19 233 0 5] 
#[0 8 186 0 5] 
#[0 8 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 0 134 0 135 0 136 1 219 1 220 1 221] 
#[0 19 237 0 134] 
#[0 8 194 0 4 0 134 0 136] 
#[0 8 198 0 4 0 134 0 136] 
#[0 8 202 0 4 0 134 0 136] 
#[0 19 241 0 4] 
#[0 8 206 0 135] 
#[0 19 245 0 135] 
#[1 8 210 0 14 19 249 1 95] 
#[1 8 214 0 4 8 214 0 9 8 214 0 14 8 214 0 23 16 33 0 120 8 214 0 135] 
#[0 8 218 0 4 0 9 0 14 0 23 0 135] 
#[1 19 253 0 9 0 138 0 14 20 1 1 93] 
#[0 8 222 0 4 0 9 0 14 0 135] 
#[1 6 174 0 4 8 226 0 9 8 226 0 14 16 41 0 135 16 69 1 76 20 5 1 81 20 5 1 83 20 5 1 84 16 69 1 85 16 77 1 97] 
#[0 8 230 0 4 0 9 0 14 0 135] 
#[0 8 234 0 4 0 9 0 14 0 135] 
#[1 8 238 0 4 8 238 0 9 8 238 0 14 20 9 0 23 8 238 0 135 20 13 1 86] 
#[0 20 17 0 14] 
#[0 20 21 0 4] 
#[1 8 242 0 4 8 242 0 9 8 242 0 14 16 29 0 22 8 242 0 135] 
#[0 8 246 0 135] 
#[0 8 250 0 4 0 134 0 136] 
#[1 13 169 0 120 20 25 1 132] 
#[1 4 201 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 4 205 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 185 0 122 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 249 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 4 213 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 4 213 0 176 20 29 0 177 20 29 0 178 0 249 1 3 0 249 1 17 0 249 1 22 0 249 1 26 20 29 1 29 0 249 1 31 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 4 221 1 220] 
#[0 20 33 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 20 37 1 4 16 1 1 5 0 6 1 220] 
#[0 20 41 0 3] 
#[0 8 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 45 0 194 20 45 0 195 20 45 0 197 0 249 1 3 20 45 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 45 1 12 0 249 1 17 20 45 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 20 49 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 53 0 194 20 53 0 195 20 53 0 197 0 249 1 3 20 53 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 53 1 12 0 249 1 17 20 53 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 20 57 0 8 6 113 0 119] 
#[1 4 74 0 8 9 125 0 23 9 6 0 83 9 6 0 96 4 74 0 119 12 85 0 156] 
#[1 20 61 0 8 12 93 0 119] 
#[1 9 125 0 23 9 10 0 83 9 10 0 96 12 97 0 156] 
#[1 20 65 0 83 20 69 0 96] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 73 0 194 20 73 0 195 20 73 0 197 0 249 1 3 20 73 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 73 1 12 0 249 1 17 20 73 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 77 0 194 20 77 0 195 0 249 1 3 20 77 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 77 1 12 0 249 1 17 20 77 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 20 81 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 85 0 194 20 85 0 195 20 85 0 197 0 249 1 3 20 85 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 85 1 12 0 249 1 17 20 85 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 20 89 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 93 0 194 20 93 0 195 20 93 0 197 0 249 1 3 20 93 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 93 1 12 0 249 1 17 20 93 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 20 97 0 8 6 113 0 119] 
#[1 3 66 0 8 9 125 0 23 9 6 0 83 9 6 0 96 3 66 0 119 9 129 0 156] 
#[1 9 125 0 23 9 10 0 83 9 10 0 96 9 141 0 156] 
#[0 9 14 0 83 0 96] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 101 0 194 20 101 0 195 20 101 0 197 0 249 1 3 20 101 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 101 1 12 0 249 1 17 20 101 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 20 105 0 194 20 105 0 195 0 249 1 3 20 105 1 6 1 121 1 7 1 125 1 8 1 129 1 11 20 105 1 12 0 249 1 17 20 105 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 20 117 0 139 20 117 0 214 20 117 0 215 20 117 0 216 20 117 0 234] 
#[0 20 121 0 96] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 16 177 0 139 16 177 0 214 16 177 0 215 16 177 0 216 16 177 0 234] 
#[0 20 125 0 96] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 20 129 0 198 20 129 0 201 20 129 0 202 20 129 0 203 20 129 0 211 20 129 0 225 20 129 0 226 20 129 0 227 20 129 0 228 20 129 0 229 20 129 0 230 20 129 0 231 20 129 0 232 20 129 0 235 20 129 0 236 20 129 0 238 20 129 0 239 20 129 0 240 20 129 0 245 20 129 0 247 20 129 0 248 20 129 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 9 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 20 133 0 4 20 137 0 241] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 20 149 0 139 20 149 0 214 20 149 0 215 20 149 0 216 20 149 0 251] 
#[0 9 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 34 0 8 0 119] 
#[1 9 38 0 8 9 125 0 23 9 38 0 119 20 153 0 156] 
#[1 9 125 0 23 20 157 0 156] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 20 161 0 198 20 161 0 201 20 161 0 202 20 161 0 203 20 161 0 211 20 161 0 225 20 161 0 226 20 161 0 227 20 161 0 228 20 161 0 229 20 161 0 230 20 161 0 231 20 161 0 232 20 161 0 235 20 161 0 236 20 161 0 238 20 161 0 239 20 161 0 240 20 161 0 245 20 161 0 247 20 161 0 248 20 161 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 20 165 0 198 20 165 0 201 20 165 0 202 20 165 0 203 20 165 0 211 20 165 0 225 20 165 0 226 20 165 0 227 20 165 0 228 20 165 0 229 20 165 0 230 20 165 0 231 20 165 0 232 20 165 0 235 20 165 0 236 20 165 0 238 20 165 0 239 20 165 0 240 20 165 0 245 20 165 0 247 20 165 0 248 20 165 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 9 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 20 169 0 5 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 17 49 0 140 17 49 0 152 17 49 0 153 17 49 0 154 8 65 1 67 8 69 1 68 20 173 1 164 17 57 1 165 17 61 1 166] 
#[0 20 177 0 4] 
#[1 5 17 0 74 20 181 1 33 5 33 1 220] 
#[0 9 46 0 8 0 119] 
#[0 9 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 185 0 122 12 153 0 139 20 185 1 203] 
#[0 20 189 0 8] 
#[0 9 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 30 0 1 0 38 0 5 7 189 0 67 0 19 0 73 7 221 0 82 2 161 0 87 2 165 0 92 2 169 0 111 3 29 1 49 7 229 1 134 3 29 1 141 3 29 1 150 3 29 1 168 3 29 1 174 3 29 1 186 20 193 1 190 3 25 1 191 3 29 1 192 3 29 1 195 3 29 1 197 3 29 1 198 3 29 1 199 3 29 1 200] 
#[1 9 58 0 5 7 5 0 61 20 197 0 63 2 145 0 72 20 201 0 73 7 13 0 79 7 153 0 82 2 161 0 87 20 205 0 89 7 25 0 92 7 29 0 113 20 209 0 207 0 65 0 208 20 213 1 150 20 233 1 163 20 217 1 174 20 221 1 201 20 225 1 204 20 229 1 205 20 233 1 211 20 237 1 212 20 241 1 213 20 245 1 214 20 249 1 215] 
#[0 9 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 9 70 0 5 20 253 0 23 9 70 0 119] 
#[0 21 1 0 5] 
#[1 9 74 0 5 21 5 0 119] 
#[0 9 78 0 5 0 119] 
#[0 9 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 21 9 0 4] 
#[0 21 13 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 21 17 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 21 21 0 3] 
#[0 2 170 0 8 0 22] 
#[1 9 94 0 8 21 25 0 22] 
#[0 21 29 0 8] 
#[0 21 33 0 2] 
#[0 9 98 0 4] 
#[0 9 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 3 77 0 4 21 37 1 116] 
#[0 9 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 3 221 0 61 2 133 0 62 2 137 0 63 7 189 0 67 2 145 0 72 3 229 0 79 7 153 0 82 2 161 0 87 0 65 0 89 2 165 0 92 2 169 0 111 2 1 0 113 21 41 0 207 0 65 0 208 21 45 0 211 21 49 1 2 21 53 1 16 21 57 1 30 21 61 1 141 21 65 1 150 21 69 1 163 21 73 1 168 21 77 1 174 21 81 1 200 13 69 1 220] 
#[0 9 110 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 118 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 122 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 126 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 130 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 134 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 138 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 142 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 21 85 0 5] 
#[1 0 93 0 2 0 15 0 4 9 146 0 5 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 2 129 0 61 2 133 0 62 2 137 0 63 1 221 0 65 1 225 0 66 7 189 0 67 0 137 0 69 1 229 0 70 2 145 0 72 17 125 0 73 1 169 0 75 1 233 0 77 2 153 0 79 1 237 0 81 7 117 0 82 2 161 0 87 0 65 0 89 2 165 0 92 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 2 169 0 111 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 21 89 0 198 21 89 0 201 21 89 0 202 21 89 0 203 21 89 0 207 0 65 0 208 21 89 0 211 21 89 0 225 21 89 0 226 21 89 0 227 21 89 0 228 21 89 0 229 21 89 0 230 21 89 0 231 21 89 0 232 21 89 0 235 21 89 0 236 21 89 0 238 21 89 0 239 21 89 0 240 21 89 0 245 21 89 0 247 21 89 0 248 21 89 0 252 21 89 1 2 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 21 89 1 16 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 21 89 1 30 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 21 89 1 141 21 89 1 150 21 89 1 163 21 89 1 168 21 89 1 172 21 89 1 173 21 89 1 174 21 89 1 200 3 69 1 220] 
#[0 9 150 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 154 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 158 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 162 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 9 166 0 4 0 22] 
#[0 21 93 0 8] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 21 97 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 21 97 1 126 21 97 1 127 3 145 1 128 3 145 1 130] 
#[1 5 85 0 2 5 133 0 6 5 137 0 22 0 205 0 130 0 18 0 131 5 145 0 157 0 245 0 158 10 153 0 170 5 101 1 220] 
#[1 5 13 0 4 5 17 0 74 0 185 0 122 21 101 0 139 6 249 1 32 5 29 1 33 5 33 1 220] 
#[1 7 73 0 2 7 77 0 26 0 185 0 122 21 105 0 139] 
#[1 0 142 0 2 0 142 0 6 0 235 0 8 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 146 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 24 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 53 0 142 0 54 0 142 0 55 0 142 0 83 0 142 0 86 0 142 0 130 0 142 0 131 0 142 1 219 0 142 1 220] 
#[0 21 113 0 8] 
#[0 9 170 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 174 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 9 182 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 9 186 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[1 0 185 0 122 17 93 0 139 17 97 1 115 17 101 1 175] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 2 129 0 61 2 133 0 62 0 137 0 69 1 169 0 75 2 153 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 17 217 0 194 17 217 0 195 17 221 1 2 0 249 1 3 17 217 1 6 1 121 1 7 1 125 1 8 1 129 1 11 17 217 1 12 17 225 1 16 0 249 1 17 17 217 1 20 0 249 1 22 0 249 1 26 1 41 1 29 17 229 1 30 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 3 69 1 220] 
#[0 7 62 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 70 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 7 86 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 7 5 0 61 7 13 0 79 0 185 0 122 21 117 0 139 17 233 1 204 17 237 1 205] 
#[0 7 58 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 7 66 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 7 90 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 21 121 0 3] 
#[0 21 125 0 8] 
#[0 21 129 0 4] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 21 133 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 9 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 21 137 1 4 16 1 1 5 0 6 1 220] 
#[1 3 85 0 11 21 141 1 98] 
#[1 5 13 0 4 5 17 0 74 21 145 1 32 5 29 1 33 5 33 1 220] 
#[1 3 85 0 11 0 185 0 122 21 149 0 139 21 153 1 98] 
#[1 5 13 0 4 5 17 0 74 0 185 0 122 21 157 0 139 21 161 1 32 5 29 1 33 5 33 1 220] 
#[0 21 165 0 61] 
#[1 3 73 0 2 8 5 0 4 8 9 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 8 13 0 139 4 133 0 214 4 133 0 215 4 133 0 216 18 217 0 222 18 217 0 223 3 117 1 67 3 121 1 68 3 125 1 98 18 101 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 18 101 1 126 18 101 1 127 3 145 1 128 3 145 1 130 8 25 1 220] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 21 169 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 21 169 1 126 21 169 1 127 3 145 1 128 3 145 1 130] 
#[1 9 194 0 4 9 194 0 5 9 194 0 8 9 194 0 119 13 169 0 120 21 173 1 132] 
#[1 21 177 0 95 21 181 0 103] 
#[0 9 198 0 2 0 5 0 8 0 11 0 23 0 43 0 119 0 120] 
#[0 21 185 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 21 189 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 9 202 0 5 0 8 0 119] 
#[0 9 206 0 5 0 8 0 119] 
#[0 9 210 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 64 0 97 0 98 0 99 0 102 0 119 0 123 0 126 0 127] 
#[0 21 193 0 3] 
#[0 9 214 0 5 0 8 0 119] 
#[0 9 218 0 5 0 8 0 119] 
#[0 9 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 9 226 0 7 0 119] 
#[0 9 230 0 14 0 119] 
#[0 9 234 0 14 0 119] 
#[0 21 197 0 19] 
#[0 21 201 0 3] 
#[0 9 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 21 205 0 19] 
#[0 9 242 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 9 246 0 5 0 119] 
#[0 9 250 0 8 0 78] 
#[0 9 254 0 5 0 119] 
#[0 21 209 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 21 213 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 21 217 0 2] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 21 221 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 21 225 0 4] 
#[0 21 229 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 21 233 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 21 237 0 3] 
#[0 21 241 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 21 245 1 4 16 1 1 5 0 6 1 220] 
#[0 10 2 0 5 0 119] 
#[0 10 6 0 78] 
#[0 10 10 0 5 0 119] 
#[0 10 14 0 5 0 119] 
#[0 10 18 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 21 249 0 5] 
#[0 10 22 0 5 0 119] 
#[0 10 26 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 10 30 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[1 4 69 0 4 4 73 0 6 21 253 0 7 4 121 0 118 9 233 0 119 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 14 125 0 222 14 125 0 223 22 1 0 224 8 25 1 220] 
#[0 10 34 0 7 0 119] 
#[0 22 5 0 7] 
#[0 10 38 0 8 0 119] 
#[0 10 42 0 8 0 119] 
#[0 10 46 0 3 0 5 0 7 0 119] 
#[1 10 50 0 3 10 50 0 5 10 50 0 7 10 50 0 119 13 169 0 120 22 9 1 132] 
#[1 10 54 0 3 10 54 0 5 10 54 0 7 9 125 0 23 10 54 0 119 22 13 0 156] 
#[1 10 58 0 3 10 58 0 5 10 58 0 7 9 125 0 23 22 17 0 43 10 58 0 119 13 169 0 120 22 21 0 156 22 25 1 132] 
#[0 10 62 0 3 0 5 0 7 0 119] 
#[0 10 66 0 3 0 5 0 7 0 119] 
#[1 10 70 0 3 10 70 0 5 10 70 0 7 9 125 0 23 10 70 0 119 22 29 0 156] 
#[0 22 33 0 4] 
#[0 22 37 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 22 41 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 22 45 0 3] 
#[0 10 74 0 5] 
#[0 22 49 0 5] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 22 53 0 253 4 153 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 22 57 0 2] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 22 61 0 253 4 153 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 22 65 0 3] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 22 73 0 222 22 73 0 223 22 73 1 1 22 73 1 15 8 25 1 220] 
#[1 0 6 0 2 0 6 0 4 10 78 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 6 241 0 205 0 57 0 206 6 241 0 207 0 65 0 208 0 6 1 220] 
#[0 22 77 0 5] 
#[0 10 82 0 5] 
#[0 10 86 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 22 81 0 3] 
#[0 22 85 0 2] 
#[0 22 89 0 2] 
#[0 22 93 0 4] 
#[0 22 97 0 2] 
#[1 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 22 101 0 140 22 101 0 152 22 101 0 153 22 101 0 154 8 65 1 67 8 69 1 68 22 105 1 143 22 109 1 144 19 133 1 220] 
#[1 8 29 0 2 22 113 0 8 3 85 0 11 9 125 0 23 13 169 0 120 22 117 0 156 8 73 1 98 22 121 1 132 22 125 1 133] 
#[1 9 65 0 6 22 129 0 64 22 133 0 102 8 45 0 123 8 65 0 126 8 69 0 127 22 137 0 140 22 137 0 152 22 137 0 153 22 137 0 154 8 65 1 67 8 69 1 68 22 141 1 143 22 145 1 144 19 133 1 220] 
#[0 10 90 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 10 94 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[1 15 49 0 80 15 53 0 101] 
#[0 10 98 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 10 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 132 0 133 0 134 1 219 1 220 1 221] 
#[1 0 185 0 122 3 113 0 139 22 149 1 113 3 165 1 114 3 169 1 115 22 149 1 153] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 22 153 1 4 16 1 1 5 0 6 1 220] 
#[0 22 157 0 4] 
#[0 22 161 0 3] 
#[0 22 165 0 4] 
#[0 10 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 22 169 0 194 22 169 0 195 0 249 1 3 22 169 1 6 1 121 1 7 1 125 1 8 1 129 1 11 22 169 1 12 0 249 1 17 22 169 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 10 110 0 3 0 119] 
#[0 10 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 22 173 1 104 22 173 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 22 173 1 126 22 173 1 127 3 145 1 128 3 145 1 130] 
#[0 10 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 22 177 0 3 22 181 0 119] 
#[0 22 185 0 134] 
#[0 10 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 10 126 0 5 0 119] 
#[0 10 130 0 5 0 119] 
#[1 6 113 0 119 10 134 0 132 10 134 0 133] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 22 189 0 194 22 189 0 195 22 189 0 197 0 249 1 3 22 189 1 6 1 121 1 7 1 125 1 8 1 129 1 11 22 189 1 12 0 249 1 17 22 189 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 10 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 10 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 10 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 10 150 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 10 154 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 22 193 0 9] 
#[1 0 93 0 2 0 14 0 4 0 138 0 5 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 4 177 0 118 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 22 205 0 147 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 22 205 0 194 22 205 0 195 0 249 1 3 22 205 1 6 1 121 1 7 1 125 1 8 1 129 1 11 22 205 1 12 0 249 1 17 22 205 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 22 205 1 91 1 201 1 92 22 209 1 93 1 205 1 220] 
#[0 10 158 0 4 0 9 0 14 0 23 0 135] 
#[0 22 213 0 14] 
#[1 8 210 0 14 22 217 1 95] 
#[0 22 221 0 14] 
#[0 10 162 0 4 0 9 0 14 0 135] 
#[1 6 174 0 4 22 225 0 126 0 11 0 134 22 225 1 67 22 237 1 70 22 237 1 71 1 193 1 72 22 237 1 74 22 237 1 87 1 201 1 92 22 241 1 97] 
#[0 10 166 0 4 0 9 0 14 0 135] 
#[0 10 170 0 4 0 134 0 136] 
#[1 4 177 0 118 22 245 0 147] 
#[0 10 174 0 4 0 19] 
#[0 10 178 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 119 0 120 0 132 0 133 1 221] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 22 249 1 4 16 1 1 5 0 6 1 220] 
#[0 22 253 0 5] 
#[1 10 182 0 4 10 182 0 19 13 169 0 120 23 1 1 132] 
#[1 23 5 0 3 6 113 0 119] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 23 9 0 198 23 9 0 201 23 9 0 202 23 9 0 203 23 9 0 211 23 9 0 225 23 9 0 226 23 9 0 227 23 9 0 228 23 9 0 229 23 9 0 230 23 9 0 231 23 9 0 232 23 9 0 235 23 9 0 236 23 9 0 238 23 9 0 239 23 9 0 240 23 9 0 245 23 9 0 247 23 9 0 248 23 9 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 23 13 0 3 6 113 0 119] 
#[1 0 93 0 2 23 17 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 21 0 194 23 21 0 195 23 21 0 197 0 249 1 3 23 21 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 21 1 12 0 249 1 17 23 21 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 23 25 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 29 0 194 23 29 0 195 23 29 0 197 0 249 1 3 23 29 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 29 1 12 0 249 1 17 23 29 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 33 0 194 23 33 0 195 23 33 0 197 0 249 1 3 23 33 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 33 1 12 0 249 1 17 23 33 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 37 0 194 23 37 0 195 0 249 1 3 23 37 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 37 1 12 0 249 1 17 23 37 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 23 41 0 3 6 113 0 119] 
#[0 23 45 0 3] 
#[1 0 93 0 2 23 49 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 53 0 194 23 53 0 195 23 53 0 197 0 249 1 3 23 53 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 53 1 12 0 249 1 17 23 53 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 23 57 0 8 6 113 0 119] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 23 61 0 198 23 61 0 201 23 61 0 202 23 61 0 203 23 61 0 211 23 61 0 225 23 61 0 226 23 61 0 227 23 61 0 228 23 61 0 229 23 61 0 230 23 61 0 231 23 61 0 232 23 61 0 235 23 61 0 236 23 61 0 238 23 61 0 239 23 61 0 240 23 61 0 245 23 61 0 247 23 61 0 248 23 61 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 23 65 0 3 6 113 0 119] 
#[1 0 93 0 2 23 69 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 73 0 194 23 73 0 195 23 73 0 197 0 249 1 3 23 73 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 73 1 12 0 249 1 17 23 73 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 23 77 0 3 6 113 0 119] 
#[0 23 81 0 3] 
#[0 9 6 0 96] 
#[0 9 10 0 96] 
#[0 23 85 0 96] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 89 0 194 23 89 0 195 0 249 1 3 23 89 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 89 1 12 0 249 1 17 23 89 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 93 0 194 23 93 0 195 0 249 1 3 23 93 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 93 1 12 0 249 1 17 23 93 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 10 186 0 1 10 186 0 2 10 186 0 4 10 186 0 5 10 186 0 6 10 186 0 8 10 186 0 35 10 186 0 36 10 186 0 37 10 186 0 38 10 186 0 39 10 186 0 52 10 186 0 56 10 186 0 57 10 186 0 58 10 186 0 59 10 186 0 61 10 186 0 62 10 186 0 63 10 186 0 65 10 186 0 66 10 186 0 67 10 186 0 68 10 186 0 69 10 186 0 70 23 97 0 71 10 186 0 72 10 186 0 73 10 186 0 75 10 186 0 77 10 186 0 79 10 186 0 81 10 186 0 82 10 186 0 87 10 186 0 89 10 186 0 92 10 186 0 93 10 186 0 94 10 186 0 100 10 186 0 104 10 186 0 105 10 186 0 107 10 186 0 108 10 186 0 109 10 186 0 110 10 186 0 111 10 186 0 112 10 186 0 113 10 186 0 114 10 186 0 115 10 186 0 116 10 186 0 117 10 186 0 122 10 186 0 124 10 186 0 126 10 186 0 127 10 186 0 128 10 186 0 130 10 186 0 131 10 186 0 134 10 186 1 220 10 186 1 221] 
#[1 23 101 0 5 23 105 0 59 23 109 0 68 23 113 0 242 23 117 0 243 23 121 0 244] 
#[0 10 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 10 194 0 3] 
#[0 10 198 0 3] 
#[0 23 125 0 3] 
#[0 10 202 0 8 0 119] 
#[0 10 206 0 8 0 119] 
#[0 10 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 10 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 10 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 23 129 0 5] 
#[1 10 222 0 5 8 37 0 6 23 133 0 64 23 145 0 97 23 145 0 98 23 145 0 99 23 137 0 102 8 45 0 123 8 65 0 126 8 69 0 127 23 141 0 140 23 141 0 152 23 141 0 153 23 141 0 154 8 65 1 67 8 69 1 68 23 145 1 136 23 161 1 139 23 153 1 206 23 157 1 207 23 161 1 208 23 161 1 209 23 161 1 210] 
#[0 23 173 0 4] 
#[0 10 226 0 8 0 119] 
#[0 10 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 23 177 0 5] 
#[1 0 50 0 4 0 50 0 6 7 1 0 72 0 239 0 122 12 153 0 139 12 157 1 202 12 161 1 203 0 50 1 220] 
#[1 7 5 0 61 20 197 0 63 2 145 0 72 7 13 0 79 7 153 0 82 2 161 0 87 20 205 0 89 7 25 0 92 7 29 0 113 23 181 0 207 0 65 0 208 23 185 1 150 23 205 1 163 23 189 1 174 23 193 1 201 23 197 1 204 23 201 1 205 23 205 1 211 23 209 1 212] 
#[1 0 54 0 4 0 54 0 6 0 243 0 122 12 153 0 139 12 169 1 202 12 161 1 203 0 54 1 220] 
#[0 10 234 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 10 238 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 10 242 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 10 246 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 10 250 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 10 254 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 11 2 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 11 6 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 23 213 0 5] 
#[1 11 10 0 5 7 5 0 61 20 197 0 63 2 145 0 72 20 201 0 73 7 13 0 79 7 153 0 82 2 161 0 87 20 205 0 89 7 25 0 92 7 29 0 113 20 209 0 207 0 65 0 208 20 213 1 150 20 233 1 163 20 217 1 174 20 221 1 201 20 225 1 204 20 229 1 205 20 233 1 211 20 237 1 212 23 217 1 215] 
#[0 11 14 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 23 225 0 194 23 225 0 195 0 249 1 3 23 225 1 6 1 121 1 7 1 125 1 8 1 129 1 11 23 225 1 12 0 249 1 17 23 225 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 23 225 1 167 1 205 1 220] 
#[0 11 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 11 22 0 5 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 17 49 0 140 17 49 0 152 17 49 0 153 17 49 0 154 8 65 1 67 8 69 1 68 23 229 1 166] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 23 233 1 4 16 1 1 5 0 6 1 220] 
#[0 23 237 0 4] 
#[0 23 241 0 3] 
#[0 23 245 0 4] 
#[1 0 185 0 122 23 249 0 139] 
#[0 11 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 23 253 0 126 1 67] 
#[0 11 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 11 34 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 38 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 42 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 46 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 50 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 54 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 58 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 66 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 70 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 11 82 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220] 
#[0 11 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 24 1 0 8] 
#[1 5 13 0 4 3 85 0 11 5 17 0 74 12 133 1 32 24 5 1 33 17 9 1 98 5 33 1 220] 
#[1 24 9 0 2 3 85 0 11 8 73 1 98 17 25 1 133] 
#[0 11 90 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 111 1 221] 
#[0 11 94 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 21 109 0 8] 
#[1 9 194 0 8 13 169 0 120 24 13 1 132] 
#[0 11 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 24 17 1 4 16 1 1 5 0 6 1 220] 
#[0 24 21 0 3] 
#[0 24 25 0 5] 
#[1 5 13 0 4 5 17 0 74 24 29 1 32 5 29 1 33 5 33 1 220] 
#[0 11 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 3 85 0 11 24 33 1 98] 
#[1 5 13 0 4 5 17 0 74 24 37 1 32 5 29 1 33 5 33 1 220] 
#[1 5 13 0 4 5 17 0 74 24 41 1 32 5 29 1 33 5 33 1 220] 
#[0 11 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 5 13 0 4 5 17 0 74 0 185 0 122 24 45 0 139 24 49 1 32 5 29 1 33 5 33 1 220] 
#[0 11 110 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 11 114 0 4 0 5 0 8 0 119] 
#[0 24 53 0 7] 
#[0 24 57 0 7] 
#[1 11 118 0 5 11 118 0 8 11 118 0 119 13 169 0 120 24 61 1 132] 
#[0 24 65 0 3] 
#[1 11 122 0 4 11 122 0 5 11 122 0 8 11 122 0 119 13 169 0 120 24 69 1 132] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 24 73 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 24 73 1 126 24 73 1 127 3 145 1 128 3 145 1 130] 
#[0 24 77 0 19] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 24 81 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 24 81 1 126 24 81 1 127 3 145 1 128 3 145 1 130] 
#[0 24 85 0 4] 
#[0 24 89 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 24 93 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 24 97 0 3] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 24 101 1 4 16 1 1 5 0 6 1 220] 
#[0 24 105 0 4] 
#[0 24 109 0 3] 
#[0 24 113 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 24 117 1 4 16 1 1 5 0 6 1 220] 
#[0 24 121 0 5] 
#[0 11 126 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 11 130 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 24 125 0 7] 
#[0 11 134 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 11 138 0 3 0 5 0 7 0 119] 
#[0 11 142 0 3 0 5 0 7 0 119] 
#[1 11 146 0 3 11 146 0 5 11 146 0 7 11 146 0 119 13 169 0 120 24 129 1 132] 
#[0 11 150 0 3 0 5 0 7 0 119] 
#[1 11 154 0 3 11 154 0 5 11 154 0 7 9 125 0 23 11 154 0 119 24 133 0 156] 
#[0 11 158 0 3 0 5 0 7 0 119] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 19 49 1 4 16 1 1 5 24 137 1 28 0 6 1 220] 
#[0 24 141 0 4] 
#[0 24 145 0 3] 
#[0 24 149 0 4] 
#[0 11 162 0 3 0 5 0 7 0 8 0 119 0 120 0 132 0 133 1 221] 
#[0 24 153 0 3] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 24 157 0 253 4 153 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[0 24 161 0 3] 
#[0 24 165 0 4] 
#[0 11 166 0 3] 
#[0 24 169 0 3] 
#[0 11 170 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 24 173 0 4] 
#[0 24 177 0 3] 
#[1 4 69 0 4 4 73 0 6 0 185 0 122 24 181 0 139 24 185 0 214 24 185 0 215 24 185 0 216 24 189 0 222 24 189 0 223 24 189 1 1 24 189 1 15 24 193 1 137 24 197 1 145 8 25 1 220] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 24 201 1 4 16 1 1 5 0 6 1 220] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 24 205 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 8 29 0 2 24 209 0 8 3 85 0 11 9 125 0 23 13 169 0 120 24 213 0 156 8 73 1 98 24 217 1 132 24 221 1 133] 
#[0 11 174 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 11 178 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 11 182 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 24 225 0 8] 
#[1 24 229 0 8 9 125 0 23 24 233 0 156] 
#[1 24 237 0 4 24 241 0 8] 
#[0 24 245 0 2] 
#[1 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 24 249 0 140 24 249 0 152 24 249 0 153 24 249 0 154 8 65 1 67 8 69 1 68 24 253 1 143 25 1 1 144 19 133 1 220] 
#[1 8 29 0 2 25 5 0 8 3 85 0 11 9 125 0 23 13 169 0 120 25 9 0 156 8 73 1 98 25 13 1 132 25 17 1 133] 
#[0 11 186 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 11 190 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 11 194 0 4 0 119] 
#[0 25 21 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 25 1 4 16 1 1 5 25 29 1 19 0 6 1 220] 
#[0 25 33 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 37 1 4 16 1 1 5 0 6 1 220] 
#[0 11 198 0 3 0 119] 
#[0 11 202 0 14 0 119] 
#[0 11 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 102 0 107 0 119 0 120 0 122 0 123 0 126 0 127 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 19 169 0 118 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 19 173 0 194 19 173 0 195 0 249 1 3 19 173 1 6 1 121 1 7 1 125 1 8 1 129 1 11 19 173 1 12 0 249 1 17 19 173 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 25 41 0 9] 
#[1 6 113 0 119 11 210 0 132 11 210 0 133] 
#[1 11 214 0 14 11 197 0 135 25 45 1 75 25 45 1 76 25 45 1 77 11 213 1 78 11 217 1 79 25 49 1 96] 
#[0 11 218 0 5] 
#[0 11 222 0 5] 
#[1 0 138 0 5 25 53 1 93] 
#[0 25 57 0 5] 
#[0 11 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 0 134 0 135 0 136 1 219 1 220 1 221] 
#[0 25 61 0 14] 
#[0 11 230 0 4 0 134 0 136] 
#[0 11 234 0 4 0 9 0 14 0 135] 
#[0 11 238 0 4 0 9 0 14 0 135] 
#[0 11 242 0 4 0 9 0 14 0 135] 
#[0 11 246 0 4 0 9 0 14 0 135] 
#[0 25 65 0 4] 
#[1 0 22 0 5 25 69 1 92] 
#[0 25 73 0 5] 
#[0 11 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 11 254 0 4 0 19] 
#[0 25 77 0 8] 
#[0 12 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 81 0 198 25 81 0 201 25 81 0 202 25 81 0 203 25 81 0 211 25 81 0 225 25 81 0 226 25 81 0 227 25 81 0 228 25 81 0 229 25 81 0 230 25 81 0 231 25 81 0 232 25 81 0 235 25 81 0 236 25 81 0 238 25 81 0 239 25 81 0 240 25 81 0 245 25 81 0 247 25 81 0 248 25 81 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 85 0 198 25 85 0 201 25 85 0 202 25 85 0 203 25 85 0 211 25 85 0 225 25 85 0 226 25 85 0 227 25 85 0 228 25 85 0 229 25 85 0 230 25 85 0 231 25 85 0 232 25 85 0 235 25 85 0 236 25 85 0 238 25 85 0 239 25 85 0 240 25 85 0 245 25 85 0 247 25 85 0 248 25 85 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 25 89 0 3 6 113 0 119] 
#[1 0 93 0 2 25 93 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 25 97 0 194 25 97 0 195 25 97 0 197 0 249 1 3 25 97 1 6 1 121 1 7 1 125 1 8 1 129 1 11 25 97 1 12 0 249 1 17 25 97 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 25 101 0 8 6 113 0 119] 
#[1 25 105 0 3 6 113 0 119] 
#[0 25 109 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 113 0 198 25 113 0 201 25 113 0 202 25 113 0 203 25 113 0 211 25 113 0 225 25 113 0 226 25 113 0 227 25 113 0 228 25 113 0 229 25 113 0 230 25 113 0 231 25 113 0 232 25 113 0 235 25 113 0 236 25 113 0 238 25 113 0 239 25 113 0 240 25 113 0 245 25 113 0 247 25 113 0 248 25 113 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 117 0 198 25 117 0 201 25 117 0 202 25 117 0 203 25 117 0 211 25 117 0 225 25 117 0 226 25 117 0 227 25 117 0 228 25 117 0 229 25 117 0 230 25 117 0 231 25 117 0 232 25 117 0 235 25 117 0 236 25 117 0 238 25 117 0 239 25 117 0 240 25 117 0 245 25 117 0 247 25 117 0 248 25 117 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 121 0 198 25 121 0 201 25 121 0 202 25 121 0 203 25 121 0 211 25 121 0 225 25 121 0 226 25 121 0 227 25 121 0 228 25 121 0 229 25 121 0 230 25 121 0 231 25 121 0 232 25 121 0 235 25 121 0 236 25 121 0 238 25 121 0 239 25 121 0 240 25 121 0 245 25 121 0 247 25 121 0 248 25 121 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 25 125 0 3 6 113 0 119] 
#[1 0 93 0 2 25 129 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 25 133 0 194 25 133 0 195 25 133 0 197 0 249 1 3 25 133 1 6 1 121 1 7 1 125 1 8 1 129 1 11 25 133 1 12 0 249 1 17 25 133 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 12 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 137 0 198 25 137 0 201 25 137 0 202 25 137 0 203 25 137 0 211 25 137 0 225 25 137 0 226 25 137 0 227 25 137 0 228 25 137 0 229 25 137 0 230 25 137 0 231 25 137 0 232 25 137 0 235 25 137 0 236 25 137 0 238 25 137 0 239 25 137 0 240 25 137 0 245 25 137 0 247 25 137 0 248 25 137 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 141 0 198 25 141 0 201 25 141 0 202 25 141 0 203 25 141 0 211 25 141 0 225 25 141 0 226 25 141 0 227 25 141 0 228 25 141 0 229 25 141 0 230 25 141 0 231 25 141 0 232 25 141 0 235 25 141 0 236 25 141 0 238 25 141 0 239 25 141 0 240 25 141 0 245 25 141 0 247 25 141 0 248 25 141 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 25 145 0 3 6 113 0 119] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 149 0 198 25 149 0 201 25 149 0 202 25 149 0 203 25 149 0 211 25 149 0 225 25 149 0 226 25 149 0 227 25 149 0 228 25 149 0 229 25 149 0 230 25 149 0 231 25 149 0 232 25 149 0 235 25 149 0 236 25 149 0 238 25 149 0 239 25 149 0 240 25 149 0 245 25 149 0 247 25 149 0 248 25 149 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 153 0 198 25 153 0 201 25 153 0 202 25 153 0 203 25 153 0 211 25 153 0 225 25 153 0 226 25 153 0 227 25 153 0 228 25 153 0 229 25 153 0 230 25 153 0 231 25 153 0 232 25 153 0 235 25 153 0 236 25 153 0 238 25 153 0 239 25 153 0 240 25 153 0 245 25 153 0 247 25 153 0 248 25 153 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 25 157 0 194 25 157 0 195 0 249 1 3 25 157 1 6 1 121 1 7 1 125 1 8 1 129 1 11 25 157 1 12 0 249 1 17 25 157 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 25 161 0 3] 
#[0 25 165 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 25 169 0 198 25 169 0 201 25 169 0 202 25 169 0 203 25 169 0 211 25 169 0 225 25 169 0 226 25 169 0 227 25 169 0 228 25 169 0 229 25 169 0 230 25 169 0 231 25 169 0 232 25 169 0 235 25 169 0 236 25 169 0 238 25 169 0 239 25 169 0 240 25 169 0 245 25 169 0 247 25 169 0 248 25 169 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 12 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 25 173 0 194 25 173 0 195 25 173 0 197 0 249 1 3 25 173 1 6 1 121 1 7 1 125 1 8 1 129 1 11 25 173 1 12 0 249 1 17 25 173 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 25 177 0 120] 
#[1 25 181 0 5 23 105 0 59 23 109 0 68 25 185 0 243 25 189 0 244] 
#[0 12 14 0 5 0 59 0 68] 
#[1 25 193 0 5 23 105 0 59 25 197 0 242 23 117 0 243] 
#[1 1 209 0 4 25 201 0 203] 
#[0 12 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 25 205 0 2] 
#[1 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 25 209 0 140 25 209 0 152 25 209 0 153 25 209 0 154 8 65 1 67 8 69 1 68] 
#[1 8 29 0 2 25 213 0 8 3 85 0 11 13 169 0 120 8 73 1 98 25 217 1 132 25 221 1 133] 
#[1 9 65 0 6 25 225 0 102 8 45 0 123 8 65 0 126 8 69 0 127 25 229 0 140 25 229 0 152 25 229 0 153 25 229 0 154 8 65 1 67 8 69 1 68] 
#[0 12 22 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 25 233 0 5] 
#[1 12 26 0 5 8 37 0 6 23 133 0 64 23 145 0 97 23 145 0 98 23 145 0 99 23 137 0 102 8 45 0 123 8 65 0 126 8 69 0 127 23 141 0 140 23 141 0 152 23 141 0 153 23 141 0 154 8 65 1 67 8 69 1 68 23 145 1 136 25 237 1 139 25 237 1 208 25 237 1 209 25 237 1 210] 
#[0 12 30 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 12 34 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 12 38 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[1 10 222 0 5 8 37 0 6 23 133 0 64 23 145 0 97 23 145 0 98 23 145 0 99 23 137 0 102 8 45 0 123 8 65 0 126 8 69 0 127 23 141 0 140 23 141 0 152 23 141 0 153 23 141 0 154 8 65 1 67 8 69 1 68 23 145 1 136 23 161 1 139 25 241 1 206 23 157 1 207 23 161 1 208 23 161 1 209 23 161 1 210] 
#[0 12 42 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 46 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 50 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 54 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 58 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 62 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 66 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 70 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 74 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 82 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 113] 
#[0 12 86 0 5 0 119] 
#[0 12 90 0 5 0 119] 
#[0 12 94 0 5 0 119] 
#[0 25 245 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 25 1 4 16 1 1 5 25 249 1 19 0 6 1 220] 
#[0 25 253 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 1 1 4 16 1 1 5 0 6 1 220] 
#[0 7 154 0 8 0 22] 
#[0 26 5 0 3] 
#[0 12 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 26 9 0 4] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 26 13 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 10 174 0 4 11 114 0 8] 
#[0 26 17 0 5] 
#[1 10 182 0 4 11 122 0 8 13 169 0 120 26 21 1 132] 
#[1 12 102 0 1 0 247 0 2 12 102 0 4 12 102 0 5 0 247 0 6 0 247 0 8 11 250 0 9 11 250 0 10 11 250 0 11 11 250 0 12 11 250 0 13 11 250 0 14 11 250 0 15 11 250 0 16 11 250 0 17 11 250 0 18 11 250 0 20 11 250 0 21 11 250 0 22 11 250 0 23 11 250 0 24 11 250 0 25 11 250 0 26 11 250 0 27 11 250 0 28 11 250 0 29 11 250 0 30 11 250 0 31 11 250 0 32 11 250 0 33 11 250 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 12 102 0 39 11 250 0 40 11 250 0 41 11 250 0 42 11 250 0 43 11 250 0 44 11 250 0 45 11 250 0 46 11 250 0 47 11 250 0 48 11 250 0 49 11 250 0 50 11 250 0 51 12 102 0 52 11 250 0 53 11 250 0 54 11 250 0 55 12 102 0 56 12 102 0 57 12 102 0 58 12 102 0 61 12 102 0 62 12 102 0 63 12 102 0 65 12 102 0 66 12 102 0 67 12 102 0 69 12 102 0 70 12 102 0 72 12 102 0 73 12 102 0 75 12 102 0 77 12 102 0 79 12 102 0 81 12 102 0 82 11 250 0 83 11 250 0 86 12 102 0 87 12 102 0 89 12 102 0 92 12 102 0 93 12 102 0 94 12 102 0 100 12 102 0 104 12 102 0 105 12 102 0 107 12 102 0 108 12 102 0 109 12 102 0 110 12 102 0 111 12 102 0 112 12 102 0 113 12 102 0 114 12 102 0 115 12 102 0 116 12 102 0 117 11 250 0 119 12 102 0 122 12 102 0 124 12 102 0 126 12 102 0 127 12 102 0 128 0 247 0 130 0 247 0 131 12 102 0 134 11 250 1 219 0 247 1 220 12 102 1 221] 
#[0 12 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 5 13 0 4 5 17 0 74 26 25 1 32 5 29 1 33 5 33 1 220] 
#[0 12 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 5 13 0 4 5 17 0 74 26 29 1 32 5 29 1 33 5 33 1 220] 
#[0 12 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 13 169 0 120 26 33 1 132] 
#[1 13 169 0 120 26 37 1 132] 
#[0 12 122 0 5 0 8 0 119] 
#[1 12 126 0 5 12 126 0 8 12 126 0 119 13 169 0 120 26 41 1 132] 
#[0 12 130 0 4 0 5 0 8 0 119] 
#[0 12 134 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 3 73 0 2 3 77 0 4 3 81 0 6 3 85 0 11 3 89 0 84 3 93 0 88 3 97 0 93 3 101 0 107 3 105 0 112 3 109 0 114 0 185 0 122 3 117 0 126 3 121 0 127 3 113 0 139 3 117 1 67 3 121 1 68 3 125 1 98 26 45 1 105 3 133 1 106 3 137 1 107 3 137 1 108 3 145 1 109 3 145 1 110 3 145 1 111 3 145 1 112 3 145 1 113 3 165 1 114 3 169 1 115 3 145 1 116 3 145 1 120 3 145 1 121 3 133 1 124 3 137 1 125 26 45 1 126 26 45 1 127 3 145 1 128 3 145 1 130] 
#[0 12 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 19 49 1 4 16 1 1 5 26 49 1 28 0 6 1 220] 
#[0 26 53 0 4] 
#[0 26 57 0 3] 
#[0 26 61 0 4] 
#[0 26 65 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 25 1 4 16 1 1 5 26 69 1 19 0 6 1 220] 
#[0 26 73 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 77 1 4 16 1 1 5 0 6 1 220] 
#[0 26 81 0 5] 
#[0 12 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 142 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 119 0 120] 
#[0 12 146 0 3 0 5 0 7 0 119] 
#[0 12 150 0 3 0 5 0 7 0 119] 
#[0 26 85 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 89 1 4 16 1 1 5 26 93 1 24 0 6 1 220] 
#[0 26 97 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 19 49 1 4 16 1 1 5 26 101 1 28 0 6 1 220] 
#[0 26 105 0 4] 
#[0 26 109 0 3] 
#[0 26 113 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 117 1 4 16 1 1 5 0 6 1 220] 
#[0 26 121 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 125 1 4 16 1 1 5 0 6 1 220] 
#[1 13 169 0 120 26 129 1 132] 
#[1 3 94 0 3 9 125 0 23 12 154 0 120 9 173 0 156] 
#[1 3 98 0 3 9 125 0 23 12 158 0 120 9 181 0 156] 
#[0 26 133 0 3] 
#[1 13 169 0 120 26 137 1 132] 
#[0 26 141 0 3] 
#[0 26 145 0 5] 
#[0 26 149 0 3] 
#[0 12 162 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 26 153 0 8] 
#[1 26 157 0 8 9 125 0 23 26 161 0 156] 
#[1 26 165 0 4 26 169 0 8] 
#[0 12 166 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 12 170 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 26 173 0 8] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 177 1 4 16 1 1 5 0 6 1 220] 
#[0 12 174 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 26 181 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 8 29 0 2 26 185 0 8 3 85 0 11 9 125 0 23 13 169 0 120 26 189 0 156 8 73 1 98 26 193 1 132 26 197 1 133] 
#[0 12 178 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 12 182 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 12 186 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 26 201 0 8] 
#[1 26 205 0 8 9 125 0 23 26 209 0 156] 
#[1 26 213 0 4 26 217 0 8] 
#[0 12 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 12 194 0 5] 
#[0 26 221 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 25 1 4 16 1 1 5 26 225 1 19 0 6 1 220] 
#[0 26 229 0 5] 
#[1 11 214 0 14 26 233 1 96] 
#[1 11 214 0 14 26 237 1 96] 
#[0 26 241 0 14] 
#[0 26 245 0 5] 
#[0 12 198 0 4 0 134 0 136] 
#[0 12 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 0 134 0 135 0 136 1 219 1 220 1 221] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 26 249 0 194 26 249 0 195 0 249 1 3 26 249 1 6 1 121 1 7 1 125 1 8 1 129 1 11 26 249 1 12 0 249 1 17 26 249 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 26 253 0 5] 
#[0 12 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 12 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 1 0 198 27 1 0 201 27 1 0 202 27 1 0 203 27 1 0 211 27 1 0 225 27 1 0 226 27 1 0 227 27 1 0 228 27 1 0 229 27 1 0 230 27 1 0 231 27 1 0 232 27 1 0 235 27 1 0 236 27 1 0 238 27 1 0 239 27 1 0 240 27 1 0 245 27 1 0 247 27 1 0 248 27 1 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 5 0 198 27 5 0 201 27 5 0 202 27 5 0 203 27 5 0 211 27 5 0 225 27 5 0 226 27 5 0 227 27 5 0 228 27 5 0 229 27 5 0 230 27 5 0 231 27 5 0 232 27 5 0 235 27 5 0 236 27 5 0 238 27 5 0 239 27 5 0 240 27 5 0 245 27 5 0 247 27 5 0 248 27 5 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 27 9 0 3 6 113 0 119] 
#[1 0 93 0 2 27 13 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 0 133 0 61 0 137 0 69 1 169 0 75 0 145 0 79 0 149 0 82 0 153 0 93 1 165 0 94 0 161 0 104 0 165 0 107 1 169 0 109 0 173 0 112 0 177 0 114 0 181 0 117 0 185 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 27 17 0 194 27 17 0 195 27 17 0 197 0 249 1 3 27 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 27 17 1 12 0 249 1 17 27 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 21 0 198 27 21 0 201 27 21 0 202 27 21 0 203 27 21 0 211 27 21 0 225 27 21 0 226 27 21 0 227 27 21 0 228 27 21 0 229 27 21 0 230 27 21 0 231 27 21 0 232 27 21 0 235 27 21 0 236 27 21 0 238 27 21 0 239 27 21 0 240 27 21 0 245 27 21 0 247 27 21 0 248 27 21 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 25 0 198 27 25 0 201 27 25 0 202 27 25 0 203 27 25 0 211 27 25 0 225 27 25 0 226 27 25 0 227 27 25 0 228 27 25 0 229 27 25 0 230 27 25 0 231 27 25 0 232 27 25 0 235 27 25 0 236 27 25 0 238 27 25 0 239 27 25 0 240 27 25 0 245 27 25 0 247 27 25 0 248 27 25 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 12 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 29 0 198 27 29 0 201 27 29 0 202 27 29 0 203 27 29 0 211 27 29 0 225 27 29 0 226 27 29 0 227 27 29 0 228 27 29 0 229 27 29 0 230 27 29 0 231 27 29 0 232 27 29 0 235 27 29 0 236 27 29 0 238 27 29 0 239 27 29 0 240 27 29 0 245 27 29 0 247 27 29 0 248 27 29 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 33 0 198 27 33 0 201 27 33 0 202 27 33 0 203 27 33 0 211 27 33 0 225 27 33 0 226 27 33 0 227 27 33 0 228 27 33 0 229 27 33 0 230 27 33 0 231 27 33 0 232 27 33 0 235 27 33 0 236 27 33 0 238 27 33 0 239 27 33 0 240 27 33 0 245 27 33 0 247 27 33 0 248 27 33 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 27 37 0 3 6 113 0 119] 
#[0 12 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 41 0 198 27 41 0 201 27 41 0 202 27 41 0 203 27 41 0 211 27 41 0 225 27 41 0 226 27 41 0 227 27 41 0 228 27 41 0 229 27 41 0 230 27 41 0 231 27 41 0 232 27 41 0 235 27 41 0 236 27 41 0 238 27 41 0 239 27 41 0 240 27 41 0 245 27 41 0 247 27 41 0 248 27 41 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 12 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 12 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 27 45 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 49 0 198 27 49 0 201 27 49 0 202 27 49 0 203 27 49 0 211 27 49 0 225 27 49 0 226 27 49 0 227 27 49 0 228 27 49 0 229 27 49 0 230 27 49 0 231 27 49 0 232 27 49 0 235 27 49 0 236 27 49 0 238 27 49 0 239 27 49 0 240 27 49 0 245 27 49 0 247 27 49 0 248 27 49 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 27 53 0 198 27 53 0 201 27 53 0 202 27 53 0 203 27 53 0 211 27 53 0 225 27 53 0 226 27 53 0 227 27 53 0 228 27 53 0 229 27 53 0 230 27 53 0 231 27 53 0 232 27 53 0 235 27 53 0 236 27 53 0 238 27 53 0 239 27 53 0 240 27 53 0 245 27 53 0 247 27 53 0 248 27 53 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 12 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 6 113 0 119 27 57 0 120] 
#[1 0 6 0 2 0 6 0 4 12 254 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 12 254 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 27 61 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 0 6 1 220] 
#[0 13 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 6 0 5 0 59 0 68] 
#[1 27 65 0 5 23 105 0 59 27 69 0 242 23 117 0 243] 
#[0 13 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 27 73 0 5 23 105 0 59 25 185 0 243] 
#[0 13 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 90 0 3 4 69 0 4 4 73 0 6 4 121 0 118 0 185 0 122 9 73 0 139 4 133 0 214 4 133 0 215 4 133 0 216 4 165 0 222 4 165 0 223 4 161 0 224 27 77 0 254 4 157 0 255 4 161 1 0 4 165 1 1 8 25 1 220] 
#[1 8 29 0 2 27 81 0 8 3 85 0 11 13 169 0 120 8 73 1 98 27 85 1 132 27 89 1 133] 
#[0 13 18 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 27 93 0 8] 
#[0 27 97 0 8] 
#[1 9 65 0 6 8 45 0 123 8 65 0 126 8 69 0 127 27 101 0 140 27 101 0 152 27 101 0 153 27 101 0 154 8 65 1 67 8 69 1 68] 
#[1 8 29 0 2 27 105 0 8 3 85 0 11 13 169 0 120 8 73 1 98 27 109 1 132 27 113 1 133] 
#[0 13 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 26 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 27 117 0 5] 
#[1 13 30 0 1 0 251 0 2 13 30 0 4 13 30 0 5 0 251 0 6 0 251 0 8 12 190 0 9 12 190 0 10 12 190 0 11 12 190 0 12 12 190 0 13 12 190 0 14 12 190 0 15 12 190 0 16 12 190 0 17 12 190 0 18 12 190 0 20 12 190 0 21 12 190 0 22 12 190 0 23 12 190 0 24 12 190 0 25 12 190 0 26 12 190 0 27 12 190 0 28 12 190 0 29 12 190 0 30 12 190 0 31 12 190 0 32 12 190 0 33 12 190 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 13 30 0 39 12 190 0 40 12 190 0 41 12 190 0 42 12 190 0 43 12 190 0 44 12 190 0 45 12 190 0 46 12 190 0 47 12 190 0 48 12 190 0 49 12 190 0 50 12 190 0 51 13 30 0 52 12 190 0 53 12 190 0 54 12 190 0 55 13 30 0 56 13 30 0 57 13 30 0 58 13 30 0 61 13 30 0 62 13 30 0 63 13 30 0 65 13 30 0 66 13 30 0 67 13 30 0 69 13 30 0 70 13 30 0 72 13 30 0 73 13 30 0 75 13 30 0 77 13 30 0 79 13 30 0 81 13 30 0 82 12 190 0 83 12 190 0 86 13 30 0 87 13 30 0 89 13 30 0 92 13 30 0 93 13 30 0 94 13 30 0 100 13 30 0 104 13 30 0 105 13 30 0 107 13 30 0 108 13 30 0 109 13 30 0 110 13 30 0 111 13 30 0 112 13 30 0 113 13 30 0 114 13 30 0 115 13 30 0 116 13 30 0 117 12 190 0 119 13 30 0 122 13 30 0 124 13 30 0 126 13 30 0 127 13 30 0 128 0 251 0 130 0 251 0 131 13 30 0 134 12 190 1 219 0 251 1 220 13 30 1 221] 
#[0 27 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 25 1 4 16 1 1 5 27 125 1 19 0 6 1 220] 
#[0 27 129 0 5] 
#[0 27 133 0 8] 
#[1 0 255 0 5 8 37 0 6 10 13 0 8 10 17 0 26 10 21 0 56 23 133 0 64 10 25 0 80 23 145 0 97 23 145 0 98 23 145 0 99 10 29 0 101 27 137 0 102 10 37 0 122 8 45 0 123 10 41 0 124 8 65 0 126 8 69 0 127 23 141 0 140 23 141 0 152 23 141 0 153 23 141 0 154 10 69 1 14 10 69 1 18 10 69 1 23 10 69 1 27 15 97 1 34 10 65 1 35 10 69 1 36 10 73 1 37 10 77 1 38 10 69 1 39 8 65 1 67 8 69 1 68 23 145 1 136 23 161 1 139 10 69 1 143 10 69 1 144 23 153 1 206 23 157 1 207 23 161 1 208 23 161 1 209 23 161 1 210 10 93 1 220] 
#[0 27 141 0 3] 
#[1 13 34 0 1 1 3 0 2 13 34 0 4 13 34 0 5 1 3 0 6 1 3 0 8 12 206 0 9 12 206 0 10 12 206 0 11 12 206 0 12 12 206 0 13 12 206 0 14 12 206 0 15 12 206 0 16 12 206 0 17 12 206 0 18 12 206 0 20 12 206 0 21 12 206 0 22 12 206 0 23 12 206 0 24 12 206 0 25 12 206 0 26 12 206 0 27 12 206 0 28 12 206 0 29 12 206 0 30 12 206 0 31 12 206 0 32 12 206 0 33 12 206 0 34 1 3 0 35 1 3 0 36 1 3 0 37 1 3 0 38 13 34 0 39 12 206 0 40 12 206 0 41 12 206 0 42 12 206 0 43 12 206 0 44 12 206 0 45 12 206 0 46 12 206 0 47 12 206 0 48 12 206 0 49 12 206 0 50 12 206 0 51 13 34 0 52 12 206 0 53 12 206 0 54 12 206 0 55 13 34 0 56 13 34 0 57 13 34 0 58 13 34 0 61 13 34 0 62 13 34 0 63 13 34 0 65 13 34 0 66 13 34 0 67 13 34 0 69 13 34 0 70 13 34 0 72 13 34 0 73 13 34 0 75 13 34 0 77 13 34 0 79 13 34 0 81 13 34 0 82 12 206 0 83 12 206 0 86 13 34 0 87 13 34 0 89 13 34 0 92 13 34 0 93 13 34 0 94 13 34 0 100 13 34 0 104 13 34 0 105 13 34 0 107 13 34 0 108 13 34 0 109 13 34 0 110 13 34 0 111 13 34 0 112 13 34 0 113 13 34 0 114 13 34 0 115 13 34 0 116 13 34 0 117 12 206 0 119 13 34 0 122 13 34 0 124 13 34 0 126 13 34 0 127 13 34 0 128 1 3 0 130 1 3 0 131 13 34 0 134 12 206 1 219 1 3 1 220 13 34 1 221] 
#[1 11 254 0 4 12 130 0 8] 
#[0 13 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 46 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 102 0 119 0 123 0 126 0 127] 
#[0 13 50 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 102 0 119 0 123 0 126 0 127] 
#[0 13 54 0 5 0 8 0 119] 
#[0 13 58 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 102 0 119 0 120 0 123 0 126 0 127 0 132 0 133 1 221] 
#[0 27 145 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 89 1 4 16 1 1 5 27 149 1 24 0 6 1 220] 
#[0 27 153 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 19 49 1 4 16 1 1 5 27 157 1 28 0 6 1 220] 
#[0 13 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 27 161 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 25 1 4 16 1 1 5 27 165 1 19 0 6 1 220] 
#[0 27 169 0 5] 
#[0 13 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 13 66 0 5] 
#[0 27 173 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 89 1 4 16 1 1 5 27 177 1 24 0 6 1 220] 
#[0 27 181 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 25 25 1 4 16 1 1 5 27 185 1 19 0 6 1 220] 
#[0 27 189 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 19 49 1 4 16 1 1 5 27 193 1 28 0 6 1 220] 
#[0 27 197 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 27 201 1 4 16 1 1 5 0 6 1 220] 
#[0 27 205 0 5] 
#[0 27 209 0 4] 
#[1 13 169 0 120 27 213 1 132] 
#[0 13 70 0 3] 
#[1 27 217 0 4 13 169 0 120 27 221 1 132] 
#[0 13 74 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[1 27 225 0 4 27 229 0 8] 
#[0 13 78 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 13 82 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 27 233 0 8] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 27 237 1 4 16 1 1 5 0 6 1 220] 
#[0 13 86 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 13 90 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 27 241 0 5] 
#[0 27 245 0 3] 
#[0 13 94 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 27 249 0 8] 
#[1 27 253 0 8 9 125 0 23 28 1 0 156] 
#[1 28 5 0 4 28 9 0 8] 
#[0 13 98 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 13 102 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 28 13 0 8] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 17 1 4 16 1 1 5 0 6 1 220] 
#[0 13 106 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 13 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 28 21 0 5] 
#[0 13 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 28 25 0 14] 
#[0 28 29 0 14] 
#[0 13 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 0 134 0 135 0 136 1 219 1 220 1 221] 
#[0 13 122 0 4 0 134 0 136] 
#[1 0 22 0 5 28 33 1 92] 
#[0 13 126 0 4 0 9 0 14 0 135] 
#[0 13 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 28 37 0 198 28 37 0 201 28 37 0 202 28 37 0 203 28 37 0 211 28 37 0 225 28 37 0 226 28 37 0 227 28 37 0 228 28 37 0 229 28 37 0 230 28 37 0 231 28 37 0 232 28 37 0 235 28 37 0 236 28 37 0 238 28 37 0 239 28 37 0 240 28 37 0 245 28 37 0 247 28 37 0 248 28 37 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 28 41 0 198 28 41 0 201 28 41 0 202 28 41 0 203 28 41 0 211 28 41 0 225 28 41 0 226 28 41 0 227 28 41 0 228 28 41 0 229 28 41 0 230 28 41 0 231 28 41 0 232 28 41 0 235 28 41 0 236 28 41 0 238 28 41 0 239 28 41 0 240 28 41 0 245 28 41 0 247 28 41 0 248 28 41 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[1 28 45 0 3 6 113 0 119] 
#[0 13 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 28 49 0 198 28 49 0 201 28 49 0 202 28 49 0 203 28 49 0 211 28 49 0 225 28 49 0 226 28 49 0 227 28 49 0 228 28 49 0 229 28 49 0 230 28 49 0 231 28 49 0 232 28 49 0 235 28 49 0 236 28 49 0 238 28 49 0 239 28 49 0 240 28 49 0 245 28 49 0 247 28 49 0 248 28 49 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 13 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 28 53 0 198 28 53 0 201 28 53 0 202 28 53 0 203 28 53 0 211 28 53 0 225 28 53 0 226 28 53 0 227 28 53 0 228 28 53 0 229 28 53 0 230 28 53 0 231 28 53 0 232 28 53 0 235 28 53 0 236 28 53 0 238 28 53 0 239 28 53 0 240 28 53 0 245 28 53 0 247 28 53 0 248 28 53 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 13 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 6 0 2 0 6 0 4 13 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 166 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 13 166 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 28 57 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 0 6 1 220] 
#[1 0 6 0 2 0 6 0 4 13 170 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 170 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 6 241 0 205 0 57 0 206 6 241 0 207 0 65 0 208 0 6 1 220] 
#[0 13 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 28 61 0 5 23 105 0 59 25 185 0 243] 
#[0 13 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 28 65 0 3] 
#[0 13 182 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 28 69 0 8] 
#[0 28 73 0 8] 
#[0 13 186 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 13 190 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[1 8 29 0 2 28 77 0 8 3 85 0 11 13 169 0 120 8 73 1 98 28 81 1 132 28 85 1 133] 
#[0 13 194 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 28 89 0 8] 
#[0 28 93 0 8] 
#[0 13 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 13 202 0 1 1 7 0 2 13 202 0 4 13 202 0 5 1 7 0 6 1 7 0 8 13 110 0 9 13 110 0 10 13 110 0 11 13 110 0 12 13 110 0 13 13 110 0 14 13 110 0 15 13 110 0 16 13 110 0 17 13 110 0 18 13 110 0 20 13 110 0 21 13 110 0 22 13 110 0 23 13 110 0 24 13 110 0 25 13 110 0 26 13 110 0 27 13 110 0 28 13 110 0 29 13 110 0 30 13 110 0 31 13 110 0 32 13 110 0 33 13 110 0 34 1 7 0 35 1 7 0 36 1 7 0 37 1 7 0 38 13 202 0 39 13 110 0 40 13 110 0 41 13 110 0 42 13 110 0 43 13 110 0 44 13 110 0 45 13 110 0 46 13 110 0 47 13 110 0 48 13 110 0 49 13 110 0 50 13 110 0 51 13 202 0 52 13 110 0 53 13 110 0 54 13 110 0 55 13 202 0 56 13 202 0 57 13 202 0 58 13 202 0 61 13 202 0 62 13 202 0 63 13 202 0 65 13 202 0 66 13 202 0 67 13 202 0 69 13 202 0 70 13 202 0 72 13 202 0 73 13 202 0 75 13 202 0 77 13 202 0 79 13 202 0 81 13 202 0 82 13 110 0 83 13 110 0 86 13 202 0 87 13 202 0 89 13 202 0 92 13 202 0 93 13 202 0 94 13 202 0 100 13 202 0 104 13 202 0 105 13 202 0 107 13 202 0 108 13 202 0 109 13 202 0 110 13 202 0 111 13 202 0 112 13 202 0 113 13 202 0 114 13 202 0 115 13 202 0 116 13 202 0 117 13 110 0 119 13 202 0 122 13 202 0 124 13 202 0 126 13 202 0 127 13 202 0 128 1 7 0 130 1 7 0 131 13 202 0 134 13 110 1 219 1 7 1 220 13 202 1 221] 
#[0 28 97 0 5] 
#[1 13 206 0 1 1 11 0 2 13 206 0 4 13 206 0 5 1 11 0 6 1 11 0 8 13 114 0 9 13 114 0 10 13 114 0 11 13 114 0 12 13 114 0 13 13 114 0 14 13 114 0 15 13 114 0 16 13 114 0 17 13 114 0 18 13 114 0 20 13 114 0 21 13 114 0 22 13 114 0 23 13 114 0 24 13 114 0 25 13 114 0 26 13 114 0 27 13 114 0 28 13 114 0 29 13 114 0 30 13 114 0 31 13 114 0 32 13 114 0 33 13 114 0 34 1 11 0 35 1 11 0 36 1 11 0 37 1 11 0 38 13 206 0 39 13 114 0 40 13 114 0 41 13 114 0 42 13 114 0 43 13 114 0 44 13 114 0 45 13 114 0 46 13 114 0 47 13 114 0 48 13 114 0 49 13 114 0 50 13 114 0 51 13 206 0 52 13 114 0 53 13 114 0 54 13 114 0 55 13 206 0 56 13 206 0 57 13 206 0 58 13 206 0 61 13 206 0 62 13 206 0 63 13 206 0 65 13 206 0 66 13 206 0 67 13 206 0 69 13 206 0 70 13 206 0 72 13 206 0 73 13 206 0 75 13 206 0 77 13 206 0 79 13 206 0 81 13 206 0 82 13 114 0 83 13 114 0 86 13 206 0 87 13 206 0 89 13 206 0 92 13 206 0 93 13 206 0 94 13 206 0 100 13 206 0 104 13 206 0 105 13 206 0 107 13 206 0 108 13 206 0 109 13 206 0 110 13 206 0 111 13 206 0 112 13 206 0 113 13 206 0 114 13 206 0 115 13 206 0 116 13 206 0 117 13 114 0 119 13 206 0 122 13 206 0 124 13 206 0 126 13 206 0 127 13 206 0 128 1 11 0 130 1 11 0 131 13 206 0 134 13 114 1 219 1 11 1 220 13 206 1 221] 
#[0 13 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 15 17 0 4 9 65 0 6 10 17 0 26 10 21 0 56 10 25 0 80 10 29 0 101 10 37 0 122 8 45 0 123 10 41 0 124 8 65 0 126 8 69 0 127 25 209 0 140 25 209 0 152 25 209 0 153 25 209 0 154 15 21 1 14 15 21 1 18 15 21 1 23 15 21 1 27 15 25 1 37 10 77 1 38 8 65 1 67 8 69 1 68 15 21 1 143 15 21 1 144 10 237 1 220] 
#[1 23 245 0 4 9 194 0 8 13 169 0 120 21 173 1 132] 
#[0 13 214 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 28 101 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 89 1 4 16 1 1 5 28 105 1 24 0 6 1 220] 
#[0 28 109 0 5] 
#[0 13 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 28 113 0 5] 
#[0 13 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 13 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 28 117 0 5] 
#[0 13 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 28 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 26 89 1 4 16 1 1 5 28 125 1 24 0 6 1 220] 
#[0 28 129 0 5] 
#[0 13 226 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 28 133 0 5] 
#[0 13 230 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 137 1 4 16 1 1 5 0 6 1 220] 
#[0 28 141 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 145 1 4 16 1 1 5 0 6 1 220] 
#[0 28 149 0 4] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 153 1 4 16 1 1 5 0 6 1 220] 
#[0 13 234 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 13 238 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 28 157 0 5] 
#[0 13 242 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[1 28 161 0 4 28 165 0 8] 
#[0 13 246 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 13 250 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 28 169 0 8] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 173 1 4 16 1 1 5 0 6 1 220] 
#[0 13 254 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 14 2 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 28 177 0 5] 
#[0 14 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 14 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 0 135 1 219 1 220 1 221] 
#[0 14 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 0 134 0 135 0 136 1 219 1 220 1 221] 
#[0 28 181 0 5] 
#[0 14 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 14 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 213 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 52 0 125 0 56 0 129 0 57 1 217 0 58 0 133 0 61 1 221 0 65 1 225 0 66 0 137 0 69 1 229 0 70 1 169 0 75 1 233 0 77 0 145 0 79 1 237 0 81 0 149 0 82 0 153 0 93 1 165 0 94 1 241 0 100 0 161 0 104 1 245 0 105 0 165 0 107 1 249 0 108 1 169 0 109 1 253 0 110 0 173 0 112 2 1 0 113 0 177 0 114 2 5 0 115 2 9 0 116 0 181 0 117 2 13 0 122 0 189 0 124 1 173 0 126 1 177 0 127 0 201 0 128 0 205 0 130 0 18 0 131 0 11 0 134 0 213 0 139 0 249 0 141 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 148 0 237 0 149 0 249 0 157 0 245 0 158 0 249 0 161 0 249 0 162 0 249 0 163 0 249 0 164 0 249 0 165 1 33 0 166 1 17 0 167 1 17 0 168 1 17 0 169 1 29 0 172 1 33 0 176 1 41 0 177 1 41 0 178 1 49 0 179 1 49 0 180 1 53 0 182 1 57 0 183 1 61 0 184 1 65 0 185 1 69 0 186 1 73 0 187 1 77 0 188 1 81 0 189 1 85 0 190 1 89 0 191 1 93 0 192 1 97 0 193 2 17 0 194 2 17 0 195 2 17 0 197 28 185 0 198 28 185 0 201 28 185 0 202 28 185 0 203 28 185 0 211 28 185 0 225 28 185 0 226 28 185 0 227 28 185 0 228 28 185 0 229 28 185 0 230 28 185 0 231 28 185 0 232 28 185 0 235 28 185 0 236 28 185 0 238 28 185 0 239 28 185 0 240 28 185 0 245 28 185 0 247 28 185 0 248 28 185 0 252 0 249 1 3 2 17 1 6 1 121 1 7 1 125 1 8 1 129 1 11 2 17 1 12 0 249 1 17 2 17 1 20 0 249 1 22 0 249 1 26 1 41 1 29 0 249 1 31 1 161 1 64 1 165 1 65 1 169 1 66 1 173 1 67 1 177 1 68 0 249 1 69 0 249 1 70 0 249 1 71 1 193 1 72 0 249 1 74 1 201 1 92 1 205 1 220] 
#[0 14 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 14 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[1 0 6 0 2 0 6 0 4 14 34 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 14 34 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 14 34 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 6 241 0 205 0 57 0 206 6 241 0 207 0 65 0 208 0 6 1 220] 
#[0 14 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 28 189 0 8] 
#[0 14 42 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 14 46 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 14 50 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 28 193 0 8] 
#[0 28 197 0 8] 
#[0 14 54 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 14 58 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[1 14 62 0 1 1 15 0 2 14 62 0 4 14 62 0 5 1 15 0 6 1 15 0 8 14 6 0 9 14 6 0 10 14 6 0 11 14 6 0 12 14 6 0 13 14 6 0 14 14 6 0 15 14 6 0 16 14 6 0 17 14 6 0 18 14 6 0 20 14 6 0 21 14 6 0 22 14 6 0 23 14 6 0 24 14 6 0 25 14 6 0 26 14 6 0 27 14 6 0 28 14 6 0 29 14 6 0 30 14 6 0 31 14 6 0 32 14 6 0 33 14 6 0 34 1 15 0 35 1 15 0 36 1 15 0 37 1 15 0 38 14 62 0 39 14 6 0 40 14 6 0 41 14 6 0 42 14 6 0 43 14 6 0 44 14 6 0 45 14 6 0 46 14 6 0 47 14 6 0 48 14 6 0 49 14 6 0 50 14 6 0 51 14 62 0 52 14 6 0 53 14 6 0 54 14 6 0 55 14 62 0 56 14 62 0 57 14 62 0 58 14 62 0 61 14 62 0 62 14 62 0 63 14 62 0 65 14 62 0 66 14 62 0 67 14 62 0 69 14 62 0 70 14 62 0 72 14 62 0 73 14 62 0 75 14 62 0 77 14 62 0 79 14 62 0 81 14 62 0 82 14 6 0 83 14 6 0 86 14 62 0 87 14 62 0 89 14 62 0 92 14 62 0 93 14 62 0 94 14 62 0 100 14 62 0 104 14 62 0 105 14 62 0 107 14 62 0 108 14 62 0 109 14 62 0 110 14 62 0 111 14 62 0 112 14 62 0 113 14 62 0 114 14 62 0 115 14 62 0 116 14 62 0 117 14 6 0 119 14 62 0 122 14 62 0 124 14 62 0 126 14 62 0 127 14 62 0 128 1 15 0 130 1 15 0 131 14 62 0 134 14 6 1 219 1 15 1 220 14 62 1 221] 
#[0 14 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 28 201 0 5] 
#[0 14 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 14 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 14 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 83 0 86 0 96 0 119 0 120 0 130 0 131 0 132 0 133 1 219 1 220 1 221] 
#[0 14 78 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 28 205 0 5] 
#[0 14 82 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 14 86 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 28 209 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 213 1 4 16 1 1 5 0 6 1 220] 
#[0 28 217 0 5] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 221 1 4 16 1 1 5 0 6 1 220] 
#[0 28 225 0 5] 
#[0 14 90 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[1 0 6 0 2 0 6 0 4 6 154 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 100 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 122 0 6 0 124 0 6 0 126 0 6 0 127 0 6 0 128 0 6 0 130 0 6 0 131 0 6 0 134 15 249 0 204 2 113 0 205 0 57 0 206 2 113 0 207 0 65 0 208 28 229 1 4 16 1 1 5 0 6 1 220] 
#[0 14 94 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 14 98 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 28 233 0 5] 
#[0 14 102 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 14 106 0 4 0 9 0 14 0 135] 
#[0 14 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 14 114 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 14 118 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 14 122 0 5 0 6 0 64 0 97 0 98 0 99 0 102 0 123 0 126 0 127] 
#[0 14 126 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 100 0 104 0 105 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 122 0 124 0 126 0 127 0 128 0 130 0 131 0 134 1 220 1 221] 
#[0 14 130 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 14 134 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 28 237 0 5] 
#[0 14 138 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 28 241 0 5] 
#[0 14 142 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 28 245 0 5] 
#[0 14 146 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220] 
#[0 14 150 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 14 154 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 119 0 122 0 124 1 220] 
#[0 14 158 0 5 0 8 0 26 0 56 0 80 0 101 0 102 0 122 0 124 1 220]
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
						put: self positionForInsertedSemicolon.
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
		ifNil: [ -1 ]) < self positionForInsertedSemicolon
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
		ifTrue: [ currentState attributeNamed: #lastInsertedSemicolonPosition put: self positionForInsertedSemicolon.
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
