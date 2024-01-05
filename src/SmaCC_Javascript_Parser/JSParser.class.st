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
#[ 0 14 3 149] 
#[ 0 158 4 181] 
#[ 0 182 4 181] 
#[ 1 206 6 85] 
#[ 1 238 7 121] 
#[ 1 242 7 125] 
#[ 1 106 1 250] 
#[ 1 206 7 213] 
#[ 0 126 2 154] 
#[ 0 126 8 93] 
#[ 1 206 8 165] 
#[ 1 206 8 169] 
#[ 1 206 8 173] 
#[ 1 206 8 177] 
#[ 0 189 1 206] 
#[ 0 178 2 242] 
#[ 3 14 4 181] 
#[ 3 26 4 181] 
#[ 3 30 4 181] 
#[ 0 14 10 153] 
#[ 1 222 2 154] 
#[ 1 106 4 62] 
#[ 1 106 4 66] 
#[ 4 78 9 161] 
#[ 2 190 4 150] 
#[ 0 14 13 169] 
#[ 1 206 6 237] 
#[ 1 206 6 249] 
#[ 0 197 1 206] 
#[ 0 201 1 206] 
#[ 3 10 5 70] 
#[ 0 22 6 30] 
#[ 1 222 4 54] 
#[ 0 198 15 77] 
#[ 2 234 4 102] 
#[ 3 238 4 138] 
#[ 4 42 4 150] 
#[ 2 194 12 69] 
#[ 6 186 7 125] 
#[ 1 106 6 190] 
#[ 0 126 6 234] 
#[ 4 237 6 238] 
#[ 0 182 4 181 6 238] 
#[ 0 126 4 174] 
#[ 4 230 7 26] 
#[ 5 50 6 214] 
#[ 8 162 8 166] 
#[ 8 170 8 174] 
#[ 8 190 8 194] 
#[ 0 126 23 69] 
#[ 0 34 0 189] 
#[ 0 38 0 189] 
#[ 11 42 12 22] 
#[ 12 86 13 26] 
#[ 11 70 14 21] 
#[ 12 102 13 30] 
#[ 13 90 13 178] 
#[ 13 94 13 182] 
#[ 13 246 14 58]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2024-01-05T07:14:08.621887-06:00'
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
	#(438 0 #reduceActionForSourceFileElement__element__1: 59879425 false) 
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
	#(393 0 #reduceActionForSourceFileElement__element__1: 48052225 false) 
	#(437 1 #reduceActionForSourceFile1: 59777025 false) 
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
	#(347 0 #reduceActionForSourceFileElement__element__1: 43510785 false) 
	#(269 2 #reduceActionForArrowFormalParameters2: 33335298 false) 
	#(205 2 #reduceActionForBlock1: 23861249 false) 
	#(254 2 #reduceActionForDebuggerStatement1: 31884289 false) 
	#(215 1 #reduceActionForArrowParameterDeclaration1: 24841217 false) 
	#(214 1 #reduceActionForNamespaceName1: 24705025 false) 
	#(228 2 #reduceActionForExpressionStatement1: 26722305 false) 
	#(206 2 #reduceActionForModuleItemList2: 23958530 false) 
	#(445 1 #liftFirstValue: 60963841 false) 
	#(445 1 #liftFirstValue: 60963842 false) 
	#(445 1 #liftFirstValue: 60963843 false) 
	#(445 1 #liftFirstValue: 60963844 false) 
	#(445 1 #liftFirstValue: 60963845 false) 
	#(439 1 #liftFirstValue: 59928579 false) 
	#(445 1 #liftFirstValue: 60963847 false) 
	#(445 1 #liftFirstValue: 60963846 false) 
	#(445 1 #liftFirstValue: 60963848 false) 
	#(445 1 #liftFirstValue: 60963849 false) 
	#(445 1 #liftFirstValue: 60963851 false) 
	#(438 2 #reduceActionForModuleItemList2: 59879426 false) 
	#(439 1 #liftFirstValue: 59928577 false) 
	#(439 1 #liftFirstValue: 59928580 false) 
	#(439 1 #liftFirstValue: 59928581 false) 
	#(439 1 #liftFirstValue: 59928585 false) 
	#(439 1 #liftFirstValue: 59928582 false) 
	#(439 1 #liftFirstValue: 59928586 false) 
	#(439 1 #liftFirstValue: 59928583 false) 
	#(439 1 #liftFirstValue: 59928584 false) 
	#(445 1 #liftFirstValue: 60963850 false) 
	#(439 1 #liftFirstValue: 59928578 false) 
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
	#(288 2 #reduceActionForClassExpression1: 36854785 false) 
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
	#(263 0 #reduceActionForSourceFileElement__element__1: 32884737 false) 
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
	#(474 1 #liftFirstValue: 67853313 false) 
	#(463 2 #reduceActionForAmbientDeclaration1: 65746945 false) 
	#(463 2 #reduceActionForAmbientDeclaration1: 65746946 false) 
	#(463 2 #reduceActionForAmbientDeclaration1: 65746947 false) 
	#(463 2 #reduceActionForAmbientDeclaration1: 65746948 false) 
	#(463 2 #reduceActionForAmbientDeclaration1: 65746949 false) 
	#(430 1 #reduceActionForNamespaceName1: 58265601 false) 
	#(393 2 #reduceActionForModuleItemList2: 48052226 false) 
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
	#(288 3 #reduceActionForClassExpression2: 36854786 false) 
	#(288 3 #reduceActionForClassDeclaration3: 36854787 false) 
	#(317 4 #reduceActionForExportDeclaration5: 39641093 false) 
	#(312 2 #reduceActionForFromClause1: 39282689 false) 
	#(317 4 #reduceActionForExportDeclaration1: 39641089 false) 
	#(480 2 #reduceActionForDecoratorExpression2: 69200898 false) 
	#(480 2 #reduceActionForDecoratorExpression2: 69200897 false) 
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
	#(299 0 #reduceActionForSourceFileElement__element__1: 38016001 false) 
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
	#(466 1 #reduceActionForArrowParameterDeclaration1: 66544641 false) 
	#(465 1 #reduceActionForNamespaceName1: 66432001 false) 
	#(461 3 #reduceActionForExportListDeclaration5: 65277957 false) 
	#(409 3 #reduceActionForInterfaceDeclaration1: 54746113 false) 
	#(431 0 #reduceActionForSourceFileElement__element__1: 58371073 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737410 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737409 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737411 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737412 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737413 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737419 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737415 false) 
	#(458 3 #reduceActionForExportDeclarationElement2: 63851522 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737414 false) 
	#(458 3 #reduceActionForExportDeclarationElement2: 63851521 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737416 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737417 false) 
	#(458 3 #reduceActionForExportDeclarationElement2: 63851524 false) 
	#(458 3 #reduceActionForExportDeclarationElement2: 63851523 false) 
	#(457 3 #reduceActionForExportImplementationElement2: 62737418 false) 
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
	#(288 4 #reduceActionForClassDeclaration4: 36854788 false) 
	#(260 4 #reduceActionForFunctionDeclaration5: 32420869 false) 
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
	#(466 2 #reduceActionForAmbientBinding2: 66544642 false) 
	#(464 3 #reduceActionForLexicalDeclaration1: 66136067 false) 
	#(464 3 #reduceActionForLexicalDeclaration1: 66136066 false) 
	#(453 0 #reduceActionForSourceFileElement__element__1: 62100481 false) 
	#(476 0 #reduceActionForSourceFileElement__element__1: 68073473 false) 
	#(464 3 #reduceActionForLexicalDeclaration1: 66136065 false) 
	#(424 4 #reduceActionForEnumDeclaration1: 57691137 false) 
	#(427 1 #reduceActionForEnumMember1: 57976833 false) 
	#(425 1 #reduceActionForModuleBody1: 57838593 false) 
	#(426 1 #reduceActionForNamespaceName1: 57884673 false) 
	#(462 4 #reduceActionForExportAssignment1: 65614849 false) 
	#(461 4 #reduceActionForExportListDeclaration1: 65277953 false) 
	#(461 4 #reduceActionForExportListDeclaration3: 65277955 false) 
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
	#(459 4 #reduceActionForExportDefaultImplementationElement1: 64280577 false) 
	#(459 4 #reduceActionForExportDefaultImplementationElement1: 64280578 false) 
	#(459 4 #reduceActionForExportDefaultImplementationElement1: 64280579 false) 
	#(460 4 #reduceActionForExportDefaultDeclarationElement1: 64841729 false) 
	#(460 4 #reduceActionForExportDefaultDeclarationElement1: 64841730 false) 
	#(385 5 #reduceActionForFunctionType1: 46971905 false) 
	#(392 4 #reduceActionForCallSignature2: 47839234 false) 
	#(397 4 #reduceActionForConstructSignature1: 50661377 false) 
	#(390 4 #reduceActionForPropertySignature8: 47588360 false) 
	#(392 4 #reduceActionForCallSignature3: 47839235 false) 
	#(368 5 #reduceActionForIndexedAccessType1: 45293569 false) 
	#(260 5 #reduceActionForFunctionDeclaration6: 32420870 false) 
	#(288 5 #reduceActionForClassDeclaration5: 36854789 false) 
	#(288 5 #reduceActionForClassDeclaration9: 36854793 false) 
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
	#(424 5 #reduceActionForEnumDeclaration3: 57691139 false) 
	#(469 0 #reduceActionForSourceFileElement__element__1: 66980865 false) 
	#(465 3 #reduceActionForNamespaceName2: 66432002 false) 
	#(467 4 #reduceActionForAmbientFunctionDeclaration1: 66627585 false) 
	#(455 1 #liftFirstValue: 62281730 false) 
	#(449 1 #liftFirstValue: 61481986 false) 
	#(449 1 #liftFirstValue: 61481985 false) 
	#(449 1 #liftFirstValue: 61481987 false) 
	#(449 1 #liftFirstValue: 61481989 false) 
	#(455 1 #liftFirstValue: 62281729 false) 
	#(453 1 #reduceActionForModuleBody1: 62100482 false) 
	#(454 1 #reduceActionForModuleItemList1: 62150657 false) 
	#(455 1 #liftFirstValue: 62281731 false) 
	#(455 1 #liftFirstValue: 62281732 false) 
	#(455 1 #liftFirstValue: 62281733 false) 
	#(455 1 #liftFirstValue: 62281734 false) 
	#(449 1 #liftFirstValue: 61481988 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252675 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252681 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252687 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252673 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252677 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252679 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252683 false) 
	#(478 1 #reduceActionForAmbientNamespaceElement3: 68252685 false) 
	#(476 1 #reduceActionForModuleBody1: 68073474 false) 
	#(477 1 #reduceActionForModuleItemList1: 68125697 false) 
	#(424 5 #reduceActionForEnumDeclaration2: 57691138 false) 
	#(425 2 #reduceActionForOptionalChain2: 57838594 false) 
	#(461 5 #reduceActionForExportListDeclaration6: 65277958 false) 
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
	#(460 5 #reduceActionForExportDefaultDeclarationElement3: 64841731 false) 
	#(459 5 #reduceActionForExportDefaultImplementationElement4: 64280580 false) 
	#(397 5 #reduceActionForConstructSignature2: 50661378 false) 
	#(397 5 #reduceActionForConstructSignature3: 50661379 false) 
	#(392 5 #reduceActionForCallSignature4: 47839236 false) 
	#(386 6 #reduceActionForConstructorType1: 47152129 false) 
	#(385 6 #reduceActionForFunctionType2: 46971906 false) 
	#(260 6 #reduceActionForFunctionExpression3: 32420867 false) 
	#(288 6 #reduceActionForClassDeclaration6: 36854790 false) 
	#(288 6 #reduceActionForClassDeclaration7: 36854791 false) 
	#(288 6 #reduceActionForClassDeclaration10: 36854794 false) 
	#(288 6 #reduceActionForClassDeclaration11: 36854795 false) 
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
	#(424 6 #reduceActionForEnumDeclaration4: 57691140 false) 
	#(471 1 #liftFirstValue: 67155971 false) 
	#(469 1 #reduceActionForModuleBody1: 66980866 false) 
	#(470 1 #reduceActionForModuleItemList1: 67028993 false) 
	#(471 1 #liftFirstValue: 67155969 false) 
	#(471 1 #liftFirstValue: 67155970 false) 
	#(479 6 #reduceActionForAmbientModuleDeclaration1: 69024769 false) 
	#(454 2 #reduceActionForModuleItemList2: 62150658 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252676 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252682 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252688 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252674 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252678 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252680 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252684 false) 
	#(478 2 #reduceActionForExportNamespaceElement2: 68252686 false) 
	#(475 5 #reduceActionForNamespaceDeclaration1: 67897345 false) 
	#(477 2 #reduceActionForModuleItemList2: 68125698 false) 
	#(428 1 #liftFirstValue: 58082305 false) 
	#(427 3 #reduceActionForEnumMember2: 57976834 false) 
	#(426 3 #reduceActionForNamespaceName2: 57884674 false) 
	#(461 6 #reduceActionForExportListDeclaration2: 65277954 false) 
	#(461 6 #reduceActionForExportListDeclaration4: 65277956 false) 
	#(400 6 #reduceActionForTypeAliasDeclaration2: 51260418 false) 
	#(398 6 #reduceActionForIndexSignature2: 50853890 false) 
	#(398 6 #reduceActionForIndexSignature2: 50853889 false) 
	#(397 6 #reduceActionForConstructSignature4: 50661380 false) 
	#(386 7 #reduceActionForConstructorType2: 47152130 false) 
	#(260 7 #reduceActionForFunctionExpression1: 32420865 false) 
	#(260 7 #reduceActionForFunctionExpression4: 32420868 false) 
	#(288 7 #reduceActionForClassDeclaration8: 36854792 false) 
	#(288 7 #reduceActionForClassDeclaration12: 36854796 false) 
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
	#(473 2 #reduceActionForAmbientPropertyMemberDeclaration1: 67510273 false) 
	#(468 6 #reduceActionForAmbientClassDeclaration1: 66775041 false) 
	#(470 2 #reduceActionForModuleItemList2: 67028994 false) 
	#(283 8 #reduceActionForAsyncFunctionExpression1: 36019201 false) 
	#(274 8 #reduceActionForGeneratorExpression1: 34319361 false) 
	#(260 8 #reduceActionForFunctionExpression2: 32420866 false) 
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
	#(473 3 #reduceActionForAmbientPropertyMemberDeclaration3: 67510275 false) 
	#(473 3 #reduceActionForAmbientPropertyMemberDeclaration2: 67510274 false) 
	#(473 3 #reduceActionForAmbientPropertyMemberDeclaration9: 67510281 false) 
	#(473 3 #reduceActionForAmbientPropertyMemberDeclaration5: 67510277 false) 
	#(468 7 #reduceActionForAmbientClassDeclaration2: 66775042 false) 
	#(456 8 #reduceActionForImportRequireDeclaration1: 62518273 false) 
	#(279 9 #reduceActionForAsyncGeneratorExpression1: 35175425 false) 
	#(283 9 #reduceActionForAsyncFunctionExpression2: 36019202 false) 
	#(274 9 #reduceActionForGeneratorExpression2: 34319362 false) 
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
	#(473 4 #reduceActionForAmbientPropertyMemberDeclaration4: 67510276 false) 
	#(473 4 #reduceActionForAmbientPropertyMemberDeclaration10: 67510282 false) 
	#(473 4 #reduceActionForAmbientPropertyMemberDeclaration7: 67510279 false) 
	#(473 4 #reduceActionForAmbientPropertyMemberDeclaration6: 67510278 false) 
	#(473 4 #reduceActionForAmbientPropertyMemberDeclaration11: 67510283 false) 
	#(279 10 #reduceActionForAsyncGeneratorExpression2: 35175426 false) 
	#(281 9 #reduceActionForAsyncGeneratorMethod1: 35725313 false) 
	#(402 9 #reduceActionForGetAccessor1: 52249601 false) 
	#(403 9 #reduceActionForSetAccessor2: 52455426 false) 
	#(419 8 #reduceActionForMemberVariableDeclaration16: 56674320 false) 
	#(421 8 #reduceActionForMemberFunctionDeclaration4: 56910852 false) 
	#(472 5 #reduceActionForAmbientConstructorDeclaration1: 67268609 false) 
	#(473 5 #reduceActionForAmbientPropertyMemberDeclaration8: 67510280 false) 
	#(473 5 #reduceActionForAmbientPropertyMemberDeclaration12: 67510284 false) 
	#(403 10 #reduceActionForSetAccessor1: 52455425 false) 
	#(403 10 #reduceActionForSetAccessor1: 52455427 false) 
	#(472 6 #reduceActionForAmbientConstructorDeclaration2: 67268610 false)
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'DecoratorExpression ''decorator''*' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'Initializer?' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'SourceFileElement ''element''*' 'SourceFileElement' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #OrderedCollection #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #JSProgramNode #JSProgramNode #Object #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 0 49 0 140 0 81 0 207 0 57 0 208 0 81 0 209 0 65 0 210 0 49 1 46 0 73 1 47 0 77 1 48 0 81 1 49 0 81 1 51 0 81 1 61 0 11 1 227 0 10 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 113 0 196 1 113 0 197 1 113 0 199 0 253 1 5 1 113 1 8 1 125 1 9 1 129 1 10 1 133 1 13 1 113 1 14 0 253 1 19 1 113 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 2 25 0 200 2 25 0 203 2 25 0 204 2 25 0 205 2 25 0 213 2 25 0 227 2 25 0 228 2 25 0 229 2 25 0 230 2 25 0 231 2 25 0 232 2 25 0 233 2 25 0 234 2 25 0 237 2 25 0 238 2 25 0 240 2 25 0 241 2 25 0 242 2 25 0 247 2 25 0 249 2 25 0 250 2 25 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 2 113 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 2 121 1 44 2 125 1 45 0 6 1 227 0 26 1 228] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 0 81 0 207 0 57 0 208 0 81 0 209 0 65 0 210 2 129 1 46 0 73 1 47 0 77 1 48 0 81 1 49 0 81 1 51 0 81 1 61 0 11 1 227 0 10 1 228] 
#[1 0 30 0 1 0 30 0 2 0 30 0 4 0 30 0 6 0 30 0 8 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 39 0 30 0 52 0 30 0 56 0 30 0 57 0 30 0 58 0 30 0 61 0 30 0 62 0 30 0 63 0 30 0 65 0 30 0 66 0 30 0 67 0 30 0 69 0 30 0 70 0 30 0 72 0 30 0 73 0 30 0 75 0 30 0 77 0 30 0 79 0 30 0 81 0 30 0 82 0 30 0 87 0 30 0 89 0 30 0 92 0 30 0 93 0 30 0 94 0 30 0 102 0 30 0 106 0 30 0 107 0 30 0 109 0 30 0 110 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 115 0 30 0 116 0 30 0 117 0 30 0 118 0 30 0 119 0 30 0 124 0 30 0 126 0 30 0 128 0 30 0 129 0 30 0 130 0 30 0 132 0 30 0 133 0 30 0 136 2 133 1 181 2 137 1 182 0 30 1 227 0 30 1 228] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 2 197 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 2 197 1 129 2 197 1 130 2 213 1 131 2 213 1 133] 
#[0 0 34 0 4 0 6 0 124 1 227] 
#[1 3 25 0 4 3 29 0 26 3 33 0 56 3 37 0 61 3 41 0 62 0 65 0 63 3 45 0 68 3 49 0 79 0 65 0 89 2 5 0 115 3 53 0 201 3 53 0 202 3 53 0 209 0 65 0 210 3 65 0 213 3 53 1 4 3 53 1 18 3 53 1 23 3 53 1 27 3 53 1 32 3 89 1 62 3 93 1 63 3 97 1 227] 
#[1 3 101 0 4 3 105 0 26 0 189 0 124 3 129 0 128 3 117 0 141 3 113 1 52 3 117 1 53 3 121 1 54 3 125 1 55 3 129 1 59 3 117 1 60 3 129 1 69 3 141 1 227] 
#[0 0 38 0 4 0 6 0 124 1 227] 
#[0 0 0 1 228] 
#[0 0 42 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 3 145 0 200 3 145 0 203 3 145 0 204 3 145 0 205 3 145 0 213 3 145 0 227 3 145 0 228 3 145 0 229 3 145 0 230 3 145 0 231 3 145 0 232 3 145 0 233 3 145 0 234 3 145 0 237 3 145 0 238 3 145 0 240 3 145 0 241 3 145 0 242 3 145 0 247 3 145 0 249 3 145 0 250 3 145 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 0 46 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 3 157 0 141 3 161 0 211 3 165 0 212 3 169 0 216 3 169 0 217 3 169 0 218 3 165 1 151 3 165 1 152 3 189 1 227] 
#[0 0 50 1 228] 
#[0 0 54 1 228] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 3 193 0 207 0 57 0 208 3 193 0 209 0 65 0 210 3 193 1 49 3 193 1 51 3 193 1 61 0 11 1 227 0 58 1 228] 
#[0 0 62 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 0 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 0 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 197 0 73] 
#[1 0 97 0 2 0 74 0 3 0 23 0 4 3 201 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 3 205 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 3 209 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 3 213 0 196 3 213 0 197 3 213 0 199 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 3 233 0 255 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 0 253 1 5 3 213 1 8 1 125 1 9 1 129 1 10 1 133 1 13 3 213 1 14 0 253 1 19 3 213 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 3 253 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 4 1 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 5 0 120 4 9 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 4 13 0 147 4 17 0 148 4 21 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 25 0 196 4 25 0 197 0 253 1 5 4 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 25 1 14 0 253 1 19 4 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 45 0 179 4 45 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 53 0 179 4 53 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 53 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 57 0 179 4 57 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 57 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 61 0 179 4 61 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 61 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 65 0 179 4 65 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 65 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 69 0 179 4 69 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 69 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 73 0 2 4 77 0 79 0 189 0 124 4 81 0 141 4 85 1 9 1 129 1 10 1 133 1 13 4 89 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 93 0 179 4 93 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 93 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 97 0 4 4 101 0 74 0 189 0 124 4 105 0 141 4 109 1 34 4 113 1 35 4 117 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 121 0 179 4 121 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 121 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 4 125 0 2 4 129 0 26 0 189 0 124 4 133 0 141] 
#[1 4 137 0 2 4 141 0 22] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 145 0 22 4 33 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 4 149 0 141 4 149 0 143 4 149 0 144 4 149 0 145 4 149 0 146 4 149 0 150 0 241 0 151 4 149 0 159 0 249 0 160 4 149 0 163 4 149 0 164 4 149 0 165 4 149 0 166 4 149 0 167 4 153 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 157 0 178 4 149 1 5 4 149 1 19 4 149 1 24 4 149 1 28 4 149 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 4 149 1 71 4 149 1 72 4 149 1 73 1 197 1 74 4 149 1 76 1 205 1 94 4 161 1 227] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 4 165 0 2 4 169 0 6 4 173 0 22 4 177 0 172 4 181 1 227] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 185 0 179 4 185 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 185 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 4 189 0 179 4 189 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 189 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 0 97 0 2 0 94 0 3 0 14 0 4 0 94 0 5 0 101 0 6 0 94 0 7 0 94 0 8 4 193 0 26 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 94 0 121 0 94 0 122 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 94 0 134 0 94 0 135 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 197 0 196 4 197 0 197 0 253 1 5 4 197 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 197 1 14 0 253 1 19 4 197 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227 0 94 1 228] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 74 0 78 0 83 0 85 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 102 0 83] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 64 0 78 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 132 0 133 0 134 0 135 0 137 1 226 1 227 1 228] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 64 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 122 0 14 4 201 1 95] 
#[1 0 126 0 2 0 126 0 3 0 126 0 5 0 126 0 6 0 126 0 7 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 126 0 96 0 126 0 121 0 126 0 122 0 126 0 132 0 126 0 133 0 126 0 134 0 126 0 135 0 126 1 226 0 126 1 227 0 126 1 228] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 4 205 0 4] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 4 209 0 133] 
#[1 4 165 0 2 0 158 0 3 0 158 0 4 0 158 0 5 4 213 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 20 0 158 0 21 4 217 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 4 221 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 53 0 158 0 54 0 158 0 83 0 158 0 86 0 158 0 96 0 158 0 121 0 158 0 122 0 209 0 132 0 18 0 133 0 158 0 134 0 158 0 135 4 225 0 159 0 249 0 160 4 229 0 172 4 233 0 175 0 158 1 226 0 27 1 227 0 158 1 228] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 178 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 134 0 135 1 226 1 227 1 228] 
#[1 4 165 0 2 0 182 0 3 0 182 0 4 0 182 0 5 4 237 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 20 0 182 0 21 4 241 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 182 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 40 0 182 0 41 0 182 0 42 0 182 0 43 4 221 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 182 0 48 0 182 0 49 0 182 0 50 0 182 0 51 0 182 0 53 0 182 0 54 0 182 0 83 0 182 0 86 0 182 0 96 0 182 0 121 0 182 0 122 0 209 0 132 0 18 0 133 0 182 0 134 0 182 0 135 4 245 0 159 0 249 0 160 4 249 0 172 4 253 0 175 0 182 1 226 0 31 1 227 0 182 1 228] 
#[0 0 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 20 0 194 0 21 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 4 221 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 48 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 53 0 194 0 54 0 194 0 83 0 194 0 86 0 194 0 96 0 194 0 121 0 194 0 122 0 194 0 134 0 194 0 135 5 1 0 175 0 194 1 226 0 194 1 227 0 194 1 228] 
#[1 0 198 0 3 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 5 73 0 10 0 198 0 11 0 198 0 12 5 73 0 13 0 198 0 14 0 198 0 15 5 73 0 16 5 73 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 73 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 5 73 0 28 5 73 0 29 5 73 0 30 5 73 0 31 5 73 0 32 5 73 0 33 5 73 0 34 0 198 0 35 5 53 0 36 0 198 0 37 5 57 0 38 0 198 0 40 0 198 0 41 5 73 0 42 0 198 0 43 0 198 0 45 5 73 0 46 0 198 0 47 0 198 0 48 0 198 0 49 5 73 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 83 0 198 0 86 0 198 0 121 0 198 0 122 0 198 0 134 0 198 0 135 5 73 0 198 5 73 1 226 5 81 1 227 0 198 1 228] 
#[0 0 202 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 0 206 0 3 0 206 0 5 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 11 0 206 0 12 0 206 0 14 0 206 0 15 0 206 0 18 0 206 0 20 0 206 0 21 0 206 0 24 0 206 0 25 0 206 0 26 5 85 0 27 0 206 0 35 0 206 0 37 0 206 0 40 0 206 0 41 0 206 0 43 0 206 0 45 0 206 0 47 0 206 0 48 0 206 0 49 0 206 0 51 0 206 0 53 0 206 0 54 0 206 0 83 0 206 0 86 0 206 0 121 0 206 0 122 0 206 0 134 0 206 0 135 0 206 1 228] 
#[0 0 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 5 101 0 9 0 214 0 11 0 214 0 12 0 214 0 14 0 214 0 15 0 214 0 18 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 25 5 101 0 26 0 214 0 35 0 214 0 37 0 214 0 40 0 214 0 41 0 214 0 43 0 214 0 45 5 101 0 47 0 214 0 48 0 214 0 49 0 214 0 51 0 214 0 53 0 214 0 54 0 214 0 83 0 214 0 86 0 214 0 121 0 214 0 122 0 214 0 134 0 214 0 135 5 101 0 183 0 214 1 228] 
#[1 0 218 0 3 0 218 0 5 0 218 0 7 0 218 0 8 0 218 0 11 0 218 0 12 0 218 0 14 0 218 0 15 0 218 0 18 0 218 0 20 0 218 0 21 0 218 0 24 0 218 0 25 5 105 0 35 5 109 0 37 0 218 0 40 0 218 0 41 0 218 0 43 0 218 0 45 0 218 0 48 0 218 0 49 0 218 0 51 0 218 0 53 0 218 0 54 0 218 0 83 0 218 0 86 0 218 0 121 0 218 0 122 0 218 0 134 0 218 0 135 0 218 1 228] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 11 5 113 0 12 0 222 0 14 5 117 0 15 5 121 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 48 0 222 0 49 0 222 0 51 0 222 0 53 0 222 0 54 0 222 0 83 0 222 0 86 0 222 0 121 0 222 0 122 0 222 0 134 0 222 0 135 0 222 1 228] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 0 226 0 24 0 226 0 25 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 48 0 226 0 49 0 226 0 51 0 226 0 53 0 226 0 54 5 141 0 83 5 145 0 86 0 226 0 121 0 226 0 122 0 226 0 134 0 226 0 135 0 226 1 228] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 5 149 0 24 5 153 0 25 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 48 0 230 0 49 0 230 0 51 5 157 0 53 5 161 0 54 0 230 0 121 0 230 0 122 0 230 0 134 0 230 0 135 0 230 1 228] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 5 165 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 48 0 234 0 49 0 234 0 51 0 234 0 121 0 234 0 122 0 234 0 134 0 234 0 135 0 234 1 228] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 48 0 238 0 49 5 169 0 51 0 238 0 121 0 238 0 122 0 238 0 134 0 238 0 135 0 238 1 228] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 0 246 0 45 5 173 0 48 0 242 0 49 0 242 0 121 0 242 0 122 0 242 0 134 0 242 0 135 0 242 1 228] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 5 177 0 41 0 250 0 43 0 250 0 49 0 250 0 121 0 250 0 122 0 250 0 134 0 250 0 135 0 250 1 228] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 0 254 0 43 5 181 0 49 0 254 0 121 0 254 0 122 0 254 0 134 0 254 0 135 0 254 1 228] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 43 1 6 0 45 1 2 0 121 1 2 0 122 1 2 0 134 1 2 0 135 1 2 1 228] 
#[0 5 185 0 45] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 5 189 0 43 1 10 0 121 1 10 0 122 1 10 0 134 1 10 0 135 1 10 1 228] 
#[0 1 14 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 1 18 0 3 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[1 5 193 0 121 0 0 1 228] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 26 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 5 197 0 19] 
#[0 1 30 0 19] 
#[0 1 34 0 19] 
#[0 1 38 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 1 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 46 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 58 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 1 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 201 0 83] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 226 1 227 1 228] 
#[1 1 94 0 4 1 94 0 136 1 94 0 138 5 205 1 96] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 209 0 136] 
#[1 5 213 0 2 5 217 0 11 5 221 0 79 5 225 1 100 5 229 1 145] 
#[1 0 6 0 2 0 6 0 4 5 233 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 5 237 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 0 6 1 227] 
#[0 1 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 1 106 0 8 1 106 0 124 5 241 0 239] 
#[1 1 106 0 8 1 106 0 124 5 245 0 239] 
#[0 5 249 0 8] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 5 253 0 200 5 253 0 203 5 253 0 204 5 253 0 205 5 253 0 213 5 253 0 227 5 253 0 228 5 253 0 229 5 253 0 230 5 253 0 231 5 253 0 232 5 253 0 233 5 253 0 234 5 253 0 237 5 253 0 238 5 253 0 240 5 253 0 241 5 253 0 242 5 253 0 247 5 253 0 249 5 253 0 250 5 253 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 6 1 0 2 6 5 0 57] 
#[0 6 9 0 2] 
#[1 1 106 0 2 1 106 0 4 1 106 0 6 1 106 0 8 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 52 1 106 0 56 1 106 0 57 1 106 0 61 1 106 0 69 1 106 0 75 1 106 0 79 1 106 0 82 1 106 0 93 1 106 0 94 1 106 0 106 1 106 0 109 1 106 0 111 1 106 0 114 1 106 0 116 1 106 0 119 1 106 0 124 1 106 0 126 1 106 0 128 1 106 0 129 1 106 0 130 1 106 0 132 1 106 0 133 1 106 0 136 6 13 0 239 1 106 1 227] 
#[0 6 17 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 6 21 0 196 6 21 0 197 6 21 0 199 0 253 1 5 6 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 6 21 1 14 0 253 1 19 6 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 1 213 0 4 6 25 0 205] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 6 29 0 141 6 33 0 214 6 37 0 215 6 41 0 216 6 41 0 217 6 41 0 218 6 45 1 227] 
#[0 6 49 0 2] 
#[0 6 53 0 2] 
#[1 0 98 0 2 0 98 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 98 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 38 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 47 0 98 0 48 0 98 0 49 0 98 0 50 0 98 0 51 0 98 0 53 0 98 0 54 0 98 0 83 0 98 0 86 0 98 0 121 6 57 0 122 0 98 0 132 0 98 0 133 0 98 1 226 0 98 1 227] 
#[1 6 61 0 8 5 193 0 121] 
#[0 0 0 1 228] 
#[0 1 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 65 0 207 0 57 0 208 6 65 0 209 0 65 0 210 0 6 1 227 1 194 1 228] 
#[0 1 198 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 0 0 1 228] 
#[0 1 202 1 228] 
#[0 0 0 1 228] 
#[0 0 0 1 228] 
#[1 1 206 0 1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 6 69 0 61 3 41 0 62 6 73 0 63 1 225 0 65 1 229 0 66 6 77 0 67 0 141 0 69 1 233 0 70 6 81 0 72 0 35 0 73 1 173 0 75 1 237 0 77 6 89 0 79 1 241 0 81 6 93 0 82 6 97 0 87 0 65 0 89 6 101 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 6 105 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 6 157 0 200 6 157 0 203 6 157 0 204 6 157 0 205 6 157 0 209 0 65 0 210 6 157 0 213 6 157 0 227 6 157 0 228 6 157 0 229 6 157 0 230 6 157 0 231 6 157 0 232 6 157 0 233 6 157 0 234 6 157 0 237 6 157 0 238 6 157 0 240 6 157 0 241 6 157 0 242 6 157 0 247 6 157 0 249 6 157 0 250 6 157 0 254 6 157 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 6 157 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 6 157 1 32 0 253 1 33 6 157 1 51 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 6 133 1 137 6 157 1 144 6 157 1 153 6 157 1 168 6 157 1 173 6 157 1 179 6 157 1 183 6 157 1 189 6 157 1 200 6 157 1 201 6 157 1 202 6 157 1 203 6 157 1 204 6 157 1 205 6 157 1 206 6 157 1 207 6 157 1 223 6 201 1 227 1 210 1 228] 
#[1 2 141 0 2 0 74 0 3 6 205 0 4 6 209 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 3 205 0 120 0 189 0 124 2 185 0 128 2 189 0 129 6 213 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 6 217 1 0 3 241 1 1 3 245 1 2 3 249 1 3 2 185 1 69 2 189 1 70 2 193 1 100 6 221 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 6 221 1 129 6 221 1 130 2 213 1 131 2 213 1 133 6 225 1 227] 
#[1 6 229 0 2 6 233 0 5 6 237 0 6 2 153 0 11 6 241 0 93 6 245 0 101 6 249 0 125 7 13 0 128 7 17 0 129 7 1 0 142 7 1 0 154 7 1 0 155 7 1 0 156 7 13 1 69 7 17 1 70 7 21 1 100 7 25 1 120 7 29 1 121 7 33 1 122 7 33 1 134 7 33 1 136 7 33 1 141 7 33 1 142 7 33 1 143] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 7 57 0 7 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 7 61 0 121 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 7 73 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 7 69 1 125 7 73 1 126 2 201 1 127 2 205 1 128 7 73 1 129 7 73 1 130 2 213 1 131 2 213 1 133] 
#[1 0 189 0 124 7 77 0 141 7 81 1 101 7 85 1 102] 
#[1 7 89 0 2 2 145 0 4 2 149 0 6 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 7 93 1 111 7 93 1 112 7 93 1 113 7 93 1 114 7 93 1 115 7 93 1 116 2 237 1 117 2 241 1 118 7 93 1 119 7 93 1 123 7 93 1 124 7 93 1 131 7 93 1 133] 
#[1 7 89 0 2 2 145 0 4 2 149 0 6 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 7 97 1 111 7 97 1 112 7 97 1 113 7 97 1 114 7 97 1 115 7 97 1 116 2 237 1 117 2 241 1 118 7 97 1 119 7 97 1 123 7 97 1 124 7 97 1 131 7 97 1 133] 
#[1 7 101 0 2 2 153 0 11 7 105 1 100] 
#[0 1 214 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 0 189 0 124 7 109 0 141 7 113 1 132] 
#[0 1 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 1 222 0 3 1 222 0 4 1 222 0 5 1 222 0 6 1 222 0 7 1 222 0 8 1 222 0 9 1 222 0 11 1 222 0 12 1 222 0 14 1 222 0 15 1 222 0 18 1 222 0 19 1 222 0 20 1 222 0 21 1 226 0 22 1 222 0 23 1 222 0 24 1 222 0 25 1 222 0 26 1 222 0 27 1 222 0 35 1 222 0 37 1 222 0 40 1 222 0 41 1 222 0 43 1 222 0 45 1 222 0 47 1 222 0 48 1 222 0 49 1 222 0 51 1 222 0 53 1 222 0 54 1 222 0 64 1 222 0 83 1 222 0 85 1 222 0 86 1 222 0 97 1 222 0 98 1 222 0 99 1 222 0 100 1 222 0 104 1 222 0 121 1 222 0 122 1 222 0 125 1 222 0 128 1 222 0 129 1 222 0 134 1 222 0 135 1 222 1 228] 
#[0 1 230 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 1 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 7 117 0 2] 
#[0 0 0 1 228] 
#[1 1 238 0 3 1 238 0 4 1 238 0 5 1 238 0 6 1 238 0 7 1 238 0 8 1 238 0 9 1 238 0 11 1 238 0 12 1 238 0 14 1 238 0 15 1 238 0 18 1 238 0 19 1 238 0 20 1 238 0 21 1 238 0 23 1 238 0 24 1 238 0 25 1 238 0 26 1 238 0 27 1 238 0 35 1 238 0 37 1 238 0 40 1 238 0 41 1 238 0 43 1 238 0 45 1 238 0 47 0 39 0 48 1 238 0 49 1 238 0 51 1 238 0 53 1 238 0 54 1 238 0 64 1 238 0 83 1 238 0 86 1 238 0 97 1 238 0 98 1 238 0 99 1 238 0 100 1 238 0 104 1 238 0 121 1 238 0 122 1 238 0 125 1 238 0 128 1 238 0 129 1 238 0 134 1 238 0 135 1 238 1 228] 
#[1 1 242 0 3 1 242 0 4 1 242 0 5 1 242 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 11 1 242 0 12 1 242 0 14 1 242 0 15 1 242 0 18 1 242 0 19 1 242 0 20 1 242 0 21 1 242 0 23 1 242 0 24 1 242 0 25 1 242 0 26 1 242 0 27 1 242 0 35 1 242 0 37 0 43 0 40 1 242 0 41 1 242 0 43 1 242 0 45 1 242 0 47 1 242 0 48 1 242 0 49 1 242 0 51 1 242 0 53 1 242 0 54 1 242 0 64 1 242 0 83 1 242 0 86 1 242 0 97 1 242 0 98 1 242 0 99 1 242 0 100 1 242 0 104 1 242 0 121 1 242 0 122 1 242 0 125 1 242 0 128 1 242 0 129 1 242 0 134 1 242 0 135 1 242 1 228] 
#[0 1 246 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 1 250 0 3 1 250 0 4 1 250 0 5 0 47 0 6 1 250 0 7 1 250 0 8 1 250 0 9 1 250 0 11 1 250 0 12 1 250 0 14 1 250 0 15 1 250 0 18 1 250 0 19 1 250 0 20 1 250 0 21 1 250 0 23 1 250 0 24 1 250 0 25 1 250 0 26 1 250 0 27 1 250 0 35 1 250 0 37 1 250 0 40 1 250 0 41 1 250 0 43 1 250 0 45 1 250 0 47 1 250 0 48 1 250 0 49 1 250 0 51 1 250 0 53 1 250 0 54 1 250 0 64 1 250 0 83 1 250 0 86 1 250 0 97 1 250 0 98 1 250 0 99 1 250 0 100 1 250 0 104 1 250 0 121 1 250 0 122 1 250 0 125 1 250 0 128 1 250 0 129 1 250 0 134 1 250 0 135 7 129 0 239 1 250 1 228] 
#[0 1 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 10 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 9 1 106 0 11 1 106 0 12 1 106 0 14 1 106 0 15 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 23 1 106 0 24 1 106 0 25 1 106 0 26 1 106 0 27 1 106 0 35 1 106 0 37 1 106 0 40 1 106 0 41 1 106 0 43 1 106 0 45 1 106 0 47 1 106 0 48 1 106 0 49 1 106 0 51 1 106 0 53 1 106 0 54 1 106 0 64 1 106 0 83 1 106 0 85 1 106 0 86 1 106 0 97 1 106 0 98 1 106 0 99 1 106 0 100 1 106 0 104 1 106 0 121 1 106 0 122 1 106 0 125 1 106 0 128 1 106 0 129 1 106 0 134 1 106 0 135 7 133 0 239 1 106 1 228] 
#[0 7 137 0 22] 
#[0 2 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 22 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 2 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 7 141 0 5 7 149 0 125 7 149 0 128 7 149 1 50 7 153 1 64 7 157 1 65 7 149 1 69] 
#[1 7 165 0 55 2 54 0 78] 
#[0 7 169 0 79] 
#[1 4 97 0 4 4 101 0 74 0 189 0 124 7 173 0 141 7 177 1 34 4 113 1 35 4 117 1 227] 
#[0 7 181 0 61] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 7 185 0 196 7 185 0 197 0 253 1 5 7 185 1 8 1 125 1 9 1 129 1 10 1 133 1 13 7 185 1 14 0 253 1 19 7 185 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 7 189 0 2 7 193 0 26 0 189 0 124 7 197 0 141] 
#[0 2 58 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 62 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 74 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 86 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 2 90 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 7 201 0 78 7 205 1 56] 
#[1 7 209 0 8 2 94 0 78] 
#[1 0 51 0 1 1 206 0 61 1 206 0 62 7 217 0 63 6 81 0 72 7 221 0 79 6 97 0 87 6 105 0 113 7 225 1 137 7 229 1 144 7 233 1 153 7 237 1 168 7 241 1 224] 
#[1 7 245 0 5 0 189 0 124 7 249 0 125 7 249 0 128 8 5 0 141 7 249 1 50 7 253 1 57 8 1 1 58 8 5 1 60 7 249 1 69] 
#[0 8 9 0 55] 
#[0 2 98 0 5 0 78 0 121] 
#[1 7 201 0 78 8 13 1 56] 
#[1 2 102 0 78 8 17 0 121] 
#[0 2 106 0 78] 
#[0 2 110 0 78] 
#[0 8 21 0 8] 
#[0 2 114 0 78 0 121] 
#[0 2 118 0 8] 
#[0 8 25 0 113] 
#[0 2 122 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 8 29 0 5 8 33 0 6 8 37 0 120 0 189 0 124 6 249 0 125 7 13 0 128 7 17 0 129 8 41 0 141 8 45 0 142 8 45 0 154 8 45 0 155 8 45 0 156 8 49 0 219 8 53 0 220 8 57 0 223 8 57 0 225 7 13 1 69 7 17 1 70 8 65 1 227] 
#[1 3 149 0 4 3 153 0 6 8 69 0 7 3 205 0 120 4 9 0 121 0 189 0 124 8 41 0 141 8 73 0 148 3 217 0 216 3 217 0 217 3 217 0 218 8 77 0 221 8 81 0 222 8 85 0 224 8 85 0 225 8 89 0 226 6 225 1 227] 
#[1 2 126 0 8 8 93 0 23 2 126 0 121 8 97 0 158] 
#[1 8 101 0 8 8 105 0 121] 
#[0 2 130 0 8 0 121] 
#[1 8 93 0 23 8 109 0 158] 
#[0 2 134 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 2 138 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 2 142 0 8 0 121] 
#[0 2 146 0 8 0 121] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 8 113 0 141 8 117 0 216 8 117 0 217 8 117 0 218] 
#[0 2 150 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 121 0 113] 
#[1 0 97 0 2 0 23 0 4 3 201 0 6 8 125 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 8 129 0 120 4 9 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 3 209 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 4 13 0 147 8 133 0 148 4 21 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 25 0 196 4 25 0 197 3 217 0 216 3 217 0 217 3 217 0 218 8 77 0 221 8 81 0 222 8 85 0 224 8 85 0 225 8 89 0 226 0 253 1 5 4 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 25 1 14 0 253 1 19 4 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 3 253 1 227] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 8 137 0 141 8 141 0 216 8 141 0 217 8 141 0 218] 
#[1 0 126 0 2 0 55 0 3 0 126 0 6 0 55 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 59 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 55 0 121 0 126 0 132 0 126 0 133 8 145 0 158 0 126 1 226 0 126 1 227] 
#[1 8 149 0 3 5 193 0 121] 
#[1 2 158 0 3 2 158 0 5 2 158 0 7 8 93 0 23 2 158 0 121 8 153 0 158] 
#[0 2 162 0 3 0 121] 
#[0 2 166 0 3 0 5 0 7 0 121] 
#[0 2 170 0 3] 
#[0 8 157 0 3] 
#[0 2 174 0 3] 
#[1 2 178 0 3 8 161 0 121] 
#[0 2 182 0 3] 
#[0 2 186 0 3 0 121] 
#[1 1 206 0 1 5 213 0 2 1 206 0 4 1 206 0 6 5 217 0 11 1 206 0 43 5 221 0 79 0 63 0 97 0 67 0 98 0 71 0 99 0 75 0 100 1 206 0 109 1 206 0 122 0 79 0 124 8 181 0 141 5 225 1 100 8 185 1 137 8 189 1 139 5 229 1 145] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 193 0 196 8 193 0 197 0 253 1 5 8 193 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 193 1 14 0 253 1 19 8 193 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 2 194 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 120 0 121 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[1 8 197 0 7 4 9 0 121 8 201 0 148] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 8 205 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 5 0 120 8 209 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 8 213 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 217 0 196 8 217 0 197 0 253 1 5 8 217 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 217 1 14 0 253 1 19 8 217 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 2 198 0 7 0 121] 
#[0 2 202 0 7 0 121] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 3 213 0 196 3 213 0 197 3 213 0 199 0 253 1 5 3 213 1 8 1 125 1 9 1 129 1 10 1 133 1 13 3 213 1 14 0 253 1 19 3 213 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 4 77 0 79] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 198 0 3 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 11 0 198 0 12 0 198 0 14 0 198 0 15 0 198 0 18 0 198 0 20 0 198 0 21 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 35 5 53 0 36 0 198 0 37 5 57 0 38 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 45 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 83 0 198 0 86 0 198 0 121 0 198 0 122 0 198 0 134 0 198 0 135 5 81 1 227 0 198 1 228] 
#[0 2 206 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 8 221 0 11 5 221 0 79] 
#[0 2 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 2 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 2 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 2 222 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 2 226 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 3 233 0 255 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 8 225 0 2 8 229 0 26 0 189 0 124 8 233 0 141] 
#[0 0 130 0 19] 
#[0 8 237 0 19] 
#[1 5 213 0 2 2 153 0 11 5 225 1 100 5 229 1 145] 
#[0 2 230 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 8 241 0 5 8 245 0 8 8 249 0 26 8 253 0 56 9 1 0 80 9 5 0 103 9 9 0 104 9 13 0 124 9 17 0 126 9 45 1 16 9 45 1 20 9 45 1 25 9 45 1 29 9 37 1 36 9 41 1 37 9 45 1 38 9 49 1 39 9 53 1 40 9 45 1 41 9 45 1 146 9 45 1 147 9 69 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 33 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 9 73 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 9 73 0 178 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 161 1 227] 
#[1 4 97 0 4 4 101 0 74 9 77 1 34 4 113 1 35 4 117 1 227] 
#[0 2 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 9 81 0 4] 
#[1 9 85 0 74 9 89 0 85 9 93 1 157 9 97 1 159] 
#[0 2 238 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 9 101 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 9 105 0 2 0 189 0 124 9 109 0 141] 
#[0 9 113 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 117 0 196 9 117 0 197 0 253 1 5 9 117 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 117 1 14 0 253 1 19 9 117 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 9 121 0 90] 
#[0 9 125 0 108] 
#[1 4 165 0 2 0 158 0 3 0 158 0 4 0 158 0 5 4 213 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 20 0 158 0 21 4 217 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 4 221 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 53 0 158 0 54 0 158 0 83 0 158 0 86 0 158 0 96 0 158 0 121 0 158 0 122 0 209 0 132 0 18 0 133 0 158 0 134 0 158 0 135 4 225 0 159 0 249 0 160 9 129 0 172 4 233 0 175 0 158 1 226 0 27 1 227 0 158 1 228] 
#[1 2 242 0 3 2 242 0 4 2 242 0 5 2 242 0 7 2 242 0 8 2 242 0 9 2 242 0 10 2 242 0 11 2 242 0 12 2 242 0 13 2 242 0 14 2 242 0 15 2 242 0 16 2 242 0 17 2 242 0 18 2 242 0 20 2 242 0 21 2 242 0 23 2 242 0 24 2 242 0 25 2 242 0 26 2 242 0 27 2 242 0 28 2 242 0 29 2 242 0 30 2 242 0 31 2 242 0 32 2 242 0 33 2 242 0 34 2 242 0 35 2 242 0 36 2 242 0 37 2 242 0 38 2 242 0 40 2 242 0 41 2 242 0 42 2 242 0 43 2 242 0 45 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 49 2 242 0 50 2 242 0 51 2 242 0 53 2 242 0 54 2 242 0 83 2 242 0 86 2 242 0 96 2 242 0 121 2 242 0 122 2 242 0 134 2 242 0 135 2 242 1 226 0 83 1 227 2 242 1 228] 
#[0 9 133 1 227] 
#[0 5 221 0 79] 
#[1 0 97 0 2 9 137 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 9 141 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 9 145 0 173 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 149 0 196 9 149 0 197 0 253 1 5 9 149 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 149 1 14 0 253 1 19 9 149 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 153 0 196 9 153 0 197 9 153 0 199 0 253 1 5 9 153 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 153 1 14 0 253 1 19 9 153 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 9 157 0 125] 
#[0 2 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 9 161 0 11 9 165 1 104] 
#[0 2 250 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 2 254 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 169 0 196 9 169 0 197 0 253 1 5 9 169 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 169 1 14 0 253 1 19 9 169 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 3 2 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 9 173 0 14] 
#[1 9 177 0 5 8 33 0 6 8 249 0 26 8 253 0 56 9 1 0 80 9 5 0 103 9 181 0 120 9 185 0 124 6 249 0 125 9 17 0 126 7 13 0 128 7 17 0 129 9 189 0 141 9 201 0 142 9 193 0 152 9 197 0 153 9 201 0 154 9 201 0 155 9 201 0 156 9 197 0 157 9 197 1 16 9 197 1 20 9 197 1 25 9 197 1 29 9 213 1 40 7 13 1 69 7 17 1 70 9 197 1 146 9 197 1 147 9 217 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 221 0 196 9 221 0 197 9 221 0 199 0 253 1 5 9 221 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 221 1 14 0 253 1 19 9 221 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 225 0 196 9 225 0 197 9 225 0 199 0 253 1 5 9 225 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 225 1 14 0 253 1 19 9 225 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 9 229 0 125 9 233 0 126] 
#[1 4 165 0 2 9 237 0 6 9 241 0 125 9 245 0 126 0 209 0 132 0 18 0 133 9 249 0 159 0 249 0 160 9 253 0 172 10 1 0 177 4 181 1 227] 
#[0 3 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 3 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 4 165 0 2 3 14 0 3 3 14 0 4 3 14 0 5 10 5 0 6 3 14 0 7 3 14 0 8 3 14 0 9 3 14 0 10 3 14 0 11 3 14 0 12 3 14 0 13 3 14 0 14 3 14 0 15 3 14 0 16 3 14 0 17 3 14 0 18 3 14 0 20 3 14 0 21 10 9 0 22 3 14 0 23 3 14 0 24 3 14 0 25 3 14 0 26 3 14 0 27 3 14 0 28 3 14 0 29 3 14 0 30 3 14 0 31 3 14 0 32 3 14 0 33 3 14 0 34 3 14 0 35 3 14 0 36 3 14 0 37 3 14 0 38 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 43 3 14 0 44 3 14 0 45 3 14 0 46 3 14 0 47 3 14 0 48 3 14 0 49 3 14 0 50 3 14 0 51 3 14 0 53 3 14 0 54 3 14 0 83 3 14 0 86 3 14 0 96 3 14 0 121 3 14 0 122 0 209 0 132 0 18 0 133 3 14 0 134 3 14 0 135 10 13 0 159 0 249 0 160 10 17 0 172 10 21 0 176 3 14 1 226 0 87 1 227 3 14 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 25 0 196 10 25 0 197 10 25 0 199 0 253 1 5 10 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 25 1 14 0 253 1 19 10 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 10 29 0 125 10 33 0 126] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 4 165 0 2 3 26 0 3 3 26 0 4 3 26 0 5 10 5 0 6 3 26 0 7 3 26 0 8 3 26 0 9 3 26 0 10 3 26 0 11 3 26 0 12 3 26 0 13 3 26 0 14 3 26 0 15 3 26 0 16 3 26 0 17 3 26 0 18 3 26 0 20 3 26 0 21 10 9 0 22 3 26 0 23 3 26 0 24 3 26 0 25 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 29 3 26 0 30 3 26 0 31 3 26 0 32 3 26 0 33 3 26 0 34 3 26 0 35 3 26 0 36 3 26 0 37 3 26 0 38 3 26 0 40 3 26 0 41 3 26 0 42 3 26 0 43 3 26 0 44 3 26 0 45 3 26 0 46 3 26 0 47 3 26 0 48 3 26 0 49 3 26 0 50 3 26 0 51 3 26 0 53 3 26 0 54 3 26 0 83 3 26 0 86 3 26 0 96 3 26 0 121 3 26 0 122 0 209 0 132 0 18 0 133 3 26 0 134 3 26 0 135 10 13 0 159 0 249 0 160 10 17 0 172 10 21 0 176 3 26 1 226 0 91 1 227 3 26 1 228] 
#[1 4 165 0 2 3 30 0 3 3 30 0 4 3 30 0 5 10 5 0 6 3 30 0 7 3 30 0 8 3 30 0 9 3 30 0 10 3 30 0 11 3 30 0 12 3 30 0 13 3 30 0 14 3 30 0 15 3 30 0 16 3 30 0 17 3 30 0 18 3 30 0 20 3 30 0 21 10 9 0 22 3 30 0 23 3 30 0 24 3 30 0 25 3 30 0 26 3 30 0 27 3 30 0 28 3 30 0 29 3 30 0 30 3 30 0 31 3 30 0 32 3 30 0 33 3 30 0 34 3 30 0 35 3 30 0 36 3 30 0 37 3 30 0 38 3 30 0 40 3 30 0 41 3 30 0 42 3 30 0 43 3 30 0 44 3 30 0 45 3 30 0 46 3 30 0 47 3 30 0 48 3 30 0 49 3 30 0 50 3 30 0 51 3 30 0 53 3 30 0 54 3 30 0 83 3 30 0 86 3 30 0 96 3 30 0 121 3 30 0 122 0 209 0 132 0 18 0 133 3 30 0 134 3 30 0 135 10 13 0 159 0 249 0 160 10 17 0 172 10 21 0 176 3 30 1 226 0 95 1 227 3 30 1 228] 
#[0 3 34 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 38 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 42 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 46 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 50 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 54 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 58 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 62 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 66 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 70 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 74 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 78 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 82 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 3 86 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 3 90 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 94 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 98 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 37 0 196 10 37 0 197 0 253 1 5 10 37 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 37 1 14 0 253 1 19 10 37 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 3 102 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[1 10 41 0 52 10 45 0 55] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 10 49 0 181 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[0 3 106 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 110 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 3 114 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 10 53 0 181 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 10 57 0 181 10 57 0 182 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 10 61 0 181 10 61 0 182 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 10 65 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 10 69 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 10 73 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 77 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 81 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 85 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 89 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 93 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 97 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 101 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 105 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 109 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 113 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 10 117 0 187 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 10 121 0 188 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 10 125 0 189 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 10 129 0 190 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 10 133 0 190 10 137 0 191 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 10 141 0 190 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 145 0 196 10 145 0 197 0 253 1 5 10 145 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 145 1 14 0 253 1 19 10 145 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 149 0 196 10 149 0 197 0 253 1 5 10 149 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 149 1 14 0 253 1 19 10 149 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 99 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 165 0 196 10 165 0 197 0 253 1 5 10 165 1 8 1 125 1 9 1 129 1 10 10 161 1 11 10 165 1 12 1 133 1 13 10 165 1 14 0 253 1 19 10 165 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 169 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[1 3 118 0 4 3 118 0 136 3 118 0 138 10 173 1 90 10 177 1 91] 
#[1 0 122 0 14 10 181 0 137 10 185 1 77 10 185 1 78 10 185 1 79 10 197 1 80 10 201 1 81 10 205 1 95] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 10 209 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 10 213 0 141 2 185 1 69 2 189 1 70 2 193 1 100 7 81 1 101 7 85 1 102 10 217 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 10 217 1 129 10 217 1 130 2 213 1 131 2 213 1 133] 
#[1 5 213 0 2 2 153 0 11 0 189 0 124 10 221 0 141 5 225 1 100 10 225 1 145] 
#[0 10 229 0 2] 
#[0 3 122 0 19] 
#[0 3 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 6 0 2 0 6 0 4 10 233 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 65 0 207 0 57 0 208 6 65 0 209 0 65 0 210 0 6 1 227] 
#[1 10 237 0 8 0 189 0 124 10 241 0 141] 
#[1 10 245 0 8 0 189 0 124 10 249 0 141] 
#[0 3 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 253 0 117] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 11 1 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 11 21 0 63 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 11 21 0 89 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 11 5 0 115 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 11 9 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 11 9 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 13 0 196 11 13 0 197 11 13 0 199 11 17 0 209 11 21 0 210 11 25 0 235 0 253 1 5 11 13 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 13 1 14 0 253 1 19 11 13 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 11 29 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 33 0 196 11 33 0 197 11 33 0 199 0 253 1 5 11 33 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 33 1 14 0 253 1 19 11 33 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 11 37 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 41 0 196 11 41 0 197 11 41 0 199 0 253 1 5 11 41 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 41 1 14 0 253 1 19 11 41 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 45 0 196 11 45 0 197 11 45 0 199 0 253 1 5 11 45 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 45 1 14 0 253 1 19 11 45 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 11 49 0 8 5 193 0 121] 
#[1 11 53 0 60 11 57 0 76 11 61 0 251 11 65 0 252] 
#[1 3 134 0 8 8 93 0 23 3 134 0 121 11 69 0 158] 
#[1 11 73 0 8 11 77 0 121] 
#[0 3 138 0 8 0 121] 
#[1 8 93 0 23 11 81 0 158] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 11 85 0 141 11 89 0 216 11 89 0 217 11 89 0 218 11 93 1 149 11 97 1 150] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 101 0 196 11 101 0 197 11 101 0 199 0 253 1 5 11 101 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 101 1 14 0 253 1 19 11 101 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 105 0 196 11 105 0 197 11 105 0 199 0 253 1 5 11 105 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 105 1 14 0 253 1 19 11 105 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 11 113 0 200 11 113 0 203 11 113 0 204 11 113 0 205 11 113 0 213 11 113 0 227 11 113 0 228 11 113 0 229 11 113 0 230 11 113 0 231 11 113 0 232 11 113 0 233 11 113 0 234 11 113 0 237 11 113 0 238 11 113 0 240 11 113 0 241 11 113 0 242 11 113 0 247 11 113 0 248 11 113 0 249 11 113 0 250 11 113 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 3 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 146 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 97 0 4 4 101 0 74 0 189 0 124 11 117 0 141 11 121 1 34 4 113 1 35 4 117 1 227] 
#[1 0 34 0 4 0 34 0 6 11 125 0 72 0 34 0 124 0 34 1 227] 
#[1 11 129 0 61 11 133 0 63 6 81 0 72 11 137 0 79 11 141 0 89 11 145 0 91 11 149 0 92 11 153 0 115 11 173 1 168 11 161 1 208 11 165 1 211 11 169 1 212 11 173 1 218 11 177 1 219] 
#[1 0 189 0 124 11 181 0 141] 
#[1 3 25 0 4 11 185 0 23 11 189 0 26 11 193 1 63 11 197 1 227] 
#[1 11 201 0 2 11 205 0 26 0 189 0 124 11 209 0 141] 
#[1 4 137 0 2 3 101 0 4 4 141 0 22 3 105 0 26 0 189 0 124 3 129 0 128 11 213 0 141 3 113 1 52 3 117 1 53 3 121 1 54 3 125 1 55 3 129 1 59 3 117 1 60 3 129 1 69 3 141 1 227] 
#[1 0 189 0 124 11 217 0 141] 
#[1 0 189 0 124 11 221 0 141 11 225 1 174] 
#[1 0 189 0 124 11 229 0 141] 
#[0 3 150 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 166 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 170 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 7 213 0 1 11 233 0 73 11 237 1 224] 
#[0 3 174 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 190 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 194 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 198 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 202 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 206 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 218 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 3 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 51 0 1 5 213 0 2 5 217 0 11 1 206 0 61 1 206 0 62 11 241 0 79 5 225 1 100 7 225 1 137 5 229 1 145 7 241 1 224] 
#[1 6 229 0 2 11 245 0 5 6 237 0 6 2 153 0 11 6 241 0 93 6 245 0 101 8 37 0 120 0 189 0 124 6 249 0 125 7 13 0 128 7 17 0 129 8 41 0 141 11 249 0 142 11 249 0 154 11 249 0 155 11 249 0 156 8 49 0 219 8 53 0 220 8 57 0 223 8 57 0 225 7 13 1 69 7 17 1 70 7 21 1 100 7 25 1 120 7 29 1 121 7 33 1 122 7 33 1 134 7 33 1 136 7 33 1 141 7 33 1 142 7 33 1 143 8 65 1 227] 
#[1 2 141 0 2 6 205 0 4 6 209 0 6 11 253 0 7 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 3 205 0 120 12 1 0 121 0 189 0 124 2 185 0 128 2 189 0 129 6 213 0 141 8 73 0 148 3 217 0 216 3 217 0 217 3 217 0 218 8 77 0 221 8 81 0 222 8 85 0 224 8 85 0 225 8 89 0 226 2 185 1 69 2 189 1 70 2 193 1 100 7 73 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 7 69 1 125 7 73 1 126 2 201 1 127 2 205 1 128 7 73 1 129 7 73 1 130 2 213 1 131 2 213 1 133 6 225 1 227] 
#[1 0 103 0 3 0 103 0 5 1 222 0 6 0 103 0 7 1 222 0 8 1 222 0 11 1 226 0 22 8 93 0 23 1 222 0 40 1 222 0 48 0 103 0 121 8 145 0 158] 
#[0 12 5 0 3] 
#[0 12 9 0 3] 
#[1 1 206 0 1 1 206 0 4 1 206 0 6 1 206 0 43 0 63 0 97 0 67 0 98 0 71 0 99 0 75 0 100 1 206 0 109 1 206 0 122 0 79 0 124 8 181 0 141 8 185 1 137 8 189 1 139] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 12 13 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 125 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 12 17 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 21 0 196 12 21 0 197 0 253 1 5 12 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 21 1 14 0 253 1 19 12 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 12 25 0 2 2 153 0 11 12 29 1 100] 
#[1 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 12 33 0 142 12 33 0 154 12 33 0 155 12 33 0 156 7 13 1 69 7 17 1 70] 
#[0 3 242 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 3 246 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[1 6 229 0 2 3 250 0 5 3 250 0 8 2 153 0 11 12 37 0 43 3 250 0 121 12 41 0 122 7 21 1 100 12 45 1 135 12 49 1 136] 
#[0 3 254 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 2 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 6 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 10 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 12 53 0 2] 
#[0 12 57 0 5] 
#[1 4 14 0 5 12 61 0 8 12 65 0 121] 
#[0 4 18 0 5 0 8 0 121] 
#[0 4 22 0 5 0 8 0 121] 
#[0 4 26 0 5 0 8 0 121] 
#[0 4 30 0 5 0 8 0 121] 
#[0 4 34 0 5 0 8 0 121] 
#[0 4 38 0 5 0 8 0 121] 
#[0 4 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 12 69 0 7] 
#[0 4 46 0 7 0 121] 
#[1 12 73 0 7 12 77 0 121] 
#[0 4 50 0 7 0 121] 
#[1 4 54 0 14 12 81 0 74 4 54 0 121 12 85 1 103] 
#[1 12 89 0 14 12 93 0 121] 
#[0 4 58 0 14 0 121] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 6 221 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 6 221 1 129 6 221 1 130 2 213 1 131 2 213 1 133] 
#[1 4 62 0 3 4 62 0 4 4 62 0 5 0 107 0 6 4 62 0 7 4 62 0 8 4 62 0 9 4 62 0 11 4 62 0 12 4 62 0 14 4 62 0 15 4 62 0 18 4 62 0 19 4 62 0 20 4 62 0 21 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 35 4 62 0 37 4 62 0 40 4 62 0 41 4 62 0 43 4 62 0 45 4 62 0 47 4 62 0 48 4 62 0 49 4 62 0 51 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 83 4 62 0 86 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 100 4 62 0 104 4 62 0 121 4 62 0 122 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 134 4 62 0 135 7 129 0 239 4 62 1 228] 
#[1 4 66 0 3 4 66 0 4 4 66 0 5 0 111 0 6 4 66 0 7 4 66 0 8 4 66 0 9 4 66 0 11 4 66 0 12 4 66 0 14 4 66 0 15 4 66 0 18 4 66 0 19 4 66 0 20 4 66 0 21 4 66 0 23 4 66 0 24 4 66 0 25 4 66 0 26 4 66 0 27 4 66 0 35 4 66 0 37 4 66 0 40 4 66 0 41 4 66 0 43 4 66 0 45 4 66 0 47 4 66 0 48 4 66 0 49 4 66 0 51 4 66 0 53 4 66 0 54 4 66 0 64 4 66 0 83 4 66 0 86 4 66 0 97 4 66 0 98 4 66 0 99 4 66 0 100 4 66 0 104 4 66 0 121 4 66 0 122 4 66 0 125 4 66 0 128 4 66 0 129 4 66 0 134 4 66 0 135 7 129 0 239 4 66 1 228] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 12 97 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 12 101 0 2] 
#[0 4 70 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 4 74 0 3 4 74 0 4 4 74 0 5 4 74 0 6 4 74 0 7 4 74 0 8 4 74 0 9 4 74 0 11 4 74 0 12 4 74 0 14 4 74 0 15 4 74 0 18 4 74 0 19 4 74 0 20 4 74 0 21 12 105 0 22 4 74 0 23 4 74 0 24 4 74 0 25 4 74 0 26 4 74 0 27 4 74 0 35 4 74 0 37 4 74 0 40 4 74 0 41 4 74 0 43 4 74 0 45 4 74 0 47 4 74 0 48 4 74 0 49 4 74 0 51 4 74 0 53 4 74 0 54 4 74 0 64 4 74 0 83 4 74 0 86 4 74 0 97 4 74 0 98 4 74 0 99 4 74 0 100 4 74 0 104 4 74 0 121 4 74 0 122 4 74 0 125 4 74 0 128 4 74 0 129 4 74 0 134 4 74 0 135 4 74 1 228] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 12 109 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 7 89 0 2 2 145 0 4 2 149 0 6 2 157 0 84 2 161 0 88 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 12 113 1 109 12 113 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 12 113 1 128 2 213 1 131 2 213 1 133] 
#[1 7 89 0 2 2 145 0 4 2 149 0 6 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 12 117 1 111 12 117 1 112 12 117 1 113 12 117 1 114 12 117 1 115 12 117 1 116 2 237 1 117 2 241 1 118 12 117 1 119 12 117 1 123 12 117 1 124 12 117 1 131 12 117 1 133] 
#[0 12 121 0 6] 
#[1 4 78 0 3 4 78 0 4 4 78 0 5 4 78 0 6 4 78 0 7 4 78 0 8 4 78 0 9 0 115 0 11 4 78 0 12 4 78 0 14 4 78 0 15 4 78 0 18 4 78 0 19 4 78 0 20 4 78 0 21 4 78 0 23 4 78 0 24 4 78 0 25 4 78 0 26 4 78 0 27 4 78 0 35 4 78 0 37 4 78 0 40 4 78 0 41 4 78 0 43 4 78 0 45 4 78 0 47 4 78 0 48 4 78 0 49 4 78 0 51 4 78 0 53 4 78 0 54 4 78 0 64 4 78 0 83 4 78 0 85 4 78 0 86 4 78 0 97 4 78 0 98 4 78 0 99 4 78 0 100 4 78 0 104 4 78 0 121 4 78 0 122 4 78 0 125 4 78 0 128 4 78 0 129 4 78 0 134 4 78 0 135 12 125 1 104 4 78 1 228] 
#[1 0 189 0 124 12 129 0 141] 
#[0 4 82 0 8 0 78] 
#[0 4 86 0 5 0 55 0 78 0 121] 
#[1 4 90 0 5 12 133 0 55 4 90 0 121] 
#[1 12 137 0 5 12 141 0 121] 
#[0 4 94 0 5 0 121] 
#[0 4 98 0 5 0 55 0 78 0 121] 
#[0 12 145 0 125 0 128 1 50 1 69] 
#[1 12 149 0 2 12 153 0 26 0 189 0 124 12 157 0 141] 
#[1 4 97 0 4 4 101 0 74 12 161 1 34 4 113 1 35 4 117 1 227] 
#[0 4 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 97 0 4 4 101 0 74 0 189 0 124 12 165 0 141 12 169 1 34 4 113 1 35 4 117 1 227] 
#[0 12 173 0 8] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 12 177 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 12 181 0 2 0 189 0 124 12 185 0 141] 
#[0 12 189 0 2] 
#[0 12 193 0 128 1 59 1 69] 
#[0 12 197 0 8] 
#[0 4 106 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 33 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 12 201 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 157 0 168 12 205 0 169 12 205 0 170 12 205 0 171 1 33 0 174 4 157 0 178 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 161 1 227] 
#[0 11 125 0 72] 
#[1 12 209 0 2 2 153 0 11 0 189 0 124 12 213 0 141 12 217 1 100 12 221 1 136 12 225 1 145] 
#[1 7 213 0 1 12 229 0 61 12 233 0 62 11 237 1 224] 
#[0 4 110 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 4 114 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 4 118 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 1 206 0 1 1 206 0 61 1 206 0 62 12 237 1 137] 
#[0 4 122 0 78] 
#[0 12 241 0 55] 
#[1 12 245 0 5 12 249 0 121] 
#[0 4 126 0 5 0 121] 
#[0 4 130 0 5 0 121] 
#[1 0 189 0 124 12 253 0 141 12 253 1 60] 
#[0 13 1 0 8] 
#[1 3 101 0 4 3 105 0 26 13 5 1 54 13 9 1 55] 
#[0 4 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 3 101 0 4 0 189 0 124 13 13 0 141 13 13 1 53 13 17 1 55 13 13 1 60] 
#[0 4 138 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 21 0 196 12 21 0 197 0 253 1 5 12 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 21 1 14 0 253 1 19 12 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 189 0 124 13 21 0 141] 
#[1 2 154 0 3 2 154 0 5 2 154 0 7 8 93 0 23 2 154 0 121 8 145 0 158] 
#[0 13 25 0 122] 
#[0 13 29 0 5] 
#[1 13 33 0 5 13 37 0 121] 
#[0 4 142 0 5 0 121] 
#[0 4 146 0 5 0 121] 
#[1 8 189 0 97 8 189 0 98 8 189 0 99 8 189 0 100 0 189 0 124 8 181 0 141 8 189 1 139] 
#[0 4 150 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 3 149 0 4 3 153 0 6 13 41 0 7 3 205 0 120 8 209 0 121 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 13 45 0 224 13 45 0 225 13 49 0 226 6 225 1 227] 
#[1 13 53 0 7 13 57 0 121] 
#[0 4 154 0 7 0 121] 
#[0 4 158 0 7 0 121] 
#[0 13 61 0 7] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 65 0 196 13 65 0 197 0 253 1 5 13 65 1 8 1 125 1 9 1 129 1 10 1 133 1 13 13 65 1 14 0 253 1 19 13 65 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 4 162 0 8 0 121] 
#[0 4 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 3 157 0 141 13 69 0 212 3 169 0 216 3 169 0 217 3 169 0 218 13 69 1 151 13 69 1 152 3 189 1 227] 
#[0 4 170 0 8 0 121] 
#[1 12 41 0 122 13 73 1 135] 
#[1 12 41 0 122 13 77 1 135] 
#[1 3 25 0 4 3 29 0 26 13 81 1 62 13 85 1 63] 
#[1 2 190 0 2 0 119 0 3 2 190 0 6 0 119 0 7 2 190 0 9 2 190 0 10 2 190 0 11 2 190 0 12 2 190 0 13 2 190 0 14 2 190 0 15 2 190 0 16 2 190 0 17 2 190 0 18 2 190 0 20 2 190 0 21 2 190 0 22 0 119 0 23 2 190 0 24 2 190 0 25 2 190 0 26 2 190 0 27 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 47 2 190 0 48 2 190 0 49 2 190 0 50 2 190 0 51 2 190 0 53 2 190 0 54 2 190 0 83 2 190 0 86 0 119 0 121 2 190 0 132 2 190 0 133 2 190 1 226 2 190 1 227] 
#[1 0 97 0 2 0 23 0 4 3 201 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 13 89 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 193 0 196 8 193 0 197 8 141 0 216 8 141 0 217 8 141 0 218 0 253 1 5 8 193 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 193 1 14 0 253 1 19 8 193 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 23 0 4 3 201 0 6 13 93 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 8 129 0 120 8 209 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 3 209 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 8 213 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 217 0 196 8 217 0 197 3 217 0 216 3 217 0 217 3 217 0 218 13 45 0 224 13 45 0 225 13 49 0 226 0 253 1 5 8 217 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 217 1 14 0 253 1 19 8 217 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 3 253 1 227] 
#[1 4 174 0 3 4 174 0 7 12 41 0 122 13 97 1 135] 
#[0 4 178 0 3 0 7] 
#[0 4 182 0 3 0 5 0 7 0 121] 
#[0 4 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 4 190 0 3 0 5 0 7 0 121] 
#[0 4 194 0 19] 
#[1 4 198 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 13 105 0 224 13 105 0 225 13 101 0 226 13 101 1 2 13 105 1 3 6 225 1 227] 
#[0 4 202 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 227] 
#[0 4 206 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 227] 
#[0 4 210 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 227] 
#[0 4 214 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 227] 
#[1 13 109 0 43 12 41 0 122 13 113 1 135] 
#[1 7 213 0 1 3 149 0 4 3 153 0 6 4 218 0 43 13 133 0 97 13 133 0 98 13 133 0 99 13 133 0 100 13 117 0 109 4 218 0 122 0 189 0 124 13 129 0 141 13 129 0 216 13 129 0 217 13 129 0 218 13 129 1 138 13 133 1 139 11 237 1 224] 
#[1 0 189 0 124 13 137 0 141] 
#[0 4 222 0 5 0 7 0 121] 
#[0 4 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 13 141 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 5 0 120 8 209 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 13 145 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 149 0 196 13 149 0 197 0 253 1 5 13 149 1 8 1 125 1 9 1 129 1 10 1 133 1 13 13 149 1 14 0 253 1 19 13 149 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 4 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 4 234 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 120 0 121 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 4 238 0 7 0 121] 
#[0 4 242 0 7 0 121] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 10 217 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 10 217 1 129 10 217 1 130 2 213 1 131 2 213 1 133] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 13 153 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 13 157 0 2 0 189 0 124 13 161 0 141] 
#[0 13 165 0 2] 
#[1 0 97 0 2 0 123 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 173 0 196 13 173 0 197 0 253 1 5 13 173 1 8 1 125 1 9 1 129 1 10 13 173 1 12 1 133 1 13 13 173 1 14 13 177 1 15 0 253 1 19 13 173 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 4 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 226 1 227 1 228] 
#[0 4 250 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 9 13 0 124 9 17 0 126 13 181 1 40] 
#[1 13 185 0 26 9 13 0 124 9 17 0 126 13 189 1 40] 
#[1 9 13 0 124 9 17 0 126 13 193 1 40] 
#[1 9 13 0 124 9 17 0 126 13 197 1 40] 
#[1 13 201 0 4 8 249 0 26 8 253 0 56 9 1 0 80 9 5 0 103 9 13 0 124 9 17 0 126 13 205 1 16 13 205 1 20 13 205 1 25 13 205 1 29 13 209 1 39 9 53 1 40 13 205 1 146 13 205 1 147 9 217 1 227] 
#[0 4 254 0 2 0 8 0 23] 
#[0 5 2 0 2 0 8 0 23] 
#[0 5 6 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 5 10 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 5 14 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 5 18 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 13 213 0 5] 
#[1 5 22 0 5 8 245 0 8 8 249 0 26 8 253 0 56 9 1 0 80 9 5 0 103 9 9 0 104 9 13 0 124 9 17 0 126 13 217 1 16 13 217 1 20 13 217 1 25 13 217 1 29 13 217 1 38 9 49 1 39 9 53 1 40 13 217 1 41 13 217 1 146 13 217 1 147 9 69 1 227] 
#[0 5 26 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 221 0 8] 
#[1 13 225 0 2 5 30 0 8 8 93 0 23 13 229 0 158] 
#[0 5 34 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 5 38 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 5 42 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[1 1 206 0 1 0 127 0 6 1 206 0 64 13 233 0 80 1 206 0 97 1 206 0 98 1 206 0 99 1 206 0 100 13 237 0 103 1 206 0 104 0 131 0 125 0 135 0 128 0 139 0 129 13 241 0 142 13 241 0 154 13 241 0 155 13 241 0 156 7 13 1 69 7 17 1 70 13 245 1 137 13 249 1 142 13 253 1 160 14 1 1 162 14 1 1 163 14 1 1 165 14 1 1 166 14 17 1 167 1 206 1 227] 
#[1 5 46 0 4 9 133 1 227] 
#[0 5 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 14 21 0 5 8 245 0 8 8 249 0 26 8 253 0 56 9 1 0 80 9 5 0 103 9 9 0 104 9 13 0 124 9 17 0 126 9 45 1 16 9 45 1 20 9 45 1 25 9 45 1 29 14 25 1 36 9 41 1 37 9 45 1 38 9 49 1 39 9 53 1 40 9 45 1 41 9 45 1 146 9 45 1 147 9 69 1 227] 
#[1 0 189 0 124 2 181 0 141 14 33 1 116 2 237 1 117 2 241 1 118 14 33 1 158] 
#[1 0 189 0 124 2 181 0 141 14 45 1 116 2 237 1 117 2 241 1 118 14 41 1 155 14 45 1 156] 
#[1 5 54 0 4 9 89 0 85 14 49 1 159] 
#[0 5 58 0 4] 
#[0 14 53 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 14 57 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 14 61 0 2] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 14 65 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 14 69 0 3] 
#[0 5 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 143 0 2 5 70 0 3 5 70 0 4 5 70 0 5 0 143 0 6 5 70 0 7 5 70 0 8 5 70 0 9 5 70 0 10 5 70 0 11 5 70 0 12 5 70 0 13 5 70 0 14 5 70 0 15 5 70 0 16 5 70 0 17 5 70 0 18 5 70 0 20 5 70 0 21 0 143 0 22 5 70 0 23 5 70 0 24 5 70 0 25 5 70 0 26 5 70 0 27 5 70 0 28 5 70 0 29 5 70 0 30 5 70 0 31 5 70 0 32 5 70 0 33 5 70 0 34 5 70 0 35 5 70 0 36 5 70 0 37 5 70 0 38 5 70 0 40 5 70 0 41 5 70 0 42 5 70 0 43 0 143 0 44 5 70 0 45 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 50 5 70 0 51 5 70 0 53 5 70 0 54 5 70 0 83 5 70 0 86 5 70 0 96 5 70 0 121 5 70 0 122 0 143 0 132 0 143 0 133 5 70 0 134 5 70 0 135 5 70 1 226 0 143 1 227 5 70 1 228] 
#[0 10 41 0 52] 
#[0 5 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 73 0 196 14 73 0 197 0 253 1 5 14 73 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 73 1 14 0 253 1 19 14 73 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 14 77 0 3 14 81 0 121] 
#[0 5 78 0 3 0 121] 
#[1 14 85 0 7 5 193 0 121] 
#[0 5 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 14 89 1 105 14 93 1 106 14 93 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 14 93 1 129 14 93 1 130 2 213 1 131 2 213 1 133] 
#[0 14 101 0 2] 
#[0 5 86 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[1 1 94 0 4 1 94 0 136 1 94 0 138 14 105 1 96] 
#[0 5 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 109 0 196 14 109 0 197 0 253 1 5 14 109 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 109 1 14 0 253 1 19 14 109 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 4 254 0 2 0 98 0 5 0 98 0 23 0 98 0 121] 
#[1 5 94 0 5 8 93 0 23 5 94 0 121 14 113 0 158] 
#[1 14 117 0 5 14 121 0 121] 
#[0 5 98 0 5 0 121] 
#[0 14 125 0 122] 
#[0 5 102 0 5 0 121] 
#[0 5 106 0 5 0 121] 
#[0 13 225 0 2] 
#[1 8 33 0 6 13 233 0 80 13 237 0 103 6 249 0 125 7 13 0 128 7 17 0 129 13 241 0 142 13 241 0 154 13 241 0 155 13 241 0 156 7 13 1 69 7 17 1 70] 
#[1 5 193 0 121 14 129 0 134 14 133 0 135 14 137 0 161 14 141 0 162] 
#[1 14 145 0 7 5 193 0 121] 
#[0 5 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 149 0 196 14 149 0 197 14 149 0 199 0 253 1 5 14 149 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 149 1 14 0 253 1 19 14 149 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 5 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 153 0 196 14 153 0 197 14 153 0 199 0 253 1 5 14 153 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 153 1 14 0 253 1 19 14 153 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 14 157 0 125 14 161 0 126] 
#[0 5 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 14 165 0 7 5 193 0 121] 
#[0 5 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 5 158 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 5 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 14 169 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 14 169 1 129 14 169 1 130 2 213 1 131 2 213 1 133] 
#[0 5 166 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[0 5 170 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 5 174 0 3 5 174 0 5 5 174 0 7 5 174 0 8 5 101 0 9 5 174 0 11 5 174 0 12 5 174 0 14 5 174 0 15 5 174 0 18 5 174 0 20 5 174 0 21 5 174 0 24 5 174 0 25 5 101 0 26 5 174 0 35 5 174 0 37 5 174 0 40 5 174 0 41 5 174 0 43 5 174 0 45 5 101 0 47 5 174 0 48 5 174 0 49 5 174 0 51 5 174 0 53 5 174 0 54 5 174 0 83 5 174 0 86 5 174 0 121 5 174 0 122 5 174 0 134 5 174 0 135 5 101 0 183 5 174 1 228] 
#[1 5 178 0 3 5 178 0 5 5 178 0 7 5 178 0 8 5 101 0 9 5 178 0 11 5 178 0 12 5 178 0 14 5 178 0 15 5 178 0 18 5 178 0 20 5 178 0 21 5 178 0 24 5 178 0 25 5 101 0 26 5 178 0 35 5 178 0 37 5 178 0 40 5 178 0 41 5 178 0 43 5 178 0 45 5 101 0 47 5 178 0 48 5 178 0 49 5 178 0 51 5 178 0 53 5 178 0 54 5 178 0 83 5 178 0 86 5 178 0 121 5 178 0 122 5 178 0 134 5 178 0 135 5 101 0 183 5 178 1 228] 
#[1 5 182 0 3 5 182 0 5 5 182 0 7 5 182 0 8 5 182 0 11 5 182 0 12 5 182 0 14 5 182 0 15 5 182 0 18 5 182 0 20 5 182 0 21 5 182 0 24 5 182 0 25 5 105 0 35 5 109 0 37 5 182 0 40 5 182 0 41 5 182 0 43 5 182 0 45 5 182 0 48 5 182 0 49 5 182 0 51 5 182 0 53 5 182 0 54 5 182 0 83 5 182 0 86 5 182 0 121 5 182 0 122 5 182 0 134 5 182 0 135 5 182 1 228] 
#[1 5 186 0 3 5 186 0 5 5 186 0 7 5 186 0 8 5 186 0 11 5 186 0 12 5 186 0 14 5 186 0 15 5 186 0 18 5 186 0 20 5 186 0 21 5 186 0 24 5 186 0 25 5 105 0 35 5 109 0 37 5 186 0 40 5 186 0 41 5 186 0 43 5 186 0 45 5 186 0 48 5 186 0 49 5 186 0 51 5 186 0 53 5 186 0 54 5 186 0 83 5 186 0 86 5 186 0 121 5 186 0 122 5 186 0 134 5 186 0 135 5 186 1 228] 
#[1 5 190 0 3 5 190 0 5 5 190 0 7 5 190 0 8 5 190 0 11 5 190 0 12 5 190 0 14 5 190 0 15 5 190 0 18 5 190 0 20 5 190 0 21 5 190 0 24 5 190 0 25 5 105 0 35 5 109 0 37 5 190 0 40 5 190 0 41 5 190 0 43 5 190 0 45 5 190 0 48 5 190 0 49 5 190 0 51 5 190 0 53 5 190 0 54 5 190 0 83 5 190 0 86 5 190 0 121 5 190 0 122 5 190 0 134 5 190 0 135 5 190 1 228] 
#[1 5 194 0 3 5 194 0 5 5 194 0 7 5 194 0 8 5 194 0 11 5 113 0 12 5 194 0 14 5 117 0 15 5 121 0 18 5 194 0 20 5 194 0 21 5 194 0 24 5 194 0 25 5 194 0 40 5 194 0 41 5 194 0 43 5 194 0 45 5 194 0 48 5 194 0 49 5 194 0 51 5 194 0 53 5 194 0 54 5 194 0 83 5 194 0 86 5 194 0 121 5 194 0 122 5 194 0 134 5 194 0 135 5 194 1 228] 
#[1 5 198 0 3 5 198 0 5 5 198 0 7 5 198 0 8 5 198 0 11 5 113 0 12 5 198 0 14 5 117 0 15 5 121 0 18 5 198 0 20 5 198 0 21 5 198 0 24 5 198 0 25 5 198 0 40 5 198 0 41 5 198 0 43 5 198 0 45 5 198 0 48 5 198 0 49 5 198 0 51 5 198 0 53 5 198 0 54 5 198 0 83 5 198 0 86 5 198 0 121 5 198 0 122 5 198 0 134 5 198 0 135 5 198 1 228] 
#[1 5 202 0 3 5 202 0 5 5 202 0 7 5 202 0 8 5 202 0 11 5 113 0 12 5 202 0 14 5 117 0 15 5 121 0 18 5 202 0 20 5 202 0 21 5 202 0 24 5 202 0 25 5 202 0 40 5 202 0 41 5 202 0 43 5 202 0 45 5 202 0 48 5 202 0 49 5 202 0 51 5 202 0 53 5 202 0 54 5 202 0 83 5 202 0 86 5 202 0 121 5 202 0 122 5 202 0 134 5 202 0 135 5 202 1 228] 
#[1 5 206 0 3 5 206 0 5 5 206 0 7 5 206 0 8 5 206 0 11 5 113 0 12 5 206 0 14 5 117 0 15 5 121 0 18 5 206 0 20 5 206 0 21 5 206 0 24 5 206 0 25 5 206 0 40 5 206 0 41 5 206 0 43 5 206 0 45 5 206 0 48 5 206 0 49 5 206 0 51 5 206 0 53 5 206 0 54 5 206 0 83 5 206 0 86 5 206 0 121 5 206 0 122 5 206 0 134 5 206 0 135 5 206 1 228] 
#[1 5 210 0 3 5 210 0 5 5 210 0 7 5 210 0 8 5 210 0 11 5 113 0 12 5 210 0 14 5 117 0 15 5 121 0 18 5 210 0 20 5 210 0 21 5 210 0 24 5 210 0 25 5 210 0 40 5 210 0 41 5 210 0 43 5 210 0 45 5 210 0 48 5 210 0 49 5 210 0 51 5 210 0 53 5 210 0 54 5 210 0 83 5 210 0 86 5 210 0 121 5 210 0 122 5 210 0 134 5 210 0 135 5 210 1 228] 
#[1 5 214 0 3 5 214 0 5 5 214 0 7 5 214 0 8 5 214 0 11 5 113 0 12 5 214 0 14 5 117 0 15 5 121 0 18 5 214 0 20 5 214 0 21 5 214 0 24 5 214 0 25 5 214 0 40 5 214 0 41 5 214 0 43 5 214 0 45 5 214 0 48 5 214 0 49 5 214 0 51 5 214 0 53 5 214 0 54 5 214 0 83 5 214 0 86 5 214 0 121 5 214 0 122 5 214 0 134 5 214 0 135 5 214 1 228] 
#[1 5 218 0 3 5 218 0 5 5 218 0 7 5 218 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 218 0 24 5 218 0 25 5 218 0 40 5 218 0 41 5 218 0 43 5 218 0 45 5 218 0 48 5 218 0 49 5 218 0 51 5 218 0 53 5 218 0 54 5 141 0 83 5 145 0 86 5 218 0 121 5 218 0 122 5 218 0 134 5 218 0 135 5 218 1 228] 
#[1 5 222 0 3 5 222 0 5 5 222 0 7 5 222 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 222 0 24 5 222 0 25 5 222 0 40 5 222 0 41 5 222 0 43 5 222 0 45 5 222 0 48 5 222 0 49 5 222 0 51 5 222 0 53 5 222 0 54 5 141 0 83 5 145 0 86 5 222 0 121 5 222 0 122 5 222 0 134 5 222 0 135 5 222 1 228] 
#[1 5 226 0 3 5 226 0 5 5 226 0 7 5 226 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 226 0 24 5 226 0 25 5 226 0 40 5 226 0 41 5 226 0 43 5 226 0 45 5 226 0 48 5 226 0 49 5 226 0 51 5 226 0 53 5 226 0 54 5 141 0 83 5 145 0 86 5 226 0 121 5 226 0 122 5 226 0 134 5 226 0 135 5 226 1 228] 
#[1 5 230 0 3 5 230 0 5 5 230 0 7 5 230 0 8 5 125 0 11 5 129 0 14 5 133 0 20 5 137 0 21 5 230 0 24 5 230 0 25 5 230 0 40 5 230 0 41 5 230 0 43 5 230 0 45 5 230 0 48 5 230 0 49 5 230 0 51 5 230 0 53 5 230 0 54 5 141 0 83 5 145 0 86 5 230 0 121 5 230 0 122 5 230 0 134 5 230 0 135 5 230 1 228] 
#[1 5 234 0 3 5 234 0 5 5 234 0 7 5 234 0 8 5 149 0 24 5 153 0 25 5 234 0 40 5 234 0 41 5 234 0 43 5 234 0 45 5 234 0 48 5 234 0 49 5 234 0 51 5 157 0 53 5 161 0 54 5 234 0 121 5 234 0 122 5 234 0 134 5 234 0 135 5 234 1 228] 
#[1 5 238 0 3 5 238 0 5 5 238 0 7 5 238 0 8 5 165 0 40 5 238 0 41 5 238 0 43 5 238 0 45 5 238 0 48 5 238 0 49 5 238 0 51 5 238 0 121 5 238 0 122 5 238 0 134 5 238 0 135 5 238 1 228] 
#[1 5 242 0 3 5 242 0 5 5 242 0 7 5 242 0 8 5 242 0 41 5 242 0 43 5 242 0 45 5 242 0 48 5 242 0 49 5 169 0 51 5 242 0 121 5 242 0 122 5 242 0 134 5 242 0 135 5 242 1 228] 
#[1 5 246 0 3 5 246 0 5 5 246 0 7 5 246 0 8 5 246 0 41 5 246 0 43 5 173 0 48 5 246 0 49 5 246 0 121 5 246 0 122 5 246 0 134 5 246 0 135 5 246 1 228] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 5 173 0 48 0 242 0 49 0 242 0 121 0 242 0 122 0 242 0 134 0 242 0 135 0 242 1 228] 
#[1 5 250 0 3 5 250 0 5 5 250 0 7 5 250 0 8 5 177 0 41 5 250 0 43 5 250 0 49 5 250 0 121 5 250 0 122 5 250 0 134 5 250 0 135 5 250 1 228] 
#[1 5 254 0 3 5 254 0 5 5 254 0 7 5 254 0 8 5 254 0 43 5 254 0 45 5 173 0 48 5 254 0 121 5 254 0 122 5 254 0 134 5 254 0 135 5 254 1 228] 
#[0 14 173 0 122] 
#[0 6 2 0 3 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 14 181 1 6 14 185 1 7 0 6 1 227] 
#[0 6 10 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 6 14 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 6 18 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[1 6 22 0 3 6 22 0 5 6 22 0 7 6 22 0 8 6 22 0 11 5 113 0 12 6 22 0 14 5 117 0 15 5 121 0 18 6 22 0 20 6 22 0 21 6 22 0 24 6 22 0 25 6 22 0 40 6 22 0 41 6 22 0 43 6 22 0 45 6 22 0 48 6 22 0 49 6 22 0 51 6 22 0 53 6 22 0 54 6 22 0 83 6 22 0 86 6 22 0 121 6 22 0 122 6 22 0 134 6 22 0 135 6 22 1 228] 
#[1 0 22 0 136 14 189 1 75 14 193 1 94] 
#[1 6 26 0 4 0 147 0 136 14 197 0 138 14 205 1 72 14 205 1 73 1 197 1 74 14 205 1 92 1 205 1 94 14 209 1 99] 
#[1 6 34 0 4 6 34 0 9 6 34 0 14 14 213 0 22 14 217 0 122 6 34 0 137] 
#[1 6 26 0 4 14 221 0 9 0 122 0 14 14 225 0 137 14 253 1 78 14 233 1 82 14 237 1 83 14 241 1 84 14 237 1 85 14 237 1 86 14 253 1 87 15 1 1 95 15 5 1 99] 
#[0 6 38 0 4 0 9 0 14 0 137] 
#[0 6 42 0 4 0 9 0 14 0 137] 
#[0 6 46 0 137] 
#[1 15 9 0 137 15 13 1 80] 
#[0 15 17 0 14] 
#[0 15 21 0 3] 
#[1 1 222 0 6 1 222 0 11 0 151 0 14 1 226 0 22 1 222 0 40 1 222 0 48 12 81 0 74 4 54 0 121 12 85 1 103] 
#[0 15 25 0 14] 
#[1 5 213 0 2 2 153 0 11 5 225 1 100 15 29 1 145] 
#[0 15 33 0 4] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 15 37 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 6 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 15 41 0 8] 
#[0 6 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 15 45 0 8] 
#[0 15 49 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 53 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 57 0 196 15 57 0 197 15 57 0 199 0 253 1 5 15 57 1 8 1 125 1 9 1 129 1 10 1 133 1 13 15 57 1 14 0 253 1 19 15 57 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 15 61 0 141 15 65 0 214 6 37 0 215 15 69 0 216 15 69 0 217 15 69 0 218 15 73 0 236 6 45 1 227] 
#[1 0 198 0 8 0 198 0 9 5 73 0 10 0 198 0 11 0 198 0 12 5 73 0 13 0 198 0 14 0 198 0 15 5 73 0 16 5 73 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 73 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 5 73 0 28 5 73 0 29 5 73 0 30 5 73 0 31 5 73 0 32 5 73 0 33 5 73 0 34 0 198 0 35 5 53 0 36 0 198 0 37 5 57 0 38 0 198 0 40 0 198 0 41 5 73 0 42 0 198 0 43 0 198 0 45 5 73 0 46 0 198 0 47 0 198 0 48 0 198 0 49 5 73 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 155 0 83 0 198 0 86 15 81 0 96 0 198 0 121 5 73 0 198 5 73 1 226 5 81 1 227] 
#[1 15 85 0 8 5 193 0 121] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 89 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 93 0 196 15 93 0 197 15 93 0 199 0 253 1 5 15 93 1 8 1 125 1 9 1 129 1 10 1 133 1 13 15 93 1 14 0 253 1 19 15 93 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 15 97 0 141 3 161 0 211 3 165 0 212 15 101 0 216 15 101 0 217 15 101 0 218 15 105 0 236 3 165 1 151 3 165 1 152 3 189 1 227] 
#[1 15 109 0 83 15 113 0 96] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 4 33 0 56 0 137 0 61 15 125 0 63 1 173 0 75 0 149 0 79 0 153 0 82 15 125 0 89 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 15 117 0 115 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 15 121 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 15 121 0 178 15 125 0 210 15 129 0 235 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 161 1 227] 
#[1 15 133 0 3 5 193 0 121] 
#[0 6 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 15 137 0 8 5 193 0 121] 
#[1 15 141 0 3 5 193 0 121] 
#[0 6 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 15 145 0 2 1 213 0 4 15 149 0 205] 
#[1 1 213 0 4 15 153 0 205] 
#[1 6 70 0 1 6 70 0 2 6 70 0 4 6 70 0 5 6 70 0 6 6 70 0 8 6 70 0 35 6 70 0 36 6 70 0 37 6 70 0 38 6 70 0 39 6 70 0 52 6 70 0 56 6 70 0 57 6 70 0 58 6 70 0 59 6 70 0 61 6 70 0 62 6 70 0 63 6 70 0 65 6 70 0 66 6 70 0 67 6 70 0 68 6 70 0 69 6 70 0 70 6 70 0 71 6 70 0 72 6 70 0 73 6 70 0 75 11 57 0 76 6 70 0 77 6 70 0 79 6 70 0 81 6 70 0 82 6 70 0 87 6 70 0 89 6 70 0 92 6 70 0 93 6 70 0 94 6 70 0 102 6 70 0 106 6 70 0 107 6 70 0 109 6 70 0 110 6 70 0 111 6 70 0 112 6 70 0 113 6 70 0 114 6 70 0 115 6 70 0 116 6 70 0 117 6 70 0 118 6 70 0 119 6 70 0 124 6 70 0 126 6 70 0 128 6 70 0 129 6 70 0 130 6 70 0 132 6 70 0 133 6 70 0 136 15 157 0 252 6 70 1 227 6 70 1 228] 
#[0 6 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 78 0 8 0 121] 
#[0 6 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 6 29 0 141 15 161 0 215 6 41 0 216 6 41 0 217 6 41 0 218 6 45 1 227] 
#[0 6 86 0 8 0 121] 
#[1 12 41 0 122 15 165 1 135] 
#[1 12 41 0 122 15 169 1 135] 
#[0 6 90 0 8 0 121] 
#[0 6 94 0 8 0 121] 
#[1 15 173 0 3 5 193 0 121] 
#[1 15 177 0 3 5 193 0 121] 
#[0 6 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 97 0 4 4 101 0 74 15 181 1 34 4 113 1 35 4 117 1 227] 
#[1 4 102 0 1 0 159 0 2 4 102 0 4 4 102 0 5 0 159 0 6 0 159 0 8 2 234 0 9 2 234 0 10 2 234 0 11 2 234 0 12 2 234 0 13 2 234 0 14 2 234 0 15 2 234 0 16 2 234 0 17 2 234 0 18 2 234 0 20 2 234 0 21 2 234 0 22 2 234 0 23 2 234 0 24 2 234 0 25 2 234 0 26 2 234 0 27 2 234 0 28 2 234 0 29 2 234 0 30 2 234 0 31 2 234 0 32 2 234 0 33 2 234 0 34 0 159 0 35 0 159 0 36 0 159 0 37 0 159 0 38 4 102 0 39 2 234 0 40 2 234 0 41 2 234 0 42 2 234 0 43 2 234 0 44 2 234 0 45 2 234 0 46 2 234 0 47 2 234 0 48 2 234 0 49 2 234 0 50 2 234 0 51 4 102 0 52 2 234 0 53 2 234 0 54 4 102 0 56 4 102 0 57 4 102 0 58 4 102 0 61 4 102 0 62 4 102 0 63 4 102 0 65 4 102 0 66 4 102 0 67 4 102 0 69 4 102 0 70 4 102 0 72 4 102 0 73 4 102 0 75 4 102 0 77 4 102 0 79 4 102 0 81 4 102 0 82 2 234 0 83 2 234 0 86 4 102 0 87 4 102 0 89 4 102 0 92 4 102 0 93 4 102 0 94 4 102 0 102 4 102 0 106 4 102 0 107 4 102 0 109 4 102 0 110 4 102 0 111 4 102 0 112 4 102 0 113 4 102 0 114 4 102 0 115 4 102 0 116 4 102 0 117 4 102 0 118 4 102 0 119 2 234 0 121 4 102 0 124 4 102 0 126 4 102 0 128 4 102 0 129 4 102 0 130 0 159 0 132 0 159 0 133 4 102 0 136 2 234 1 226 0 159 1 227 4 102 1 228] 
#[1 0 189 0 124 15 185 0 141] 
#[1 0 189 0 124 15 189 0 141] 
#[1 11 125 0 72 0 189 0 124 15 193 0 141 15 197 1 209 15 201 1 210] 
#[1 0 189 0 124 15 205 0 141] 
#[1 0 189 0 124 15 193 0 141 15 209 1 209 15 201 1 210] 
#[0 15 213 0 128 1 69] 
#[1 0 189 0 124 11 221 0 141 15 217 1 174] 
#[1 0 189 0 124 15 193 0 141 15 221 1 209 15 201 1 210] 
#[0 6 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 15 225 0 4] 
#[1 0 189 0 124 15 229 0 141] 
#[1 7 201 0 78 15 233 1 56] 
#[1 15 237 0 8 7 201 0 78 15 241 1 56] 
#[0 15 245 0 113] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 15 249 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 15 253 0 2 0 189 0 124 16 1 0 141] 
#[0 16 5 0 2] 
#[1 16 9 0 23 2 98 0 78 2 98 0 121] 
#[1 2 145 0 4 2 153 0 11 16 13 0 74 16 17 1 100 16 21 1 119 16 25 1 154] 
#[0 6 130 0 4 0 22] 
#[1 16 29 0 4 16 33 0 22] 
#[1 2 153 0 11 16 37 0 23 16 41 1 100] 
#[1 3 37 0 61 3 41 0 62 6 73 0 63 16 45 0 67 16 49 0 68 6 81 0 72 3 49 0 79 16 53 0 82 6 97 0 87 0 65 0 89 6 101 0 92 6 105 0 113 2 5 0 115 16 57 0 209 0 65 0 210 16 61 0 213 16 65 1 4 16 69 1 18 16 73 1 32 16 77 1 51 16 81 1 144 16 85 1 153 16 89 1 168 16 93 1 173 16 97 1 179 16 101 1 207 16 105 1 227] 
#[0 6 134 0 1 0 4 0 6 0 43 0 61 0 62 0 64 0 73 0 97 0 98 0 99 0 100 0 104 0 109 0 122 0 124 0 125 0 128 0 129 1 227] 
#[1 12 209 0 2 2 153 0 11 0 189 0 124 16 109 0 141 12 217 1 100 12 221 1 136 16 113 1 145] 
#[1 0 163 0 3 0 163 0 5 3 238 0 6 0 163 0 7 3 238 0 8 4 138 0 23 3 238 0 40 3 238 0 48 0 163 0 121] 
#[1 6 229 0 2 3 250 0 5 3 250 0 8 2 153 0 11 12 37 0 43 3 250 0 121 16 117 0 122 7 21 1 100 12 45 1 135 12 49 1 136] 
#[1 0 167 0 3 0 167 0 5 4 42 0 6 0 167 0 7 4 42 0 8 4 150 0 23 4 42 0 40 4 42 0 48 0 167 0 121] 
#[1 2 194 0 4 2 194 0 6 0 171 0 7 2 194 0 120 2 194 0 121 2 194 0 124 2 194 1 227] 
#[0 16 121 0 19] 
#[0 6 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 16 125 0 3] 
#[1 0 126 0 2 0 126 0 6 0 126 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 16 129 0 122 0 126 0 132 0 126 0 133 0 126 1 226 0 126 1 227] 
#[0 16 133 0 7] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 16 137 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 16 141 0 2] 
#[1 6 142 0 5 6 142 0 8 16 145 0 43 6 142 0 121 12 41 0 122 16 149 1 135] 
#[1 6 229 0 2 6 146 0 5 6 146 0 8 2 153 0 11 6 146 0 121 12 41 0 122 7 21 1 100 16 153 1 135 16 157 1 136] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 16 161 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 16 161 1 129 16 161 1 130 2 213 1 131 2 213 1 133] 
#[0 6 150 0 5 0 8 0 121] 
#[0 6 154 0 5 0 8 0 121] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 16 165 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 6 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 125 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 227 1 228] 
#[1 6 229 0 2 6 162 0 5 6 237 0 6 2 153 0 11 6 241 0 93 6 245 0 101 6 249 0 125 7 13 0 128 7 17 0 129 7 1 0 142 7 1 0 154 7 1 0 155 7 1 0 156 7 13 1 69 7 17 1 70 7 21 1 100 16 169 1 122 16 169 1 134 16 169 1 136 16 169 1 141 16 169 1 142 16 169 1 143] 
#[1 6 229 0 2 6 166 0 5 6 237 0 6 2 153 0 11 6 241 0 93 6 245 0 101 6 249 0 125 7 13 0 128 7 17 0 129 7 1 0 142 7 1 0 154 7 1 0 155 7 1 0 156 7 13 1 69 7 17 1 70 7 21 1 100 16 173 1 122 16 173 1 134 16 173 1 136 16 173 1 141 16 173 1 142 16 173 1 143] 
#[0 6 170 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 6 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 16 177 0 7 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 16 181 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 16 181 1 126 2 201 1 127 2 205 1 128 16 181 1 129 16 181 1 130 2 213 1 131 2 213 1 133] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 16 185 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 16 185 1 129 16 185 1 130 2 213 1 131 2 213 1 133] 
#[0 6 178 0 14 0 121] 
#[0 6 182 0 2 0 4 0 23 0 74 1 227] 
#[1 0 189 0 124 7 77 0 141 16 189 1 102] 
#[0 16 193 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 16 197 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 0 189 0 124 16 201 0 141] 
#[0 16 205 0 3] 
#[1 6 186 0 3 6 186 0 4 6 186 0 5 6 186 0 6 6 186 0 7 6 186 0 8 6 186 0 9 6 186 0 11 6 186 0 12 6 186 0 14 6 186 0 15 6 186 0 18 6 186 0 19 6 186 0 20 6 186 0 21 6 186 0 23 6 186 0 24 6 186 0 25 6 186 0 26 6 186 0 27 6 186 0 35 6 186 0 37 0 175 0 40 6 186 0 41 6 186 0 43 6 186 0 45 6 186 0 47 6 186 0 48 6 186 0 49 6 186 0 51 6 186 0 53 6 186 0 54 6 186 0 64 6 186 0 83 6 186 0 86 6 186 0 97 6 186 0 98 6 186 0 99 6 186 0 100 6 186 0 104 6 186 0 121 6 186 0 122 6 186 0 125 6 186 0 128 6 186 0 129 6 186 0 134 6 186 0 135 6 186 1 228] 
#[1 6 190 0 3 6 190 0 4 6 190 0 5 0 179 0 6 6 190 0 7 6 190 0 8 6 190 0 9 6 190 0 11 6 190 0 12 6 190 0 14 6 190 0 15 6 190 0 18 6 190 0 19 6 190 0 20 6 190 0 21 6 190 0 23 6 190 0 24 6 190 0 25 6 190 0 26 6 190 0 27 6 190 0 35 6 190 0 37 6 190 0 40 6 190 0 41 6 190 0 43 6 190 0 45 6 190 0 47 6 190 0 48 6 190 0 49 6 190 0 51 6 190 0 53 6 190 0 54 6 190 0 64 6 190 0 83 6 190 0 86 6 190 0 97 6 190 0 98 6 190 0 99 6 190 0 100 6 190 0 104 6 190 0 121 6 190 0 122 6 190 0 125 6 190 0 128 6 190 0 129 6 190 0 134 6 190 0 135 7 129 0 239 6 190 1 228] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 16 209 0 7 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 16 213 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 16 213 1 129 16 213 1 130 2 213 1 131 2 213 1 133] 
#[0 6 194 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 6 198 0 3 6 198 0 4 6 198 0 5 6 198 0 6 6 198 0 7 6 198 0 8 6 198 0 9 6 198 0 11 6 198 0 12 6 198 0 14 6 198 0 15 6 198 0 18 6 198 0 19 6 198 0 20 6 198 0 21 6 202 0 22 6 198 0 23 6 198 0 24 6 198 0 25 6 198 0 26 6 198 0 27 6 198 0 35 6 198 0 37 6 198 0 40 6 198 0 41 6 198 0 43 6 198 0 45 6 198 0 47 6 198 0 48 6 198 0 49 6 198 0 51 6 198 0 53 6 198 0 54 6 198 0 64 6 198 0 83 6 198 0 85 6 198 0 86 6 198 0 97 6 198 0 98 6 198 0 99 6 198 0 100 6 198 0 104 6 198 0 121 6 198 0 122 6 198 0 125 6 198 0 128 6 198 0 129 6 198 0 134 6 198 0 135 6 198 1 228] 
#[0 16 217 0 125 0 128 1 50 1 69] 
#[0 6 206 0 8 0 78] 
#[1 16 221 0 5 7 149 0 125 7 149 0 128 7 149 1 50 16 225 1 65 7 149 1 69] 
#[0 6 210 0 78] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 16 229 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 16 233 0 2 0 189 0 124 16 237 0 141] 
#[0 16 241 0 2] 
#[0 6 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 97 0 4 4 101 0 74 16 245 1 34 4 113 1 35 4 117 1 227] 
#[0 6 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 222 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 16 249 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 16 253 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 17 1 0 2] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 17 5 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 6 226 0 8] 
#[0 6 230 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 6 234 0 1 0 126 0 2 6 234 0 4 0 183 0 6 0 126 0 22 6 234 0 43 0 126 0 44 6 234 0 61 6 234 0 62 6 234 0 64 6 234 0 73 6 234 0 97 6 234 0 98 6 234 0 99 6 234 0 100 6 234 0 104 6 234 0 109 6 234 0 122 6 234 0 124 6 234 0 125 6 234 0 128 6 234 0 129 0 126 0 132 0 126 0 133 0 183 1 227] 
#[1 6 238 0 1 4 165 0 2 6 238 0 4 0 187 0 6 4 241 0 22 6 238 0 43 4 221 0 44 6 238 0 61 6 238 0 62 6 238 0 64 6 238 0 73 6 238 0 97 6 238 0 98 6 238 0 99 6 238 0 100 6 238 0 104 6 238 0 109 6 238 0 122 6 238 0 124 6 238 0 125 6 238 0 128 6 238 0 129 0 209 0 132 0 18 0 133 4 245 0 159 0 249 0 160 4 249 0 172 4 253 0 175 0 191 1 227] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 17 9 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 12 209 0 2 2 153 0 11 12 217 1 100 17 13 1 136 17 17 1 145] 
#[0 17 21 0 2] 
#[0 17 25 0 8] 
#[0 17 29 0 4] 
#[1 2 153 0 11 0 189 0 124 17 33 0 141 17 37 1 100] 
#[0 17 41 0 61] 
#[1 7 213 0 1 17 45 0 61 17 49 0 62 11 237 1 224] 
#[1 0 189 0 124 17 53 0 141 17 53 1 60] 
#[0 6 242 0 78] 
#[1 17 57 0 5 0 189 0 124 7 249 0 125 7 249 0 128 8 5 0 141 7 249 1 50 17 61 1 58 8 5 1 60 7 249 1 69] 
#[0 6 246 0 78] 
#[0 6 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 6 254 0 78] 
#[0 7 2 0 78] 
#[0 7 6 0 78] 
#[0 7 10 0 78] 
#[0 7 14 0 5] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 17 65 0 224 17 65 0 225 6 225 1 227] 
#[0 7 18 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 22 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 17 69 0 5 8 33 0 6 8 37 0 120 0 189 0 124 6 249 0 125 7 13 0 128 7 17 0 129 8 41 0 141 8 45 0 142 8 45 0 154 8 45 0 155 8 45 0 156 17 73 0 219 17 77 0 223 17 77 0 225 7 13 1 69 7 17 1 70 8 65 1 227] 
#[0 7 26 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 30 0 7 0 121] 
#[0 17 81 0 7] 
#[0 7 34 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 3 149 0 4 3 153 0 6 17 85 0 7 3 205 0 120 4 9 0 121 0 189 0 124 8 41 0 141 17 89 0 148 3 217 0 216 3 217 0 217 3 217 0 218 17 93 0 222 8 85 0 224 8 85 0 225 17 97 0 226 6 225 1 227] 
#[0 7 38 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 42 0 3 0 5 0 7 0 8 0 121] 
#[0 7 46 0 8 0 121] 
#[1 7 50 0 8 8 93 0 23 7 50 0 121 17 101 0 158] 
#[1 7 54 0 8 8 93 0 23 7 54 0 121 17 105 0 158] 
#[1 7 201 0 78 17 109 1 56] 
#[0 2 94 0 78] 
#[1 0 126 0 2 0 126 0 6 0 195 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 126 0 121 12 41 0 122 0 126 0 132 0 126 0 133 13 97 1 135 0 126 1 226 0 126 1 227] 
#[1 4 230 0 2 0 199 0 3 4 230 0 6 0 199 0 7 4 230 0 9 4 230 0 10 4 230 0 11 4 230 0 12 4 230 0 13 4 230 0 14 4 230 0 15 4 230 0 16 4 230 0 17 4 230 0 18 4 230 0 20 4 230 0 21 4 230 0 22 0 199 0 23 4 230 0 24 4 230 0 25 4 230 0 26 4 230 0 27 4 230 0 28 4 230 0 29 4 230 0 30 4 230 0 31 4 230 0 32 4 230 0 33 4 230 0 34 4 230 0 35 4 230 0 36 4 230 0 37 4 230 0 38 4 230 0 40 4 230 0 41 4 230 0 42 4 230 0 43 4 230 0 44 4 230 0 45 4 230 0 46 4 230 0 47 4 230 0 48 4 230 0 49 4 230 0 50 4 230 0 51 4 230 0 53 4 230 0 54 4 230 0 83 4 230 0 86 0 199 0 121 4 230 0 132 4 230 0 133 4 230 1 226 4 230 1 227] 
#[0 7 58 0 3 0 7] 
#[0 7 62 0 3] 
#[0 7 66 0 3 0 121] 
#[0 7 70 0 3 0 5 0 7 0 121] 
#[1 7 74 0 3 7 74 0 5 7 74 0 7 8 93 0 23 7 74 0 121 17 113 0 158] 
#[0 7 78 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[0 7 82 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[0 7 86 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[1 17 117 0 43 12 41 0 122 17 121 1 135] 
#[1 4 218 0 3 3 149 0 4 4 218 0 5 3 153 0 6 4 218 0 7 4 218 0 23 4 218 0 43 13 117 0 109 4 218 0 121 4 218 0 122 0 189 0 124 17 125 0 141 17 125 0 216 17 125 0 217 17 125 0 218 17 125 1 138] 
#[1 7 90 0 3 7 90 0 5 7 90 0 7 8 93 0 23 17 129 0 43 7 90 0 121 12 41 0 122 17 133 0 158 17 137 1 135] 
#[0 7 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 7 98 0 7 0 121] 
#[0 7 102 0 7 0 121] 
#[0 17 141 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 17 145 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 17 149 0 2] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 17 153 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 17 157 1 6 14 185 1 7 17 161 1 30 0 6 1 227] 
#[0 7 106 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 7 110 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 17 165 0 2] 
#[1 9 13 0 124 9 17 0 126 17 169 1 40] 
#[0 17 173 0 2] 
#[0 17 177 0 2] 
#[0 17 181 0 2] 
#[1 0 6 0 2 0 6 0 4 7 114 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 17 185 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 17 189 1 42 17 193 1 43 0 6 1 227] 
#[0 7 118 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 17 197 0 8] 
#[0 7 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 226 1 227 1 228] 
#[0 7 126 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 7 130 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 17 201 0 255 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 7 134 0 8] 
#[1 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 17 205 0 142 17 205 0 154 17 205 0 155 17 205 0 156 7 13 1 69 7 17 1 70] 
#[1 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 17 209 0 142 17 209 0 154 17 209 0 155 17 209 0 156 7 13 1 69 7 17 1 70] 
#[1 5 213 0 2 2 153 0 11 17 213 0 43 5 225 1 100 17 217 1 145] 
#[1 7 213 0 1 8 33 0 6 17 221 0 64 17 233 0 97 17 233 0 98 17 233 0 99 17 233 0 100 17 225 0 104 6 249 0 125 7 13 0 128 7 17 0 129 17 229 0 142 17 229 0 154 17 229 0 155 17 229 0 156 7 13 1 69 7 17 1 70 17 233 1 139 17 237 1 146 17 241 1 147 11 237 1 224 17 245 1 227] 
#[0 17 249 0 8] 
#[0 7 138 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 7 142 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 7 146 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 7 150 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 7 154 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 7 158 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 7 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 226 1 227 1 228] 
#[0 17 253 0 5] 
#[0 7 166 0 4 0 85] 
#[0 7 170 0 4 0 85] 
#[0 7 174 0 4 0 121] 
#[1 7 178 0 4 18 1 0 121] 
#[0 7 182 0 4 0 121] 
#[0 7 186 0 4] 
#[0 18 5 0 4] 
#[0 18 9 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 18 13 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 18 17 0 3] 
#[0 7 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 7 194 0 3 0 121] 
#[0 7 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 18 21 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 18 25 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 29 0 196 18 29 0 197 0 253 1 5 18 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 29 1 14 0 253 1 19 18 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 7 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 18 33 0 14 18 37 0 121] 
#[0 7 206 0 14 0 121] 
#[0 7 210 0 14 0 121] 
#[1 0 97 0 2 18 41 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 9 141 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 18 45 0 173 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 149 0 196 9 149 0 197 0 253 1 5 9 149 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 149 1 14 0 253 1 19 9 149 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 3 118 0 4 3 118 0 136 3 118 0 138 18 49 1 90 10 177 1 91] 
#[0 7 214 0 5 0 121] 
#[0 7 218 0 5 0 121] 
#[0 7 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 18 53 0 5 8 33 0 6 8 249 0 26 8 253 0 56 9 1 0 80 9 5 0 103 9 181 0 120 9 185 0 124 6 249 0 125 9 17 0 126 7 13 0 128 7 17 0 129 9 189 0 141 9 201 0 142 18 57 0 153 9 201 0 154 9 201 0 155 9 201 0 156 18 57 0 157 18 57 1 16 18 57 1 20 18 57 1 25 18 57 1 29 9 213 1 40 7 13 1 69 7 17 1 70 18 57 1 146 18 57 1 147 9 217 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 61 0 196 18 61 0 197 0 253 1 5 18 61 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 61 1 14 0 253 1 19 18 61 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 65 0 196 18 65 0 197 18 65 0 199 0 253 1 5 18 65 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 65 1 14 0 253 1 19 18 65 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 7 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 18 69 0 134 18 73 0 135] 
#[0 7 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 18 77 0 7 5 193 0 121] 
#[1 18 81 0 7 5 193 0 121] 
#[0 7 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 7 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 7 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 7 250 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 85 0 196 18 85 0 197 0 253 1 5 18 85 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 85 1 14 0 253 1 19 18 85 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 6 0 2 0 6 0 4 7 254 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 65 0 207 0 57 0 208 6 65 0 209 0 65 0 210 0 6 1 227] 
#[0 18 89 0 5] 
#[0 8 2 0 5] 
#[0 8 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 226 1 227 1 228] 
#[0 18 93 0 136] 
#[0 8 10 0 4 0 136 0 138] 
#[0 8 14 0 4 0 136 0 138] 
#[0 8 18 0 4 0 136 0 138] 
#[0 18 97 0 4] 
#[0 8 22 0 137] 
#[0 18 101 0 137] 
#[1 8 26 0 14 18 105 1 97] 
#[1 8 30 0 4 8 30 0 9 8 30 0 14 8 30 0 23 14 217 0 122 8 30 0 137] 
#[0 8 34 0 4 0 9 0 14 0 23 0 137] 
#[1 18 109 0 9 0 122 0 14 18 113 1 95] 
#[0 8 38 0 4 0 9 0 14 0 137] 
#[1 6 26 0 4 8 42 0 9 8 42 0 14 14 225 0 137 14 253 1 78 18 117 1 83 18 117 1 85 18 117 1 86 14 253 1 87 15 5 1 99] 
#[0 8 46 0 4 0 9 0 14 0 137] 
#[0 8 50 0 4 0 9 0 14 0 137] 
#[1 8 54 0 4 8 54 0 9 8 54 0 14 18 121 0 23 8 54 0 137 18 125 1 88] 
#[0 18 129 0 14] 
#[0 18 133 0 4] 
#[1 8 58 0 4 8 58 0 9 8 58 0 14 14 213 0 22 8 58 0 137] 
#[0 8 62 0 137] 
#[0 8 66 0 4 0 136 0 138] 
#[1 8 70 0 4 8 70 0 8 8 70 0 19 12 41 0 122 18 137 1 135] 
#[1 4 29 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 33 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 41 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 41 0 178 18 141 0 179 18 141 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 18 141 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 49 1 227] 
#[0 18 145 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 18 149 1 6 14 185 1 7 0 6 1 227] 
#[0 18 153 0 3] 
#[0 8 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 157 0 196 18 157 0 197 18 157 0 199 0 253 1 5 18 157 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 157 1 14 0 253 1 19 18 157 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 18 161 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 165 0 196 18 165 0 197 18 165 0 199 0 253 1 5 18 165 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 165 1 14 0 253 1 19 18 165 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 18 169 0 8 5 193 0 121] 
#[1 3 134 0 8 8 93 0 23 8 82 0 83 8 82 0 96 3 134 0 121 11 69 0 158] 
#[1 18 173 0 8 11 77 0 121] 
#[1 8 93 0 23 8 86 0 83 8 86 0 96 11 81 0 158] 
#[1 18 177 0 83 18 181 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 185 0 196 18 185 0 197 18 185 0 199 0 253 1 5 18 185 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 185 1 14 0 253 1 19 18 185 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 189 0 196 18 189 0 197 0 253 1 5 18 189 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 189 1 14 0 253 1 19 18 189 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 18 193 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 197 0 196 18 197 0 197 18 197 0 199 0 253 1 5 18 197 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 197 1 14 0 253 1 19 18 197 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 18 201 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 205 0 196 18 205 0 197 18 205 0 199 0 253 1 5 18 205 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 205 1 14 0 253 1 19 18 205 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 18 209 0 8 5 193 0 121] 
#[1 2 126 0 8 8 93 0 23 8 82 0 83 8 82 0 96 2 126 0 121 8 97 0 158] 
#[1 8 93 0 23 8 86 0 83 8 86 0 96 8 109 0 158] 
#[0 8 90 0 83 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 213 0 196 18 213 0 197 18 213 0 199 0 253 1 5 18 213 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 213 1 14 0 253 1 19 18 213 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 217 0 196 18 217 0 197 0 253 1 5 18 217 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 217 1 14 0 253 1 19 18 217 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 18 229 0 141 18 229 0 216 18 229 0 217 18 229 0 218 18 229 0 236] 
#[1 18 233 0 96 9 133 1 227] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 15 105 0 141 15 105 0 216 15 105 0 217 15 105 0 218 15 105 0 236] 
#[0 18 237 0 96] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 18 241 0 200 18 241 0 203 18 241 0 204 18 241 0 205 18 241 0 213 18 241 0 227 18 241 0 228 18 241 0 229 18 241 0 230 18 241 0 231 18 241 0 232 18 241 0 233 18 241 0 234 18 241 0 237 18 241 0 238 18 241 0 240 18 241 0 241 18 241 0 242 18 241 0 247 18 241 0 249 18 241 0 250 18 241 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 8 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 18 245 0 4 18 249 0 243] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 19 5 0 141 19 5 0 216 19 5 0 217 19 5 0 218 19 5 0 253] 
#[0 8 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 110 0 8 0 121] 
#[1 8 114 0 8 8 93 0 23 8 114 0 121 19 9 0 158] 
#[1 8 93 0 23 19 13 0 158] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 19 17 0 200 19 17 0 203 19 17 0 204 19 17 0 205 19 17 0 213 19 17 0 227 19 17 0 228 19 17 0 229 19 17 0 230 19 17 0 231 19 17 0 232 19 17 0 233 19 17 0 234 19 17 0 237 19 17 0 238 19 17 0 240 19 17 0 241 19 17 0 242 19 17 0 247 19 17 0 249 19 17 0 250 19 17 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 19 21 0 200 19 21 0 203 19 21 0 204 19 21 0 205 19 21 0 213 19 21 0 227 19 21 0 228 19 21 0 229 19 21 0 230 19 21 0 231 19 21 0 232 19 21 0 233 19 21 0 234 19 21 0 237 19 21 0 238 19 21 0 240 19 21 0 241 19 21 0 242 19 21 0 247 19 21 0 249 19 21 0 250 19 21 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 6 214 0 1 0 203 0 2 6 214 0 4 6 214 0 5 0 203 0 6 0 203 0 8 5 50 0 9 5 50 0 10 5 50 0 11 5 50 0 12 5 50 0 13 5 50 0 14 5 50 0 15 5 50 0 16 5 50 0 17 5 50 0 18 5 50 0 20 5 50 0 21 5 50 0 22 5 50 0 23 5 50 0 24 5 50 0 25 5 50 0 26 5 50 0 27 5 50 0 28 5 50 0 29 5 50 0 30 5 50 0 31 5 50 0 32 5 50 0 33 5 50 0 34 0 203 0 35 0 203 0 36 0 203 0 37 0 203 0 38 6 214 0 39 5 50 0 40 5 50 0 41 5 50 0 42 5 50 0 43 5 50 0 44 5 50 0 45 5 50 0 46 5 50 0 47 5 50 0 48 5 50 0 49 5 50 0 50 5 50 0 51 6 214 0 52 5 50 0 53 5 50 0 54 6 214 0 56 6 214 0 57 6 214 0 58 6 214 0 61 6 214 0 62 6 214 0 63 6 214 0 65 6 214 0 66 6 214 0 67 6 214 0 69 6 214 0 70 6 214 0 72 6 214 0 73 6 214 0 75 6 214 0 77 6 214 0 79 6 214 0 81 6 214 0 82 5 50 0 83 5 50 0 86 6 214 0 87 6 214 0 89 6 214 0 92 6 214 0 93 6 214 0 94 6 214 0 102 6 214 0 106 6 214 0 107 6 214 0 109 6 214 0 110 6 214 0 111 6 214 0 112 6 214 0 113 6 214 0 114 6 214 0 115 6 214 0 116 6 214 0 117 6 214 0 118 6 214 0 119 5 50 0 121 6 214 0 124 6 214 0 126 6 214 0 128 6 214 0 129 6 214 0 130 0 203 0 132 0 203 0 133 6 214 0 136 5 50 1 226 0 203 1 227 6 214 1 228] 
#[0 19 25 0 4] 
#[1 2 153 0 11 4 101 0 74 19 29 1 35 19 33 1 100 4 117 1 227] 
#[1 8 118 0 8 8 118 0 121 12 41 0 122 19 37 1 135] 
#[1 19 41 0 8 19 45 0 121] 
#[0 8 122 0 8 0 121] 
#[1 6 229 0 2 2 153 0 11 7 21 1 100 19 49 1 136] 
#[1 19 53 0 8 19 45 0 121] 
#[0 19 57 0 4] 
#[1 19 61 0 4 16 33 0 22] 
#[1 19 65 0 8 19 45 0 121] 
#[1 19 69 0 5 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 19 73 0 142 19 73 0 154 19 73 0 155 19 73 0 156 7 13 1 69 7 17 1 70 19 77 1 169 19 81 1 170 19 85 1 171] 
#[0 19 89 0 8] 
#[0 19 93 0 8] 
#[0 8 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 19 97 0 8] 
#[1 3 25 0 4 19 101 0 26 19 105 1 63] 
#[0 19 109 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 19 113 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 19 117 0 2] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 19 121 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 0 189 0 124 19 125 0 141 19 129 1 118 19 133 1 180 19 137 1 225] 
#[1 0 189 0 124 2 181 0 141 19 141 1 116 2 237 1 117 2 241 1 118 19 141 1 156] 
#[1 2 145 0 4 16 13 0 74 19 145 1 119 19 149 1 154] 
#[0 8 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 2 145 0 4 19 153 1 119] 
#[1 0 97 0 2 0 19 0 4 8 134 0 5 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 6 69 0 61 3 41 0 62 6 73 0 63 1 225 0 65 1 229 0 66 16 45 0 67 0 141 0 69 1 233 0 70 6 81 0 72 19 157 0 73 1 173 0 75 1 237 0 77 6 89 0 79 1 241 0 81 19 161 0 82 6 97 0 87 0 65 0 89 6 101 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 6 105 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 19 209 0 200 19 209 0 203 19 209 0 204 19 209 0 205 19 209 0 209 0 65 0 210 19 209 0 213 19 209 0 227 19 209 0 228 19 209 0 229 19 209 0 230 19 209 0 231 19 209 0 232 19 209 0 233 19 209 0 234 19 209 0 237 19 209 0 238 19 209 0 240 19 209 0 241 19 209 0 242 19 209 0 247 19 209 0 249 19 209 0 250 19 209 0 254 19 209 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 19 209 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 19 209 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 19 209 1 144 19 209 1 153 19 209 1 168 19 209 1 173 19 201 1 175 19 205 1 176 19 209 1 177 19 209 1 178 19 209 1 179 19 209 1 207 6 201 1 227] 
#[1 0 189 0 124 19 225 0 141] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 19 229 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 19 229 1 129 19 229 1 130 2 213 1 131 2 213 1 133] 
#[0 19 233 0 23] 
#[1 11 129 0 61 11 133 0 63 6 81 0 72 11 137 0 79 11 141 0 89 11 149 0 92 11 153 0 115 11 173 1 168 11 161 1 208 11 165 1 211 11 169 1 212 11 173 1 218 11 177 1 219] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 19 237 0 61 3 41 0 62 0 141 0 69 1 173 0 75 19 241 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 19 245 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 19 249 0 196 19 249 0 197 19 253 1 4 0 253 1 5 19 249 1 8 1 125 1 9 1 129 1 10 1 133 1 13 19 249 1 14 20 1 1 18 0 253 1 19 19 249 1 22 0 253 1 24 0 253 1 28 1 45 1 31 20 5 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 20 9 1 211 20 13 1 212 6 201 1 227] 
#[1 3 101 0 4 3 105 0 26 0 189 0 124 3 129 0 128 20 17 0 141 3 113 1 52 3 117 1 53 3 121 1 54 3 125 1 55 3 129 1 59 3 117 1 60 3 129 1 69 3 141 1 227] 
#[0 8 138 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 142 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 146 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 150 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 0 207 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 0 211 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 8 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 0 215 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 51 0 1 1 206 0 61 1 206 0 62 7 221 0 79 7 225 1 137 7 241 1 224] 
#[1 12 209 0 2 2 153 0 11 12 217 1 100 17 13 1 136 20 21 1 145] 
#[0 20 25 0 4] 
#[1 2 141 0 2 6 205 0 4 6 209 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 6 213 0 141 3 217 0 216 3 217 0 217 3 217 0 218 17 65 0 224 17 65 0 225 2 185 1 69 2 189 1 70 2 193 1 100 16 161 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 16 161 1 129 16 161 1 130 2 213 1 131 2 213 1 133 6 225 1 227] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 20 29 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 20 29 1 129 20 29 1 130 2 213 1 131 2 213 1 133] 
#[1 8 198 0 4 8 198 0 5 8 198 0 8 8 198 0 121 12 41 0 122 20 33 1 135] 
#[1 20 37 0 95 20 41 0 105] 
#[0 8 202 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 20 45 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 49 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 8 206 0 5 8 206 0 8 8 206 0 121 12 41 0 122 20 53 1 135] 
#[0 8 210 0 5 0 8 0 121] 
#[0 8 214 0 5 0 8 0 121] 
#[0 8 218 0 5 0 8 0 121] 
#[0 8 222 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 20 57 0 3] 
#[0 8 226 0 5 0 8 0 121] 
#[0 8 230 0 5 0 8 0 121] 
#[0 8 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 8 238 0 7 0 121] 
#[0 8 242 0 14 0 121] 
#[0 8 246 0 14 0 121] 
#[0 20 61 0 19] 
#[0 20 65 0 3] 
#[0 8 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 20 69 0 19] 
#[0 8 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 20 73 0 7] 
#[0 9 2 0 5 0 121] 
#[0 9 6 0 8 0 78] 
#[0 9 10 0 5 0 121] 
#[0 20 77 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 81 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 20 85 0 2] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 89 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 9 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 20 93 0 4] 
#[0 20 97 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 101 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 20 105 0 3] 
#[0 20 109 0 3] 
#[0 20 113 0 8] 
#[0 20 117 0 4] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 121 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 9 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 20 125 1 6 14 185 1 7 0 6 1 227] 
#[1 2 153 0 11 20 129 1 100] 
#[1 4 97 0 4 4 101 0 74 20 133 1 34 4 113 1 35 4 117 1 227] 
#[1 2 153 0 11 0 189 0 124 20 137 0 141 20 141 1 100] 
#[1 4 97 0 4 4 101 0 74 0 189 0 124 20 145 0 141 20 149 1 34 4 113 1 35 4 117 1 227] 
#[0 20 153 0 61] 
#[0 9 22 0 5 0 121] 
#[0 9 26 0 78] 
#[0 9 30 0 5 0 121] 
#[0 9 34 0 5 0 121] 
#[0 9 38 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 20 157 0 5] 
#[0 9 42 0 5 0 121] 
#[0 9 46 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 9 50 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 3 149 0 4 3 153 0 6 20 161 0 7 3 205 0 120 8 209 0 121 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 13 45 0 224 13 45 0 225 20 165 0 226 6 225 1 227] 
#[0 9 54 0 7 0 121] 
#[0 20 169 0 7] 
#[0 9 58 0 8 0 121] 
#[0 9 62 0 8 0 121] 
#[0 20 173 0 8] 
#[0 9 66 0 3 0 5 0 7 0 121] 
#[1 9 70 0 3 9 70 0 5 9 70 0 7 9 70 0 121 12 41 0 122 20 177 1 135] 
#[1 9 74 0 3 9 74 0 5 9 74 0 7 8 93 0 23 9 74 0 121 20 181 0 158] 
#[1 9 78 0 3 9 78 0 5 9 78 0 7 8 93 0 23 20 185 0 43 9 78 0 121 12 41 0 122 20 189 0 158 20 193 1 135] 
#[0 9 82 0 3 0 5 0 7 0 121] 
#[0 9 86 0 3 0 5 0 7 0 121] 
#[1 9 90 0 3 9 90 0 5 9 90 0 7 8 93 0 23 9 90 0 121 20 197 0 158] 
#[0 20 201 0 4] 
#[0 20 205 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 209 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 20 213 0 3] 
#[0 9 94 0 5] 
#[0 20 217 0 5] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 221 0 255 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 20 225 0 2] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 20 229 0 255 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 20 233 0 3] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 20 241 0 224 20 241 0 225 20 241 1 3 20 241 1 17 6 225 1 227] 
#[1 0 6 0 2 0 6 0 4 9 98 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 65 0 207 0 57 0 208 6 65 0 209 0 65 0 210 0 6 1 227] 
#[0 20 245 0 5] 
#[0 9 102 0 5] 
#[0 9 106 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 20 249 0 3] 
#[0 20 253 0 2] 
#[0 21 1 0 2] 
#[1 5 213 0 2 2 153 0 11 5 225 1 100 21 5 1 145] 
#[0 21 9 0 4] 
#[1 21 13 0 2 21 17 1 161] 
#[1 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 21 21 0 142 21 21 0 154 21 21 0 155 21 21 0 156 7 13 1 69 7 17 1 70 21 25 1 146 21 29 1 147 17 245 1 227] 
#[1 6 229 0 2 9 110 0 8 2 153 0 11 8 93 0 23 21 33 0 43 12 41 0 122 21 37 0 158 7 21 1 100 21 41 1 135 21 45 1 136 21 49 1 164] 
#[1 8 33 0 6 21 53 0 64 21 57 0 104 6 249 0 125 7 13 0 128 7 17 0 129 21 61 0 142 21 61 0 154 21 61 0 155 21 61 0 156 7 13 1 69 7 17 1 70 21 65 1 146 21 69 1 147 17 245 1 227] 
#[0 9 114 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 9 118 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 13 233 0 80 13 237 0 103] 
#[0 9 122 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 9 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 226 1 227 1 228] 
#[1 0 189 0 124 2 181 0 141 21 73 1 116 2 237 1 117 2 241 1 118 21 73 1 156] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 21 77 1 6 14 185 1 7 0 6 1 227] 
#[0 21 81 0 4] 
#[0 21 85 0 3] 
#[0 21 89 0 4] 
#[0 9 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 93 0 196 21 93 0 197 0 253 1 5 21 93 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 93 1 14 0 253 1 19 21 93 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 9 134 0 3 0 121] 
#[0 9 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 21 97 1 106 21 97 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 21 97 1 129 21 97 1 130 2 213 1 131 2 213 1 133] 
#[0 9 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 21 101 0 3 21 105 0 121] 
#[0 21 109 0 136] 
#[0 9 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 9 150 0 5 0 121] 
#[0 9 154 0 5 0 121] 
#[1 5 193 0 121 9 158 0 134 9 158 0 135] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 113 0 196 21 113 0 197 21 113 0 199 0 253 1 5 21 113 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 113 1 14 0 253 1 19 21 113 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 9 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 9 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 9 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 9 174 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 9 178 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 21 117 0 9] 
#[1 0 97 0 2 0 14 0 4 0 122 0 5 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 5 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 21 129 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 129 0 196 21 129 0 197 0 253 1 5 21 129 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 129 1 14 0 253 1 19 21 129 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 21 129 1 93 1 205 1 94 21 133 1 95 1 209 1 227] 
#[0 9 182 0 4 0 9 0 14 0 23 0 137] 
#[0 21 137 0 14] 
#[1 8 26 0 14 21 141 1 97] 
#[0 21 145 0 14] 
#[0 9 186 0 4 0 9 0 14 0 137] 
#[1 6 26 0 4 21 149 0 128 0 15 0 136 21 149 1 69 21 161 1 72 21 161 1 73 1 197 1 74 21 161 1 76 21 161 1 89 1 205 1 94 21 165 1 99] 
#[0 9 190 0 4 0 9 0 14 0 137] 
#[0 9 194 0 4 0 136 0 138] 
#[1 4 5 0 120 21 169 0 149] 
#[0 9 198 0 4 0 8 0 19] 
#[0 9 202 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 21 173 1 6 14 185 1 7 0 6 1 227] 
#[0 21 177 0 5] 
#[1 9 206 0 4 9 206 0 8 9 206 0 19 12 41 0 122 21 181 1 135] 
#[1 21 185 0 3 5 193 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 21 189 0 200 21 189 0 203 21 189 0 204 21 189 0 205 21 189 0 213 21 189 0 227 21 189 0 228 21 189 0 229 21 189 0 230 21 189 0 231 21 189 0 232 21 189 0 233 21 189 0 234 21 189 0 237 21 189 0 238 21 189 0 240 21 189 0 241 21 189 0 242 21 189 0 247 21 189 0 249 21 189 0 250 21 189 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 21 193 0 3 5 193 0 121] 
#[1 0 97 0 2 21 197 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 201 0 196 21 201 0 197 21 201 0 199 0 253 1 5 21 201 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 201 1 14 0 253 1 19 21 201 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 21 205 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 209 0 196 21 209 0 197 21 209 0 199 0 253 1 5 21 209 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 209 1 14 0 253 1 19 21 209 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 213 0 196 21 213 0 197 21 213 0 199 0 253 1 5 21 213 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 213 1 14 0 253 1 19 21 213 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 217 0 196 21 217 0 197 0 253 1 5 21 217 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 217 1 14 0 253 1 19 21 217 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 21 221 0 3 5 193 0 121] 
#[0 21 225 0 3] 
#[1 0 97 0 2 21 229 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 233 0 196 21 233 0 197 21 233 0 199 0 253 1 5 21 233 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 233 1 14 0 253 1 19 21 233 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 21 237 0 8 5 193 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 21 241 0 200 21 241 0 203 21 241 0 204 21 241 0 205 21 241 0 213 21 241 0 227 21 241 0 228 21 241 0 229 21 241 0 230 21 241 0 231 21 241 0 232 21 241 0 233 21 241 0 234 21 241 0 237 21 241 0 238 21 241 0 240 21 241 0 241 21 241 0 242 21 241 0 247 21 241 0 249 21 241 0 250 21 241 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 21 245 0 3 5 193 0 121] 
#[1 0 97 0 2 21 249 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 253 0 196 21 253 0 197 21 253 0 199 0 253 1 5 21 253 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 253 1 14 0 253 1 19 21 253 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 22 1 0 3 5 193 0 121] 
#[0 22 5 0 3] 
#[0 8 82 0 96] 
#[0 8 86 0 96] 
#[0 22 9 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 22 13 0 196 22 13 0 197 0 253 1 5 22 13 1 8 1 125 1 9 1 129 1 10 1 133 1 13 22 13 1 14 0 253 1 19 22 13 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 22 17 0 196 22 17 0 197 0 253 1 5 22 17 1 8 1 125 1 9 1 129 1 10 1 133 1 13 22 17 1 14 0 253 1 19 22 17 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 9 210 0 1 9 210 0 2 9 210 0 4 9 210 0 5 9 210 0 6 9 210 0 8 9 210 0 35 9 210 0 36 9 210 0 37 9 210 0 38 9 210 0 39 9 210 0 52 9 210 0 56 9 210 0 57 9 210 0 58 9 210 0 59 9 210 0 61 9 210 0 62 9 210 0 63 9 210 0 65 9 210 0 66 9 210 0 67 9 210 0 68 9 210 0 69 9 210 0 70 22 21 0 71 9 210 0 72 9 210 0 73 9 210 0 75 9 210 0 77 9 210 0 79 9 210 0 81 9 210 0 82 9 210 0 87 9 210 0 89 9 210 0 92 9 210 0 93 9 210 0 94 9 210 0 102 9 210 0 106 9 210 0 107 9 210 0 109 9 210 0 110 9 210 0 111 9 210 0 112 9 210 0 113 9 210 0 114 9 210 0 115 9 210 0 116 9 210 0 117 9 210 0 118 9 210 0 119 9 210 0 124 9 210 0 126 9 210 0 128 9 210 0 129 9 210 0 130 9 210 0 132 9 210 0 133 9 210 0 136 9 210 1 227 9 210 1 228] 
#[1 22 25 0 5 22 29 0 59 22 33 0 68 22 37 0 244 22 41 0 245 22 45 0 246] 
#[0 9 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 9 218 0 3] 
#[0 9 222 0 3] 
#[0 22 49 0 3] 
#[0 9 226 0 8 0 121] 
#[0 9 230 0 8 0 121] 
#[0 9 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 9 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 22 53 0 5 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 19 73 0 142 19 73 0 154 19 73 0 155 19 73 0 156 7 13 1 69 7 17 1 70 22 57 1 169 19 81 1 170 19 85 1 171] 
#[0 22 61 0 4] 
#[1 4 101 0 74 22 65 1 35 4 117 1 227] 
#[0 9 242 0 8 0 121] 
#[0 9 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 189 0 124 15 193 0 141 22 69 1 210] 
#[0 22 73 0 8] 
#[0 9 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 1 206 0 1 9 254 0 5 16 45 0 67 0 35 0 73 16 53 0 82 6 97 0 87 6 101 0 92 6 105 0 113 22 113 1 51 22 81 1 137 22 113 1 144 22 113 1 153 22 113 1 173 22 113 1 179 22 113 1 193 22 105 1 197 22 109 1 198 22 113 1 199 22 113 1 202 22 113 1 204 22 113 1 205 22 113 1 206 22 113 1 207] 
#[1 10 2 0 5 11 129 0 61 22 137 0 63 6 81 0 72 22 141 0 73 11 137 0 79 22 145 0 82 6 97 0 87 22 149 0 89 11 149 0 92 11 153 0 115 22 153 0 209 0 65 0 210 22 157 1 153 22 177 1 168 22 161 1 179 22 165 1 208 22 169 1 211 22 173 1 212 22 177 1 218 22 181 1 219 22 185 1 220 22 189 1 221 22 193 1 222] 
#[0 10 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 10 14 0 5 22 197 0 23 10 14 0 121] 
#[0 22 201 0 5] 
#[1 10 18 0 5 22 205 0 121] 
#[0 10 22 0 5 0 121] 
#[0 10 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 7 201 0 78 22 209 1 56] 
#[1 22 213 0 8 7 201 0 78 22 217 1 56] 
#[0 22 221 0 4] 
#[0 22 225 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 22 229 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 22 233 0 3] 
#[0 1 226 0 8 0 22] 
#[1 10 38 0 8 22 237 0 22] 
#[0 22 241 0 8] 
#[0 22 245 0 2] 
#[0 10 42 0 4] 
#[0 10 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 2 145 0 4 22 249 1 119] 
#[0 10 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 3 37 0 61 3 41 0 62 6 73 0 63 16 45 0 67 6 81 0 72 3 49 0 79 22 145 0 82 6 97 0 87 0 65 0 89 6 101 0 92 6 105 0 113 2 5 0 115 22 253 0 209 0 65 0 210 23 1 0 213 23 5 1 4 23 9 1 18 23 13 1 32 23 17 1 144 23 21 1 153 23 25 1 168 23 29 1 173 23 33 1 179 23 37 1 207 16 105 1 227] 
#[1 4 137 0 2 4 141 0 22 0 189 0 124 23 41 0 141] 
#[0 10 54 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 58 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 66 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 70 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 78 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 82 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 86 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 23 45 0 5] 
#[1 0 97 0 2 0 19 0 4 10 90 0 5 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 6 69 0 61 3 41 0 62 6 73 0 63 1 225 0 65 1 229 0 66 16 45 0 67 0 141 0 69 1 233 0 70 6 81 0 72 19 157 0 73 1 173 0 75 1 237 0 77 6 89 0 79 1 241 0 81 19 161 0 82 6 97 0 87 0 65 0 89 6 101 0 92 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 6 105 0 113 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 23 49 0 200 23 49 0 203 23 49 0 204 23 49 0 205 23 49 0 209 0 65 0 210 23 49 0 213 23 49 0 227 23 49 0 228 23 49 0 229 23 49 0 230 23 49 0 231 23 49 0 232 23 49 0 233 23 49 0 234 23 49 0 237 23 49 0 238 23 49 0 240 23 49 0 241 23 49 0 242 23 49 0 247 23 49 0 249 23 49 0 250 23 49 0 254 23 49 1 4 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 23 49 1 18 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 23 49 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 23 49 1 144 23 49 1 153 23 49 1 168 23 49 1 173 23 49 1 177 23 49 1 178 23 49 1 179 23 49 1 207 6 201 1 227] 
#[0 10 94 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 98 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 102 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 106 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 10 110 0 4 0 22] 
#[0 23 53 0 8] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 23 57 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 23 57 1 129 23 57 1 130 2 213 1 131 2 213 1 133] 
#[1 4 97 0 4 4 101 0 74 0 189 0 124 23 61 0 141 11 121 1 34 4 113 1 35 4 117 1 227] 
#[1 11 201 0 2 11 205 0 26 0 189 0 124 23 65 0 141] 
#[1 0 126 0 2 0 126 0 6 0 219 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 126 0 132 0 126 0 133 0 126 1 226 0 126 1 227] 
#[0 23 73 0 8] 
#[0 10 114 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 118 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 122 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 23 77 0 23 2 98 0 78 2 98 0 121] 
#[0 23 81 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 23 85 1 6 14 185 1 7 0 6 1 227] 
#[0 10 134 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 10 138 0 4 0 5 0 8 0 121] 
#[0 23 89 0 7] 
#[0 23 93 0 7] 
#[1 10 142 0 5 10 142 0 8 10 142 0 121 12 41 0 122 23 97 1 135] 
#[0 23 101 0 3] 
#[0 10 146 0 5 0 8 0 121] 
#[1 10 150 0 4 10 150 0 5 10 150 0 8 10 150 0 121 12 41 0 122 23 105 1 135] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 23 109 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 23 109 1 129 23 109 1 130 2 213 1 131 2 213 1 133] 
#[0 23 113 0 19] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 23 117 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 23 117 1 129 23 117 1 130 2 213 1 131 2 213 1 133] 
#[0 10 154 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 23 121 0 4] 
#[0 23 125 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 23 129 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 23 133 0 3] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 23 137 1 6 14 185 1 7 0 6 1 227] 
#[0 23 141 0 4] 
#[0 23 145 0 3] 
#[0 23 149 0 4] 
#[1 8 70 0 4 8 198 0 8 12 41 0 122 23 153 1 135] 
#[0 10 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 23 157 1 6 14 185 1 7 0 6 1 227] 
#[0 23 161 0 3] 
#[0 23 165 0 5] 
#[1 4 97 0 4 4 101 0 74 23 169 1 34 4 113 1 35 4 117 1 227] 
#[0 10 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 2 153 0 11 23 173 1 100] 
#[1 4 97 0 4 4 101 0 74 23 177 1 34 4 113 1 35 4 117 1 227] 
#[1 4 97 0 4 4 101 0 74 23 181 1 34 4 113 1 35 4 117 1 227] 
#[0 10 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 97 0 4 4 101 0 74 0 189 0 124 23 185 0 141 23 189 1 34 4 113 1 35 4 117 1 227] 
#[0 10 170 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 10 174 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 23 193 0 7] 
#[0 10 178 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 10 182 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 10 186 0 3 0 5 0 7 0 121] 
#[0 10 190 0 3 0 5 0 7 0 121] 
#[1 10 194 0 3 10 194 0 5 10 194 0 7 10 194 0 121 12 41 0 122 23 197 1 135] 
#[0 10 198 0 3 0 5 0 7 0 121] 
#[1 10 202 0 3 10 202 0 5 10 202 0 7 8 93 0 23 10 202 0 121 23 201 0 158] 
#[0 10 206 0 3 0 5 0 7 0 121] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 17 157 1 6 14 185 1 7 23 205 1 30 0 6 1 227] 
#[0 23 209 0 4] 
#[0 23 213 0 3] 
#[0 23 217 0 4] 
#[0 10 210 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 228] 
#[0 23 221 0 3] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 23 225 0 255 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 23 229 0 3] 
#[0 23 233 0 4] 
#[0 10 214 0 3] 
#[0 23 237 0 3] 
#[0 10 218 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 23 241 0 4] 
#[0 23 245 0 3] 
#[1 3 149 0 4 3 153 0 6 0 189 0 124 23 249 0 141 23 253 0 216 23 253 0 217 23 253 0 218 24 1 0 224 24 1 0 225 24 1 1 3 24 1 1 17 24 5 1 140 24 9 1 148 6 225 1 227] 
#[1 24 13 0 4 24 17 0 8] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 21 1 6 14 185 1 7 0 6 1 227] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 24 25 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 24 29 0 4 24 33 0 8] 
#[1 6 229 0 2 9 110 0 8 2 153 0 11 8 93 0 23 24 37 0 43 12 41 0 122 21 37 0 158 7 21 1 100 24 41 1 135 24 45 1 136 24 49 1 164] 
#[0 10 222 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 10 226 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 9 110 0 8 8 93 0 23 12 41 0 122 21 37 0 158 24 53 1 135 24 57 1 164] 
#[0 10 230 0 8] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 24 61 1 164] 
#[1 24 65 0 4 24 69 0 8] 
#[0 24 73 0 8] 
#[1 21 13 0 2 24 77 1 161] 
#[1 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 24 81 0 142 24 81 0 154 24 81 0 155 24 81 0 156 7 13 1 69 7 17 1 70 24 85 1 146 24 89 1 147 17 245 1 227] 
#[1 6 229 0 2 9 110 0 8 2 153 0 11 8 93 0 23 24 93 0 43 12 41 0 122 21 37 0 158 7 21 1 100 24 97 1 135 24 101 1 136 24 105 1 164] 
#[0 10 234 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 10 238 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 10 242 0 4 0 121] 
#[0 24 109 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 113 1 6 14 185 1 7 24 117 1 21 0 6 1 227] 
#[0 24 121 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 125 1 6 14 185 1 7 0 6 1 227] 
#[0 10 246 0 3 0 121] 
#[0 10 250 0 14 0 121] 
#[0 10 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 18 25 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 29 0 196 18 29 0 197 0 253 1 5 18 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 29 1 14 0 253 1 19 18 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 24 129 0 9] 
#[1 5 193 0 121 11 2 0 134 11 2 0 135] 
#[1 11 6 0 14 10 181 0 137 24 133 1 77 24 133 1 78 24 133 1 79 10 197 1 80 10 201 1 81 24 137 1 98] 
#[0 11 10 0 5] 
#[0 11 14 0 5] 
#[1 0 122 0 5 24 141 1 95] 
#[0 24 145 0 5] 
#[0 11 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 226 1 227 1 228] 
#[0 24 149 0 14] 
#[0 11 22 0 4 0 136 0 138] 
#[0 11 26 0 4 0 9 0 14 0 137] 
#[0 11 30 0 4 0 9 0 14 0 137] 
#[0 11 34 0 4 0 9 0 14 0 137] 
#[0 11 38 0 4 0 9 0 14 0 137] 
#[0 24 153 0 4] 
#[1 0 22 0 5 24 157 1 94] 
#[0 24 161 0 5] 
#[0 11 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 11 46 0 4 0 8 0 19] 
#[0 24 165 0 8] 
#[0 11 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 169 0 200 24 169 0 203 24 169 0 204 24 169 0 205 24 169 0 213 24 169 0 227 24 169 0 228 24 169 0 229 24 169 0 230 24 169 0 231 24 169 0 232 24 169 0 233 24 169 0 234 24 169 0 237 24 169 0 238 24 169 0 240 24 169 0 241 24 169 0 242 24 169 0 247 24 169 0 249 24 169 0 250 24 169 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 173 0 200 24 173 0 203 24 173 0 204 24 173 0 205 24 173 0 213 24 173 0 227 24 173 0 228 24 173 0 229 24 173 0 230 24 173 0 231 24 173 0 232 24 173 0 233 24 173 0 234 24 173 0 237 24 173 0 238 24 173 0 240 24 173 0 241 24 173 0 242 24 173 0 247 24 173 0 249 24 173 0 250 24 173 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 24 177 0 3 5 193 0 121] 
#[1 0 97 0 2 24 181 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 24 185 0 196 24 185 0 197 24 185 0 199 0 253 1 5 24 185 1 8 1 125 1 9 1 129 1 10 1 133 1 13 24 185 1 14 0 253 1 19 24 185 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 24 189 0 8 5 193 0 121] 
#[1 24 193 0 3 5 193 0 121] 
#[0 24 197 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 201 0 200 24 201 0 203 24 201 0 204 24 201 0 205 24 201 0 213 24 201 0 227 24 201 0 228 24 201 0 229 24 201 0 230 24 201 0 231 24 201 0 232 24 201 0 233 24 201 0 234 24 201 0 237 24 201 0 238 24 201 0 240 24 201 0 241 24 201 0 242 24 201 0 247 24 201 0 249 24 201 0 250 24 201 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 205 0 200 24 205 0 203 24 205 0 204 24 205 0 205 24 205 0 213 24 205 0 227 24 205 0 228 24 205 0 229 24 205 0 230 24 205 0 231 24 205 0 232 24 205 0 233 24 205 0 234 24 205 0 237 24 205 0 238 24 205 0 240 24 205 0 241 24 205 0 242 24 205 0 247 24 205 0 249 24 205 0 250 24 205 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 209 0 200 24 209 0 203 24 209 0 204 24 209 0 205 24 209 0 213 24 209 0 227 24 209 0 228 24 209 0 229 24 209 0 230 24 209 0 231 24 209 0 232 24 209 0 233 24 209 0 234 24 209 0 237 24 209 0 238 24 209 0 240 24 209 0 241 24 209 0 242 24 209 0 247 24 209 0 249 24 209 0 250 24 209 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 24 213 0 3 5 193 0 121] 
#[1 0 97 0 2 24 217 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 24 221 0 196 24 221 0 197 24 221 0 199 0 253 1 5 24 221 1 8 1 125 1 9 1 129 1 10 1 133 1 13 24 221 1 14 0 253 1 19 24 221 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 11 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 225 0 200 24 225 0 203 24 225 0 204 24 225 0 205 24 225 0 213 24 225 0 227 24 225 0 228 24 225 0 229 24 225 0 230 24 225 0 231 24 225 0 232 24 225 0 233 24 225 0 234 24 225 0 237 24 225 0 238 24 225 0 240 24 225 0 241 24 225 0 242 24 225 0 247 24 225 0 249 24 225 0 250 24 225 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 229 0 200 24 229 0 203 24 229 0 204 24 229 0 205 24 229 0 213 24 229 0 227 24 229 0 228 24 229 0 229 24 229 0 230 24 229 0 231 24 229 0 232 24 229 0 233 24 229 0 234 24 229 0 237 24 229 0 238 24 229 0 240 24 229 0 241 24 229 0 242 24 229 0 247 24 229 0 249 24 229 0 250 24 229 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 24 233 0 3 5 193 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 237 0 200 24 237 0 203 24 237 0 204 24 237 0 205 24 237 0 213 24 237 0 227 24 237 0 228 24 237 0 229 24 237 0 230 24 237 0 231 24 237 0 232 24 237 0 233 24 237 0 234 24 237 0 237 24 237 0 238 24 237 0 240 24 237 0 241 24 237 0 242 24 237 0 247 24 237 0 249 24 237 0 250 24 237 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 24 241 0 200 24 241 0 203 24 241 0 204 24 241 0 205 24 241 0 213 24 241 0 227 24 241 0 228 24 241 0 229 24 241 0 230 24 241 0 231 24 241 0 232 24 241 0 233 24 241 0 234 24 241 0 237 24 241 0 238 24 241 0 240 24 241 0 241 24 241 0 242 24 241 0 247 24 241 0 249 24 241 0 250 24 241 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 24 245 0 196 24 245 0 197 0 253 1 5 24 245 1 8 1 125 1 9 1 129 1 10 1 133 1 13 24 245 1 14 0 253 1 19 24 245 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 24 249 0 3] 
#[0 24 253 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 25 1 0 200 25 1 0 203 25 1 0 204 25 1 0 205 25 1 0 213 25 1 0 227 25 1 0 228 25 1 0 229 25 1 0 230 25 1 0 231 25 1 0 232 25 1 0 233 25 1 0 234 25 1 0 237 25 1 0 238 25 1 0 240 25 1 0 241 25 1 0 242 25 1 0 247 25 1 0 249 25 1 0 250 25 1 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 11 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 25 5 0 196 25 5 0 197 25 5 0 199 0 253 1 5 25 5 1 8 1 125 1 9 1 129 1 10 1 133 1 13 25 5 1 14 0 253 1 19 25 5 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 25 9 0 122] 
#[1 25 13 0 5 22 29 0 59 22 33 0 68 25 17 0 245 25 21 0 246] 
#[0 11 62 0 5 0 59 0 68] 
#[1 25 25 0 5 22 29 0 59 25 29 0 244 22 41 0 245] 
#[1 1 213 0 4 25 33 0 205] 
#[0 11 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 25 37 0 5] 
#[1 11 70 0 5 6 237 0 6 25 41 0 64 25 53 0 97 25 53 0 98 25 53 0 99 25 53 0 100 25 45 0 104 6 249 0 125 7 13 0 128 7 17 0 129 25 49 0 142 25 49 0 154 25 49 0 155 25 49 0 156 7 13 1 69 7 17 1 70 25 53 1 139 25 69 1 142 25 61 1 213 25 65 1 214 25 69 1 215 25 69 1 216 25 69 1 217] 
#[0 25 81 0 4] 
#[0 11 74 0 8 0 121] 
#[0 11 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 11 82 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[1 7 213 0 1 25 85 0 73 11 237 1 224] 
#[0 11 86 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 90 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 94 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 98 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 102 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 25 89 0 5] 
#[1 1 206 0 1 11 106 0 5 16 45 0 67 0 35 0 73 16 53 0 82 6 97 0 87 6 101 0 92 6 105 0 113 25 93 1 51 22 81 1 137 25 93 1 144 25 93 1 153 25 93 1 173 25 93 1 179 25 93 1 193 25 93 1 199 25 93 1 202 25 93 1 204 25 93 1 205 25 93 1 206 25 93 1 207] 
#[0 11 110 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 114 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 118 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 122 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 126 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 130 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[1 0 34 0 4 0 34 0 6 11 125 0 72 0 223 0 124 15 193 0 141 15 197 1 209 15 201 1 210 0 34 1 227] 
#[1 11 129 0 61 22 137 0 63 6 81 0 72 11 137 0 79 22 145 0 82 6 97 0 87 22 149 0 89 11 149 0 92 11 153 0 115 25 97 0 209 0 65 0 210 25 101 1 153 25 121 1 168 25 105 1 179 25 109 1 208 25 113 1 211 25 117 1 212 25 121 1 218 25 125 1 219] 
#[1 0 189 0 124 23 41 0 141] 
#[1 0 38 0 4 0 38 0 6 0 227 0 124 15 193 0 141 15 209 1 209 15 201 1 210 0 38 1 227] 
#[0 11 134 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 138 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 142 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 146 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 150 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 154 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 158 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 162 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 25 129 0 5] 
#[1 11 166 0 5 11 129 0 61 22 137 0 63 6 81 0 72 22 141 0 73 11 137 0 79 22 145 0 82 6 97 0 87 22 149 0 89 11 149 0 92 11 153 0 115 22 153 0 209 0 65 0 210 22 157 1 153 22 177 1 168 22 161 1 179 22 165 1 208 22 169 1 211 22 173 1 212 22 177 1 218 22 181 1 219 25 133 1 222] 
#[0 11 170 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 25 141 0 196 25 141 0 197 0 253 1 5 25 141 1 8 1 125 1 9 1 129 1 10 1 133 1 13 25 141 1 14 0 253 1 19 25 141 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 25 141 1 172 1 209 1 227] 
#[0 11 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 11 178 0 5 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 19 73 0 142 19 73 0 154 19 73 0 155 19 73 0 156 7 13 1 69 7 17 1 70 25 145 1 171] 
#[0 25 149 0 8] 
#[0 11 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 25 153 0 8] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 157 1 6 14 185 1 7 0 6 1 227] 
#[0 25 161 0 4] 
#[0 25 165 0 3] 
#[0 25 169 0 4] 
#[1 0 189 0 124 25 173 0 141] 
#[0 11 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 25 177 0 128 1 69] 
#[0 11 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 11 194 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 198 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 202 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 206 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 210 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 214 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 218 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 222 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 226 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 230 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 234 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 23 77 0 23] 
#[0 11 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 11 242 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227] 
#[0 11 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 25 181 0 8] 
#[1 4 97 0 4 2 153 0 11 4 101 0 74 15 181 1 34 25 185 1 35 19 33 1 100 4 117 1 227] 
#[1 25 189 0 2 2 153 0 11 7 21 1 100 19 49 1 136] 
#[0 11 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 11 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 189 0 124 19 125 0 141 19 129 1 118 19 133 1 180] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 193 1 6 14 185 1 7 0 6 1 227] 
#[0 25 197 0 5] 
#[1 12 41 0 122 25 201 1 135] 
#[1 12 41 0 122 25 205 1 135] 
#[0 12 2 0 5 0 8 0 121] 
#[1 12 6 0 5 12 6 0 8 12 6 0 121 12 41 0 122 25 209 1 135] 
#[0 12 10 0 4 0 5 0 8 0 121] 
#[0 12 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 2 141 0 2 2 145 0 4 2 149 0 6 2 153 0 11 2 157 0 84 2 161 0 88 2 165 0 93 2 169 0 109 2 173 0 114 2 177 0 116 0 189 0 124 2 185 0 128 2 189 0 129 2 181 0 141 2 185 1 69 2 189 1 70 2 193 1 100 25 213 1 107 2 201 1 108 2 205 1 109 2 205 1 110 2 213 1 111 2 213 1 112 2 213 1 113 2 213 1 114 2 213 1 115 2 213 1 116 2 237 1 117 2 241 1 118 2 213 1 119 2 213 1 123 2 213 1 124 2 201 1 127 2 205 1 128 25 213 1 129 25 213 1 130 2 213 1 131 2 213 1 133] 
#[0 12 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 17 157 1 6 14 185 1 7 25 217 1 30 0 6 1 227] 
#[0 25 221 0 4] 
#[0 25 225 0 3] 
#[0 25 229 0 4] 
#[0 25 233 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 113 1 6 14 185 1 7 25 237 1 21 0 6 1 227] 
#[0 25 241 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 25 245 1 6 14 185 1 7 0 6 1 227] 
#[1 9 198 0 4 10 138 0 8] 
#[0 25 249 0 5] 
#[1 9 206 0 4 10 150 0 8 12 41 0 122 25 253 1 135] 
#[0 12 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 97 0 4 4 101 0 74 26 1 1 34 4 113 1 35 4 117 1 227] 
#[0 12 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 4 97 0 4 4 101 0 74 26 5 1 34 4 113 1 35 4 117 1 227] 
#[0 12 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 42 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 12 46 0 3 0 5 0 7 0 121] 
#[0 12 50 0 3 0 5 0 7 0 121] 
#[0 26 9 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 13 1 6 14 185 1 7 26 17 1 26 0 6 1 227] 
#[0 26 21 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 17 157 1 6 14 185 1 7 26 25 1 30 0 6 1 227] 
#[0 26 29 0 4] 
#[0 26 33 0 3] 
#[0 26 37 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 41 1 6 14 185 1 7 0 6 1 227] 
#[0 26 45 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 49 1 6 14 185 1 7 0 6 1 227] 
#[1 12 41 0 122 26 53 1 135] 
#[1 2 154 0 3 8 93 0 23 12 54 0 122 8 145 0 158] 
#[1 2 158 0 3 8 93 0 23 12 58 0 122 8 153 0 158] 
#[0 26 57 0 3] 
#[1 12 41 0 122 26 61 1 135] 
#[0 26 65 0 3] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 69 1 6 14 185 1 7 0 6 1 227] 
#[0 12 62 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 26 73 0 5] 
#[0 26 77 0 3] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 81 1 6 14 185 1 7 0 6 1 227] 
#[0 12 66 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 9 110 0 8 8 93 0 23 12 41 0 122 21 37 0 158 26 85 1 135 26 89 1 164] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 26 93 1 164] 
#[1 26 97 0 4 26 101 0 8] 
#[0 26 105 0 8] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 26 109 1 164] 
#[0 26 113 0 8] 
#[0 26 117 0 8] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 121 1 6 14 185 1 7 0 6 1 227] 
#[0 12 70 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 12 74 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 26 125 0 4 26 129 0 8] 
#[1 6 229 0 2 9 110 0 8 2 153 0 11 8 93 0 23 26 133 0 43 12 41 0 122 21 37 0 158 7 21 1 100 26 137 1 135 26 141 1 136 26 145 1 164] 
#[0 12 78 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 12 82 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 9 110 0 8 8 93 0 23 12 41 0 122 21 37 0 158 26 149 1 135 26 153 1 164] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 26 157 1 164] 
#[1 26 161 0 4 26 165 0 8] 
#[0 26 169 0 8] 
#[0 12 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 12 90 0 5] 
#[0 26 173 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 113 1 6 14 185 1 7 26 177 1 21 0 6 1 227] 
#[0 26 181 0 5] 
#[1 11 6 0 14 26 185 1 98] 
#[1 11 6 0 14 26 189 1 98] 
#[0 26 193 0 14] 
#[0 26 197 0 5] 
#[0 12 94 0 4 0 136 0 138] 
#[0 12 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 226 1 227 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 26 201 0 196 26 201 0 197 0 253 1 5 26 201 1 8 1 125 1 9 1 129 1 10 1 133 1 13 26 201 1 14 0 253 1 19 26 201 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 26 205 0 5] 
#[0 12 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 12 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 209 0 200 26 209 0 203 26 209 0 204 26 209 0 205 26 209 0 213 26 209 0 227 26 209 0 228 26 209 0 229 26 209 0 230 26 209 0 231 26 209 0 232 26 209 0 233 26 209 0 234 26 209 0 237 26 209 0 238 26 209 0 240 26 209 0 241 26 209 0 242 26 209 0 247 26 209 0 249 26 209 0 250 26 209 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 213 0 200 26 213 0 203 26 213 0 204 26 213 0 205 26 213 0 213 26 213 0 227 26 213 0 228 26 213 0 229 26 213 0 230 26 213 0 231 26 213 0 232 26 213 0 233 26 213 0 234 26 213 0 237 26 213 0 238 26 213 0 240 26 213 0 241 26 213 0 242 26 213 0 247 26 213 0 249 26 213 0 250 26 213 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 26 217 0 3 5 193 0 121] 
#[1 0 97 0 2 26 221 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 26 225 0 196 26 225 0 197 26 225 0 199 0 253 1 5 26 225 1 8 1 125 1 9 1 129 1 10 1 133 1 13 26 225 1 14 0 253 1 19 26 225 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 229 0 200 26 229 0 203 26 229 0 204 26 229 0 205 26 229 0 213 26 229 0 227 26 229 0 228 26 229 0 229 26 229 0 230 26 229 0 231 26 229 0 232 26 229 0 233 26 229 0 234 26 229 0 237 26 229 0 238 26 229 0 240 26 229 0 241 26 229 0 242 26 229 0 247 26 229 0 249 26 229 0 250 26 229 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 233 0 200 26 233 0 203 26 233 0 204 26 233 0 205 26 233 0 213 26 233 0 227 26 233 0 228 26 233 0 229 26 233 0 230 26 233 0 231 26 233 0 232 26 233 0 233 26 233 0 234 26 233 0 237 26 233 0 238 26 233 0 240 26 233 0 241 26 233 0 242 26 233 0 247 26 233 0 249 26 233 0 250 26 233 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 12 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 237 0 200 26 237 0 203 26 237 0 204 26 237 0 205 26 237 0 213 26 237 0 227 26 237 0 228 26 237 0 229 26 237 0 230 26 237 0 231 26 237 0 232 26 237 0 233 26 237 0 234 26 237 0 237 26 237 0 238 26 237 0 240 26 237 0 241 26 237 0 242 26 237 0 247 26 237 0 249 26 237 0 250 26 237 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 241 0 200 26 241 0 203 26 241 0 204 26 241 0 205 26 241 0 213 26 241 0 227 26 241 0 228 26 241 0 229 26 241 0 230 26 241 0 231 26 241 0 232 26 241 0 233 26 241 0 234 26 241 0 237 26 241 0 238 26 241 0 240 26 241 0 241 26 241 0 242 26 241 0 247 26 241 0 249 26 241 0 250 26 241 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 26 245 0 3 5 193 0 121] 
#[0 12 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 26 249 0 200 26 249 0 203 26 249 0 204 26 249 0 205 26 249 0 213 26 249 0 227 26 249 0 228 26 249 0 229 26 249 0 230 26 249 0 231 26 249 0 232 26 249 0 233 26 249 0 234 26 249 0 237 26 249 0 238 26 249 0 240 26 249 0 241 26 249 0 242 26 249 0 247 26 249 0 249 26 249 0 250 26 249 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 12 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 26 253 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 1 0 200 27 1 0 203 27 1 0 204 27 1 0 205 27 1 0 213 27 1 0 227 27 1 0 228 27 1 0 229 27 1 0 230 27 1 0 231 27 1 0 232 27 1 0 233 27 1 0 234 27 1 0 237 27 1 0 238 27 1 0 240 27 1 0 241 27 1 0 242 27 1 0 247 27 1 0 249 27 1 0 250 27 1 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 27 5 0 200 27 5 0 203 27 5 0 204 27 5 0 205 27 5 0 213 27 5 0 227 27 5 0 228 27 5 0 229 27 5 0 230 27 5 0 231 27 5 0 232 27 5 0 233 27 5 0 234 27 5 0 237 27 5 0 238 27 5 0 240 27 5 0 241 27 5 0 242 27 5 0 247 27 5 0 249 27 5 0 250 27 5 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 12 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 5 193 0 121 27 9 0 122] 
#[1 0 6 0 2 0 6 0 4 12 150 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 12 150 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 27 13 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 0 6 1 227] 
#[0 12 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 158 0 5 0 59 0 68] 
#[1 27 17 0 5 22 29 0 59 27 21 0 244 22 41 0 245] 
#[0 12 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 27 25 0 5 22 29 0 59 25 17 0 245] 
#[0 12 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 27 29 0 2] 
#[1 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 27 33 0 142 27 33 0 154 27 33 0 155 27 33 0 156 7 13 1 69 7 17 1 70] 
#[1 6 229 0 2 27 37 0 8 2 153 0 11 12 41 0 122 7 21 1 100 27 41 1 135 27 45 1 136] 
#[1 8 33 0 6 27 49 0 64 27 53 0 104 6 249 0 125 7 13 0 128 7 17 0 129 27 57 0 142 27 57 0 154 27 57 0 155 27 57 0 156 7 13 1 69 7 17 1 70] 
#[0 12 174 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 27 61 0 5] 
#[1 12 178 0 5 6 237 0 6 25 41 0 64 25 53 0 97 25 53 0 98 25 53 0 99 25 53 0 100 25 45 0 104 6 249 0 125 7 13 0 128 7 17 0 129 25 49 0 142 25 49 0 154 25 49 0 155 25 49 0 156 7 13 1 69 7 17 1 70 25 53 1 139 27 65 1 142 27 65 1 215 27 65 1 216 27 65 1 217] 
#[0 12 182 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 12 186 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 12 190 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 11 70 0 5 6 237 0 6 25 41 0 64 25 53 0 97 25 53 0 98 25 53 0 99 25 53 0 100 25 45 0 104 6 249 0 125 7 13 0 128 7 17 0 129 25 49 0 142 25 49 0 154 25 49 0 155 25 49 0 156 7 13 1 69 7 17 1 70 25 53 1 139 25 69 1 142 27 69 1 213 25 65 1 214 25 69 1 215 25 69 1 216 25 69 1 217] 
#[1 16 45 0 67 27 73 0 68 22 145 0 82 6 97 0 87 6 105 0 113 27 77 1 144 27 81 1 153 16 97 1 179 27 85 1 207] 
#[0 12 194 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 198 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 12 202 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 206 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 210 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 214 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 218 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 222 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 226 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 230 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 12 238 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 242 0 5 0 121] 
#[0 12 246 0 5 0 121] 
#[0 12 250 0 5 0 121] 
#[0 12 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 27 89 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 113 1 6 14 185 1 7 27 93 1 21 0 6 1 227] 
#[0 27 97 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 101 1 6 14 185 1 7 0 6 1 227] 
#[0 6 202 0 8 0 22] 
#[0 27 105 0 3] 
#[0 13 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 27 109 0 4] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 27 113 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[0 27 117 0 5] 
#[1 12 22 0 1 0 231 0 2 12 22 0 4 12 22 0 5 0 231 0 6 0 231 0 8 11 42 0 9 11 42 0 10 11 42 0 11 11 42 0 12 11 42 0 13 11 42 0 14 11 42 0 15 11 42 0 16 11 42 0 17 11 42 0 18 11 42 0 20 11 42 0 21 11 42 0 22 11 42 0 23 11 42 0 24 11 42 0 25 11 42 0 26 11 42 0 27 11 42 0 28 11 42 0 29 11 42 0 30 11 42 0 31 11 42 0 32 11 42 0 33 11 42 0 34 0 231 0 35 0 231 0 36 0 231 0 37 0 231 0 38 12 22 0 39 11 42 0 40 11 42 0 41 11 42 0 42 11 42 0 43 11 42 0 44 11 42 0 45 11 42 0 46 11 42 0 47 11 42 0 48 11 42 0 49 11 42 0 50 11 42 0 51 12 22 0 52 11 42 0 53 11 42 0 54 12 22 0 56 12 22 0 57 12 22 0 58 12 22 0 61 12 22 0 62 12 22 0 63 12 22 0 65 12 22 0 66 12 22 0 67 12 22 0 69 12 22 0 70 12 22 0 72 12 22 0 73 12 22 0 75 12 22 0 77 12 22 0 79 12 22 0 81 12 22 0 82 11 42 0 83 11 42 0 86 12 22 0 87 12 22 0 89 12 22 0 92 12 22 0 93 12 22 0 94 12 22 0 102 12 22 0 106 12 22 0 107 12 22 0 109 12 22 0 110 12 22 0 111 12 22 0 112 12 22 0 113 12 22 0 114 12 22 0 115 12 22 0 116 12 22 0 117 12 22 0 118 12 22 0 119 11 42 0 121 12 22 0 124 12 22 0 126 12 22 0 128 12 22 0 129 12 22 0 130 0 231 0 132 0 231 0 133 12 22 0 136 11 42 1 226 0 231 1 227 12 22 1 228] 
#[0 13 10 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 13 14 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 13 18 0 5 0 8 0 121] 
#[0 13 22 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228] 
#[0 27 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 13 1 6 14 185 1 7 27 125 1 26 0 6 1 227] 
#[0 27 129 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 17 157 1 6 14 185 1 7 27 133 1 30 0 6 1 227] 
#[0 13 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 27 137 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 113 1 6 14 185 1 7 27 141 1 21 0 6 1 227] 
#[0 27 145 0 5] 
#[0 13 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 11 46 0 4 12 10 0 8] 
#[0 13 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 13 46 0 5] 
#[0 27 149 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 13 1 6 14 185 1 7 27 153 1 26 0 6 1 227] 
#[0 27 157 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 113 1 6 14 185 1 7 27 161 1 21 0 6 1 227] 
#[0 27 165 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 17 157 1 6 14 185 1 7 27 169 1 30 0 6 1 227] 
#[0 27 173 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 177 1 6 14 185 1 7 0 6 1 227] 
#[0 27 181 0 5] 
#[0 27 185 0 4] 
#[1 12 41 0 122 27 189 1 135] 
#[0 13 50 0 3] 
#[1 27 193 0 4 12 41 0 122 27 197 1 135] 
#[0 27 201 0 5] 
#[0 13 54 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[1 13 58 0 4 13 58 0 8 12 41 0 122 27 205 1 135] 
#[0 27 209 0 5] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 27 213 1 164] 
#[0 27 217 0 8] 
#[0 27 221 0 8] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 225 1 6 14 185 1 7 0 6 1 227] 
#[0 13 62 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 66 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 27 229 0 8] 
#[0 13 70 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 74 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 27 233 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 27 237 1 6 14 185 1 7 0 6 1 227] 
#[0 13 78 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[1 9 110 0 8 8 93 0 23 12 41 0 122 21 37 0 158 27 241 1 135 27 245 1 164] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 27 249 1 164] 
#[1 27 253 0 4 28 1 0 8] 
#[0 28 5 0 8] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 28 9 1 164] 
#[0 28 13 0 8] 
#[0 28 17 0 8] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 21 1 6 14 185 1 7 0 6 1 227] 
#[0 13 82 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 86 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 28 25 0 5] 
#[0 13 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 28 29 0 14] 
#[0 28 33 0 14] 
#[0 13 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 226 1 227 1 228] 
#[0 13 102 0 4 0 136 0 138] 
#[1 0 22 0 5 28 37 1 94] 
#[0 13 106 0 4 0 9 0 14 0 137] 
#[0 13 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 28 41 0 200 28 41 0 203 28 41 0 204 28 41 0 205 28 41 0 213 28 41 0 227 28 41 0 228 28 41 0 229 28 41 0 230 28 41 0 231 28 41 0 232 28 41 0 233 28 41 0 234 28 41 0 237 28 41 0 238 28 41 0 240 28 41 0 241 28 41 0 242 28 41 0 247 28 41 0 249 28 41 0 250 28 41 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 28 45 0 200 28 45 0 203 28 45 0 204 28 45 0 205 28 45 0 213 28 45 0 227 28 45 0 228 28 45 0 229 28 45 0 230 28 45 0 231 28 45 0 232 28 45 0 233 28 45 0 234 28 45 0 237 28 45 0 238 28 45 0 240 28 45 0 241 28 45 0 242 28 45 0 247 28 45 0 249 28 45 0 250 28 45 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[1 28 49 0 3 5 193 0 121] 
#[0 13 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 28 53 0 200 28 53 0 203 28 53 0 204 28 53 0 205 28 53 0 213 28 53 0 227 28 53 0 228 28 53 0 229 28 53 0 230 28 53 0 231 28 53 0 232 28 53 0 233 28 53 0 234 28 53 0 237 28 53 0 238 28 53 0 240 28 53 0 241 28 53 0 242 28 53 0 247 28 53 0 249 28 53 0 250 28 53 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 13 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 28 57 0 200 28 57 0 203 28 57 0 204 28 57 0 205 28 57 0 213 28 57 0 227 28 57 0 228 28 57 0 229 28 57 0 230 28 57 0 231 28 57 0 232 28 57 0 233 28 57 0 234 28 57 0 237 28 57 0 238 28 57 0 240 28 57 0 241 28 57 0 242 28 57 0 247 28 57 0 249 28 57 0 250 28 57 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 13 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 6 0 2 0 6 0 4 13 146 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 146 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 13 146 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 28 61 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 0 6 1 227] 
#[1 0 6 0 2 0 6 0 4 13 150 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 150 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 65 0 207 0 57 0 208 6 65 0 209 0 65 0 210 0 6 1 227] 
#[0 13 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 28 65 0 5 22 29 0 59 25 17 0 245] 
#[0 13 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 28 69 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 6 229 0 2 28 73 0 8 2 153 0 11 12 41 0 122 7 21 1 100 28 77 1 135 28 81 1 136] 
#[0 13 162 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 28 85 0 8] 
#[0 28 89 0 8] 
#[0 28 93 0 2] 
#[1 8 33 0 6 6 249 0 125 7 13 0 128 7 17 0 129 28 97 0 142 28 97 0 154 28 97 0 155 28 97 0 156 7 13 1 69 7 17 1 70] 
#[1 6 229 0 2 28 101 0 8 2 153 0 11 12 41 0 122 7 21 1 100 28 105 1 135 28 109 1 136] 
#[0 13 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 170 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 28 113 0 5] 
#[1 11 129 0 61 11 137 0 79 0 189 0 124 28 117 0 141 20 9 1 211 20 13 1 212] 
#[0 8 166 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 8 174 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 8 190 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[1 13 26 0 1 0 235 0 2 13 26 0 4 13 26 0 5 0 235 0 6 0 235 0 8 12 86 0 9 12 86 0 10 12 86 0 11 12 86 0 12 12 86 0 13 12 86 0 14 12 86 0 15 12 86 0 16 12 86 0 17 12 86 0 18 12 86 0 20 12 86 0 21 12 86 0 22 12 86 0 23 12 86 0 24 12 86 0 25 12 86 0 26 12 86 0 27 12 86 0 28 12 86 0 29 12 86 0 30 12 86 0 31 12 86 0 32 12 86 0 33 12 86 0 34 0 235 0 35 0 235 0 36 0 235 0 37 0 235 0 38 13 26 0 39 12 86 0 40 12 86 0 41 12 86 0 42 12 86 0 43 12 86 0 44 12 86 0 45 12 86 0 46 12 86 0 47 12 86 0 48 12 86 0 49 12 86 0 50 12 86 0 51 13 26 0 52 12 86 0 53 12 86 0 54 13 26 0 56 13 26 0 57 13 26 0 58 13 26 0 61 13 26 0 62 13 26 0 63 13 26 0 65 13 26 0 66 13 26 0 67 13 26 0 69 13 26 0 70 13 26 0 72 13 26 0 73 13 26 0 75 13 26 0 77 13 26 0 79 13 26 0 81 13 26 0 82 12 86 0 83 12 86 0 86 13 26 0 87 13 26 0 89 13 26 0 92 13 26 0 93 13 26 0 94 13 26 0 102 13 26 0 106 13 26 0 107 13 26 0 109 13 26 0 110 13 26 0 111 13 26 0 112 13 26 0 113 13 26 0 114 13 26 0 115 13 26 0 116 13 26 0 117 13 26 0 118 13 26 0 119 12 86 0 121 13 26 0 124 13 26 0 126 13 26 0 128 13 26 0 129 13 26 0 130 0 235 0 132 0 235 0 133 13 26 0 136 12 86 1 226 0 235 1 227 13 26 1 228] 
#[0 28 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 24 113 1 6 14 185 1 7 28 125 1 21 0 6 1 227] 
#[0 28 129 0 5] 
#[0 28 133 0 8] 
#[1 0 239 0 5 6 237 0 6 8 245 0 8 8 249 0 26 8 253 0 56 25 41 0 64 9 1 0 80 25 53 0 97 25 53 0 98 25 53 0 99 25 53 0 100 9 5 0 103 28 137 0 104 9 13 0 124 6 249 0 125 9 17 0 126 7 13 0 128 7 17 0 129 25 49 0 142 25 49 0 154 25 49 0 155 25 49 0 156 9 45 1 16 9 45 1 20 9 45 1 25 9 45 1 29 14 25 1 36 9 41 1 37 9 45 1 38 9 49 1 39 9 53 1 40 9 45 1 41 7 13 1 69 7 17 1 70 25 53 1 139 25 69 1 142 9 45 1 146 9 45 1 147 25 61 1 213 25 65 1 214 25 69 1 215 25 69 1 216 25 69 1 217 9 69 1 227] 
#[0 28 141 0 3] 
#[1 13 30 0 1 0 243 0 2 13 30 0 4 13 30 0 5 0 243 0 6 0 243 0 8 12 102 0 9 12 102 0 10 12 102 0 11 12 102 0 12 12 102 0 13 12 102 0 14 12 102 0 15 12 102 0 16 12 102 0 17 12 102 0 18 12 102 0 20 12 102 0 21 12 102 0 22 12 102 0 23 12 102 0 24 12 102 0 25 12 102 0 26 12 102 0 27 12 102 0 28 12 102 0 29 12 102 0 30 12 102 0 31 12 102 0 32 12 102 0 33 12 102 0 34 0 243 0 35 0 243 0 36 0 243 0 37 0 243 0 38 13 30 0 39 12 102 0 40 12 102 0 41 12 102 0 42 12 102 0 43 12 102 0 44 12 102 0 45 12 102 0 46 12 102 0 47 12 102 0 48 12 102 0 49 12 102 0 50 12 102 0 51 13 30 0 52 12 102 0 53 12 102 0 54 13 30 0 56 13 30 0 57 13 30 0 58 13 30 0 61 13 30 0 62 13 30 0 63 13 30 0 65 13 30 0 66 13 30 0 67 13 30 0 69 13 30 0 70 13 30 0 72 13 30 0 73 13 30 0 75 13 30 0 77 13 30 0 79 13 30 0 81 13 30 0 82 12 102 0 83 12 102 0 86 13 30 0 87 13 30 0 89 13 30 0 92 13 30 0 93 13 30 0 94 13 30 0 102 13 30 0 106 13 30 0 107 13 30 0 109 13 30 0 110 13 30 0 111 13 30 0 112 13 30 0 113 13 30 0 114 13 30 0 115 13 30 0 116 13 30 0 117 13 30 0 118 13 30 0 119 12 102 0 121 13 30 0 124 13 30 0 126 13 30 0 128 13 30 0 129 13 30 0 130 0 243 0 132 0 243 0 133 13 30 0 136 12 102 1 226 0 243 1 227 13 30 1 228] 
#[0 13 174 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 28 145 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 13 1 6 14 185 1 7 28 149 1 26 0 6 1 227] 
#[0 28 153 0 5] 
#[0 13 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 28 157 0 5] 
#[0 13 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 13 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 28 161 0 5] 
#[0 13 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 28 165 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 26 13 1 6 14 185 1 7 28 169 1 26 0 6 1 227] 
#[0 28 173 0 5] 
#[0 13 194 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 28 177 0 5] 
#[0 13 198 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 181 1 6 14 185 1 7 0 6 1 227] 
#[0 28 185 0 4] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 189 1 6 14 185 1 7 0 6 1 227] 
#[0 28 193 0 4] 
#[0 13 202 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 13 206 0 4 0 8] 
#[0 13 210 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 28 197 0 8] 
#[0 13 214 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 218 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 28 201 0 5] 
#[0 13 222 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 226 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 28 205 0 5] 
#[1 9 110 0 8 8 93 0 23 21 37 0 158 28 209 1 164] 
#[0 28 213 0 8] 
#[0 28 217 0 8] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 28 221 1 6 14 185 1 7 0 6 1 227] 
#[0 13 230 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 234 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 28 225 0 8] 
#[0 13 238 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 13 242 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 28 229 0 5] 
#[0 13 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 13 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 137 1 226 1 227 1 228] 
#[0 13 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 226 1 227 1 228] 
#[0 28 233 0 5] 
#[0 14 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 14 6 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 217 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 221 0 58 0 137 0 61 1 225 0 65 1 229 0 66 0 141 0 69 1 233 0 70 1 173 0 75 1 237 0 77 0 149 0 79 1 241 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 245 0 102 0 165 0 106 1 249 0 107 0 169 0 109 1 253 0 110 1 173 0 111 2 1 0 112 0 177 0 114 2 5 0 115 0 181 0 116 2 9 0 117 2 13 0 118 0 185 0 119 2 17 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 21 0 196 2 21 0 197 2 21 0 199 28 237 0 200 28 237 0 203 28 237 0 204 28 237 0 205 28 237 0 213 28 237 0 227 28 237 0 228 28 237 0 229 28 237 0 230 28 237 0 231 28 237 0 232 28 237 0 233 28 237 0 234 28 237 0 237 28 237 0 238 28 237 0 240 28 237 0 241 28 237 0 242 28 237 0 247 28 237 0 249 28 237 0 250 28 237 0 254 0 253 1 5 2 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 21 1 14 0 253 1 19 2 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 227] 
#[0 14 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 14 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 0 6 0 2 0 6 0 4 14 18 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 14 18 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 14 18 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 65 0 207 0 57 0 208 6 65 0 209 0 65 0 210 0 6 1 227] 
#[0 14 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 28 241 0 3] 
#[0 14 26 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 28 245 0 8] 
#[0 28 249 0 8] 
#[0 14 30 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 34 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 0 74 0 3 3 149 0 4 3 153 0 6 3 205 0 120 0 189 0 124 8 41 0 141 3 217 0 216 3 217 0 217 3 217 0 218 3 249 0 224 3 249 0 225 3 245 0 226 28 253 1 0 3 241 1 1 3 245 1 2 3 249 1 3 6 225 1 227] 
#[1 6 229 0 2 29 1 0 8 2 153 0 11 12 41 0 122 7 21 1 100 29 5 1 135 29 9 1 136] 
#[0 14 38 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 13 0 8] 
#[0 29 17 0 8] 
#[0 14 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 23 69 0 8] 
#[1 13 178 0 1 0 247 0 2 13 178 0 4 13 178 0 5 0 247 0 6 0 247 0 8 13 90 0 9 13 90 0 10 13 90 0 11 13 90 0 12 13 90 0 13 13 90 0 14 13 90 0 15 13 90 0 16 13 90 0 17 13 90 0 18 13 90 0 20 13 90 0 21 13 90 0 22 13 90 0 23 13 90 0 24 13 90 0 25 13 90 0 26 13 90 0 27 13 90 0 28 13 90 0 29 13 90 0 30 13 90 0 31 13 90 0 32 13 90 0 33 13 90 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 13 178 0 39 13 90 0 40 13 90 0 41 13 90 0 42 13 90 0 43 13 90 0 44 13 90 0 45 13 90 0 46 13 90 0 47 13 90 0 48 13 90 0 49 13 90 0 50 13 90 0 51 13 178 0 52 13 90 0 53 13 90 0 54 13 178 0 56 13 178 0 57 13 178 0 58 13 178 0 61 13 178 0 62 13 178 0 63 13 178 0 65 13 178 0 66 13 178 0 67 13 178 0 69 13 178 0 70 13 178 0 72 13 178 0 73 13 178 0 75 13 178 0 77 13 178 0 79 13 178 0 81 13 178 0 82 13 90 0 83 13 90 0 86 13 178 0 87 13 178 0 89 13 178 0 92 13 178 0 93 13 178 0 94 13 178 0 102 13 178 0 106 13 178 0 107 13 178 0 109 13 178 0 110 13 178 0 111 13 178 0 112 13 178 0 113 13 178 0 114 13 178 0 115 13 178 0 116 13 178 0 117 13 178 0 118 13 178 0 119 13 90 0 121 13 178 0 124 13 178 0 126 13 178 0 128 13 178 0 129 13 178 0 130 0 247 0 132 0 247 0 133 13 178 0 136 13 90 1 226 0 247 1 227 13 178 1 228] 
#[0 29 21 0 5] 
#[1 13 182 0 1 0 251 0 2 13 182 0 4 13 182 0 5 0 251 0 6 0 251 0 8 13 94 0 9 13 94 0 10 13 94 0 11 13 94 0 12 13 94 0 13 13 94 0 14 13 94 0 15 13 94 0 16 13 94 0 17 13 94 0 18 13 94 0 20 13 94 0 21 13 94 0 22 13 94 0 23 13 94 0 24 13 94 0 25 13 94 0 26 13 94 0 27 13 94 0 28 13 94 0 29 13 94 0 30 13 94 0 31 13 94 0 32 13 94 0 33 13 94 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 13 182 0 39 13 94 0 40 13 94 0 41 13 94 0 42 13 94 0 43 13 94 0 44 13 94 0 45 13 94 0 46 13 94 0 47 13 94 0 48 13 94 0 49 13 94 0 50 13 94 0 51 13 182 0 52 13 94 0 53 13 94 0 54 13 182 0 56 13 182 0 57 13 182 0 58 13 182 0 61 13 182 0 62 13 182 0 63 13 182 0 65 13 182 0 66 13 182 0 67 13 182 0 69 13 182 0 70 13 182 0 72 13 182 0 73 13 182 0 75 13 182 0 77 13 182 0 79 13 182 0 81 13 182 0 82 13 94 0 83 13 94 0 86 13 182 0 87 13 182 0 89 13 182 0 92 13 182 0 93 13 182 0 94 13 182 0 102 13 182 0 106 13 182 0 107 13 182 0 109 13 182 0 110 13 182 0 111 13 182 0 112 13 182 0 113 13 182 0 114 13 182 0 115 13 182 0 116 13 182 0 117 13 182 0 118 13 182 0 119 13 94 0 121 13 182 0 124 13 182 0 126 13 182 0 128 13 182 0 129 13 182 0 130 0 251 0 132 0 251 0 133 13 182 0 136 13 94 1 226 0 251 1 227 13 182 1 228] 
#[0 14 46 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[1 13 201 0 4 8 33 0 6 8 249 0 26 8 253 0 56 9 1 0 80 9 5 0 103 9 13 0 124 6 249 0 125 9 17 0 126 7 13 0 128 7 17 0 129 27 33 0 142 27 33 0 154 27 33 0 155 27 33 0 156 13 205 1 16 13 205 1 20 13 205 1 25 13 205 1 29 13 209 1 39 9 53 1 40 7 13 1 69 7 17 1 70 13 205 1 146 13 205 1 147 9 217 1 227] 
#[1 25 169 0 4 8 198 0 8 12 41 0 122 20 33 1 135] 
#[0 14 50 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 29 25 0 5] 
#[0 14 54 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 14 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 14 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 226 1 227 1 228] 
#[0 14 66 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 29 29 0 5] 
#[0 14 70 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 14 74 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 29 33 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 29 37 1 6 14 185 1 7 0 6 1 227] 
#[0 29 41 0 5] 
#[1 0 6 0 2 0 6 0 4 6 6 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 177 0 206 2 117 0 207 0 57 0 208 2 117 0 209 0 65 0 210 29 45 1 6 14 185 1 7 0 6 1 227] 
#[0 14 78 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 14 82 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 14 86 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 29 49 0 8] 
#[0 14 90 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 14 94 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 29 53 0 5] 
#[0 14 98 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 14 102 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 14 106 0 4 0 9 0 14 0 137] 
#[0 14 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 29 57 0 8] 
#[0 14 114 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 118 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 61 0 3] 
#[0 14 122 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 65 0 8] 
#[0 29 69 0 8] 
#[0 14 126 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 130 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 14 58 0 1 0 255 0 2 14 58 0 4 14 58 0 5 0 255 0 6 0 255 0 8 13 246 0 9 13 246 0 10 13 246 0 11 13 246 0 12 13 246 0 13 13 246 0 14 13 246 0 15 13 246 0 16 13 246 0 17 13 246 0 18 13 246 0 20 13 246 0 21 13 246 0 22 13 246 0 23 13 246 0 24 13 246 0 25 13 246 0 26 13 246 0 27 13 246 0 28 13 246 0 29 13 246 0 30 13 246 0 31 13 246 0 32 13 246 0 33 13 246 0 34 0 255 0 35 0 255 0 36 0 255 0 37 0 255 0 38 14 58 0 39 13 246 0 40 13 246 0 41 13 246 0 42 13 246 0 43 13 246 0 44 13 246 0 45 13 246 0 46 13 246 0 47 13 246 0 48 13 246 0 49 13 246 0 50 13 246 0 51 14 58 0 52 13 246 0 53 13 246 0 54 14 58 0 56 14 58 0 57 14 58 0 58 14 58 0 61 14 58 0 62 14 58 0 63 14 58 0 65 14 58 0 66 14 58 0 67 14 58 0 69 14 58 0 70 14 58 0 72 14 58 0 73 14 58 0 75 14 58 0 77 14 58 0 79 14 58 0 81 14 58 0 82 13 246 0 83 13 246 0 86 14 58 0 87 14 58 0 89 14 58 0 92 14 58 0 93 14 58 0 94 14 58 0 102 14 58 0 106 14 58 0 107 14 58 0 109 14 58 0 110 14 58 0 111 14 58 0 112 14 58 0 113 14 58 0 114 14 58 0 115 14 58 0 116 14 58 0 117 14 58 0 118 14 58 0 119 13 246 0 121 14 58 0 124 14 58 0 126 14 58 0 128 14 58 0 129 14 58 0 130 0 255 0 132 0 255 0 133 14 58 0 136 13 246 1 226 0 255 1 227 14 58 1 228] 
#[0 14 134 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 227 1 228] 
#[0 14 138 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 14 142 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 29 73 0 5] 
#[0 14 146 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 29 77 0 5] 
#[0 14 150 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 14 154 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 227] 
#[0 14 158 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 81 0 8] 
#[0 14 162 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 166 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 170 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 14 174 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 227] 
#[0 14 178 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129]
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
