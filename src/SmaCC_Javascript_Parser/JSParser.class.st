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
#[ 0 14 3 153] 
#[ 0 158 4 185] 
#[ 0 182 4 185] 
#[ 1 210 6 105] 
#[ 1 242 7 141] 
#[ 1 246 7 145] 
#[ 1 110 1 254] 
#[ 1 110 2 22] 
#[ 1 210 7 233] 
#[ 0 126 2 162] 
#[ 0 126 8 117] 
#[ 1 210 8 189] 
#[ 1 210 8 193] 
#[ 1 210 8 197] 
#[ 1 210 8 201] 
#[ 0 189 1 210] 
#[ 0 178 2 250] 
#[ 3 22 4 185] 
#[ 3 34 4 185] 
#[ 3 38 4 185] 
#[ 0 14 10 177] 
#[ 1 226 2 162] 
#[ 1 110 4 82] 
#[ 1 110 4 86] 
#[ 2 198 4 166] 
#[ 0 14 13 193] 
#[ 1 210 7 1] 
#[ 1 210 7 13] 
#[ 0 197 1 210] 
#[ 0 201 1 210] 
#[ 3 18 5 86] 
#[ 0 22 6 46] 
#[ 1 226 4 74] 
#[ 0 198 15 105] 
#[ 2 242 4 118] 
#[ 4 2 4 154] 
#[ 4 62 4 166] 
#[ 2 202 12 89] 
#[ 6 190 7 145] 
#[ 1 110 6 194] 
#[ 0 126 6 238] 
#[ 4 241 6 242] 
#[ 0 182 4 185 6 242] 
#[ 0 126 4 190] 
#[ 4 246 7 30] 
#[ 5 66 6 218] 
#[ 8 170 8 174] 
#[ 8 178 8 182] 
#[ 8 198 8 202] 
#[ 0 34 0 189] 
#[ 0 38 0 189] 
#[ 0 126 23 161] 
#[ 11 90 12 70] 
#[ 12 138 13 46] 
#[ 11 118 14 45] 
#[ 12 154 13 50] 
#[ 13 110 13 198] 
#[ 13 114 13 202] 
#[ 14 10 14 78]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2024-01-09T14:39:01.084397-06:00'
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
	#(303 0 #reduceActionForModule1: 38268929 false) 
	#(152 0 #reduceActionForValidationNotArrowFunction1: 11696129 true) 
	#(161 0 #reduceActionForStartTemplateLiteral1: 12911617 true) 
	#(351 0 #reduceActionForSwitchToJSX1: 44121089 true) 
	#(301 0 #reduceActionForScript1: 38210561 false) 
	#(440 0 #reduceActionForSourceFileElement__element__1: 60228609 false) 
	#(211 1 #liftFirstValue: 24353794 false) 
	#(211 1 #liftFirstValue: 24353793 false) 
	#(306 1 #liftFirstValue: 38402051 false) 
	#(208 1 #liftFirstValue: 24084482 false) 
	#(141 1 #liftFirstValue: 9032705 false) 
	#(303 1 #reduceActionForModule2: 38268930 false) 
	#(304 1 #reduceActionForModuleBody1: 38297601 false) 
	#(305 1 #reduceActionForModuleItemList1: 38328321 false) 
	#(306 1 #liftFirstValue: 38402049 false) 
	#(306 1 #liftFirstValue: 38402050 false) 
	#(257 0 #reduceActionForFormalParameters1: 32083969 false) 
	#(325 1 #liftFirstValue: 41373698 false) 
	#(324 1 #liftFirstValue: 41350145 false) 
	#(144 1 #reduceActionForPrimaryExpression1: 9440257 false) 
	#(325 1 #liftFirstValue: 41373697 false) 
	#(279 1 #reduceActionForYieldExpression1: 35111937 false) 
	#(142 1 #reduceActionForIdentifier1: 9145345 false) 
	#(323 1 #reduceActionForIdentifier1: 41280513 false) 
	#(326 1 #liftFirstValue: 41410561 false) 
	#(327 1 #liftFirstValue: 41446401 false) 
	#(328 1 #reduceActionForRegularExpressionLiteral1: 41484289 false) 
	#(160 1 #reduceActionForTemplateLiteral1: 12755969 false) 
	#(352 0 #reduceActionForSwitchToJSXText1: 44162049 true) 
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
	#(329 1 #liftFirstValue: 41736193 false) 
	#(353 0 #reduceActionForStartJSXText1: 44211201 true) 
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
	#(302 1 #reduceActionForModuleBody1: 38239233 false) 
	#(207 1 #reduceActionForModuleItemList1: 23987201 false) 
	#(301 1 #reduceActionForScript2: 38210562 false) 
	#(394 0 #reduceActionForSourceFileElement__element__1: 48350209 false) 
	#(439 1 #reduceActionForSourceFile1: 60126209 false) 
	#(390 1 #reduceActionForThisType1: 47848449 false) 
	#(372 1 #reduceActionForPredefinedType1: 45881345 false) 
	#(374 1 #reduceActionForTypeName1: 46029825 false) 
	#(375 1 #reduceActionForNamespaceName1: 46136321 false) 
	#(370 1 #reduceActionForLiteralType1: 45718529 false) 
	#(370 1 #reduceActionForLiteralType1: 45718530 false) 
	#(364 1 #liftFirstValue: 45033473 false) 
	#(365 1 #liftFirstValue: 45110274 false) 
	#(366 1 #liftFirstValue: 45187074 false) 
	#(367 1 #liftFirstValue: 45248513 false) 
	#(368 1 #liftFirstValue: 45391882 false) 
	#(368 1 #liftFirstValue: 45391881 false) 
	#(368 1 #liftFirstValue: 45391873 false) 
	#(368 1 #liftFirstValue: 45391874 false) 
	#(368 1 #liftFirstValue: 45391875 false) 
	#(373 1 #reduceActionForTypeReference1: 45933569 false) 
	#(368 1 #liftFirstValue: 45391876 false) 
	#(368 1 #liftFirstValue: 45391877 false) 
	#(368 1 #liftFirstValue: 45391878 false) 
	#(365 1 #liftFirstValue: 45110273 false) 
	#(366 1 #liftFirstValue: 45187073 false) 
	#(364 1 #liftFirstValue: 45033474 false) 
	#(364 1 #liftFirstValue: 45033475 false) 
	#(368 1 #liftFirstValue: 45391879 false) 
	#(368 1 #liftFirstValue: 45391880 false) 
	#(319 1 #reduceActionForExportFromClause1: 40730625 false) 
	#(318 2 #reduceActionForExportDeclaration4: 39937028 false) 
	#(202 1 #liftFirstValue: 23597057 false) 
	#(202 1 #liftFirstValue: 23597059 false) 
	#(318 2 #reduceActionForExportDeclaration3: 39937027 false) 
	#(203 1 #liftFirstValue: 23675905 false) 
	#(203 1 #liftFirstValue: 23675906 false) 
	#(203 1 #liftFirstValue: 23675908 false) 
	#(203 1 #liftFirstValue: 23675907 false) 
	#(202 1 #liftFirstValue: 23597058 false) 
	#(319 1 #reduceActionForExportFromClause3: 40730627 false) 
	#(317 1 #liftFirstValue: 39902209 false) 
	#(309 1 #reduceActionForImportClause1: 38704129 false) 
	#(309 1 #reduceActionForImportClause1: 38704130 false) 
	#(309 1 #reduceActionForImportClause1: 38704131 false) 
	#(310 1 #liftFirstValue: 39065601 false) 
	#(316 1 #liftFirstValue: 39860225 false) 
	#(208 2 #liftSecondValue: 24084481 false) 
	#(213 1 #reduceActionForArrowParameterDeclaration1: 24483841 false) 
	#(212 1 #reduceActionForNamespaceName1: 24385537 false) 
	#(217 1 #liftFirstValue: 25030657 false) 
	#(217 1 #liftFirstValue: 25030658 false) 
	#(213 1 #liftFirstValue: 24483844 false) 
	#(213 1 #liftFirstValue: 24483845 false) 
	#(305 2 #reduceActionForModuleItemList2: 38328322 false) 
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
	#(290 2 #reduceActionForClassExpression1: 37114881 false) 
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
	#(348 0 #reduceActionForSourceFileElement__element__1: 43806721 false) 
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
	#(447 1 #liftFirstValue: 61313025 false) 
	#(447 1 #liftFirstValue: 61313026 false) 
	#(447 1 #liftFirstValue: 61313027 false) 
	#(447 1 #liftFirstValue: 61313028 false) 
	#(447 1 #liftFirstValue: 61313029 false) 
	#(441 1 #liftFirstValue: 60277763 false) 
	#(447 1 #liftFirstValue: 61313031 false) 
	#(447 1 #liftFirstValue: 61313030 false) 
	#(447 1 #liftFirstValue: 61313032 false) 
	#(447 1 #liftFirstValue: 61313033 false) 
	#(447 1 #liftFirstValue: 61313035 false) 
	#(440 2 #reduceActionForModuleItemList2: 60228610 false) 
	#(441 1 #liftFirstValue: 60277761 false) 
	#(441 1 #liftFirstValue: 60277764 false) 
	#(441 1 #liftFirstValue: 60277765 false) 
	#(441 1 #liftFirstValue: 60277769 false) 
	#(441 1 #liftFirstValue: 60277766 false) 
	#(441 1 #liftFirstValue: 60277770 false) 
	#(441 1 #liftFirstValue: 60277767 false) 
	#(441 1 #liftFirstValue: 60277768 false) 
	#(447 1 #liftFirstValue: 61313034 false) 
	#(441 1 #liftFirstValue: 60277762 false) 
	#(376 2 #reduceActionForObjectType1: 46240769 false) 
	#(143 1 #reduceActionForIdentifier1: 9338881 false) 
	#(156 1 #liftFirstValue: 12360705 false) 
	#(391 1 #reduceActionForPropertySignature1: 47886337 false) 
	#(155 1 #liftFirstValue: 12298241 false) 
	#(155 1 #liftFirstValue: 12298242 false) 
	#(156 1 #reduceActionForIdentifier1: 12360706 false) 
	#(156 1 #reduceActionForIdentifier1: 12360707 false) 
	#(377 1 #reduceActionForModuleBody1: 46322689 false) 
	#(378 1 #reduceActionForNamespaceName1: 46418945 false) 
	#(379 1 #liftFirstValue: 46573569 false) 
	#(379 1 #liftFirstValue: 46573570 false) 
	#(379 1 #liftFirstValue: 46573571 false) 
	#(379 1 #liftFirstValue: 46573572 false) 
	#(379 1 #liftFirstValue: 46573573 false) 
	#(381 2 #reduceActionForTupleType1: 46788609 false) 
	#(383 1 #liftFirstValue: 47015937 false) 
	#(382 1 #reduceActionForNamespaceName1: 46907393 false) 
	#(359 1 #reduceActionForTypeParameter1: 44719105 false) 
	#(358 1 #reduceActionForNamespaceName1: 44606465 false) 
	#(367 2 #reduceActionForPrefixType3: 45248515 false) 
	#(367 2 #reduceActionForPrefixType2: 45248514 false) 
	#(389 1 #reduceActionForTypeQueryExpression1: 47724545 false) 
	#(388 2 #reduceActionForTypeQuery1: 47650817 false) 
	#(320 2 #reduceActionForNamedExports1: 40838145 false) 
	#(307 1 #liftFirstValue: 38476801 false) 
	#(322 1 #reduceActionForExportSpecifier1: 41158657 false) 
	#(321 1 #reduceActionForNamespaceName1: 41054209 false) 
	#(307 1 #liftFirstValue: 38476802 false) 
	#(289 2 #reduceActionForClassExpression1: 36994049 false) 
	#(318 3 #reduceActionForExportDeclaration2: 39937026 false) 
	#(202 2 #liftSecondValue: 23597061 false) 
	#(202 2 #liftSecondValue: 23597060 false) 
	#(202 2 #liftSecondValue: 23597062 false) 
	#(312 2 #reduceActionForNamedImports1: 39190529 false) 
	#(314 1 #reduceActionForNamespaceName1: 39473153 false) 
	#(315 1 #reduceActionForImportSpecifier1: 39577601 false) 
	#(308 3 #reduceActionForImportDeclaration2: 38532098 false) 
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
	#(396 1 #liftFirstValue: 50204676 false) 
	#(396 1 #liftFirstValue: 50204674 false) 
	#(396 1 #liftFirstValue: 50204675 false) 
	#(396 1 #liftFirstValue: 50204673 false) 
	#(395 0 #nil 48861188 false) 
	#(150 2 #reduceActionForSpreadElement1: 11257857 false) 
	#(147 3 #reduceActionForArrayLiteral3: 10723331 false) 
	#(147 3 #reduceActionForArrayLiteral2: 10723330 false) 
	#(149 2 #reduceActionForModuleItemList2: 11202562 false) 
	#(148 2 #reduceActionForElementList4: 10984452 false) 
	#(148 2 #reduceActionForElementList4: 10984450 false) 
	#(291 2 #reduceActionForClassTail1: 37194753 false) 
	#(295 1 #reduceActionForEmptyStatement1: 37487622 false) 
	#(297 1 #reduceActionForIdentifier1: 37865473 false) 
	#(297 1 #reduceActionForIdentifier1: 37865474 false) 
	#(295 1 #liftFirstValue: 37487617 false) 
	#(273 1 #liftFirstValue: 33719298 false) 
	#(273 1 #liftFirstValue: 33719300 false) 
	#(273 1 #liftFirstValue: 33719299 false) 
	#(293 1 #reduceActionForModuleBody1: 37367809 false) 
	#(294 1 #reduceActionForModuleItemList1: 37399553 false) 
	#(296 1 #reduceActionForFieldDefinition1: 37803009 false) 
	#(295 1 #liftFirstValue: 37487621 false) 
	#(273 1 #liftFirstValue: 33719306 false) 
	#(273 1 #liftFirstValue: 33719307 false) 
	#(292 2 #reduceActionForClassHeritage1: 37286913 false) 
	#(290 3 #reduceActionForClassExpression2: 37114882 false) 
	#(292 2 #reduceActionForClassHeritage4: 37286916 false) 
	#(292 2 #reduceActionForClassHeritage2: 37286914 false) 
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
	#(356 0 #reduceActionForSwitchToDefault1: 44372993 true) 
	#(347 1 #reduceActionForModuleBody1: 43792385 false) 
	#(334 1 #reduceActionForJSXElementName1: 42648577 false) 
	#(334 1 #liftFirstValue: 42648578 false) 
	#(334 1 #liftFirstValue: 42648579 false) 
	#(338 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 42975233 false) 
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
	#(476 1 #liftFirstValue: 68353025 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 66246657 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 66246658 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 66246659 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 66246660 false) 
	#(465 2 #reduceActionForAmbientDeclaration1: 66246661 false) 
	#(432 1 #reduceActionForNamespaceName1: 58614785 false) 
	#(394 2 #reduceActionForModuleItemList2: 48350210 false) 
	#(371 3 #reduceActionForParenthesizedExpression1: 45793281 false) 
	#(391 2 #reduceActionForPropertySignature5: 47886341 false) 
	#(391 2 #reduceActionForPropertySignature3: 47886339 false) 
	#(391 2 #reduceActionForPropertySignature2: 47886338 false) 
	#(400 2 #reduceActionForMethodSignature1: 51452929 false) 
	#(376 3 #reduceActionForObjectType2: 46240770 false) 
	#(377 2 #reduceActionForOptionalChain2: 46322690 false) 
	#(377 2 #reduceActionForOptionalChain2: 46322692 false) 
	#(381 3 #reduceActionForTupleType2: 46788610 false) 
	#(381 3 #reduceActionForTupleType3: 46788611 false) 
	#(359 2 #reduceActionForTypeParameter2: 44719106 false) 
	#(357 3 #reduceActionForTypeParameters1: 44527617 false) 
	#(384 3 #reduceActionForUnionType1: 47042561 false) 
	#(385 3 #reduceActionForIntersectionType1: 47163393 false) 
	#(373 3 #reduceActionForTypeReference2: 45933570 false) 
	#(374 3 #reduceActionForTypeName2: 46029826 false) 
	#(375 3 #reduceActionForNamespaceName2: 46136322 false) 
	#(320 3 #reduceActionForNamedExports2: 40838146 false) 
	#(319 3 #reduceActionForExportFromClause2: 40730626 false) 
	#(289 3 #reduceActionForClassExpression2: 36994050 false) 
	#(289 3 #reduceActionForClassDeclaration3: 36994051 false) 
	#(318 4 #reduceActionForExportDeclaration5: 39937029 false) 
	#(313 2 #reduceActionForFromClause1: 39421953 false) 
	#(318 4 #reduceActionForExportDeclaration1: 39937025 false) 
	#(482 2 #reduceActionForDecoratorExpression2: 69824514 false) 
	#(482 2 #reduceActionForDecoratorExpression2: 69824513 false) 
	#(312 3 #reduceActionForNamedImports2: 39190530 false) 
	#(311 3 #reduceActionForNameSpaceImport1: 39109633 false) 
	#(308 4 #reduceActionForImportDeclaration1: 38532097 false) 
	#(309 3 #reduceActionForImportClause4: 38704132 false) 
	#(309 3 #reduceActionForImportClause4: 38704133 false) 
	#(309 3 #reduceActionForImportClause6: 38704134 false) 
	#(309 3 #reduceActionForImportClause6: 38704135 false) 
	#(220 2 #reduceActionForBindingRestProperty1: 25847809 false) 
	#(218 3 #reduceActionForObjectBindingPattern2: 25094146 false) 
	#(218 3 #reduceActionForObjectBindingPattern3: 25094147 false) 
	#(219 3 #reduceActionForArrayBindingPattern3: 25482243 false) 
	#(223 2 #reduceActionForBindingElisionElement2: 26146818 false) 
	#(219 3 #reduceActionForArrayBindingPattern5: 25482245 false) 
	#(219 3 #reduceActionForArrayBindingPattern2: 25482242 false) 
	#(159 2 #reduceActionForFromClause1: 12691457 false) 
	#(212 3 #reduceActionForNamespaceName2: 24385538 false) 
	#(409 3 #reduceActionForSimpleLexicalBinding1: 54552577 false) 
	#(410 3 #reduceActionForDestructuringLexicalBinding1: 54662145 false) 
	#(227 3 #reduceActionForBindingRestElement3: 26518531 false) 
	#(257 3 #reduceActionForFormalParameters5: 32083973 false) 
	#(258 3 #reduceActionForNamespaceName2: 32285698 false) 
	#(226 3 #reduceActionForSingleNameBinding9: 26432521 false) 
	#(226 3 #reduceActionForSimpleLexicalBinding1: 26432515 false) 
	#(395 1 #reduceActionForIdentifier1: 48861186 false) 
	#(395 1 #liftFirstValue: 48861185 false) 
	#(395 1 #liftFirstValue: 48861187 false) 
	#(226 3 #reduceActionForSingleNameBinding7: 26432519 false) 
	#(147 4 #reduceActionForArrayLiteral4: 10723332 false) 
	#(148 3 #reduceActionForElementList6: 10984454 false) 
	#(148 3 #reduceActionForElementList6: 10984453 false) 
	#(272 1 #reduceActionForImportClause1: 33598465 false) 
	#(271 4 #reduceActionForAsyncArrowFunction1: 33496065 false) 
	#(300 0 #reduceActionForSourceFileElement__element__1: 38155265 false) 
	#(295 2 #reduceActionForClassElement2: 37487618 false) 
	#(291 3 #reduceActionForClassTail2: 37194754 false) 
	#(294 2 #reduceActionForModuleItemList2: 37399554 false) 
	#(295 2 #reduceActionForClassElement3: 37487619 false) 
	#(296 2 #reduceActionForFieldDefinition2: 37803010 false) 
	#(295 2 #liftSecondValue: 37487623 false) 
	#(295 2 #liftSecondValue: 37487624 false) 
	#(420 1 #liftFirstValue: 56908801 false) 
	#(420 1 #liftFirstValue: 56908802 false) 
	#(420 1 #liftFirstValue: 56908803 false) 
	#(295 2 #liftSecondValue: 37487625 false) 
	#(291 3 #reduceActionForClassTail3: 37194755 false) 
	#(416 1 #liftFirstValue: 56041473 false) 
	#(415 2 #reduceActionForFromClause1: 55982081 false) 
	#(414 1 #liftFirstValue: 55467009 false) 
	#(417 2 #reduceActionForImplementsClause1: 56083457 false) 
	#(413 1 #reduceActionForNamespaceName1: 55335937 false) 
	#(292 3 #reduceActionForClassHeritage3: 37286915 false) 
	#(172 4 #reduceActionForImportCall1: 15052801 false) 
	#(174 2 #reduceActionForArgumentList2: 15378434 false) 
	#(173 3 #reduceActionForArguments2: 15193090 false) 
	#(165 4 #reduceActionForSuperProperty1: 13796353 false) 
	#(362 1 #reduceActionForNamespaceName1: 44904449 false) 
	#(363 1 #liftFirstValue: 45010945 false) 
	#(154 2 #reduceActionForPropertyDefinition5: 12049413 false) 
	#(158 2 #reduceActionForCoverInitializedName1: 12608513 false) 
	#(151 4 #reduceActionForObjectLiteral2: 11356162 false) 
	#(162 1 #reduceActionForNamespaceName1: 12949505 false) 
	#(160 4 #reduceActionForTemplateLiteral2: 12755970 false) 
	#(164 4 #reduceActionForMemberExpression2: 13181954 false) 
	#(177 2 #reduceActionForOptionalRest3: 15947779 false) 
	#(177 2 #reduceActionForOptionalRest3: 15947781 false) 
	#(170 4 #reduceActionForMemberExpression2: 14383109 false) 
	#(406 4 #reduceActionForAsExpression1: 53898241 false) 
	#(264 1 #reduceActionForModuleBody1: 32953346 false) 
	#(263 1 #reduceActionForModuleBody1: 32912385 false) 
	#(329 4 #reduceActionForJSXElement2: 41736194 false) 
	#(349 1 #reduceActionForJSXChild1: 43827201 false) 
	#(349 1 #liftFirstValue: 43827202 false) 
	#(348 2 #reduceActionForModuleItemList2: 43806722 false) 
	#(337 2 #reduceActionForFromClause1: 42975233 false) 
	#(354 0 #reduceActionForSwitchToJSXTextOrDefault11: 44239873 true) 
	#(344 1 #reduceActionForJSXElementName1: 43399169 false) 
	#(344 1 #liftFirstValue: 43399170 false) 
	#(341 1 #reduceActionForModuleItemList1: 43102209 false) 
	#(339 1 #reduceActionForModuleBody1: 43085825 false) 
	#(340 1 #liftFirstValue: 43102209 false) 
	#(340 1 #liftFirstValue: 43102210 false) 
	#(343 1 #reduceActionForJSXAttribute1: 43316225 false) 
	#(336 2 #reduceActionForJSXMemberExpression1: 42952705 false) 
	#(338 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 42975234 false) 
	#(331 4 #reduceActionForJSXOpeningElement3: 42070019 false) 
	#(406 4 #reduceActionForAsExpression1: 53898242 false) 
	#(402 3 #reduceActionForArrowFormalParameters1: 52184067 false) 
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
	#(407 2 #reduceActionForSimpleVariableDeclaration1: 54252545 false) 
	#(468 1 #reduceActionForArrowParameterDeclaration1: 67044353 false) 
	#(467 1 #reduceActionForNamespaceName1: 66931713 false) 
	#(478 0 #reduceActionForSourceFileElement__element__1: 68697089 false) 
	#(463 3 #reduceActionForExportListDeclaration5: 65777669 false) 
	#(411 3 #reduceActionForInterfaceDeclaration1: 55095297 false) 
	#(433 0 #reduceActionForSourceFileElement__element__1: 58720257 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086595 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086594 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086593 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086596 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086602 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64351234 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086598 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086597 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64351233 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086599 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086600 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64351236 false) 
	#(459 3 #reduceActionForExportImplementationElement3: 63086601 false) 
	#(460 3 #reduceActionForExportDeclarationElement2: 64351235 false) 
	#(393 3 #reduceActionForCallSignature1: 48137217 false) 
	#(157 3 #reduceActionForComputedPropertyName1: 12487681 false) 
	#(391 3 #reduceActionForPropertySignature7: 47886343 false) 
	#(391 3 #reduceActionForPropertySignature6: 47886342 false) 
	#(391 3 #reduceActionForPropertySignature4: 47886340 false) 
	#(400 3 #reduceActionForMethodSignature2: 51452930 false) 
	#(392 2 #reduceActionForFromClause1: 48083969 false) 
	#(378 3 #reduceActionForNamespaceName2: 46418946 false) 
	#(378 3 #reduceActionForNamespaceName2: 46418947 false) 
	#(381 4 #reduceActionForTupleType4: 46788612 false) 
	#(382 3 #reduceActionForNamespaceName2: 46907394 false) 
	#(360 2 #reduceActionForFromClause1: 44773377 false) 
	#(358 3 #reduceActionForNamespaceName2: 44606466 false) 
	#(389 3 #reduceActionForTypeQueryExpression2: 47724546 false) 
	#(380 4 #reduceActionForArrayType1: 46681089 false) 
	#(322 3 #reduceActionForExportSpecifier2: 41158658 false) 
	#(320 4 #reduceActionForNamedExports3: 40838147 false) 
	#(321 3 #reduceActionForNamespaceName2: 41054210 false) 
	#(289 4 #reduceActionForClassDeclaration4: 36994052 false) 
	#(261 4 #reduceActionForFunctionDeclaration5: 32489477 false) 
	#(315 3 #reduceActionForImportSpecifier2: 39577602 false) 
	#(312 4 #reduceActionForNamedImports3: 39190531 false) 
	#(314 3 #reduceActionForNamespaceName2: 39473154 false) 
	#(315 3 #reduceActionForImportSpecifier3: 39577603 false) 
	#(224 3 #reduceActionForBindingProperty2: 26208258 false) 
	#(218 4 #reduceActionForObjectBindingPattern4: 25094148 false) 
	#(221 3 #reduceActionForNamespaceName2: 25919490 false) 
	#(219 4 #reduceActionForArrayBindingPattern4: 25482244 false) 
	#(219 4 #reduceActionForArrayBindingPattern6: 25482246 false) 
	#(222 3 #reduceActionForBindingElementList2: 26038274 false) 
	#(409 4 #reduceActionForSimpleLexicalBinding2: 54552578 false) 
	#(410 4 #reduceActionForDestructuringLexicalBinding2: 54662146 false) 
	#(226 4 #reduceActionForSimpleLexicalBinding2: 26432516 false) 
	#(225 4 #reduceActionForBindingElement10: 26321930 false) 
	#(225 4 #reduceActionForBindingElement4: 26321924 false) 
	#(225 4 #reduceActionForBindingElement8: 26321928 false) 
	#(226 4 #reduceActionForSingleNameBinding10: 26432522 false) 
	#(226 4 #reduceActionForSingleNameBinding8: 26432520 false) 
	#(226 4 #reduceActionForSingleNameBinding5: 26432517 false) 
	#(287 1 #reduceActionForModuleBody1: 36881409 false) 
	#(300 1 #reduceActionForModuleBody1: 38155266 false) 
	#(299 1 #reduceActionForModuleBody1: 38098945 false) 
	#(295 3 #reduceActionForClassElement4: 37487620 false) 
	#(422 0 #reduceActionForInitializer_1: 57214977 false) 
	#(424 2 #reduceActionForMemberAccessorDeclaration1: 57672705 false) 
	#(424 2 #reduceActionForMemberAccessorDeclaration1: 57672709 false) 
	#(425 2 #reduceActionForIndexMemberDeclaration1: 57949185 false) 
	#(291 4 #reduceActionForClassTail4: 37194756 false) 
	#(173 4 #reduceActionForArguments3: 15193091 false) 
	#(174 3 #reduceActionForArgumentList3: 15378435 false) 
	#(361 3 #reduceActionForTypeArguments1: 44826625 false) 
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
	#(335 3 #reduceActionForJSXNamespacedName1: 42828801 false) 
	#(341 2 #reduceActionForModuleItemList2: 43102210 false) 
	#(343 2 #reduceActionForJSXAttribute2: 43316226 false) 
	#(331 5 #reduceActionForJSXOpeningElement1: 42070017 false) 
	#(402 4 #reduceActionForTypeCallSignature1: 52184065 false) 
	#(181 5 #reduceActionForUnaryExpression10: 17069066 false) 
	#(402 4 #reduceActionForTypeCallSignature4: 52184068 false) 
	#(230 5 #reduceActionForIfStatement2: 26830850 false) 
	#(243 5 #reduceActionForSwitchStatement1: 30601217 false) 
	#(254 1 #liftFirstValue: 31867905 false) 
	#(254 1 #liftFirstValue: 31867907 false) 
	#(407 3 #reduceActionForSimpleVariableDeclaration2: 54252546 false) 
	#(408 3 #reduceActionForDestructuringVariableDeclaration1: 54358017 false) 
	#(233 5 #reduceActionForWhileStatement1: 27408385 false) 
	#(242 5 #reduceActionForWithStatement1: 30469121 false) 
	#(468 2 #reduceActionForAmbientBinding2: 67044354 false) 
	#(466 3 #reduceActionForLexicalDeclaration1: 66635779 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876291 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876297 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876303 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876289 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876293 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876295 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876299 false) 
	#(480 1 #reduceActionForAmbientNamespaceElement3: 68876301 false) 
	#(478 1 #reduceActionForModuleBody1: 68697090 false) 
	#(479 1 #reduceActionForModuleItemList1: 68749313 false) 
	#(466 3 #reduceActionForLexicalDeclaration1: 66635778 false) 
	#(455 0 #reduceActionForSourceFileElement__element__1: 62449665 false) 
	#(466 3 #reduceActionForLexicalDeclaration1: 66635777 false) 
	#(426 4 #reduceActionForEnumDeclaration1: 58040321 false) 
	#(429 1 #reduceActionForEnumMember1: 58326017 false) 
	#(427 1 #reduceActionForModuleBody1: 58187777 false) 
	#(428 1 #reduceActionForNamespaceName1: 58233857 false) 
	#(464 4 #reduceActionForExportAssignment1: 66114561 false) 
	#(463 4 #reduceActionForExportListDeclaration1: 65777665 false) 
	#(463 4 #reduceActionForExportListDeclaration3: 65777667 false) 
	#(438 1 #reduceActionForModuleBody1: 60014593 false) 
	#(412 2 #reduceActionForFromClause1: 55250945 false) 
	#(411 4 #reduceActionForInterfaceDeclaration3: 55095299 false) 
	#(411 4 #reduceActionForInterfaceDeclaration2: 55095298 false) 
	#(435 1 #liftFirstValue: 58856449 false) 
	#(435 1 #liftFirstValue: 58856450 false) 
	#(435 1 #liftFirstValue: 58856451 false) 
	#(435 1 #liftFirstValue: 58856452 false) 
	#(435 1 #liftFirstValue: 58856453 false) 
	#(435 1 #liftFirstValue: 58856455 false) 
	#(435 1 #liftFirstValue: 58856454 false) 
	#(435 1 #liftFirstValue: 58856456 false) 
	#(435 1 #liftFirstValue: 58856457 false) 
	#(433 1 #reduceActionForModuleBody1: 58720258 false) 
	#(434 1 #reduceActionForModuleItemList1: 58758145 false) 
	#(435 1 #liftFirstValue: 58856460 false) 
	#(435 1 #liftFirstValue: 58856459 false) 
	#(435 1 #liftFirstValue: 58856458 false) 
	#(432 3 #reduceActionForNamespaceName2: 58614786 false) 
	#(461 4 #reduceActionForExportDefaultImplementationElement1: 64780289 false) 
	#(461 4 #reduceActionForExportDefaultImplementationElement1: 64780290 false) 
	#(461 4 #reduceActionForExportDefaultImplementationElement1: 64780291 false) 
	#(462 4 #reduceActionForExportDefaultDeclarationElement1: 65341441 false) 
	#(462 4 #reduceActionForExportDefaultDeclarationElement1: 65341442 false) 
	#(386 5 #reduceActionForFunctionType1: 47269889 false) 
	#(393 4 #reduceActionForCallSignature2: 48137218 false) 
	#(398 4 #reduceActionForConstructSignature1: 50959361 false) 
	#(391 4 #reduceActionForPropertySignature8: 47886344 false) 
	#(393 4 #reduceActionForCallSignature3: 48137219 false) 
	#(369 5 #reduceActionForIndexedAccessType1: 45589505 false) 
	#(261 5 #reduceActionForFunctionDeclaration6: 32489478 false) 
	#(289 5 #reduceActionForClassDeclaration5: 36994053 false) 
	#(289 5 #reduceActionForClassDeclaration9: 36994057 false) 
	#(218 5 #reduceActionForObjectBindingPattern5: 25094149 false) 
	#(219 5 #reduceActionForArrayBindingPattern8: 25482248 false) 
	#(219 5 #reduceActionForArrayBindingPattern7: 25482247 false) 
	#(318 6 #reduceActionForExportDeclaration6: 39937030 false) 
	#(225 5 #reduceActionForBindingElement11: 26321931 false) 
	#(225 5 #reduceActionForBindingElement5: 26321925 false) 
	#(225 5 #reduceActionForBindingElement12: 26321932 false) 
	#(225 5 #reduceActionForBindingElement9: 26321929 false) 
	#(225 5 #reduceActionForBindingElement6: 26321926 false) 
	#(226 5 #reduceActionForSingleNameBinding6: 26432518 false) 
	#(272 3 #reduceActionForConciseBody2: 33598466 false) 
	#(274 1 #liftFirstValue: 34329601 false) 
	#(298 4 #reduceActionForClassStaticBlock1: 37976065 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration2: 57672706 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration2: 57672710 false) 
	#(422 1 #reduceActionForModuleBody1: 57214978 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration3: 57672707 false) 
	#(424 3 #reduceActionForMemberAccessorDeclaration3: 57672711 false) 
	#(413 3 #reduceActionForNamespaceName2: 55335938 false) 
	#(174 4 #reduceActionForArgumentList4: 15378436 false) 
	#(362 3 #reduceActionForNamespaceName2: 44904450 false) 
	#(173 5 #reduceActionForArguments5: 15193093 false) 
	#(163 3 #reduceActionForTemplateMiddleList2: 13036546 false) 
	#(355 0 #reduceActionForSwitchToJSXTextOrDefault21: 44306433 true) 
	#(350 1 #liftFirstValue: 44059650 false) 
	#(350 1 #liftFirstValue: 44059649 false) 
	#(330 6 #reduceActionForJSXSelfClosingElement1: 41886721 false) 
	#(331 6 #reduceActionForJSXOpeningElement2: 42070018 false) 
	#(346 1 #reduceActionForLiteral4: 43564033 false) 
	#(346 1 #liftFirstValue: 43564035 false) 
	#(346 1 #liftFirstValue: 43564036 false) 
	#(345 2 #reduceActionForFromClause1: 43490305 false) 
	#(262 6 #reduceActionForFunctionExpression3: 32701443 false) 
	#(402 5 #reduceActionForTypeCallSignature2: 52184066 false) 
	#(234 6 #reduceActionForForStatement1: 27556865 false) 
	#(234 6 #reduceActionForForStatement13: 27556877 false) 
	#(244 2 #reduceActionForCaseBlock1: 30727169 false) 
	#(245 1 #reduceActionForModuleItemList1: 30911489 false) 
	#(426 5 #reduceActionForEnumDeclaration3: 58040323 false) 
	#(471 0 #reduceActionForSourceFileElement__element__1: 67480577 false) 
	#(467 3 #reduceActionForNamespaceName2: 66931714 false) 
	#(469 4 #reduceActionForAmbientFunctionDeclaration1: 67127297 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876292 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876298 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876304 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876290 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876294 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876296 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876300 false) 
	#(480 2 #reduceActionForAmbientNamespaceElement4: 68876302 false) 
	#(477 4 #reduceActionForAmbientNamespaceDeclaration2: 68397058 false) 
	#(479 2 #reduceActionForModuleItemList2: 68749314 false) 
	#(457 1 #liftFirstValue: 62630914 false) 
	#(451 1 #liftFirstValue: 61831170 false) 
	#(451 1 #liftFirstValue: 61831169 false) 
	#(451 1 #liftFirstValue: 61831171 false) 
	#(451 1 #liftFirstValue: 61831173 false) 
	#(457 1 #liftFirstValue: 62630913 false) 
	#(455 1 #reduceActionForModuleBody1: 62449666 false) 
	#(456 1 #reduceActionForModuleItemList1: 62499841 false) 
	#(457 1 #liftFirstValue: 62630915 false) 
	#(457 1 #liftFirstValue: 62630916 false) 
	#(457 1 #liftFirstValue: 62630917 false) 
	#(457 1 #liftFirstValue: 62630918 false) 
	#(451 1 #liftFirstValue: 61831172 false) 
	#(426 5 #reduceActionForEnumDeclaration2: 58040322 false) 
	#(427 2 #reduceActionForOptionalChain2: 58187778 false) 
	#(463 5 #reduceActionForExportListDeclaration6: 65777670 false) 
	#(437 5 #reduceActionForImportAliasDeclaration1: 59879425 false) 
	#(411 5 #reduceActionForInterfaceDeclaration4: 55095300 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137026 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137025 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137027 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137028 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137029 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137031 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137030 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137032 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137033 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137035 false) 
	#(436 2 #reduceActionForAmbientNamespaceElement4: 59137034 false) 
	#(431 5 #reduceActionForNamespaceDeclaration1: 58473473 false) 
	#(434 2 #reduceActionForModuleItemList2: 58758146 false) 
	#(401 5 #reduceActionForTypeAliasDeclaration1: 51558401 false) 
	#(462 5 #reduceActionForExportDefaultDeclarationElement3: 65341443 false) 
	#(461 5 #reduceActionForExportDefaultImplementationElement4: 64780292 false) 
	#(398 5 #reduceActionForConstructSignature2: 50959362 false) 
	#(398 5 #reduceActionForConstructSignature3: 50959363 false) 
	#(393 5 #reduceActionForCallSignature4: 48137220 false) 
	#(387 6 #reduceActionForConstructorType1: 47450113 false) 
	#(386 6 #reduceActionForFunctionType2: 47269890 false) 
	#(261 6 #reduceActionForFunctionExpression3: 32489475 false) 
	#(289 6 #reduceActionForClassDeclaration6: 36994054 false) 
	#(289 6 #reduceActionForClassDeclaration7: 36994055 false) 
	#(289 6 #reduceActionForClassDeclaration10: 36994058 false) 
	#(289 6 #reduceActionForClassDeclaration11: 36994059 false) 
	#(315 5 #reduceActionForImportSpecifier4: 39577604 false) 
	#(219 6 #reduceActionForArrayBindingPattern9: 25482249 false) 
	#(225 6 #reduceActionForBindingElement13: 26321933 false) 
	#(225 6 #reduceActionForBindingElement7: 26321927 false) 
	#(397 1 #liftFirstValue: 50280449 false) 
	#(397 1 #liftFirstValue: 50280450 false) 
	#(273 5 #reduceActionForMethodDefinition9: 33719305 false) 
	#(418 4 #reduceActionForConstructorDeclaration3: 56291331 false) 
	#(423 4 #reduceActionForMemberFunctionDeclaration5: 57260037 false) 
	#(421 4 #reduceActionForMemberVariableDeclaration1: 57023489 false) 
	#(424 4 #reduceActionForMemberAccessorDeclaration4: 57672708 false) 
	#(424 4 #reduceActionForMemberAccessorDeclaration4: 57672712 false) 
	#(262 7 #reduceActionForFunctionExpression1: 32701441 false) 
	#(278 1 #reduceActionForModuleBody1: 35080193 false) 
	#(349 4 #reduceActionForJSXChild3: 43827203 false) 
	#(330 7 #reduceActionForJSXSelfClosingElement2: 41886722 false) 
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
	#(426 6 #reduceActionForEnumDeclaration4: 58040324 false) 
	#(473 1 #liftFirstValue: 67655683 false) 
	#(471 1 #reduceActionForModuleBody1: 67480578 false) 
	#(472 1 #reduceActionForModuleItemList1: 67528705 false) 
	#(473 1 #liftFirstValue: 67655681 false) 
	#(473 1 #liftFirstValue: 67655682 false) 
	#(481 6 #reduceActionForAmbientModuleDeclaration1: 69648385 false) 
	#(456 2 #reduceActionForModuleItemList2: 62499842 false) 
	#(477 5 #reduceActionForNamespaceDeclaration1: 68397057 false) 
	#(430 1 #liftFirstValue: 58431489 false) 
	#(429 3 #reduceActionForEnumMember2: 58326018 false) 
	#(428 3 #reduceActionForNamespaceName2: 58233858 false) 
	#(463 6 #reduceActionForExportListDeclaration2: 65777666 false) 
	#(463 6 #reduceActionForExportListDeclaration4: 65777668 false) 
	#(401 6 #reduceActionForTypeAliasDeclaration2: 51558402 false) 
	#(399 6 #reduceActionForIndexSignature2: 51151874 false) 
	#(399 6 #reduceActionForIndexSignature2: 51151873 false) 
	#(398 6 #reduceActionForConstructSignature4: 50959364 false) 
	#(387 7 #reduceActionForConstructorType2: 47450114 false) 
	#(261 7 #reduceActionForFunctionExpression1: 32489473 false) 
	#(261 7 #reduceActionForFunctionExpression4: 32489476 false) 
	#(289 7 #reduceActionForClassDeclaration8: 36994056 false) 
	#(289 7 #reduceActionForClassDeclaration12: 36994060 false) 
	#(285 8 #reduceActionForAsyncFunctionExpression1: 36361217 false) 
	#(283 1 #reduceActionForModuleBody1: 36050945 false) 
	#(405 2 #reduceActionForTypedPropertySetParameterList1: 53218305 false) 
	#(273 6 #reduceActionForMethodDefinition7: 33719303 false) 
	#(419 3 #reduceActionForCallSignature1: 56756225 false) 
	#(423 5 #reduceActionForMemberFunctionDeclaration6: 57260038 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration5: 57023493 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration3: 57023491 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration2: 57023490 false) 
	#(418 5 #reduceActionForConstructorDeclaration4: 56291332 false) 
	#(423 5 #reduceActionForMemberFunctionDeclaration7: 57260039 false) 
	#(421 5 #reduceActionForMemberVariableDeclaration9: 57023497 false) 
	#(276 8 #reduceActionForGeneratorExpression1: 34624513 false) 
	#(262 8 #reduceActionForFunctionExpression2: 32701442 false) 
	#(332 5 #reduceActionForJSXClosingElement1: 42299393 false) 
	#(349 5 #reduceActionForJSXChild4: 43827204 false) 
	#(342 5 #reduceActionForJSXSpreadAttribute1: 43166721 false) 
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
	#(475 2 #reduceActionForAmbientPropertyMemberDeclaration1: 68009985 false) 
	#(470 6 #reduceActionForAmbientClassDeclaration1: 67274753 false) 
	#(472 2 #reduceActionForModuleItemList2: 67528706 false) 
	#(284 8 #reduceActionForAsyncFunctionExpression1: 36087809 false) 
	#(275 8 #reduceActionForGeneratorExpression1: 34387969 false) 
	#(261 8 #reduceActionForFunctionExpression2: 32489474 false) 
	#(281 9 #reduceActionForAsyncGeneratorExpression1: 35519489 false) 
	#(285 9 #reduceActionForAsyncFunctionExpression3: 36361219 false) 
	#(273 7 #reduceActionForMethodDefinition5: 33719301 false) 
	#(273 7 #reduceActionForMethodDefinition1: 33719297 false) 
	#(273 7 #reduceActionForMethodDefinition8: 33719304 false) 
	#(419 4 #reduceActionForCallSignature2: 56756226 false) 
	#(418 6 #reduceActionForConstructorDeclaration1: 56291329 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration7: 57023495 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration6: 57023494 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration4: 57023492 false) 
	#(423 6 #reduceActionForMemberFunctionDeclaration1: 57260033 false) 
	#(423 6 #reduceActionForMemberFunctionDeclaration8: 57260040 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration13: 57023501 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration11: 57023499 false) 
	#(421 6 #reduceActionForMemberVariableDeclaration10: 57023498 false) 
	#(276 9 #reduceActionForGeneratorExpression2: 34624514 false) 
	#(333 9 #reduceActionForJSXFragment1: 42460161 false) 
	#(332 6 #reduceActionForJSXClosingElement2: 42299394 false) 
	#(234 9 #reduceActionForForStatement10: 27556874 false) 
	#(234 9 #reduceActionForForStatement11: 27556875 false) 
	#(234 9 #reduceActionForForStatement8: 27556872 false) 
	#(235 9 #reduceActionForForInOfStatement8: 28277768 false) 
	#(246 4 #reduceActionForCaseClause2: 30984194 false) 
	#(244 5 #reduceActionForCaseBlock6: 30727174 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration3: 68009987 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration2: 68009986 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration9: 68009993 false) 
	#(475 3 #reduceActionForAmbientPropertyMemberDeclaration5: 68009989 false) 
	#(470 7 #reduceActionForAmbientClassDeclaration2: 67274754 false) 
	#(458 8 #reduceActionForImportRequireDeclaration1: 62867457 false) 
	#(280 9 #reduceActionForAsyncGeneratorExpression1: 35244033 false) 
	#(284 9 #reduceActionForAsyncFunctionExpression3: 36087811 false) 
	#(275 9 #reduceActionForGeneratorExpression2: 34387970 false) 
	#(285 10 #reduceActionForAsyncFunctionExpression2: 36361218 false) 
	#(281 10 #reduceActionForAsyncGeneratorExpression2: 35519490 false) 
	#(277 8 #reduceActionForGeneratorMethod1: 34860033 false) 
	#(286 8 #reduceActionForAsyncMethod1: 36634625 false) 
	#(273 8 #reduceActionForMethodDefinition6: 33719302 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration8: 57023496 false) 
	#(423 7 #reduceActionForMemberFunctionDeclaration2: 57260034 false) 
	#(418 7 #reduceActionForConstructorDeclaration2: 56291330 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration15: 57023503 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration14: 57023502 false) 
	#(421 7 #reduceActionForMemberVariableDeclaration12: 57023500 false) 
	#(423 7 #reduceActionForMemberFunctionDeclaration3: 57260035 false) 
	#(346 5 #reduceActionForJSXChild4: 43564034 false) 
	#(234 10 #reduceActionForForStatement12: 27556876 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration4: 68009988 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration10: 68009994 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration7: 68009991 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration6: 68009990 false) 
	#(475 4 #reduceActionForAmbientPropertyMemberDeclaration11: 68009995 false) 
	#(284 10 #reduceActionForAsyncFunctionExpression2: 36087810 false) 
	#(280 10 #reduceActionForAsyncGeneratorExpression2: 35244034 false) 
	#(285 11 #reduceActionForAsyncFunctionExpression4: 36361220 false) 
	#(282 9 #reduceActionForAsyncGeneratorMethod1: 35793921 false) 
	#(403 9 #reduceActionForGetAccessor1: 52547585 false) 
	#(404 9 #reduceActionForSetAccessor2: 52753410 false) 
	#(421 8 #reduceActionForMemberVariableDeclaration16: 57023504 false) 
	#(423 8 #reduceActionForMemberFunctionDeclaration4: 57260036 false) 
	#(474 5 #reduceActionForAmbientConstructorDeclaration1: 67768321 false) 
	#(475 5 #reduceActionForAmbientPropertyMemberDeclaration8: 68009992 false) 
	#(475 5 #reduceActionForAmbientPropertyMemberDeclaration12: 68009996 false) 
	#(284 11 #reduceActionForAsyncFunctionExpression4: 36087812 false) 
	#(286 10 #reduceActionForAsyncMethod2: 36634626 false) 
	#(404 10 #reduceActionForSetAccessor1: 52753409 false) 
	#(404 10 #reduceActionForSetAccessor1: 52753411 false) 
	#(474 6 #reduceActionForAmbientConstructorDeclaration2: 67768322 false)
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<global>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'DecoratorExpression ''decorator''*' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'AsExpression' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'Initializer?' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'SourceFileElement ''element''*' 'SourceFileElement' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSAsExpressionNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #OrderedCollection #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #JSProgramNode #JSProgramNode #Object #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 0 49 0 141 0 81 0 208 0 57 0 209 0 81 0 210 0 65 0 211 0 49 1 47 0 73 1 48 0 77 1 49 0 81 1 50 0 81 1 52 0 81 1 62 0 11 1 229 0 10 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 1 113 0 197 1 113 0 198 1 113 0 200 0 253 1 6 1 113 1 9 1 125 1 10 1 129 1 11 1 133 1 14 1 113 1 15 0 253 1 20 1 113 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 2 29 0 201 2 29 0 204 2 29 0 205 2 29 0 206 2 29 0 214 2 29 0 228 2 29 0 229 2 29 0 230 2 29 0 231 2 29 0 232 2 29 0 233 2 29 0 234 2 29 0 235 2 29 0 238 2 29 0 239 2 29 0 241 2 29 0 242 2 29 0 243 2 29 0 248 2 29 0 250 2 29 0 251 2 29 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 2 117 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 2 125 1 45 2 129 1 46 0 6 1 229 0 26 1 230] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 0 81 0 208 0 57 0 209 0 81 0 210 0 65 0 211 2 133 1 47 0 73 1 48 0 77 1 49 0 81 1 50 0 81 1 52 0 81 1 62 0 11 1 229 0 10 1 230] 
#[1 0 30 0 1 0 30 0 2 0 30 0 4 0 30 0 6 0 30 0 8 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 39 0 30 0 52 0 30 0 56 0 30 0 57 0 30 0 58 0 30 0 61 0 30 0 62 0 30 0 63 0 30 0 65 0 30 0 66 0 30 0 67 0 30 0 69 0 30 0 70 0 30 0 72 0 30 0 73 0 30 0 75 0 30 0 77 0 30 0 79 0 30 0 82 0 30 0 83 0 30 0 88 0 30 0 90 0 30 0 93 0 30 0 94 0 30 0 95 0 30 0 103 0 30 0 107 0 30 0 108 0 30 0 110 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 115 0 30 0 116 0 30 0 117 0 30 0 118 0 30 0 119 0 30 0 120 0 30 0 125 0 30 0 127 0 30 0 129 0 30 0 130 0 30 0 131 0 30 0 133 0 30 0 134 0 30 0 137 2 137 1 183 2 141 1 184 0 30 1 229 0 30 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 2 201 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 2 201 1 130 2 201 1 131 2 217 1 132 2 217 1 134] 
#[0 0 34 0 4 0 6 0 125 1 229] 
#[1 3 29 0 4 3 33 0 26 3 37 0 56 3 41 0 61 3 45 0 62 0 65 0 63 3 49 0 68 3 53 0 79 0 65 0 90 2 9 0 116 3 57 0 202 3 57 0 203 3 57 0 210 0 65 0 211 3 69 0 214 3 57 1 5 3 57 1 19 3 57 1 24 3 57 1 28 3 57 1 33 3 93 1 63 3 97 1 64 3 101 1 229] 
#[1 3 105 0 4 3 109 0 26 0 189 0 125 3 133 0 129 3 121 0 142 3 117 1 53 3 121 1 54 3 125 1 55 3 129 1 56 3 133 1 60 3 121 1 61 3 133 1 70 3 145 1 229] 
#[0 0 38 0 4 0 6 0 125 1 229] 
#[0 0 0 1 230] 
#[0 0 42 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 3 149 0 201 3 149 0 204 3 149 0 205 3 149 0 206 3 149 0 214 3 149 0 228 3 149 0 229 3 149 0 230 3 149 0 231 3 149 0 232 3 149 0 233 3 149 0 234 3 149 0 235 3 149 0 238 3 149 0 239 3 149 0 241 3 149 0 242 3 149 0 243 3 149 0 248 3 149 0 250 3 149 0 251 3 149 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 0 46 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 3 161 0 142 3 165 0 212 3 169 0 213 3 173 0 217 3 173 0 218 3 173 0 219 3 169 1 153 3 169 1 154 3 193 1 229] 
#[0 0 50 1 230] 
#[0 0 54 1 230] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 3 197 0 208 0 57 0 209 3 197 0 210 0 65 0 211 3 197 1 50 3 197 1 52 3 197 1 62 0 11 1 229 0 58 1 230] 
#[0 0 62 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 201 0 73] 
#[1 0 97 0 2 0 74 0 3 0 23 0 4 3 205 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 3 209 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 3 213 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 3 217 0 197 3 217 0 198 3 217 0 200 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 3 253 1 4 0 253 1 6 3 217 1 9 1 125 1 10 1 129 1 11 1 133 1 14 3 217 1 15 0 253 1 20 3 217 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 1 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 4 5 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 9 0 121 4 13 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 4 17 0 148 4 21 0 149 4 25 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 4 29 0 197 4 29 0 198 0 253 1 6 4 29 1 9 1 125 1 10 1 129 1 11 1 133 1 14 4 29 1 15 0 253 1 20 4 29 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 49 0 180 4 49 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 49 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 57 0 180 4 57 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 57 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 61 0 180 4 61 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 61 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 65 0 180 4 65 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 65 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 69 0 180 4 69 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 69 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 73 0 180 4 73 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 73 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 77 0 2 4 81 0 79 0 189 0 125 4 85 0 142 4 89 1 10 1 129 1 11 1 133 1 14 4 93 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 97 0 180 4 97 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 97 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 101 0 4 4 105 0 74 0 189 0 125 4 109 0 142 4 113 1 35 4 117 1 36 4 121 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 125 0 180 4 125 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 125 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 129 0 2 4 133 0 26 0 189 0 125 4 137 0 142] 
#[1 4 141 0 2 4 145 0 22] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 149 0 22 4 37 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 4 153 0 142 4 153 0 144 4 153 0 145 4 153 0 146 4 153 0 147 4 153 0 151 0 241 0 152 4 153 0 160 0 249 0 161 4 153 0 164 4 153 0 165 4 153 0 166 4 153 0 167 4 153 0 168 4 157 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 161 0 179 4 153 1 6 4 153 1 20 4 153 1 25 4 153 1 29 4 153 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 4 153 1 72 4 153 1 73 4 153 1 74 1 197 1 75 4 153 1 77 1 205 1 95 4 165 1 229] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 169 0 2 4 173 0 6 4 177 0 22 4 181 0 173 4 185 1 229] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 189 0 180 4 189 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 189 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 4 193 0 180 4 193 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 4 193 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 0 97 0 2 0 94 0 3 0 14 0 4 0 94 0 5 0 101 0 6 0 94 0 7 0 94 0 8 4 197 0 26 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 94 0 122 0 94 0 123 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 94 0 135 0 94 0 136 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 4 201 0 197 4 201 0 198 0 253 1 6 4 201 1 9 1 125 1 10 1 129 1 11 1 133 1 14 4 201 1 15 0 253 1 20 4 201 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229 0 94 1 230] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 74 0 78 0 84 0 86 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 102 0 84] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 64 0 78 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 133 0 134 0 135 0 136 0 138 1 228 1 229 1 230] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 64 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 122 0 14 4 205 1 96] 
#[1 0 126 0 2 0 126 0 3 0 126 0 5 0 126 0 6 0 126 0 7 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 84 0 126 0 87 0 126 0 97 0 126 0 122 0 126 0 123 0 126 0 133 0 126 0 134 0 126 0 135 0 126 0 136 0 126 1 228 0 126 1 229 0 126 1 230] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 209 0 4] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 213 0 134] 
#[1 4 169 0 2 0 158 0 3 0 158 0 4 0 158 0 5 4 217 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 20 0 158 0 21 4 221 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 4 225 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 53 0 158 0 54 0 158 0 84 0 158 0 87 0 158 0 97 0 158 0 122 0 158 0 123 0 209 0 133 0 18 0 134 0 158 0 135 0 158 0 136 4 229 0 160 0 249 0 161 4 233 0 173 4 237 0 176 0 158 1 228 0 27 1 229 0 158 1 230] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 178 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 135 0 136 1 228 1 229 1 230] 
#[1 4 169 0 2 0 182 0 3 0 182 0 4 0 182 0 5 4 241 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 20 0 182 0 21 4 245 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 182 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 40 0 182 0 41 0 182 0 42 0 182 0 43 4 225 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 182 0 48 0 182 0 49 0 182 0 50 0 182 0 51 0 182 0 53 0 182 0 54 0 182 0 84 0 182 0 87 0 182 0 97 0 182 0 122 0 182 0 123 0 209 0 133 0 18 0 134 0 182 0 135 0 182 0 136 4 249 0 160 0 249 0 161 4 253 0 173 5 1 0 176 0 182 1 228 0 31 1 229 0 182 1 230] 
#[0 0 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 20 0 194 0 21 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 4 225 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 48 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 53 0 194 0 54 0 194 0 84 0 194 0 87 0 194 0 97 0 194 0 122 0 194 0 123 0 194 0 135 0 194 0 136 5 5 0 176 0 194 1 228 0 194 1 229 0 194 1 230] 
#[1 0 198 0 3 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 5 77 0 10 0 198 0 11 0 198 0 12 5 77 0 13 0 198 0 14 0 198 0 15 5 77 0 16 5 77 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 77 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 5 77 0 28 5 77 0 29 5 77 0 30 5 77 0 31 5 77 0 32 5 77 0 33 5 77 0 34 0 198 0 35 5 57 0 36 0 198 0 37 5 61 0 38 0 198 0 40 0 198 0 41 5 77 0 42 0 198 0 43 0 198 0 45 5 77 0 46 0 198 0 47 0 198 0 48 0 198 0 49 5 77 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 84 0 198 0 87 0 198 0 122 0 198 0 123 0 198 0 135 0 198 0 136 5 77 0 199 5 77 1 228 5 85 1 229 0 198 1 230] 
#[0 0 202 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 206 0 3 0 206 0 5 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 11 0 206 0 12 0 206 0 14 0 206 0 15 0 206 0 18 0 206 0 20 0 206 0 21 0 206 0 24 0 206 0 25 0 206 0 26 5 89 0 27 0 206 0 35 0 206 0 37 0 206 0 40 0 206 0 41 0 206 0 43 0 206 0 45 0 206 0 47 0 206 0 48 0 206 0 49 0 206 0 51 0 206 0 53 0 206 0 54 0 206 0 84 0 206 0 87 0 206 0 122 0 206 0 123 0 206 0 135 0 206 0 136 0 206 1 230] 
#[0 0 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 5 105 0 9 0 214 0 11 0 214 0 12 0 214 0 14 0 214 0 15 0 214 0 18 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 25 5 105 0 26 0 214 0 35 0 214 0 37 0 214 0 40 0 214 0 41 0 214 0 43 0 214 0 45 5 105 0 47 0 214 0 48 0 214 0 49 0 214 0 51 0 214 0 53 0 214 0 54 0 214 0 84 0 214 0 87 0 214 0 122 0 214 0 123 0 214 0 135 0 214 0 136 5 105 0 184 0 214 1 230] 
#[1 0 218 0 3 0 218 0 5 0 218 0 7 0 218 0 8 0 218 0 11 0 218 0 12 0 218 0 14 0 218 0 15 0 218 0 18 0 218 0 20 0 218 0 21 0 218 0 24 0 218 0 25 5 109 0 35 5 113 0 37 0 218 0 40 0 218 0 41 0 218 0 43 0 218 0 45 0 218 0 48 0 218 0 49 0 218 0 51 0 218 0 53 0 218 0 54 0 218 0 84 0 218 0 87 0 218 0 122 0 218 0 123 0 218 0 135 0 218 0 136 0 218 1 230] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 11 5 117 0 12 0 222 0 14 5 121 0 15 5 125 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 48 0 222 0 49 0 222 0 51 0 222 0 53 0 222 0 54 0 222 0 84 0 222 0 87 0 222 0 122 0 222 0 123 0 222 0 135 0 222 0 136 0 222 1 230] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 0 226 0 24 0 226 0 25 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 48 0 226 0 49 0 226 0 51 0 226 0 53 0 226 0 54 5 145 0 84 5 149 0 87 0 226 0 122 0 226 0 123 0 226 0 135 0 226 0 136 0 226 1 230] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 5 153 0 24 5 157 0 25 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 48 0 230 0 49 0 230 0 51 5 161 0 53 5 165 0 54 0 230 0 122 0 230 0 123 0 230 0 135 0 230 0 136 0 230 1 230] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 5 169 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 48 0 234 0 49 0 234 0 51 0 234 0 122 0 234 0 123 0 234 0 135 0 234 0 136 0 234 1 230] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 48 0 238 0 49 5 173 0 51 0 238 0 122 0 238 0 123 0 238 0 135 0 238 0 136 0 238 1 230] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 0 246 0 45 5 177 0 48 0 242 0 49 0 242 0 122 0 242 0 123 0 242 0 135 0 242 0 136 0 242 1 230] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 5 181 0 41 0 250 0 43 0 250 0 49 0 250 0 122 0 250 0 123 0 250 0 135 0 250 0 136 0 250 1 230] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 0 254 0 43 5 185 0 49 0 254 0 122 0 254 0 123 0 254 0 135 0 254 0 136 0 254 1 230] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 43 1 6 0 45 1 2 0 122 1 2 0 123 1 2 0 135 1 2 0 136 1 2 1 230] 
#[0 5 189 0 45] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 5 193 0 43 1 10 0 122 1 10 0 123 1 10 0 135 1 10 0 136 1 10 1 230] 
#[0 1 14 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 1 18 0 3 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 5 197 0 122 0 0 1 230] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 26 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 5 201 0 19] 
#[0 1 30 0 19] 
#[0 1 34 0 19] 
#[0 1 38 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 1 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 46 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 58 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 1 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 205 0 84] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[1 1 94 0 4 1 94 0 137 1 94 0 139 5 209 1 97] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 213 0 137] 
#[1 1 102 0 3 1 102 0 5 1 102 0 7 1 102 0 8 1 102 0 9 1 102 0 11 1 102 0 12 1 102 0 14 1 102 0 15 1 102 0 18 1 102 0 20 1 102 0 21 1 102 0 24 1 102 0 25 1 102 0 26 1 102 0 27 1 102 0 35 1 102 0 37 1 102 0 40 1 102 0 41 1 102 0 43 1 102 0 45 1 102 0 47 1 102 0 48 1 102 0 49 1 102 0 51 1 102 0 53 1 102 0 54 1 102 0 84 1 102 0 87 1 102 0 122 1 102 0 123 1 102 0 135 1 102 0 136 5 217 1 229 1 102 1 230] 
#[1 5 221 0 2 5 225 0 11 5 229 0 79 5 233 1 101 5 237 1 146] 
#[1 0 6 0 2 0 6 0 4 5 241 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 5 245 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 0 6 1 229] 
#[0 1 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 5 249 0 8 1 110 0 125 5 253 0 240] 
#[1 6 1 0 8 1 110 0 125 6 5 0 240] 
#[0 6 9 0 8] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 6 13 0 201 6 13 0 204 6 13 0 205 6 13 0 206 6 13 0 214 6 13 0 228 6 13 0 229 6 13 0 230 6 13 0 231 6 13 0 232 6 13 0 233 6 13 0 234 6 13 0 235 6 13 0 238 6 13 0 239 6 13 0 241 6 13 0 242 6 13 0 243 6 13 0 248 6 13 0 250 6 13 0 251 6 13 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 6 17 0 2 6 21 0 57] 
#[0 6 25 0 2] 
#[1 1 110 0 2 1 110 0 4 1 110 0 6 6 29 0 8 1 110 0 35 1 110 0 36 1 110 0 37 1 110 0 38 1 110 0 39 1 110 0 52 1 110 0 56 1 110 0 57 1 110 0 61 1 110 0 69 1 110 0 75 1 110 0 79 1 110 0 83 1 110 0 94 1 110 0 95 1 110 0 107 1 110 0 110 1 110 0 112 1 110 0 115 1 110 0 117 1 110 0 120 1 110 0 125 1 110 0 127 1 110 0 129 1 110 0 130 1 110 0 131 1 110 0 133 1 110 0 134 1 110 0 137 6 33 0 240 1 110 1 229] 
#[0 6 37 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 6 41 0 197 6 41 0 198 6 41 0 200 0 253 1 6 6 41 1 9 1 125 1 10 1 129 1 11 1 133 1 14 6 41 1 15 0 253 1 20 6 41 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 1 217 0 4 6 45 0 206] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 6 49 0 142 6 53 0 215 6 57 0 216 6 61 0 217 6 61 0 218 6 61 0 219 6 65 1 229] 
#[0 6 69 0 2] 
#[0 6 73 0 2] 
#[1 0 98 0 2 0 98 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 98 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 38 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 47 0 98 0 48 0 98 0 49 0 98 0 50 0 98 0 51 0 98 0 53 0 98 0 54 0 98 0 84 0 98 0 87 0 98 0 122 6 77 0 123 0 98 0 133 0 98 0 134 0 98 1 228 0 98 1 229] 
#[1 6 81 0 8 5 197 0 122] 
#[0 0 0 1 230] 
#[0 1 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
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
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 85 0 208 0 57 0 209 6 85 0 210 0 65 0 211 0 6 1 229 1 198 1 230] 
#[0 1 202 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 0 1 230] 
#[0 1 206 1 230] 
#[0 0 0 1 230] 
#[0 0 0 1 230] 
#[1 1 210 0 1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 6 89 0 61 3 45 0 62 6 93 0 63 1 229 0 65 1 233 0 66 6 97 0 67 0 141 0 69 1 237 0 70 6 101 0 72 0 35 0 73 1 173 0 75 1 241 0 77 6 109 0 79 1 245 0 82 6 113 0 83 6 117 0 88 0 65 0 90 6 121 0 93 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 6 125 0 114 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 6 177 0 201 6 177 0 204 6 177 0 205 6 177 0 206 6 177 0 210 0 65 0 211 6 177 0 214 6 177 0 228 6 177 0 229 6 177 0 230 6 177 0 231 6 177 0 232 6 177 0 233 6 177 0 234 6 177 0 235 6 177 0 238 6 177 0 239 6 177 0 241 6 177 0 242 6 177 0 243 6 177 0 248 6 177 0 250 6 177 0 251 6 177 0 255 6 177 1 5 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 6 177 1 19 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 6 177 1 33 0 253 1 34 6 177 1 52 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 6 153 1 138 6 177 1 145 1 209 1 150 6 177 1 155 6 177 1 170 6 177 1 175 6 177 1 181 6 177 1 185 6 177 1 191 6 177 1 202 6 177 1 203 6 177 1 204 6 177 1 205 6 177 1 206 6 177 1 207 6 177 1 208 6 177 1 209 6 177 1 225 6 221 1 229 1 214 1 230] 
#[1 2 145 0 2 0 74 0 3 6 225 0 4 6 229 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 3 209 0 121 0 189 0 125 2 189 0 129 2 193 0 130 6 233 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 6 237 1 1 3 245 1 2 3 249 1 3 3 253 1 4 2 189 1 70 2 193 1 71 2 197 1 101 6 241 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 6 241 1 130 6 241 1 131 2 217 1 132 2 217 1 134 6 245 1 229] 
#[1 6 249 0 2 6 253 0 5 7 1 0 6 2 157 0 11 7 5 0 94 7 9 0 102 7 13 0 126 7 33 0 129 7 37 0 130 7 21 0 143 7 21 0 155 7 21 0 156 7 21 0 157 7 33 1 70 7 37 1 71 7 41 1 101 7 45 1 121 7 49 1 122 7 53 1 123 7 53 1 135 7 53 1 137 7 53 1 142 7 53 1 143 7 53 1 144] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 7 77 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 7 81 0 122 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 7 93 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 7 89 1 126 7 93 1 127 2 205 1 128 2 209 1 129 7 93 1 130 7 93 1 131 2 217 1 132 2 217 1 134] 
#[1 0 189 0 125 7 97 0 142 7 101 1 102 7 105 1 103] 
#[1 7 109 0 2 2 149 0 4 2 153 0 6 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 7 113 1 112 7 113 1 113 7 113 1 114 7 113 1 115 7 113 1 116 7 113 1 117 2 241 1 118 2 245 1 119 7 113 1 120 7 113 1 124 7 113 1 125 7 113 1 132 7 113 1 134] 
#[1 7 109 0 2 2 149 0 4 2 153 0 6 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 7 117 1 112 7 117 1 113 7 117 1 114 7 117 1 115 7 117 1 116 7 117 1 117 2 241 1 118 2 245 1 119 7 117 1 120 7 117 1 124 7 117 1 125 7 117 1 132 7 117 1 134] 
#[1 7 121 0 2 2 157 0 11 7 125 1 101] 
#[0 1 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 0 189 0 125 7 129 0 142 7 133 1 133] 
#[0 1 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 1 226 0 3 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 1 226 0 8 1 226 0 9 1 226 0 11 1 226 0 12 1 226 0 14 1 226 0 15 1 226 0 18 1 226 0 19 1 226 0 20 1 226 0 21 1 230 0 22 1 226 0 23 1 226 0 24 1 226 0 25 1 226 0 26 1 226 0 27 1 226 0 35 1 226 0 37 1 226 0 40 1 226 0 41 1 226 0 43 1 226 0 45 1 226 0 47 1 226 0 48 1 226 0 49 1 226 0 51 1 226 0 53 1 226 0 54 1 226 0 64 1 226 0 84 1 226 0 86 1 226 0 87 1 226 0 98 1 226 0 99 1 226 0 100 1 226 0 101 1 226 0 105 1 226 0 122 1 226 0 123 1 226 0 126 1 226 0 129 1 226 0 130 1 226 0 135 1 226 0 136 1 226 1 229 1 226 1 230] 
#[0 1 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 1 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 7 137 0 2] 
#[0 0 0 1 230] 
#[1 1 242 0 3 1 242 0 4 1 242 0 5 1 242 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 11 1 242 0 12 1 242 0 14 1 242 0 15 1 242 0 18 1 242 0 19 1 242 0 20 1 242 0 21 1 242 0 23 1 242 0 24 1 242 0 25 1 242 0 26 1 242 0 27 1 242 0 35 1 242 0 37 1 242 0 40 1 242 0 41 1 242 0 43 1 242 0 45 1 242 0 47 0 39 0 48 1 242 0 49 1 242 0 51 1 242 0 53 1 242 0 54 1 242 0 64 1 242 0 84 1 242 0 87 1 242 0 98 1 242 0 99 1 242 0 100 1 242 0 101 1 242 0 105 1 242 0 122 1 242 0 123 1 242 0 126 1 242 0 129 1 242 0 130 1 242 0 135 1 242 0 136 1 242 1 229 1 242 1 230] 
#[1 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 14 1 246 0 15 1 246 0 18 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 23 1 246 0 24 1 246 0 25 1 246 0 26 1 246 0 27 1 246 0 35 1 246 0 37 0 43 0 40 1 246 0 41 1 246 0 43 1 246 0 45 1 246 0 47 1 246 0 48 1 246 0 49 1 246 0 51 1 246 0 53 1 246 0 54 1 246 0 64 1 246 0 84 1 246 0 87 1 246 0 98 1 246 0 99 1 246 0 100 1 246 0 101 1 246 0 105 1 246 0 122 1 246 0 123 1 246 0 126 1 246 0 129 1 246 0 130 1 246 0 135 1 246 0 136 1 246 1 229 1 246 1 230] 
#[0 1 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 1 254 0 3 1 254 0 4 1 254 0 5 0 47 0 6 1 254 0 7 1 254 0 8 1 254 0 9 1 254 0 11 1 254 0 12 1 254 0 14 1 254 0 15 1 254 0 18 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 23 1 254 0 24 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 35 1 254 0 37 1 254 0 40 1 254 0 41 1 254 0 43 1 254 0 45 1 254 0 47 1 254 0 48 1 254 0 49 1 254 0 51 1 254 0 53 1 254 0 54 1 254 0 64 1 254 0 84 1 254 0 87 1 254 0 98 1 254 0 99 1 254 0 100 1 254 0 101 1 254 0 105 1 254 0 122 1 254 0 123 1 254 0 126 1 254 0 129 1 254 0 130 1 254 0 135 1 254 0 136 7 149 0 240 1 254 1 229 1 254 1 230] 
#[0 2 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 10 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 22 0 3 2 22 0 4 2 22 0 5 2 22 0 6 2 22 0 7 2 22 0 8 2 22 0 9 0 51 0 11 2 22 0 12 2 22 0 14 2 22 0 15 2 22 0 18 2 22 0 19 2 22 0 20 2 22 0 21 2 22 0 23 2 22 0 24 2 22 0 25 2 22 0 26 2 22 0 27 2 22 0 35 2 22 0 37 2 22 0 40 2 22 0 41 2 22 0 43 2 22 0 45 2 22 0 47 2 22 0 48 2 22 0 49 2 22 0 51 2 22 0 53 2 22 0 54 2 22 0 64 2 22 0 84 2 22 0 86 2 22 0 87 2 22 0 98 2 22 0 99 2 22 0 100 2 22 0 101 2 22 0 105 2 22 0 122 2 22 0 123 2 22 0 126 2 22 0 129 2 22 0 130 2 22 0 135 2 22 0 136 7 153 0 240 2 22 1 229 2 22 1 230] 
#[0 7 157 0 22] 
#[0 2 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 54 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 2 58 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 7 161 0 5 7 169 0 126 7 169 0 129 7 169 1 51 7 173 1 65 7 177 1 66 7 169 1 70] 
#[1 7 185 0 55 2 62 0 78] 
#[0 7 189 0 79] 
#[1 4 101 0 4 4 105 0 74 0 189 0 125 7 193 0 142 7 197 1 35 4 117 1 36 4 121 1 229] 
#[0 7 201 0 61] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 7 205 0 197 7 205 0 198 0 253 1 6 7 205 1 9 1 125 1 10 1 129 1 11 1 133 1 14 7 205 1 15 0 253 1 20 7 205 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 7 209 0 2 7 213 0 26 0 189 0 125 7 217 0 142] 
#[0 2 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 74 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 82 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 86 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 94 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 2 98 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 7 221 0 78 7 225 1 57] 
#[1 7 229 0 8 2 102 0 78] 
#[1 0 55 0 1 1 210 0 61 1 210 0 62 7 237 0 63 6 101 0 72 7 241 0 79 6 117 0 88 6 125 0 114 7 245 1 138 7 249 1 145 7 253 1 155 8 1 1 170 8 5 1 226] 
#[1 8 9 0 5 0 189 0 125 8 13 0 126 8 13 0 129 8 25 0 142 8 13 1 51 8 17 1 58 8 21 1 59 8 25 1 61 8 13 1 70 8 29 1 229] 
#[0 8 33 0 55] 
#[0 2 106 0 5 0 78 0 122] 
#[1 7 221 0 78 8 37 1 57] 
#[1 2 110 0 78 8 41 0 122] 
#[0 2 114 0 78] 
#[0 2 118 0 78] 
#[0 8 45 0 8] 
#[0 2 122 0 78 0 122] 
#[0 2 126 0 8] 
#[0 8 49 0 114] 
#[0 2 130 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 8 53 0 5 8 57 0 6 8 61 0 121 0 189 0 125 7 13 0 126 7 33 0 129 7 37 0 130 8 65 0 142 8 69 0 143 8 69 0 155 8 69 0 156 8 69 0 157 8 73 0 220 8 77 0 221 8 81 0 224 8 81 0 226 7 33 1 70 7 37 1 71 8 89 1 229] 
#[1 3 153 0 4 3 157 0 6 8 93 0 7 3 209 0 121 4 13 0 122 0 189 0 125 8 65 0 142 8 97 0 149 3 221 0 217 3 221 0 218 3 221 0 219 8 101 0 222 8 105 0 223 8 109 0 225 8 109 0 226 8 113 0 227 6 245 1 229] 
#[1 2 134 0 8 8 117 0 23 2 134 0 122 8 121 0 159] 
#[1 8 125 0 8 8 129 0 122] 
#[0 2 138 0 8 0 122] 
#[1 8 117 0 23 8 133 0 159] 
#[0 2 142 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 2 146 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 2 150 0 8 0 122] 
#[0 2 154 0 8 0 122] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 8 137 0 142 8 141 0 217 8 141 0 218 8 141 0 219] 
#[0 2 158 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 145 0 114] 
#[1 0 97 0 2 0 23 0 4 3 205 0 6 8 149 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 8 153 0 121 4 13 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 3 213 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 4 17 0 148 8 157 0 149 4 25 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 4 29 0 197 4 29 0 198 3 221 0 217 3 221 0 218 3 221 0 219 8 101 0 222 8 105 0 223 8 109 0 225 8 109 0 226 8 113 0 227 0 253 1 6 4 29 1 9 1 125 1 10 1 129 1 11 1 133 1 14 4 29 1 15 0 253 1 20 4 29 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 1 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 8 161 0 142 8 165 0 217 8 165 0 218 8 165 0 219] 
#[1 0 126 0 2 0 59 0 3 0 126 0 6 0 59 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 63 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 84 0 126 0 87 0 59 0 122 0 126 0 133 0 126 0 134 8 169 0 159 0 126 1 228 0 126 1 229] 
#[1 8 173 0 3 5 197 0 122] 
#[1 2 166 0 3 2 166 0 5 2 166 0 7 8 117 0 23 2 166 0 122 8 177 0 159] 
#[0 2 170 0 3 0 122] 
#[0 2 174 0 3 0 5 0 7 0 122] 
#[0 2 178 0 3] 
#[0 8 181 0 3] 
#[0 2 182 0 3] 
#[1 2 186 0 3 8 185 0 122] 
#[0 2 190 0 3] 
#[0 2 194 0 3 0 122] 
#[1 1 210 0 1 5 221 0 2 1 210 0 4 1 210 0 6 5 225 0 11 1 210 0 43 5 229 0 79 0 67 0 98 0 71 0 99 0 75 0 100 0 79 0 101 1 210 0 110 1 210 0 123 0 83 0 125 8 205 0 142 5 233 1 101 8 209 1 138 8 213 1 140 5 237 1 146] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 217 0 197 8 217 0 198 0 253 1 6 8 217 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 217 1 15 0 253 1 20 8 217 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 2 202 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 121 0 122 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[1 8 221 0 7 4 13 0 122 8 225 0 149] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 8 229 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 9 0 121 8 233 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 8 237 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 241 0 197 8 241 0 198 0 253 1 6 8 241 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 241 1 15 0 253 1 20 8 241 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 2 206 0 7 0 122] 
#[0 2 210 0 7 0 122] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 3 217 0 197 3 217 0 198 3 217 0 200 0 253 1 6 3 217 1 9 1 125 1 10 1 129 1 11 1 133 1 14 3 217 1 15 0 253 1 20 3 217 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 4 81 0 79] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 198 0 3 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 11 0 198 0 12 0 198 0 14 0 198 0 15 0 198 0 18 0 198 0 20 0 198 0 21 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 35 5 57 0 36 0 198 0 37 5 61 0 38 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 45 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 84 0 198 0 87 0 198 0 122 0 198 0 123 0 198 0 135 0 198 0 136 5 85 1 229 0 198 1 230] 
#[0 2 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 8 245 0 11 5 229 0 79] 
#[0 2 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 222 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 226 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 230 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 2 234 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 3 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 8 249 0 2 8 253 0 26 0 189 0 125 9 1 0 142] 
#[0 0 130 0 19] 
#[0 9 5 0 19] 
#[1 5 221 0 2 2 157 0 11 5 233 1 101 5 237 1 146] 
#[0 2 238 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 9 9 0 5 9 13 0 8 9 17 0 26 9 21 0 56 9 25 0 80 9 29 0 104 9 33 0 105 9 37 0 125 9 41 0 127 9 69 1 17 9 69 1 21 9 69 1 26 9 69 1 30 9 61 1 37 9 65 1 38 9 69 1 39 9 73 1 40 9 77 1 41 9 69 1 42 9 69 1 147 9 69 1 148 9 93 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 37 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 9 97 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 9 97 0 179 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 4 165 1 229] 
#[1 4 101 0 4 4 105 0 74 9 101 1 35 4 117 1 36 4 121 1 229] 
#[0 2 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 105 0 4] 
#[1 9 109 0 74 9 113 0 86 9 117 1 159 9 121 1 161] 
#[0 2 246 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 9 125 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 9 129 0 2 0 189 0 125 9 133 0 142] 
#[0 9 137 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 141 0 197 9 141 0 198 0 253 1 6 9 141 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 141 1 15 0 253 1 20 9 141 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 9 145 0 91] 
#[0 9 149 0 109] 
#[1 4 169 0 2 0 158 0 3 0 158 0 4 0 158 0 5 4 217 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 20 0 158 0 21 4 221 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 4 225 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 53 0 158 0 54 0 158 0 84 0 158 0 87 0 158 0 97 0 158 0 122 0 158 0 123 0 209 0 133 0 18 0 134 0 158 0 135 0 158 0 136 4 229 0 160 0 249 0 161 9 153 0 173 4 237 0 176 0 158 1 228 0 27 1 229 0 158 1 230] 
#[1 2 250 0 3 2 250 0 4 2 250 0 5 2 250 0 7 2 250 0 8 2 250 0 9 2 250 0 10 2 250 0 11 2 250 0 12 2 250 0 13 2 250 0 14 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 18 2 250 0 20 2 250 0 21 2 250 0 23 2 250 0 24 2 250 0 25 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 29 2 250 0 30 2 250 0 31 2 250 0 32 2 250 0 33 2 250 0 34 2 250 0 35 2 250 0 36 2 250 0 37 2 250 0 38 2 250 0 40 2 250 0 41 2 250 0 42 2 250 0 43 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 53 2 250 0 54 2 250 0 84 2 250 0 87 2 250 0 97 2 250 0 122 2 250 0 123 2 250 0 135 2 250 0 136 2 250 1 228 0 87 1 229 2 250 1 230] 
#[0 9 157 1 229] 
#[0 5 229 0 79] 
#[1 0 97 0 2 9 161 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 9 165 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 9 169 0 174 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 173 0 197 9 173 0 198 0 253 1 6 9 173 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 173 1 15 0 253 1 20 9 173 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 177 0 197 9 177 0 198 9 177 0 200 0 253 1 6 9 177 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 177 1 15 0 253 1 20 9 177 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 9 181 0 126] 
#[0 2 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 9 185 0 11 9 189 1 105] 
#[0 3 2 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 3 6 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 193 0 197 9 193 0 198 0 253 1 6 9 193 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 193 1 15 0 253 1 20 9 193 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 3 10 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 9 197 0 14] 
#[1 9 201 0 5 8 57 0 6 9 17 0 26 9 21 0 56 9 25 0 80 9 29 0 104 9 205 0 121 9 209 0 125 7 13 0 126 9 41 0 127 7 33 0 129 7 37 0 130 9 213 0 142 9 225 0 143 9 217 0 153 9 221 0 154 9 225 0 155 9 225 0 156 9 225 0 157 9 221 0 158 9 221 1 17 9 221 1 21 9 221 1 26 9 221 1 30 9 237 1 41 7 33 1 70 7 37 1 71 9 221 1 147 9 221 1 148 9 241 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 245 0 197 9 245 0 198 9 245 0 200 0 253 1 6 9 245 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 245 1 15 0 253 1 20 9 245 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 249 0 197 9 249 0 198 9 249 0 200 0 253 1 6 9 249 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 249 1 15 0 253 1 20 9 249 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 9 253 0 126 10 1 0 127] 
#[1 4 169 0 2 10 5 0 6 10 9 0 126 10 13 0 127 0 209 0 133 0 18 0 134 10 17 0 160 0 249 0 161 10 21 0 173 10 25 0 178 4 185 1 229] 
#[0 3 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 169 0 2 3 22 0 3 3 22 0 4 3 22 0 5 10 29 0 6 3 22 0 7 3 22 0 8 3 22 0 9 3 22 0 10 3 22 0 11 3 22 0 12 3 22 0 13 3 22 0 14 3 22 0 15 3 22 0 16 3 22 0 17 3 22 0 18 3 22 0 20 3 22 0 21 10 33 0 22 3 22 0 23 3 22 0 24 3 22 0 25 3 22 0 26 3 22 0 27 3 22 0 28 3 22 0 29 3 22 0 30 3 22 0 31 3 22 0 32 3 22 0 33 3 22 0 34 3 22 0 35 3 22 0 36 3 22 0 37 3 22 0 38 3 22 0 40 3 22 0 41 3 22 0 42 3 22 0 43 3 22 0 44 3 22 0 45 3 22 0 46 3 22 0 47 3 22 0 48 3 22 0 49 3 22 0 50 3 22 0 51 3 22 0 53 3 22 0 54 3 22 0 84 3 22 0 87 3 22 0 97 3 22 0 122 3 22 0 123 0 209 0 133 0 18 0 134 3 22 0 135 3 22 0 136 10 37 0 160 0 249 0 161 10 41 0 173 10 45 0 177 3 22 1 228 0 91 1 229 3 22 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 49 0 197 10 49 0 198 10 49 0 200 0 253 1 6 10 49 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 49 1 15 0 253 1 20 10 49 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 10 53 0 126 10 57 0 127] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 4 169 0 2 3 34 0 3 3 34 0 4 3 34 0 5 10 29 0 6 3 34 0 7 3 34 0 8 3 34 0 9 3 34 0 10 3 34 0 11 3 34 0 12 3 34 0 13 3 34 0 14 3 34 0 15 3 34 0 16 3 34 0 17 3 34 0 18 3 34 0 20 3 34 0 21 10 33 0 22 3 34 0 23 3 34 0 24 3 34 0 25 3 34 0 26 3 34 0 27 3 34 0 28 3 34 0 29 3 34 0 30 3 34 0 31 3 34 0 32 3 34 0 33 3 34 0 34 3 34 0 35 3 34 0 36 3 34 0 37 3 34 0 38 3 34 0 40 3 34 0 41 3 34 0 42 3 34 0 43 3 34 0 44 3 34 0 45 3 34 0 46 3 34 0 47 3 34 0 48 3 34 0 49 3 34 0 50 3 34 0 51 3 34 0 53 3 34 0 54 3 34 0 84 3 34 0 87 3 34 0 97 3 34 0 122 3 34 0 123 0 209 0 133 0 18 0 134 3 34 0 135 3 34 0 136 10 37 0 160 0 249 0 161 10 41 0 173 10 45 0 177 3 34 1 228 0 95 1 229 3 34 1 230] 
#[1 4 169 0 2 3 38 0 3 3 38 0 4 3 38 0 5 10 29 0 6 3 38 0 7 3 38 0 8 3 38 0 9 3 38 0 10 3 38 0 11 3 38 0 12 3 38 0 13 3 38 0 14 3 38 0 15 3 38 0 16 3 38 0 17 3 38 0 18 3 38 0 20 3 38 0 21 10 33 0 22 3 38 0 23 3 38 0 24 3 38 0 25 3 38 0 26 3 38 0 27 3 38 0 28 3 38 0 29 3 38 0 30 3 38 0 31 3 38 0 32 3 38 0 33 3 38 0 34 3 38 0 35 3 38 0 36 3 38 0 37 3 38 0 38 3 38 0 40 3 38 0 41 3 38 0 42 3 38 0 43 3 38 0 44 3 38 0 45 3 38 0 46 3 38 0 47 3 38 0 48 3 38 0 49 3 38 0 50 3 38 0 51 3 38 0 53 3 38 0 54 3 38 0 84 3 38 0 87 3 38 0 97 3 38 0 122 3 38 0 123 0 209 0 133 0 18 0 134 3 38 0 135 3 38 0 136 10 37 0 160 0 249 0 161 10 41 0 173 10 45 0 177 3 38 1 228 0 99 1 229 3 38 1 230] 
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
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 61 0 197 10 61 0 198 0 253 1 6 10 61 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 61 1 15 0 253 1 20 10 61 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 3 110 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[1 10 65 0 52 10 69 0 55] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 10 73 0 182 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[0 3 114 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 118 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 3 122 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 10 77 0 182 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 10 81 0 182 10 81 0 183 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 10 85 0 182 10 85 0 183 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 10 89 0 185 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 10 93 0 185 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 10 97 0 185 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 101 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 105 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 109 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 113 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 117 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 121 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 125 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 129 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 133 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 10 137 0 187 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 10 141 0 188 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 10 145 0 189 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 10 149 0 190 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 10 153 0 191 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 10 157 0 191 10 161 0 192 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 10 165 0 191 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 169 0 197 10 169 0 198 0 253 1 6 10 169 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 169 1 15 0 253 1 20 10 169 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 173 0 197 10 173 0 198 0 253 1 6 10 173 1 9 1 125 1 10 1 129 1 11 1 133 1 14 10 173 1 15 0 253 1 20 10 173 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 103 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 10 189 0 197 10 189 0 198 0 253 1 6 10 189 1 9 1 125 1 10 1 129 1 11 10 185 1 12 10 189 1 13 1 133 1 14 10 189 1 15 0 253 1 20 10 189 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 10 193 0 186 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[1 3 126 0 4 3 126 0 137 3 126 0 139 10 197 1 91 10 201 1 92] 
#[1 0 122 0 14 10 205 0 138 10 209 1 78 10 209 1 79 10 209 1 80 10 221 1 81 10 225 1 82 10 229 1 96] 
#[0 10 233 0 55] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 10 237 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 10 241 0 142 2 189 1 70 2 193 1 71 2 197 1 101 7 101 1 102 7 105 1 103 10 245 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 10 245 1 130 10 245 1 131 2 217 1 132 2 217 1 134] 
#[1 5 221 0 2 2 157 0 11 0 189 0 125 10 249 0 142 5 233 1 101 10 253 1 146] 
#[0 11 1 0 2] 
#[0 3 130 0 19] 
#[0 3 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 11 5 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 85 0 208 0 57 0 209 6 85 0 210 0 65 0 211 0 6 1 229] 
#[0 3 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 11 9 0 142] 
#[0 3 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 11 13 0 142] 
#[0 3 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 17 0 118] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 11 21 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 11 41 0 63 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 11 41 0 90 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 11 25 0 116 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 11 29 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 11 29 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 33 0 197 11 33 0 198 11 33 0 200 11 37 0 210 11 41 0 211 11 45 0 236 0 253 1 6 11 33 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 33 1 15 0 253 1 20 11 33 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 11 49 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 53 0 197 11 53 0 198 11 53 0 200 0 253 1 6 11 53 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 53 1 15 0 253 1 20 11 53 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 3 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 57 0 197 11 57 0 198 11 57 0 200 0 253 1 6 11 57 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 57 1 15 0 253 1 20 11 57 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 61 0 197 11 61 0 198 11 61 0 200 0 253 1 6 11 61 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 61 1 15 0 253 1 20 11 61 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 11 65 0 8 5 197 0 122] 
#[1 11 69 0 60 11 73 0 76 11 77 0 252 11 81 0 253] 
#[1 3 154 0 8 8 117 0 23 3 154 0 122 11 85 0 159] 
#[1 11 89 0 8 11 93 0 122] 
#[0 3 158 0 8 0 122] 
#[1 8 117 0 23 11 97 0 159] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 11 101 0 142 11 105 0 217 11 105 0 218 11 105 0 219 11 109 1 151 11 113 1 152] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 117 0 197 11 117 0 198 11 117 0 200 0 253 1 6 11 117 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 117 1 15 0 253 1 20 11 117 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 11 121 0 197 11 121 0 198 11 121 0 200 0 253 1 6 11 121 1 9 1 125 1 10 1 129 1 11 1 133 1 14 11 121 1 15 0 253 1 20 11 121 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 11 129 0 201 11 129 0 204 11 129 0 205 11 129 0 206 11 129 0 214 11 129 0 228 11 129 0 229 11 129 0 230 11 129 0 231 11 129 0 232 11 129 0 233 11 129 0 234 11 129 0 235 11 129 0 238 11 129 0 239 11 129 0 241 11 129 0 242 11 129 0 243 11 129 0 248 11 129 0 249 11 129 0 250 11 129 0 251 11 129 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 3 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 101 0 4 4 105 0 74 0 189 0 125 11 133 0 142 11 137 1 35 4 117 1 36 4 121 1 229] 
#[1 0 34 0 4 0 34 0 6 11 141 0 72 0 34 0 125 0 34 1 229] 
#[1 11 145 0 61 11 149 0 63 6 101 0 72 11 153 0 79 11 157 0 81 11 161 0 90 11 165 0 92 11 169 0 93 11 173 0 116 11 193 1 170 11 181 1 210 11 185 1 213 11 189 1 214 11 193 1 220 11 197 1 221] 
#[1 0 189 0 125 11 201 0 142] 
#[1 3 29 0 4 11 205 0 23 11 209 0 26 11 213 1 64 11 217 1 229] 
#[1 11 221 0 2 11 225 0 26 0 189 0 125 11 229 0 142] 
#[1 4 141 0 2 3 105 0 4 4 145 0 22 3 109 0 26 0 189 0 125 3 133 0 129 11 233 0 142 3 117 1 53 3 121 1 54 3 125 1 55 3 129 1 56 3 133 1 60 3 121 1 61 3 133 1 70 3 145 1 229] 
#[1 0 189 0 125 11 237 0 142] 
#[1 0 189 0 125 11 241 0 142 11 245 1 176] 
#[1 0 189 0 125 11 249 0 142] 
#[0 3 170 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 174 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 3 190 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 7 233 0 1 11 253 0 73 12 1 1 226] 
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
#[1 0 55 0 1 5 221 0 2 5 225 0 11 1 210 0 61 1 210 0 62 12 5 0 79 5 233 1 101 7 245 1 138 5 237 1 146 8 5 1 226] 
#[1 6 249 0 2 12 9 0 5 7 1 0 6 2 157 0 11 7 5 0 94 7 9 0 102 8 61 0 121 0 189 0 125 7 13 0 126 7 33 0 129 7 37 0 130 8 65 0 142 12 13 0 143 12 13 0 155 12 13 0 156 12 13 0 157 8 73 0 220 8 77 0 221 8 81 0 224 8 81 0 226 7 33 1 70 7 37 1 71 7 41 1 101 7 45 1 121 7 49 1 122 7 53 1 123 7 53 1 135 7 53 1 137 7 53 1 142 7 53 1 143 7 53 1 144 8 89 1 229] 
#[1 2 145 0 2 6 225 0 4 6 229 0 6 12 17 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 3 209 0 121 12 21 0 122 0 189 0 125 2 189 0 129 2 193 0 130 6 233 0 142 8 97 0 149 3 221 0 217 3 221 0 218 3 221 0 219 8 101 0 222 8 105 0 223 8 109 0 225 8 109 0 226 8 113 0 227 2 189 1 70 2 193 1 71 2 197 1 101 7 93 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 7 89 1 126 7 93 1 127 2 205 1 128 2 209 1 129 7 93 1 130 7 93 1 131 2 217 1 132 2 217 1 134 6 245 1 229] 
#[1 0 107 0 3 0 107 0 5 1 226 0 6 0 107 0 7 1 226 0 8 1 226 0 11 1 230 0 22 8 117 0 23 1 226 0 40 1 226 0 48 0 107 0 122 8 169 0 159] 
#[0 12 25 0 3] 
#[0 12 29 0 3] 
#[1 1 210 0 1 1 210 0 4 1 210 0 6 1 210 0 43 0 67 0 98 0 71 0 99 0 75 0 100 0 79 0 101 1 210 0 110 1 210 0 123 0 83 0 125 8 205 0 142 8 209 1 138 8 213 1 140] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 12 33 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 105 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 12 37 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 12 41 0 197 12 41 0 198 0 253 1 6 12 41 1 9 1 125 1 10 1 129 1 11 1 133 1 14 12 41 1 15 0 253 1 20 12 41 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 12 45 0 2 2 157 0 11 12 49 1 101] 
#[1 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 12 53 0 143 12 53 0 155 12 53 0 156 12 53 0 157 7 33 1 70 7 37 1 71] 
#[0 4 6 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 10 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[1 6 249 0 2 4 14 0 5 4 14 0 8 2 157 0 11 12 57 0 43 4 14 0 122 12 61 0 123 7 41 1 101 12 65 1 136 12 69 1 137] 
#[0 4 18 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 22 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 26 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 4 30 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 12 73 0 2] 
#[0 12 77 0 5] 
#[1 4 34 0 5 12 81 0 8 12 85 0 122] 
#[0 4 38 0 5 0 8 0 122] 
#[0 4 42 0 5 0 8 0 122] 
#[0 4 46 0 5 0 8 0 122] 
#[0 4 50 0 5 0 8 0 122] 
#[0 4 54 0 5 0 8 0 122] 
#[0 4 58 0 5 0 8 0 122] 
#[0 4 62 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 12 89 0 7] 
#[0 4 66 0 7 0 122] 
#[1 12 93 0 7 12 97 0 122] 
#[0 4 70 0 7 0 122] 
#[1 4 74 0 14 12 101 0 74 4 74 0 122 12 105 1 104] 
#[1 12 109 0 14 12 113 0 122] 
#[0 4 78 0 14 0 122] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 6 241 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 6 241 1 130 6 241 1 131 2 217 1 132 2 217 1 134] 
#[1 4 82 0 3 4 82 0 4 4 82 0 5 0 111 0 6 4 82 0 7 4 82 0 8 4 82 0 9 4 82 0 11 4 82 0 12 4 82 0 14 4 82 0 15 4 82 0 18 4 82 0 19 4 82 0 20 4 82 0 21 4 82 0 23 4 82 0 24 4 82 0 25 4 82 0 26 4 82 0 27 4 82 0 35 4 82 0 37 4 82 0 40 4 82 0 41 4 82 0 43 4 82 0 45 4 82 0 47 4 82 0 48 4 82 0 49 4 82 0 51 4 82 0 53 4 82 0 54 4 82 0 64 4 82 0 84 4 82 0 87 4 82 0 98 4 82 0 99 4 82 0 100 4 82 0 101 4 82 0 105 4 82 0 122 4 82 0 123 4 82 0 126 4 82 0 129 4 82 0 130 4 82 0 135 4 82 0 136 7 149 0 240 4 82 1 229 4 82 1 230] 
#[1 4 86 0 3 4 86 0 4 4 86 0 5 0 115 0 6 4 86 0 7 4 86 0 8 4 86 0 9 4 86 0 11 4 86 0 12 4 86 0 14 4 86 0 15 4 86 0 18 4 86 0 19 4 86 0 20 4 86 0 21 4 86 0 23 4 86 0 24 4 86 0 25 4 86 0 26 4 86 0 27 4 86 0 35 4 86 0 37 4 86 0 40 4 86 0 41 4 86 0 43 4 86 0 45 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 51 4 86 0 53 4 86 0 54 4 86 0 64 4 86 0 84 4 86 0 87 4 86 0 98 4 86 0 99 4 86 0 100 4 86 0 101 4 86 0 105 4 86 0 122 4 86 0 123 4 86 0 126 4 86 0 129 4 86 0 130 4 86 0 135 4 86 0 136 7 149 0 240 4 86 1 229 4 86 1 230] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 12 117 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 12 121 0 2] 
#[0 4 90 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 4 94 0 3 4 94 0 4 4 94 0 5 4 94 0 6 4 94 0 7 4 94 0 8 4 94 0 9 4 94 0 11 4 94 0 12 4 94 0 14 4 94 0 15 4 94 0 18 4 94 0 19 4 94 0 20 4 94 0 21 12 125 0 22 4 94 0 23 4 94 0 24 4 94 0 25 4 94 0 26 4 94 0 27 4 94 0 35 4 94 0 37 4 94 0 40 4 94 0 41 4 94 0 43 4 94 0 45 4 94 0 47 4 94 0 48 4 94 0 49 4 94 0 51 4 94 0 53 4 94 0 54 4 94 0 64 4 94 0 84 4 94 0 87 4 94 0 98 4 94 0 99 4 94 0 100 4 94 0 101 4 94 0 105 4 94 0 122 4 94 0 123 4 94 0 126 4 94 0 129 4 94 0 130 4 94 0 135 4 94 0 136 4 94 1 229 4 94 1 230] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 12 129 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 7 109 0 2 2 149 0 4 2 153 0 6 2 161 0 85 2 165 0 89 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 12 133 1 110 12 133 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 12 133 1 129 2 217 1 132 2 217 1 134] 
#[1 7 109 0 2 2 149 0 4 2 153 0 6 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 12 137 1 112 12 137 1 113 12 137 1 114 12 137 1 115 12 137 1 116 12 137 1 117 2 241 1 118 2 245 1 119 12 137 1 120 12 137 1 124 12 137 1 125 12 137 1 132 12 137 1 134] 
#[0 12 141 0 6] 
#[1 9 185 0 11 12 145 1 105] 
#[1 0 189 0 125 12 149 0 142] 
#[0 4 98 0 8 0 78] 
#[0 4 102 0 5 0 55 0 78 0 122] 
#[1 4 106 0 5 12 153 0 55 4 106 0 122] 
#[1 12 157 0 5 12 161 0 122] 
#[0 4 110 0 5 0 122] 
#[0 4 114 0 5 0 55 0 78 0 122] 
#[0 12 165 0 126 0 129 1 51 1 70] 
#[1 12 169 0 2 12 173 0 26 0 189 0 125 12 177 0 142] 
#[1 4 101 0 4 4 105 0 74 12 181 1 35 4 117 1 36 4 121 1 229] 
#[0 4 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 101 0 4 4 105 0 74 0 189 0 125 12 185 0 142 12 189 1 35 4 117 1 36 4 121 1 229] 
#[0 12 193 0 8] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 12 197 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 12 201 0 2 0 189 0 125 12 205 0 142] 
#[0 12 209 0 2] 
#[0 12 213 0 129 1 60 1 70] 
#[0 12 217 0 8] 
#[0 4 122 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 37 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 12 221 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 161 0 169 12 225 0 170 12 225 0 171 12 225 0 172 1 33 0 175 4 161 0 179 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 4 165 1 229] 
#[0 11 141 0 72] 
#[1 12 229 0 2 2 157 0 11 0 189 0 125 12 233 0 142 12 237 1 101 12 241 1 137 12 245 1 146] 
#[1 7 233 0 1 12 249 0 61 12 253 0 62 12 1 1 226] 
#[0 4 126 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 4 130 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 4 134 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 1 210 0 1 1 210 0 61 1 210 0 62 13 1 1 138] 
#[0 4 138 0 78] 
#[0 13 5 0 55] 
#[1 13 9 0 5 13 13 0 122] 
#[0 4 142 0 5 0 122] 
#[0 4 146 0 5 0 122] 
#[0 13 17 0 114] 
#[1 0 189 0 125 13 21 0 142 13 21 1 61] 
#[0 13 25 0 8] 
#[1 3 105 0 4 3 109 0 26 13 29 1 55 13 33 1 56] 
#[0 4 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 105 0 4 0 189 0 125 13 37 0 142 13 37 1 54 13 41 1 56 13 37 1 61] 
#[0 4 154 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 12 41 0 197 12 41 0 198 0 253 1 6 12 41 1 9 1 125 1 10 1 129 1 11 1 133 1 14 12 41 1 15 0 253 1 20 12 41 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 189 0 125 13 45 0 142] 
#[1 2 162 0 3 2 162 0 5 2 162 0 7 8 117 0 23 2 162 0 122 8 169 0 159] 
#[0 13 49 0 123] 
#[0 13 53 0 5] 
#[1 13 57 0 5 13 61 0 122] 
#[0 4 158 0 5 0 122] 
#[0 4 162 0 5 0 122] 
#[1 8 213 0 98 8 213 0 99 8 213 0 100 8 213 0 101 0 189 0 125 8 205 0 142 8 213 1 140] 
#[0 4 166 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 3 153 0 4 3 157 0 6 13 65 0 7 3 209 0 121 8 233 0 122 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 13 69 0 225 13 69 0 226 13 73 0 227 6 245 1 229] 
#[1 13 77 0 7 13 81 0 122] 
#[0 4 170 0 7 0 122] 
#[0 4 174 0 7 0 122] 
#[0 13 85 0 7] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 13 89 0 197 13 89 0 198 0 253 1 6 13 89 1 9 1 125 1 10 1 129 1 11 1 133 1 14 13 89 1 15 0 253 1 20 13 89 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 4 178 0 8 0 122] 
#[0 4 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 3 161 0 142 13 93 0 213 3 173 0 217 3 173 0 218 3 173 0 219 13 93 1 153 13 93 1 154 3 193 1 229] 
#[0 4 186 0 8 0 122] 
#[1 12 61 0 123 13 97 1 136] 
#[1 12 61 0 123 13 101 1 136] 
#[1 3 29 0 4 3 33 0 26 13 105 1 63 13 109 1 64] 
#[1 2 198 0 2 0 119 0 3 2 198 0 6 0 119 0 7 2 198 0 9 2 198 0 10 2 198 0 11 2 198 0 12 2 198 0 13 2 198 0 14 2 198 0 15 2 198 0 16 2 198 0 17 2 198 0 18 2 198 0 20 2 198 0 21 2 198 0 22 0 119 0 23 2 198 0 24 2 198 0 25 2 198 0 26 2 198 0 27 2 198 0 28 2 198 0 29 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 38 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 2 198 0 47 2 198 0 48 2 198 0 49 2 198 0 50 2 198 0 51 2 198 0 53 2 198 0 54 2 198 0 84 2 198 0 87 0 119 0 122 2 198 0 133 2 198 0 134 2 198 1 228 2 198 1 229] 
#[1 0 97 0 2 0 23 0 4 3 205 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 13 113 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 217 0 197 8 217 0 198 8 165 0 217 8 165 0 218 8 165 0 219 0 253 1 6 8 217 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 217 1 15 0 253 1 20 8 217 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 23 0 4 3 205 0 6 13 117 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 8 153 0 121 8 233 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 3 213 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 8 237 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 8 241 0 197 8 241 0 198 3 221 0 217 3 221 0 218 3 221 0 219 13 69 0 225 13 69 0 226 13 73 0 227 0 253 1 6 8 241 1 9 1 125 1 10 1 129 1 11 1 133 1 14 8 241 1 15 0 253 1 20 8 241 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 1 1 229] 
#[1 4 190 0 3 4 190 0 7 12 61 0 123 13 121 1 136] 
#[0 4 194 0 3 0 7] 
#[0 4 198 0 3 0 5 0 7 0 122] 
#[0 4 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 206 0 3 0 5 0 7 0 122] 
#[0 4 210 0 19] 
#[1 4 214 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 13 129 0 225 13 129 0 226 13 125 0 227 13 125 1 3 13 129 1 4 6 245 1 229] 
#[0 4 218 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[0 4 222 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[0 4 226 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[0 4 230 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 229] 
#[1 13 133 0 43 12 61 0 123 13 137 1 136] 
#[1 7 233 0 1 3 153 0 4 3 157 0 6 4 234 0 43 13 157 0 98 13 157 0 99 13 157 0 100 13 157 0 101 13 141 0 110 4 234 0 123 0 189 0 125 13 153 0 142 13 153 0 217 13 153 0 218 13 153 0 219 13 153 1 139 13 157 1 140 12 1 1 226] 
#[1 0 189 0 125 13 161 0 142] 
#[0 4 238 0 5 0 7 0 122] 
#[0 4 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 13 165 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 9 0 121 8 233 0 122 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 13 169 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 13 173 0 197 13 173 0 198 0 253 1 6 13 173 1 9 1 125 1 10 1 129 1 11 1 133 1 14 13 173 1 15 0 253 1 20 13 173 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 4 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 4 250 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 121 0 122 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 4 254 0 7 0 122] 
#[0 5 2 0 7 0 122] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 10 245 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 10 245 1 130 10 245 1 131 2 217 1 132 2 217 1 134] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 13 177 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 13 181 0 2 0 189 0 125 13 185 0 142] 
#[0 13 189 0 2] 
#[1 0 97 0 2 0 123 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 13 197 0 197 13 197 0 198 0 253 1 6 13 197 1 9 1 125 1 10 1 129 1 11 13 197 1 13 1 133 1 14 13 197 1 15 13 201 1 16 0 253 1 20 13 197 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 5 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[0 5 10 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 37 0 125 9 41 0 127 13 205 1 41] 
#[1 13 209 0 26 9 37 0 125 9 41 0 127 13 213 1 41] 
#[1 9 37 0 125 9 41 0 127 13 217 1 41] 
#[1 9 37 0 125 9 41 0 127 13 221 1 41] 
#[1 13 225 0 4 9 17 0 26 9 21 0 56 9 25 0 80 9 29 0 104 9 37 0 125 9 41 0 127 13 229 1 17 13 229 1 21 13 229 1 26 13 229 1 30 13 233 1 40 9 77 1 41 13 229 1 147 13 229 1 148 9 241 1 229] 
#[0 5 14 0 2 0 8 0 23] 
#[0 5 18 0 2 0 8 0 23] 
#[0 5 22 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 5 26 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 5 30 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 5 34 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 13 237 0 5] 
#[1 5 38 0 5 9 13 0 8 9 17 0 26 9 21 0 56 9 25 0 80 9 29 0 104 9 33 0 105 9 37 0 125 9 41 0 127 13 241 1 17 13 241 1 21 13 241 1 26 13 241 1 30 13 241 1 39 9 73 1 40 9 77 1 41 13 241 1 42 13 241 1 147 13 241 1 148 9 93 1 229] 
#[0 5 42 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 245 0 8] 
#[1 13 249 0 2 5 46 0 8 8 117 0 23 13 253 0 159] 
#[0 5 50 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 5 54 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 5 58 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 1 210 0 1 0 127 0 6 1 210 0 64 14 1 0 80 1 210 0 98 1 210 0 99 1 210 0 100 1 210 0 101 14 5 0 104 1 210 0 105 0 131 0 126 0 135 0 129 0 139 0 130 14 9 0 143 14 9 0 155 14 9 0 156 14 9 0 157 7 33 1 70 7 37 1 71 14 13 1 138 14 17 1 143 14 21 1 162 14 25 1 164 14 25 1 165 14 25 1 167 14 25 1 168 14 41 1 169 1 210 1 229] 
#[1 5 62 0 4 9 157 1 229] 
#[0 5 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 14 45 0 5 9 13 0 8 9 17 0 26 9 21 0 56 9 25 0 80 9 29 0 104 9 33 0 105 9 37 0 125 9 41 0 127 9 69 1 17 9 69 1 21 9 69 1 26 9 69 1 30 14 49 1 37 9 65 1 38 9 69 1 39 9 73 1 40 9 77 1 41 9 69 1 42 9 69 1 147 9 69 1 148 9 93 1 229] 
#[1 0 189 0 125 2 185 0 142 14 57 1 117 2 241 1 118 2 245 1 119 14 57 1 160] 
#[1 0 189 0 125 2 185 0 142 14 69 1 117 2 241 1 118 2 245 1 119 14 65 1 157 14 69 1 158] 
#[1 5 70 0 4 9 113 0 86 14 73 1 161] 
#[0 5 74 0 4] 
#[0 14 77 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 14 81 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 14 85 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 14 89 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 14 93 0 3] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 143 0 2 5 86 0 3 5 86 0 4 5 86 0 5 0 143 0 6 5 86 0 7 5 86 0 8 5 86 0 9 5 86 0 10 5 86 0 11 5 86 0 12 5 86 0 13 5 86 0 14 5 86 0 15 5 86 0 16 5 86 0 17 5 86 0 18 5 86 0 20 5 86 0 21 0 143 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 29 5 86 0 30 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 34 5 86 0 35 5 86 0 36 5 86 0 37 5 86 0 38 5 86 0 40 5 86 0 41 5 86 0 42 5 86 0 43 0 143 0 44 5 86 0 45 5 86 0 46 5 86 0 47 5 86 0 48 5 86 0 49 5 86 0 50 5 86 0 51 5 86 0 53 5 86 0 54 5 86 0 84 5 86 0 87 5 86 0 97 5 86 0 122 5 86 0 123 0 143 0 133 0 143 0 134 5 86 0 135 5 86 0 136 5 86 1 228 0 143 1 229 5 86 1 230] 
#[0 10 65 0 52] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 97 0 197 14 97 0 198 0 253 1 6 14 97 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 97 1 15 0 253 1 20 14 97 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 14 101 0 3 14 105 0 122] 
#[0 5 94 0 3 0 122] 
#[1 14 109 0 7 5 197 0 122] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 14 113 1 106 14 117 1 107 14 117 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 14 117 1 130 14 117 1 131 2 217 1 132 2 217 1 134] 
#[0 14 125 0 2] 
#[0 5 102 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 1 94 0 4 1 94 0 137 1 94 0 139 14 129 1 97] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 133 0 197 14 133 0 198 0 253 1 6 14 133 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 133 1 15 0 253 1 20 14 133 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 5 14 0 2 0 98 0 5 0 98 0 23 0 98 0 122] 
#[1 5 110 0 5 8 117 0 23 5 110 0 122 14 137 0 159] 
#[1 14 141 0 5 14 145 0 122] 
#[0 5 114 0 5 0 122] 
#[0 14 149 0 123] 
#[0 5 118 0 5 0 122] 
#[0 5 122 0 5 0 122] 
#[0 13 249 0 2] 
#[1 8 57 0 6 14 1 0 80 14 5 0 104 7 13 0 126 7 33 0 129 7 37 0 130 14 9 0 143 14 9 0 155 14 9 0 156 14 9 0 157 7 33 1 70 7 37 1 71] 
#[1 5 197 0 122 14 153 0 135 14 157 0 136 14 161 0 162 14 165 0 163] 
#[1 14 169 0 7 5 197 0 122] 
#[0 5 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 173 0 197 14 173 0 198 14 173 0 200 0 253 1 6 14 173 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 173 1 15 0 253 1 20 14 173 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 14 177 0 197 14 177 0 198 14 177 0 200 0 253 1 6 14 177 1 9 1 125 1 10 1 129 1 11 1 133 1 14 14 177 1 15 0 253 1 20 14 177 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 14 181 0 126 14 185 0 127] 
#[0 5 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 14 189 0 7 5 197 0 122] 
#[0 5 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 5 174 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 5 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 14 193 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 14 193 1 130 14 193 1 131 2 217 1 132 2 217 1 134] 
#[0 5 182 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[0 5 186 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 5 190 0 3 5 190 0 5 5 190 0 7 5 190 0 8 5 105 0 9 5 190 0 11 5 190 0 12 5 190 0 14 5 190 0 15 5 190 0 18 5 190 0 20 5 190 0 21 5 190 0 24 5 190 0 25 5 105 0 26 5 190 0 35 5 190 0 37 5 190 0 40 5 190 0 41 5 190 0 43 5 190 0 45 5 105 0 47 5 190 0 48 5 190 0 49 5 190 0 51 5 190 0 53 5 190 0 54 5 190 0 84 5 190 0 87 5 190 0 122 5 190 0 123 5 190 0 135 5 190 0 136 5 105 0 184 5 190 1 230] 
#[1 5 194 0 3 5 194 0 5 5 194 0 7 5 194 0 8 5 105 0 9 5 194 0 11 5 194 0 12 5 194 0 14 5 194 0 15 5 194 0 18 5 194 0 20 5 194 0 21 5 194 0 24 5 194 0 25 5 105 0 26 5 194 0 35 5 194 0 37 5 194 0 40 5 194 0 41 5 194 0 43 5 194 0 45 5 105 0 47 5 194 0 48 5 194 0 49 5 194 0 51 5 194 0 53 5 194 0 54 5 194 0 84 5 194 0 87 5 194 0 122 5 194 0 123 5 194 0 135 5 194 0 136 5 105 0 184 5 194 1 230] 
#[1 5 198 0 3 5 198 0 5 5 198 0 7 5 198 0 8 5 198 0 11 5 198 0 12 5 198 0 14 5 198 0 15 5 198 0 18 5 198 0 20 5 198 0 21 5 198 0 24 5 198 0 25 5 109 0 35 5 113 0 37 5 198 0 40 5 198 0 41 5 198 0 43 5 198 0 45 5 198 0 48 5 198 0 49 5 198 0 51 5 198 0 53 5 198 0 54 5 198 0 84 5 198 0 87 5 198 0 122 5 198 0 123 5 198 0 135 5 198 0 136 5 198 1 230] 
#[1 5 202 0 3 5 202 0 5 5 202 0 7 5 202 0 8 5 202 0 11 5 202 0 12 5 202 0 14 5 202 0 15 5 202 0 18 5 202 0 20 5 202 0 21 5 202 0 24 5 202 0 25 5 109 0 35 5 113 0 37 5 202 0 40 5 202 0 41 5 202 0 43 5 202 0 45 5 202 0 48 5 202 0 49 5 202 0 51 5 202 0 53 5 202 0 54 5 202 0 84 5 202 0 87 5 202 0 122 5 202 0 123 5 202 0 135 5 202 0 136 5 202 1 230] 
#[1 5 206 0 3 5 206 0 5 5 206 0 7 5 206 0 8 5 206 0 11 5 206 0 12 5 206 0 14 5 206 0 15 5 206 0 18 5 206 0 20 5 206 0 21 5 206 0 24 5 206 0 25 5 109 0 35 5 113 0 37 5 206 0 40 5 206 0 41 5 206 0 43 5 206 0 45 5 206 0 48 5 206 0 49 5 206 0 51 5 206 0 53 5 206 0 54 5 206 0 84 5 206 0 87 5 206 0 122 5 206 0 123 5 206 0 135 5 206 0 136 5 206 1 230] 
#[1 5 210 0 3 5 210 0 5 5 210 0 7 5 210 0 8 5 210 0 11 5 117 0 12 5 210 0 14 5 121 0 15 5 125 0 18 5 210 0 20 5 210 0 21 5 210 0 24 5 210 0 25 5 210 0 40 5 210 0 41 5 210 0 43 5 210 0 45 5 210 0 48 5 210 0 49 5 210 0 51 5 210 0 53 5 210 0 54 5 210 0 84 5 210 0 87 5 210 0 122 5 210 0 123 5 210 0 135 5 210 0 136 5 210 1 230] 
#[1 5 214 0 3 5 214 0 5 5 214 0 7 5 214 0 8 5 214 0 11 5 117 0 12 5 214 0 14 5 121 0 15 5 125 0 18 5 214 0 20 5 214 0 21 5 214 0 24 5 214 0 25 5 214 0 40 5 214 0 41 5 214 0 43 5 214 0 45 5 214 0 48 5 214 0 49 5 214 0 51 5 214 0 53 5 214 0 54 5 214 0 84 5 214 0 87 5 214 0 122 5 214 0 123 5 214 0 135 5 214 0 136 5 214 1 230] 
#[1 5 218 0 3 5 218 0 5 5 218 0 7 5 218 0 8 5 218 0 11 5 117 0 12 5 218 0 14 5 121 0 15 5 125 0 18 5 218 0 20 5 218 0 21 5 218 0 24 5 218 0 25 5 218 0 40 5 218 0 41 5 218 0 43 5 218 0 45 5 218 0 48 5 218 0 49 5 218 0 51 5 218 0 53 5 218 0 54 5 218 0 84 5 218 0 87 5 218 0 122 5 218 0 123 5 218 0 135 5 218 0 136 5 218 1 230] 
#[1 5 222 0 3 5 222 0 5 5 222 0 7 5 222 0 8 5 222 0 11 5 117 0 12 5 222 0 14 5 121 0 15 5 125 0 18 5 222 0 20 5 222 0 21 5 222 0 24 5 222 0 25 5 222 0 40 5 222 0 41 5 222 0 43 5 222 0 45 5 222 0 48 5 222 0 49 5 222 0 51 5 222 0 53 5 222 0 54 5 222 0 84 5 222 0 87 5 222 0 122 5 222 0 123 5 222 0 135 5 222 0 136 5 222 1 230] 
#[1 5 226 0 3 5 226 0 5 5 226 0 7 5 226 0 8 5 226 0 11 5 117 0 12 5 226 0 14 5 121 0 15 5 125 0 18 5 226 0 20 5 226 0 21 5 226 0 24 5 226 0 25 5 226 0 40 5 226 0 41 5 226 0 43 5 226 0 45 5 226 0 48 5 226 0 49 5 226 0 51 5 226 0 53 5 226 0 54 5 226 0 84 5 226 0 87 5 226 0 122 5 226 0 123 5 226 0 135 5 226 0 136 5 226 1 230] 
#[1 5 230 0 3 5 230 0 5 5 230 0 7 5 230 0 8 5 230 0 11 5 117 0 12 5 230 0 14 5 121 0 15 5 125 0 18 5 230 0 20 5 230 0 21 5 230 0 24 5 230 0 25 5 230 0 40 5 230 0 41 5 230 0 43 5 230 0 45 5 230 0 48 5 230 0 49 5 230 0 51 5 230 0 53 5 230 0 54 5 230 0 84 5 230 0 87 5 230 0 122 5 230 0 123 5 230 0 135 5 230 0 136 5 230 1 230] 
#[1 5 234 0 3 5 234 0 5 5 234 0 7 5 234 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 234 0 24 5 234 0 25 5 234 0 40 5 234 0 41 5 234 0 43 5 234 0 45 5 234 0 48 5 234 0 49 5 234 0 51 5 234 0 53 5 234 0 54 5 145 0 84 5 149 0 87 5 234 0 122 5 234 0 123 5 234 0 135 5 234 0 136 5 234 1 230] 
#[1 5 238 0 3 5 238 0 5 5 238 0 7 5 238 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 238 0 24 5 238 0 25 5 238 0 40 5 238 0 41 5 238 0 43 5 238 0 45 5 238 0 48 5 238 0 49 5 238 0 51 5 238 0 53 5 238 0 54 5 145 0 84 5 149 0 87 5 238 0 122 5 238 0 123 5 238 0 135 5 238 0 136 5 238 1 230] 
#[1 5 242 0 3 5 242 0 5 5 242 0 7 5 242 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 242 0 24 5 242 0 25 5 242 0 40 5 242 0 41 5 242 0 43 5 242 0 45 5 242 0 48 5 242 0 49 5 242 0 51 5 242 0 53 5 242 0 54 5 145 0 84 5 149 0 87 5 242 0 122 5 242 0 123 5 242 0 135 5 242 0 136 5 242 1 230] 
#[1 5 246 0 3 5 246 0 5 5 246 0 7 5 246 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 246 0 24 5 246 0 25 5 246 0 40 5 246 0 41 5 246 0 43 5 246 0 45 5 246 0 48 5 246 0 49 5 246 0 51 5 246 0 53 5 246 0 54 5 145 0 84 5 149 0 87 5 246 0 122 5 246 0 123 5 246 0 135 5 246 0 136 5 246 1 230] 
#[1 5 250 0 3 5 250 0 5 5 250 0 7 5 250 0 8 5 153 0 24 5 157 0 25 5 250 0 40 5 250 0 41 5 250 0 43 5 250 0 45 5 250 0 48 5 250 0 49 5 250 0 51 5 161 0 53 5 165 0 54 5 250 0 122 5 250 0 123 5 250 0 135 5 250 0 136 5 250 1 230] 
#[1 5 254 0 3 5 254 0 5 5 254 0 7 5 254 0 8 5 169 0 40 5 254 0 41 5 254 0 43 5 254 0 45 5 254 0 48 5 254 0 49 5 254 0 51 5 254 0 122 5 254 0 123 5 254 0 135 5 254 0 136 5 254 1 230] 
#[1 6 2 0 3 6 2 0 5 6 2 0 7 6 2 0 8 6 2 0 41 6 2 0 43 6 2 0 45 6 2 0 48 6 2 0 49 5 173 0 51 6 2 0 122 6 2 0 123 6 2 0 135 6 2 0 136 6 2 1 230] 
#[1 6 6 0 3 6 6 0 5 6 6 0 7 6 6 0 8 6 6 0 41 6 6 0 43 5 177 0 48 6 6 0 49 6 6 0 122 6 6 0 123 6 6 0 135 6 6 0 136 6 6 1 230] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 5 177 0 48 0 242 0 49 0 242 0 122 0 242 0 123 0 242 0 135 0 242 0 136 0 242 1 230] 
#[1 6 10 0 3 6 10 0 5 6 10 0 7 6 10 0 8 5 181 0 41 6 10 0 43 6 10 0 49 6 10 0 122 6 10 0 123 6 10 0 135 6 10 0 136 6 10 1 230] 
#[1 6 14 0 3 6 14 0 5 6 14 0 7 6 14 0 8 6 14 0 43 6 14 0 45 5 177 0 48 6 14 0 122 6 14 0 123 6 14 0 135 6 14 0 136 6 14 1 230] 
#[0 14 197 0 123] 
#[0 6 18 0 3 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 14 205 1 7 14 209 1 8 0 6 1 229] 
#[0 6 26 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 6 30 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 6 34 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[1 6 38 0 3 6 38 0 5 6 38 0 7 6 38 0 8 6 38 0 11 5 117 0 12 6 38 0 14 5 121 0 15 5 125 0 18 6 38 0 20 6 38 0 21 6 38 0 24 6 38 0 25 6 38 0 40 6 38 0 41 6 38 0 43 6 38 0 45 6 38 0 48 6 38 0 49 6 38 0 51 6 38 0 53 6 38 0 54 6 38 0 84 6 38 0 87 6 38 0 122 6 38 0 123 6 38 0 135 6 38 0 136 6 38 1 230] 
#[1 0 22 0 137 14 213 1 76 14 217 1 95] 
#[1 6 42 0 4 0 147 0 137 14 221 0 139 14 229 1 73 14 229 1 74 1 197 1 75 14 229 1 93 1 205 1 95 14 233 1 100] 
#[1 6 50 0 4 6 50 0 9 6 50 0 14 14 237 0 22 14 241 0 123 6 50 0 138] 
#[1 6 42 0 4 14 245 0 9 0 122 0 14 14 249 0 138 15 21 1 79 15 1 1 83 15 5 1 84 15 9 1 85 15 5 1 86 15 5 1 87 15 21 1 88 15 25 1 96 15 29 1 100] 
#[0 6 54 0 4 0 9 0 14 0 138] 
#[0 6 58 0 4 0 9 0 14 0 138] 
#[0 6 62 0 138] 
#[1 15 33 0 138 15 37 1 81] 
#[0 15 41 0 14] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 15 45 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 15 45 1 130 15 45 1 131 2 217 1 132 2 217 1 134] 
#[0 15 49 0 3] 
#[1 1 226 0 6 1 226 0 11 0 151 0 14 1 230 0 22 1 226 0 40 1 226 0 48 12 101 0 74 4 74 0 122 12 105 1 104] 
#[0 15 53 0 14] 
#[1 5 221 0 2 2 157 0 11 5 233 1 101 15 57 1 146] 
#[0 15 61 0 4] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 15 65 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 6 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 15 69 0 8] 
#[0 15 73 0 8] 
#[0 15 77 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 81 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 15 85 0 197 15 85 0 198 15 85 0 200 0 253 1 6 15 85 1 9 1 125 1 10 1 129 1 11 1 133 1 14 15 85 1 15 0 253 1 20 15 85 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 15 89 0 142 15 93 0 215 6 57 0 216 15 97 0 217 15 97 0 218 15 97 0 219 15 101 0 237 6 65 1 229] 
#[1 0 198 0 8 0 198 0 9 5 77 0 10 0 198 0 11 0 198 0 12 5 77 0 13 0 198 0 14 0 198 0 15 5 77 0 16 5 77 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 77 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 5 77 0 28 5 77 0 29 5 77 0 30 5 77 0 31 5 77 0 32 5 77 0 33 5 77 0 34 0 198 0 35 5 57 0 36 0 198 0 37 5 61 0 38 0 198 0 40 0 198 0 41 5 77 0 42 0 198 0 43 0 198 0 45 5 77 0 46 0 198 0 47 0 198 0 48 0 198 0 49 5 77 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 155 0 84 0 198 0 87 15 109 0 97 0 198 0 122 5 77 0 199 5 77 1 228 5 85 1 229] 
#[1 15 113 0 8 5 197 0 122] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 117 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 15 121 0 197 15 121 0 198 15 121 0 200 0 253 1 6 15 121 1 9 1 125 1 10 1 129 1 11 1 133 1 14 15 121 1 15 0 253 1 20 15 121 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 15 125 0 142 3 165 0 212 3 169 0 213 15 129 0 217 15 129 0 218 15 129 0 219 15 133 0 237 3 169 1 153 3 169 1 154 3 193 1 229] 
#[1 15 137 0 84 15 141 0 97] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 37 0 56 0 137 0 61 15 153 0 63 1 173 0 75 0 149 0 79 0 153 0 83 15 153 0 90 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 15 145 0 116 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 15 149 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 15 149 0 179 15 153 0 211 15 157 0 236 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 4 165 1 229] 
#[1 15 161 0 3 5 197 0 122] 
#[1 15 165 0 8 5 197 0 122] 
#[1 15 169 0 3 5 197 0 122] 
#[0 6 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 15 173 0 2 1 217 0 4 15 177 0 206] 
#[1 1 217 0 4 15 181 0 206] 
#[1 6 74 0 1 6 74 0 2 6 74 0 4 6 74 0 5 6 74 0 6 6 74 0 8 6 74 0 35 6 74 0 36 6 74 0 37 6 74 0 38 6 74 0 39 6 74 0 52 6 74 0 56 6 74 0 57 6 74 0 58 6 74 0 59 6 74 0 61 6 74 0 62 6 74 0 63 6 74 0 65 6 74 0 66 6 74 0 67 6 74 0 68 6 74 0 69 6 74 0 70 6 74 0 71 6 74 0 72 6 74 0 73 6 74 0 75 11 73 0 76 6 74 0 77 6 74 0 79 6 74 0 82 6 74 0 83 6 74 0 88 6 74 0 90 6 74 0 93 6 74 0 94 6 74 0 95 6 74 0 103 6 74 0 107 6 74 0 108 6 74 0 110 6 74 0 111 6 74 0 112 6 74 0 113 6 74 0 114 6 74 0 115 6 74 0 116 6 74 0 117 6 74 0 118 6 74 0 119 6 74 0 120 6 74 0 125 6 74 0 127 6 74 0 129 6 74 0 130 6 74 0 131 6 74 0 133 6 74 0 134 6 74 0 137 15 185 0 253 6 74 1 229 6 74 1 230] 
#[0 6 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 82 0 8 0 122] 
#[0 6 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 6 49 0 142 15 189 0 216 6 61 0 217 6 61 0 218 6 61 0 219 6 65 1 229] 
#[0 6 90 0 8 0 122] 
#[1 12 61 0 123 15 193 1 136] 
#[1 12 61 0 123 15 197 1 136] 
#[0 6 94 0 8 0 122] 
#[0 6 98 0 8 0 122] 
#[1 15 201 0 3 5 197 0 122] 
#[1 15 205 0 3 5 197 0 122] 
#[0 6 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 101 0 4 4 105 0 74 15 209 1 35 4 117 1 36 4 121 1 229] 
#[1 4 118 0 1 0 159 0 2 4 118 0 4 4 118 0 5 0 159 0 6 0 159 0 8 2 242 0 9 2 242 0 10 2 242 0 11 2 242 0 12 2 242 0 13 2 242 0 14 2 242 0 15 2 242 0 16 2 242 0 17 2 242 0 18 2 242 0 20 2 242 0 21 2 242 0 22 2 242 0 23 2 242 0 24 2 242 0 25 2 242 0 26 2 242 0 27 2 242 0 28 2 242 0 29 2 242 0 30 2 242 0 31 2 242 0 32 2 242 0 33 2 242 0 34 0 159 0 35 0 159 0 36 0 159 0 37 0 159 0 38 4 118 0 39 2 242 0 40 2 242 0 41 2 242 0 42 2 242 0 43 2 242 0 44 2 242 0 45 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 49 2 242 0 50 2 242 0 51 4 118 0 52 2 242 0 53 2 242 0 54 4 118 0 56 4 118 0 57 4 118 0 58 4 118 0 61 4 118 0 62 4 118 0 63 4 118 0 65 4 118 0 66 4 118 0 67 4 118 0 69 4 118 0 70 4 118 0 72 4 118 0 73 4 118 0 75 4 118 0 77 4 118 0 79 4 118 0 82 4 118 0 83 2 242 0 84 2 242 0 87 4 118 0 88 4 118 0 90 4 118 0 93 4 118 0 94 4 118 0 95 4 118 0 103 4 118 0 107 4 118 0 108 4 118 0 110 4 118 0 111 4 118 0 112 4 118 0 113 4 118 0 114 4 118 0 115 4 118 0 116 4 118 0 117 4 118 0 118 4 118 0 119 4 118 0 120 2 242 0 122 4 118 0 125 4 118 0 127 4 118 0 129 4 118 0 130 4 118 0 131 0 159 0 133 0 159 0 134 4 118 0 137 2 242 1 228 0 159 1 229 4 118 1 230] 
#[1 0 189 0 125 15 213 0 142] 
#[1 0 189 0 125 15 217 0 142] 
#[1 11 141 0 72 0 189 0 125 15 221 0 142 15 225 1 211 15 229 1 212] 
#[1 0 189 0 125 15 233 0 142] 
#[0 15 237 0 4] 
#[1 0 189 0 125 15 221 0 142 15 241 1 211 15 229 1 212] 
#[0 15 245 0 129 1 70] 
#[1 0 189 0 125 11 241 0 142 15 249 1 176] 
#[1 0 189 0 125 15 221 0 142 15 253 1 211 15 229 1 212] 
#[0 6 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 16 1 0 4] 
#[1 0 189 0 125 16 5 0 142] 
#[1 7 221 0 78 16 9 1 57] 
#[1 16 13 0 8 7 221 0 78 16 17 1 57] 
#[0 16 21 0 114] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 16 25 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 16 29 0 2 0 189 0 125 16 33 0 142] 
#[0 16 37 0 2] 
#[1 16 41 0 23 2 106 0 78 2 106 0 122] 
#[1 2 149 0 4 2 157 0 11 16 45 0 74 16 49 1 101 16 53 1 120 16 57 1 156] 
#[0 6 134 0 4 0 22] 
#[1 16 61 0 4 16 65 0 22] 
#[1 2 157 0 11 16 69 0 23 16 73 1 101] 
#[1 3 37 0 56 3 41 0 61 3 45 0 62 6 93 0 63 16 77 0 67 16 81 0 68 6 101 0 72 3 53 0 79 16 85 0 83 6 117 0 88 0 65 0 90 6 121 0 93 6 125 0 114 2 9 0 116 16 89 0 203 16 93 0 210 0 65 0 211 16 97 0 214 16 89 1 5 16 89 1 19 16 89 1 24 16 89 1 28 16 101 1 33 16 105 1 52 16 109 1 145 16 113 1 155 16 117 1 170 16 121 1 175 16 125 1 181 16 129 1 209 16 133 1 229] 
#[0 6 138 0 1 0 4 0 6 0 43 0 61 0 62 0 64 0 73 0 98 0 99 0 100 0 101 0 105 0 110 0 123 0 125 0 126 0 129 0 130 1 229] 
#[1 12 229 0 2 2 157 0 11 0 189 0 125 16 137 0 142 12 237 1 101 12 241 1 137 16 141 1 146] 
#[1 0 163 0 3 0 163 0 5 4 2 0 6 0 163 0 7 4 2 0 8 4 154 0 23 4 2 0 40 4 2 0 48 0 163 0 122] 
#[1 6 249 0 2 4 14 0 5 4 14 0 8 2 157 0 11 12 57 0 43 4 14 0 122 16 145 0 123 7 41 1 101 12 65 1 136 12 69 1 137] 
#[1 0 167 0 3 0 167 0 5 4 62 0 6 0 167 0 7 4 62 0 8 4 166 0 23 4 62 0 40 4 62 0 48 0 167 0 122] 
#[1 2 202 0 4 2 202 0 6 0 171 0 7 2 202 0 121 2 202 0 122 2 202 0 125 2 202 1 229] 
#[0 16 149 0 19] 
#[0 6 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 16 153 0 3] 
#[1 0 126 0 2 0 126 0 6 0 126 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 84 0 126 0 87 16 157 0 123 0 126 0 133 0 126 0 134 0 126 1 228 0 126 1 229] 
#[0 16 161 0 7] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 16 165 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 16 169 0 2] 
#[1 6 146 0 5 6 146 0 8 16 173 0 43 6 146 0 122 12 61 0 123 16 177 1 136] 
#[1 6 249 0 2 6 150 0 5 6 150 0 8 2 157 0 11 6 150 0 122 12 61 0 123 7 41 1 101 16 181 1 136 16 185 1 137] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 16 189 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 16 189 1 130 16 189 1 131 2 217 1 132 2 217 1 134] 
#[0 6 154 0 5 0 8 0 122] 
#[0 6 158 0 5 0 8 0 122] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 16 193 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 6 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 105 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 229 1 230] 
#[1 6 249 0 2 6 166 0 5 7 1 0 6 2 157 0 11 7 5 0 94 7 9 0 102 7 13 0 126 7 33 0 129 7 37 0 130 7 21 0 143 7 21 0 155 7 21 0 156 7 21 0 157 7 33 1 70 7 37 1 71 7 41 1 101 16 197 1 123 16 197 1 135 16 197 1 137 16 197 1 142 16 197 1 143 16 197 1 144] 
#[1 6 249 0 2 6 170 0 5 7 1 0 6 2 157 0 11 7 5 0 94 7 9 0 102 7 13 0 126 7 33 0 129 7 37 0 130 7 21 0 143 7 21 0 155 7 21 0 156 7 21 0 157 7 33 1 70 7 37 1 71 7 41 1 101 16 201 1 123 16 201 1 135 16 201 1 137 16 201 1 142 16 201 1 143 16 201 1 144] 
#[0 6 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 6 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 16 205 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 16 209 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 16 209 1 127 2 205 1 128 2 209 1 129 16 209 1 130 16 209 1 131 2 217 1 132 2 217 1 134] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 16 213 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 16 213 1 130 16 213 1 131 2 217 1 132 2 217 1 134] 
#[0 6 182 0 14 0 122] 
#[0 6 186 0 2 0 4 0 23 0 74 1 229] 
#[1 0 189 0 125 7 97 0 142 16 217 1 103] 
#[0 16 221 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 16 225 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 0 189 0 125 16 229 0 142] 
#[0 16 233 0 3] 
#[1 6 190 0 3 6 190 0 4 6 190 0 5 6 190 0 6 6 190 0 7 6 190 0 8 6 190 0 9 6 190 0 11 6 190 0 12 6 190 0 14 6 190 0 15 6 190 0 18 6 190 0 19 6 190 0 20 6 190 0 21 6 190 0 23 6 190 0 24 6 190 0 25 6 190 0 26 6 190 0 27 6 190 0 35 6 190 0 37 0 175 0 40 6 190 0 41 6 190 0 43 6 190 0 45 6 190 0 47 6 190 0 48 6 190 0 49 6 190 0 51 6 190 0 53 6 190 0 54 6 190 0 64 6 190 0 84 6 190 0 87 6 190 0 98 6 190 0 99 6 190 0 100 6 190 0 101 6 190 0 105 6 190 0 122 6 190 0 123 6 190 0 126 6 190 0 129 6 190 0 130 6 190 0 135 6 190 0 136 6 190 1 229 6 190 1 230] 
#[1 6 194 0 3 6 194 0 4 6 194 0 5 0 179 0 6 6 194 0 7 6 194 0 8 6 194 0 9 6 194 0 11 6 194 0 12 6 194 0 14 6 194 0 15 6 194 0 18 6 194 0 19 6 194 0 20 6 194 0 21 6 194 0 23 6 194 0 24 6 194 0 25 6 194 0 26 6 194 0 27 6 194 0 35 6 194 0 37 6 194 0 40 6 194 0 41 6 194 0 43 6 194 0 45 6 194 0 47 6 194 0 48 6 194 0 49 6 194 0 51 6 194 0 53 6 194 0 54 6 194 0 64 6 194 0 84 6 194 0 87 6 194 0 98 6 194 0 99 6 194 0 100 6 194 0 101 6 194 0 105 6 194 0 122 6 194 0 123 6 194 0 126 6 194 0 129 6 194 0 130 6 194 0 135 6 194 0 136 7 149 0 240 6 194 1 229 6 194 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 16 237 0 7 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 16 241 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 16 241 1 130 16 241 1 131 2 217 1 132 2 217 1 134] 
#[0 6 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 86 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 6 202 0 3 6 202 0 4 6 202 0 5 6 202 0 6 6 202 0 7 6 202 0 8 6 202 0 9 6 202 0 11 6 202 0 12 6 202 0 14 6 202 0 15 6 202 0 18 6 202 0 19 6 202 0 20 6 202 0 21 6 206 0 22 6 202 0 23 6 202 0 24 6 202 0 25 6 202 0 26 6 202 0 27 6 202 0 35 6 202 0 37 6 202 0 40 6 202 0 41 6 202 0 43 6 202 0 45 6 202 0 47 6 202 0 48 6 202 0 49 6 202 0 51 6 202 0 53 6 202 0 54 6 202 0 64 6 202 0 84 6 202 0 86 6 202 0 87 6 202 0 98 6 202 0 99 6 202 0 100 6 202 0 101 6 202 0 105 6 202 0 122 6 202 0 123 6 202 0 126 6 202 0 129 6 202 0 130 6 202 0 135 6 202 0 136 6 202 1 229 6 202 1 230] 
#[0 16 245 0 126 0 129 1 51 1 70] 
#[0 6 210 0 8 0 78] 
#[1 16 249 0 5 7 169 0 126 7 169 0 129 7 169 1 51 16 253 1 66 7 169 1 70] 
#[0 6 214 0 78] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 17 1 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 17 5 0 2 0 189 0 125 17 9 0 142] 
#[0 17 13 0 2] 
#[0 6 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 101 0 4 4 105 0 74 17 17 1 35 4 117 1 36 4 121 1 229] 
#[0 6 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 6 226 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 17 21 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 17 25 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 17 29 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 17 33 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 6 230 0 8] 
#[0 6 234 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 6 238 0 1 0 126 0 2 6 238 0 4 0 183 0 6 0 126 0 22 6 238 0 43 0 126 0 44 6 238 0 61 6 238 0 62 6 238 0 64 6 238 0 73 6 238 0 98 6 238 0 99 6 238 0 100 6 238 0 101 6 238 0 105 6 238 0 110 6 238 0 123 6 238 0 125 6 238 0 126 6 238 0 129 6 238 0 130 0 126 0 133 0 126 0 134 0 183 1 229] 
#[1 6 242 0 1 4 169 0 2 6 242 0 4 0 187 0 6 4 245 0 22 6 242 0 43 4 225 0 44 6 242 0 61 6 242 0 62 6 242 0 64 6 242 0 73 6 242 0 98 6 242 0 99 6 242 0 100 6 242 0 101 6 242 0 105 6 242 0 110 6 242 0 123 6 242 0 125 6 242 0 126 6 242 0 129 6 242 0 130 0 209 0 133 0 18 0 134 4 249 0 160 0 249 0 161 4 253 0 173 5 1 0 176 0 191 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 17 37 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 12 229 0 2 2 157 0 11 12 237 1 101 17 41 1 137 17 45 1 146] 
#[0 17 49 0 2] 
#[0 17 53 0 8] 
#[0 17 57 0 4] 
#[1 2 157 0 11 0 189 0 125 17 61 0 142 17 65 1 101] 
#[0 17 69 0 61] 
#[1 7 233 0 1 17 73 0 61 17 77 0 62 12 1 1 226] 
#[1 0 189 0 125 17 81 0 142 17 81 1 61] 
#[0 6 246 0 78] 
#[1 17 85 0 5 0 189 0 125 8 13 0 126 8 13 0 129 8 25 0 142 8 13 1 51 17 89 1 59 8 25 1 61 8 13 1 70 8 29 1 229] 
#[1 0 189 0 125 17 93 0 126 17 93 0 129 17 97 0 142 17 93 1 51 17 97 1 61 17 93 1 70] 
#[0 6 250 0 78] 
#[0 6 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 7 2 0 78] 
#[0 7 6 0 78] 
#[0 7 10 0 78] 
#[0 7 14 0 78] 
#[0 7 18 0 5] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 17 101 0 225 17 101 0 226 6 245 1 229] 
#[0 7 22 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 7 26 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 17 105 0 5 8 57 0 6 8 61 0 121 0 189 0 125 7 13 0 126 7 33 0 129 7 37 0 130 8 65 0 142 8 69 0 143 8 69 0 155 8 69 0 156 8 69 0 157 17 109 0 220 17 113 0 224 17 113 0 226 7 33 1 70 7 37 1 71 8 89 1 229] 
#[0 7 30 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 7 34 0 7 0 122] 
#[0 17 117 0 7] 
#[0 7 38 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 3 153 0 4 3 157 0 6 17 121 0 7 3 209 0 121 4 13 0 122 0 189 0 125 8 65 0 142 17 125 0 149 3 221 0 217 3 221 0 218 3 221 0 219 17 129 0 223 8 109 0 225 8 109 0 226 17 133 0 227 6 245 1 229] 
#[0 7 42 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 7 46 0 3 0 5 0 7 0 8 0 122] 
#[0 7 50 0 8 0 122] 
#[1 7 54 0 8 8 117 0 23 7 54 0 122 17 137 0 159] 
#[1 7 58 0 8 8 117 0 23 7 58 0 122 17 141 0 159] 
#[1 7 221 0 78 17 145 1 57] 
#[0 2 102 0 78] 
#[1 0 126 0 2 0 126 0 6 0 195 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 84 0 126 0 87 0 126 0 122 12 61 0 123 0 126 0 133 0 126 0 134 13 121 1 136 0 126 1 228 0 126 1 229] 
#[1 4 246 0 2 0 199 0 3 4 246 0 6 0 199 0 7 4 246 0 9 4 246 0 10 4 246 0 11 4 246 0 12 4 246 0 13 4 246 0 14 4 246 0 15 4 246 0 16 4 246 0 17 4 246 0 18 4 246 0 20 4 246 0 21 4 246 0 22 0 199 0 23 4 246 0 24 4 246 0 25 4 246 0 26 4 246 0 27 4 246 0 28 4 246 0 29 4 246 0 30 4 246 0 31 4 246 0 32 4 246 0 33 4 246 0 34 4 246 0 35 4 246 0 36 4 246 0 37 4 246 0 38 4 246 0 40 4 246 0 41 4 246 0 42 4 246 0 43 4 246 0 44 4 246 0 45 4 246 0 46 4 246 0 47 4 246 0 48 4 246 0 49 4 246 0 50 4 246 0 51 4 246 0 53 4 246 0 54 4 246 0 84 4 246 0 87 0 199 0 122 4 246 0 133 4 246 0 134 4 246 1 228 4 246 1 229] 
#[0 7 62 0 3 0 7] 
#[0 7 66 0 3] 
#[0 7 70 0 3 0 122] 
#[0 7 74 0 3 0 5 0 7 0 122] 
#[1 7 78 0 3 7 78 0 5 7 78 0 7 8 117 0 23 7 78 0 122 17 149 0 159] 
#[0 7 82 0 3 0 5 0 7 0 23 0 43 0 122 0 123] 
#[0 7 86 0 3 0 5 0 7 0 23 0 43 0 122 0 123] 
#[0 7 90 0 3 0 5 0 7 0 23 0 43 0 122 0 123] 
#[1 17 153 0 43 12 61 0 123 17 157 1 136] 
#[1 4 234 0 3 3 153 0 4 4 234 0 5 3 157 0 6 4 234 0 7 4 234 0 23 4 234 0 43 13 141 0 110 4 234 0 122 4 234 0 123 0 189 0 125 17 161 0 142 17 161 0 217 17 161 0 218 17 161 0 219 17 161 1 139] 
#[1 7 94 0 3 7 94 0 5 7 94 0 7 8 117 0 23 17 165 0 43 7 94 0 122 12 61 0 123 17 169 0 159 17 173 1 136] 
#[0 7 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 102 0 7 0 122] 
#[0 7 106 0 7 0 122] 
#[0 17 177 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 17 181 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 17 185 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 17 189 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 17 197 1 31 0 6 1 229] 
#[0 7 110 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 7 114 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 17 201 0 2] 
#[1 9 37 0 125 9 41 0 127 17 205 1 41] 
#[0 17 209 0 2] 
#[0 17 213 0 2] 
#[0 17 217 0 2] 
#[1 0 6 0 2 0 6 0 4 7 118 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 17 221 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 225 1 43 17 229 1 44 0 6 1 229] 
#[0 7 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 17 233 0 8] 
#[0 7 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[0 7 130 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 134 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 17 237 1 0 3 241 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 7 138 0 8] 
#[1 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 17 241 0 143 17 241 0 155 17 241 0 156 17 241 0 157 7 33 1 70 7 37 1 71] 
#[1 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 17 245 0 143 17 245 0 155 17 245 0 156 17 245 0 157 7 33 1 70 7 37 1 71] 
#[1 5 221 0 2 2 157 0 11 17 249 0 43 5 233 1 101 17 253 1 146] 
#[1 7 233 0 1 8 57 0 6 18 1 0 64 18 13 0 98 18 13 0 99 18 13 0 100 18 13 0 101 18 5 0 105 7 13 0 126 7 33 0 129 7 37 0 130 18 9 0 143 18 9 0 155 18 9 0 156 18 9 0 157 7 33 1 70 7 37 1 71 18 13 1 140 18 17 1 147 18 21 1 148 12 1 1 226 18 25 1 229] 
#[0 18 29 0 8] 
#[0 7 142 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 146 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 150 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 154 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 158 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 162 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 7 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[0 18 33 0 5] 
#[0 7 170 0 4 0 86] 
#[0 7 174 0 4 0 86] 
#[0 7 178 0 4 0 122] 
#[1 7 182 0 4 18 37 0 122] 
#[0 7 186 0 4 0 122] 
#[0 7 190 0 4] 
#[0 18 41 0 4] 
#[0 18 45 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 18 49 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 18 53 0 3] 
#[0 7 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 198 0 3 0 122] 
#[0 7 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 18 57 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 18 61 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 65 0 197 18 65 0 198 0 253 1 6 18 65 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 65 1 15 0 253 1 20 18 65 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 7 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 69 0 14 18 73 0 122] 
#[0 7 210 0 14 0 122] 
#[0 7 214 0 14 0 122] 
#[1 0 97 0 2 18 77 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 9 165 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 18 81 0 174 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 9 173 0 197 9 173 0 198 0 253 1 6 9 173 1 9 1 125 1 10 1 129 1 11 1 133 1 14 9 173 1 15 0 253 1 20 9 173 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 3 126 0 4 3 126 0 137 3 126 0 139 18 85 1 91 10 201 1 92] 
#[0 7 218 0 5 0 122] 
#[0 7 222 0 5 0 122] 
#[0 7 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 89 0 5 8 57 0 6 9 17 0 26 9 21 0 56 9 25 0 80 9 29 0 104 9 205 0 121 9 209 0 125 7 13 0 126 9 41 0 127 7 33 0 129 7 37 0 130 9 213 0 142 9 225 0 143 18 93 0 154 9 225 0 155 9 225 0 156 9 225 0 157 18 93 0 158 18 93 1 17 18 93 1 21 18 93 1 26 18 93 1 30 9 237 1 41 7 33 1 70 7 37 1 71 18 93 1 147 18 93 1 148 9 241 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 97 0 197 18 97 0 198 0 253 1 6 18 97 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 97 1 15 0 253 1 20 18 97 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 101 0 197 18 101 0 198 18 101 0 200 0 253 1 6 18 101 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 101 1 15 0 253 1 20 18 101 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 105 0 135 18 109 0 136] 
#[0 7 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 18 113 0 7 5 197 0 122] 
#[1 18 117 0 7 5 197 0 122] 
#[0 7 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 7 254 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 121 0 197 18 121 0 198 0 253 1 6 18 121 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 121 1 15 0 253 1 20 18 121 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 6 0 2 0 6 0 4 8 2 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 85 0 208 0 57 0 209 6 85 0 210 0 65 0 211 0 6 1 229] 
#[0 18 125 0 5] 
#[0 8 6 0 5] 
#[0 8 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 18 129 0 137] 
#[0 8 14 0 4 0 137 0 139] 
#[0 8 18 0 4 0 137 0 139] 
#[0 8 22 0 4 0 137 0 139] 
#[0 18 133 0 4] 
#[0 8 26 0 138] 
#[0 18 137 0 138] 
#[1 8 30 0 14 18 141 1 98] 
#[1 8 34 0 4 8 34 0 9 8 34 0 14 8 34 0 23 14 241 0 123 8 34 0 138] 
#[0 8 38 0 4 0 9 0 14 0 23 0 138] 
#[1 18 145 0 9 0 122 0 14 18 149 1 96] 
#[0 8 42 0 4 0 9 0 14 0 138] 
#[1 6 42 0 4 8 46 0 9 8 46 0 14 14 249 0 138 15 21 1 79 18 153 1 84 18 153 1 86 18 153 1 87 15 21 1 88 15 29 1 100] 
#[0 8 50 0 4 0 9 0 14 0 138] 
#[0 8 54 0 4 0 9 0 14 0 138] 
#[1 8 58 0 4 8 58 0 9 8 58 0 14 18 157 0 23 8 58 0 138 18 161 1 89] 
#[0 18 165 0 14] 
#[0 18 169 0 4] 
#[1 8 62 0 4 8 62 0 9 8 62 0 14 14 237 0 22 8 62 0 138] 
#[0 8 66 0 138] 
#[0 8 70 0 4 0 137 0 139] 
#[0 8 74 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 229 1 230] 
#[1 8 78 0 4 8 78 0 8 8 78 0 19 12 61 0 123 18 173 1 136] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 189 0 125 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 253 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 4 45 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 4 45 0 179 18 177 0 180 18 177 0 181 0 253 1 6 0 253 1 20 0 253 1 25 0 253 1 29 18 177 1 32 0 253 1 34 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 4 53 1 229] 
#[0 18 181 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 18 185 1 7 14 209 1 8 0 6 1 229] 
#[0 18 189 0 3] 
#[0 8 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 193 0 197 18 193 0 198 18 193 0 200 0 253 1 6 18 193 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 193 1 15 0 253 1 20 18 193 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 18 197 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 201 0 197 18 201 0 198 18 201 0 200 0 253 1 6 18 201 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 201 1 15 0 253 1 20 18 201 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 18 205 0 8 5 197 0 122] 
#[1 3 154 0 8 8 117 0 23 8 90 0 84 8 90 0 97 3 154 0 122 11 85 0 159] 
#[1 18 209 0 8 11 93 0 122] 
#[1 8 117 0 23 8 94 0 84 8 94 0 97 11 97 0 159] 
#[1 18 213 0 84 18 217 0 97] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 221 0 197 18 221 0 198 18 221 0 200 0 253 1 6 18 221 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 221 1 15 0 253 1 20 18 221 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 225 0 197 18 225 0 198 0 253 1 6 18 225 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 225 1 15 0 253 1 20 18 225 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 18 229 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 233 0 197 18 233 0 198 18 233 0 200 0 253 1 6 18 233 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 233 1 15 0 253 1 20 18 233 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 18 237 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 241 0 197 18 241 0 198 18 241 0 200 0 253 1 6 18 241 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 241 1 15 0 253 1 20 18 241 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 18 245 0 8 5 197 0 122] 
#[1 2 134 0 8 8 117 0 23 8 90 0 84 8 90 0 97 2 134 0 122 8 121 0 159] 
#[1 8 117 0 23 8 94 0 84 8 94 0 97 8 133 0 159] 
#[0 8 98 0 84 0 97] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 249 0 197 18 249 0 198 18 249 0 200 0 253 1 6 18 249 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 249 1 15 0 253 1 20 18 249 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 253 0 197 18 253 0 198 0 253 1 6 18 253 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 253 1 15 0 253 1 20 18 253 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 19 9 0 142 19 9 0 217 19 9 0 218 19 9 0 219 19 9 0 237] 
#[1 19 13 0 97 9 157 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 15 133 0 142 15 133 0 217 15 133 0 218 15 133 0 219 15 133 0 237] 
#[0 19 17 0 97] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 19 21 0 201 19 21 0 204 19 21 0 205 19 21 0 206 19 21 0 214 19 21 0 228 19 21 0 229 19 21 0 230 19 21 0 231 19 21 0 232 19 21 0 233 19 21 0 234 19 21 0 235 19 21 0 238 19 21 0 239 19 21 0 241 19 21 0 242 19 21 0 243 19 21 0 248 19 21 0 250 19 21 0 251 19 21 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 8 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 19 25 0 4 19 29 0 244] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 19 33 0 142 19 41 0 217 19 41 0 218 19 41 0 219 19 41 0 254] 
#[0 8 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 118 0 8 0 122] 
#[1 8 122 0 8 8 117 0 23 8 122 0 122 19 45 0 159] 
#[1 8 117 0 23 19 49 0 159] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 19 53 0 201 19 53 0 204 19 53 0 205 19 53 0 206 19 53 0 214 19 53 0 228 19 53 0 229 19 53 0 230 19 53 0 231 19 53 0 232 19 53 0 233 19 53 0 234 19 53 0 235 19 53 0 238 19 53 0 239 19 53 0 241 19 53 0 242 19 53 0 243 19 53 0 248 19 53 0 250 19 53 0 251 19 53 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 19 57 0 201 19 57 0 204 19 57 0 205 19 57 0 206 19 57 0 214 19 57 0 228 19 57 0 229 19 57 0 230 19 57 0 231 19 57 0 232 19 57 0 233 19 57 0 234 19 57 0 235 19 57 0 238 19 57 0 239 19 57 0 241 19 57 0 242 19 57 0 243 19 57 0 248 19 57 0 250 19 57 0 251 19 57 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 6 218 0 1 0 203 0 2 6 218 0 4 6 218 0 5 0 203 0 6 0 203 0 8 5 66 0 9 5 66 0 10 5 66 0 11 5 66 0 12 5 66 0 13 5 66 0 14 5 66 0 15 5 66 0 16 5 66 0 17 5 66 0 18 5 66 0 20 5 66 0 21 5 66 0 22 5 66 0 23 5 66 0 24 5 66 0 25 5 66 0 26 5 66 0 27 5 66 0 28 5 66 0 29 5 66 0 30 5 66 0 31 5 66 0 32 5 66 0 33 5 66 0 34 0 203 0 35 0 203 0 36 0 203 0 37 0 203 0 38 6 218 0 39 5 66 0 40 5 66 0 41 5 66 0 42 5 66 0 43 5 66 0 44 5 66 0 45 5 66 0 46 5 66 0 47 5 66 0 48 5 66 0 49 5 66 0 50 5 66 0 51 6 218 0 52 5 66 0 53 5 66 0 54 6 218 0 56 6 218 0 57 6 218 0 58 6 218 0 61 6 218 0 62 6 218 0 63 6 218 0 65 6 218 0 66 6 218 0 67 6 218 0 69 6 218 0 70 6 218 0 72 6 218 0 73 6 218 0 75 6 218 0 77 6 218 0 79 6 218 0 82 6 218 0 83 5 66 0 84 5 66 0 87 6 218 0 88 6 218 0 90 6 218 0 93 6 218 0 94 6 218 0 95 6 218 0 103 6 218 0 107 6 218 0 108 6 218 0 110 6 218 0 111 6 218 0 112 6 218 0 113 6 218 0 114 6 218 0 115 6 218 0 116 6 218 0 117 6 218 0 118 6 218 0 119 6 218 0 120 5 66 0 122 6 218 0 125 6 218 0 127 6 218 0 129 6 218 0 130 6 218 0 131 0 203 0 133 0 203 0 134 6 218 0 137 5 66 1 228 0 203 1 229 6 218 1 230] 
#[0 19 61 0 4] 
#[1 2 157 0 11 4 105 0 74 19 65 1 36 19 69 1 101 4 121 1 229] 
#[1 8 126 0 8 8 126 0 122 12 61 0 123 19 73 1 136] 
#[1 19 77 0 8 19 81 0 122] 
#[0 8 130 0 8 0 122] 
#[1 6 249 0 2 2 157 0 11 7 41 1 101 19 85 1 137] 
#[1 8 134 0 5 11 145 0 61 19 89 0 63 6 101 0 72 19 93 0 73 11 153 0 79 11 157 0 81 19 97 0 83 6 117 0 88 19 101 0 90 11 169 0 93 11 173 0 116 19 105 0 210 0 65 0 211 19 109 1 155 19 129 1 170 19 113 1 181 19 117 1 210 19 121 1 213 19 125 1 214 19 129 1 220 19 133 1 221 19 137 1 222 19 141 1 223 19 145 1 224] 
#[1 19 149 0 8 19 81 0 122] 
#[0 19 153 0 4] 
#[1 19 157 0 4 16 65 0 22] 
#[1 19 161 0 8 19 81 0 122] 
#[1 19 165 0 5 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 19 169 0 143 19 169 0 155 19 169 0 156 19 169 0 157 7 33 1 70 7 37 1 71 19 173 1 171 19 177 1 172 19 181 1 173] 
#[0 19 185 0 8] 
#[0 19 189 0 8] 
#[0 8 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 19 193 0 8] 
#[1 3 29 0 4 19 197 0 26 19 201 1 64] 
#[0 19 205 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 19 209 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 19 213 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 19 217 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 0 189 0 125 19 221 0 142 19 225 1 119 19 229 1 182 19 233 1 227] 
#[1 0 189 0 125 2 185 0 142 19 237 1 117 2 241 1 118 2 245 1 119 19 237 1 158] 
#[1 2 149 0 4 16 45 0 74 19 241 1 120 19 245 1 156] 
#[0 8 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 149 0 4 19 249 1 120] 
#[1 0 97 0 2 0 19 0 4 8 146 0 5 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 6 89 0 61 3 45 0 62 6 93 0 63 1 229 0 65 1 233 0 66 16 77 0 67 0 141 0 69 1 237 0 70 6 101 0 72 19 253 0 73 1 173 0 75 1 241 0 77 6 109 0 79 1 245 0 82 20 1 0 83 6 117 0 88 0 65 0 90 6 121 0 93 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 6 125 0 114 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 20 49 0 201 20 49 0 204 20 49 0 205 20 49 0 206 20 49 0 210 0 65 0 211 20 49 0 214 20 49 0 228 20 49 0 229 20 49 0 230 20 49 0 231 20 49 0 232 20 49 0 233 20 49 0 234 20 49 0 235 20 49 0 238 20 49 0 239 20 49 0 241 20 49 0 242 20 49 0 243 20 49 0 248 20 49 0 250 20 49 0 251 20 49 0 255 20 49 1 5 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 20 49 1 19 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 20 49 1 33 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 20 49 1 145 1 209 1 150 20 49 1 155 20 49 1 170 20 49 1 175 20 41 1 177 20 45 1 178 20 49 1 179 20 49 1 180 20 49 1 181 20 49 1 209 6 221 1 229] 
#[1 0 189 0 125 20 65 0 142] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 20 69 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 20 69 1 130 20 69 1 131 2 217 1 132 2 217 1 134] 
#[0 20 73 0 23] 
#[1 11 145 0 61 11 149 0 63 6 101 0 72 11 153 0 79 11 157 0 81 11 161 0 90 11 169 0 93 11 173 0 116 11 193 1 170 11 181 1 210 11 185 1 213 11 189 1 214 11 193 1 220 11 197 1 221] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 20 77 0 61 3 45 0 62 0 141 0 69 1 173 0 75 20 81 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 20 85 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 20 89 0 197 20 89 0 198 20 93 1 5 0 253 1 6 20 89 1 9 1 125 1 10 1 129 1 11 1 133 1 14 20 89 1 15 20 97 1 19 0 253 1 20 20 89 1 23 0 253 1 25 0 253 1 29 1 45 1 32 20 101 1 33 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 20 105 1 213 20 109 1 214 6 221 1 229] 
#[1 3 105 0 4 3 109 0 26 0 189 0 125 3 133 0 129 20 113 0 142 3 117 1 53 3 121 1 54 3 125 1 55 3 129 1 56 3 133 1 60 3 121 1 61 3 133 1 70 3 145 1 229] 
#[0 8 150 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 166 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 207 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 211 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 190 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 8 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 0 215 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 55 0 1 1 210 0 61 1 210 0 62 7 241 0 79 7 245 1 138 8 5 1 226] 
#[1 12 229 0 2 2 157 0 11 12 237 1 101 17 41 1 137 20 117 1 146] 
#[0 20 121 0 4] 
#[1 2 145 0 2 6 225 0 4 6 229 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 6 233 0 142 3 221 0 217 3 221 0 218 3 221 0 219 17 101 0 225 17 101 0 226 2 189 1 70 2 193 1 71 2 197 1 101 16 189 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 16 189 1 130 16 189 1 131 2 217 1 132 2 217 1 134 6 245 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 20 125 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 20 125 1 130 20 125 1 131 2 217 1 132 2 217 1 134] 
#[1 8 206 0 4 8 206 0 5 8 206 0 8 8 206 0 122 12 61 0 123 20 129 1 136] 
#[1 20 133 0 96 20 137 0 106] 
#[0 8 210 0 2 0 5 0 8 0 11 0 23 0 43 0 122 0 123] 
#[0 20 141 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 20 145 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 8 214 0 5 8 214 0 8 8 214 0 122 12 61 0 123 20 149 1 136] 
#[0 8 218 0 5 0 8 0 122] 
#[0 8 222 0 5 0 8 0 122] 
#[0 8 226 0 5 0 8 0 122] 
#[0 8 230 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 20 153 0 3] 
#[0 8 234 0 5 0 8 0 122] 
#[0 8 238 0 5 0 8 0 122] 
#[0 8 242 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 8 246 0 7 0 122] 
#[0 8 250 0 14 0 122] 
#[0 8 254 0 14 0 122] 
#[0 20 157 0 19] 
#[0 20 161 0 3] 
#[0 9 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 20 165 0 19] 
#[0 9 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 20 169 0 7] 
#[0 9 10 0 5 0 122] 
#[0 9 14 0 8 0 78] 
#[0 9 18 0 5 0 122] 
#[0 20 173 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 20 177 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 20 181 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 20 185 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 9 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 20 189 0 4] 
#[0 20 193 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 20 197 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 20 201 0 3] 
#[0 20 205 0 3] 
#[0 20 209 0 8] 
#[0 20 213 0 4] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 20 217 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 9 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 20 221 1 7 14 209 1 8 0 6 1 229] 
#[1 2 157 0 11 20 225 1 101] 
#[1 4 101 0 4 4 105 0 74 20 229 1 35 4 117 1 36 4 121 1 229] 
#[1 2 157 0 11 0 189 0 125 20 233 0 142 20 237 1 101] 
#[1 4 101 0 4 4 105 0 74 0 189 0 125 20 241 0 142 20 245 1 35 4 117 1 36 4 121 1 229] 
#[0 20 249 0 61] 
#[0 9 30 0 5 0 122] 
#[0 9 34 0 78] 
#[0 9 38 0 5 0 122] 
#[0 20 253 0 55] 
#[0 9 42 0 5 0 122] 
#[0 9 46 0 5 0 122] 
#[0 9 50 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 21 1 0 5] 
#[0 9 54 0 5 0 122] 
#[0 9 58 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 9 62 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[1 3 153 0 4 3 157 0 6 21 5 0 7 3 209 0 121 8 233 0 122 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 13 69 0 225 13 69 0 226 21 9 0 227 6 245 1 229] 
#[0 9 66 0 7 0 122] 
#[0 21 13 0 7] 
#[0 9 70 0 8 0 122] 
#[0 9 74 0 8 0 122] 
#[0 21 17 0 8] 
#[0 9 78 0 3 0 5 0 7 0 122] 
#[1 9 82 0 3 9 82 0 5 9 82 0 7 9 82 0 122 12 61 0 123 21 21 1 136] 
#[1 9 86 0 3 9 86 0 5 9 86 0 7 8 117 0 23 9 86 0 122 21 25 0 159] 
#[1 9 90 0 3 9 90 0 5 9 90 0 7 8 117 0 23 21 29 0 43 9 90 0 122 12 61 0 123 21 33 0 159 21 37 1 136] 
#[0 9 94 0 3 0 5 0 7 0 122] 
#[0 9 98 0 3 0 5 0 7 0 122] 
#[1 9 102 0 3 9 102 0 5 9 102 0 7 8 117 0 23 9 102 0 122 21 41 0 159] 
#[1 21 45 0 4 21 49 1 229] 
#[0 21 53 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 21 57 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 21 61 0 3] 
#[0 9 106 0 5] 
#[0 21 65 0 5] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 21 69 1 0 3 241 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 21 73 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 21 77 1 0 3 241 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 21 81 0 3] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 21 89 0 225 21 89 0 226 21 89 1 4 21 89 1 18 6 245 1 229] 
#[1 0 6 0 2 0 6 0 4 9 110 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 85 0 208 0 57 0 209 6 85 0 210 0 65 0 211 0 6 1 229] 
#[0 21 93 0 5] 
#[0 9 114 0 5] 
#[0 9 118 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 21 97 0 3] 
#[0 21 101 0 2] 
#[0 21 105 0 2] 
#[1 5 221 0 2 2 157 0 11 5 233 1 101 21 109 1 146] 
#[0 21 113 0 4] 
#[1 21 117 0 2 21 121 1 163] 
#[1 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 21 125 0 143 21 125 0 155 21 125 0 156 21 125 0 157 7 33 1 70 7 37 1 71 21 129 1 147 21 133 1 148 18 25 1 229] 
#[1 6 249 0 2 9 122 0 8 2 157 0 11 8 117 0 23 21 137 0 43 12 61 0 123 21 141 0 159 7 41 1 101 21 145 1 136 21 149 1 137 21 153 1 166] 
#[1 8 57 0 6 21 157 0 64 21 161 0 105 7 13 0 126 7 33 0 129 7 37 0 130 21 165 0 143 21 165 0 155 21 165 0 156 21 165 0 157 7 33 1 70 7 37 1 71 21 169 1 147 21 173 1 148 18 25 1 229] 
#[0 9 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 9 130 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 14 1 0 80 14 5 0 104] 
#[0 9 134 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 9 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 228 1 229 1 230] 
#[1 0 189 0 125 2 185 0 142 21 177 1 117 2 241 1 118 2 245 1 119 21 177 1 158] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 21 181 1 7 14 209 1 8 0 6 1 229] 
#[0 21 185 0 4] 
#[0 21 189 0 3] 
#[0 21 193 0 4] 
#[0 9 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 21 197 0 197 21 197 0 198 0 253 1 6 21 197 1 9 1 125 1 10 1 129 1 11 1 133 1 14 21 197 1 15 0 253 1 20 21 197 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 9 146 0 3 0 122] 
#[0 9 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 86 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 21 201 1 107 21 201 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 21 201 1 130 21 201 1 131 2 217 1 132 2 217 1 134] 
#[0 9 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 21 205 0 3 21 209 0 122] 
#[0 21 213 0 137] 
#[0 9 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 162 0 5 0 122] 
#[0 9 166 0 5 0 122] 
#[1 5 197 0 122 9 170 0 135 9 170 0 136] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 21 217 0 197 21 217 0 198 21 217 0 200 0 253 1 6 21 217 1 9 1 125 1 10 1 129 1 11 1 133 1 14 21 217 1 15 0 253 1 20 21 217 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 9 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 9 186 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 9 190 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 21 221 0 9] 
#[1 0 97 0 2 0 14 0 4 0 122 0 5 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 4 9 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 21 233 0 150 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 21 233 0 197 21 233 0 198 0 253 1 6 21 233 1 9 1 125 1 10 1 129 1 11 1 133 1 14 21 233 1 15 0 253 1 20 21 233 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 21 233 1 94 1 205 1 95 21 237 1 96 1 209 1 150 1 213 1 229] 
#[0 9 194 0 4 0 9 0 14 0 23 0 138] 
#[0 21 241 0 14] 
#[1 8 30 0 14 21 245 1 98] 
#[0 21 249 0 14] 
#[0 9 198 0 4 0 9 0 14 0 138] 
#[1 6 42 0 4 21 253 0 129 0 15 0 137 21 253 1 70 22 9 1 73 22 9 1 74 1 197 1 75 22 9 1 77 22 9 1 90 1 205 1 95 22 13 1 100] 
#[0 9 202 0 4 0 9 0 14 0 138] 
#[0 9 206 0 4 0 137 0 139] 
#[1 4 9 0 121 22 17 0 150] 
#[0 9 210 0 4 0 8 0 19] 
#[0 9 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 22 21 1 7 14 209 1 8 0 6 1 229] 
#[0 22 25 0 5] 
#[1 9 218 0 4 9 218 0 8 9 218 0 19 12 61 0 123 22 29 1 136] 
#[1 22 33 0 3 5 197 0 122] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 22 37 0 201 22 37 0 204 22 37 0 205 22 37 0 206 22 37 0 214 22 37 0 228 22 37 0 229 22 37 0 230 22 37 0 231 22 37 0 232 22 37 0 233 22 37 0 234 22 37 0 235 22 37 0 238 22 37 0 239 22 37 0 241 22 37 0 242 22 37 0 243 22 37 0 248 22 37 0 250 22 37 0 251 22 37 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 22 41 0 3 5 197 0 122] 
#[1 0 97 0 2 22 45 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 49 0 197 22 49 0 198 22 49 0 200 0 253 1 6 22 49 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 49 1 15 0 253 1 20 22 49 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 22 53 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 57 0 197 22 57 0 198 22 57 0 200 0 253 1 6 22 57 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 57 1 15 0 253 1 20 22 57 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 61 0 197 22 61 0 198 22 61 0 200 0 253 1 6 22 61 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 61 1 15 0 253 1 20 22 61 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 65 0 197 22 65 0 198 0 253 1 6 22 65 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 65 1 15 0 253 1 20 22 65 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 22 69 0 3 5 197 0 122] 
#[0 22 73 0 3] 
#[1 0 97 0 2 22 77 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 81 0 197 22 81 0 198 22 81 0 200 0 253 1 6 22 81 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 81 1 15 0 253 1 20 22 81 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 22 85 0 8 5 197 0 122] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 22 89 0 201 22 89 0 204 22 89 0 205 22 89 0 206 22 89 0 214 22 89 0 228 22 89 0 229 22 89 0 230 22 89 0 231 22 89 0 232 22 89 0 233 22 89 0 234 22 89 0 235 22 89 0 238 22 89 0 239 22 89 0 241 22 89 0 242 22 89 0 243 22 89 0 248 22 89 0 250 22 89 0 251 22 89 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 22 93 0 3 5 197 0 122] 
#[1 0 97 0 2 22 97 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 101 0 197 22 101 0 198 22 101 0 200 0 253 1 6 22 101 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 101 1 15 0 253 1 20 22 101 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 22 105 0 3 5 197 0 122] 
#[0 22 109 0 3] 
#[0 8 90 0 97] 
#[0 8 94 0 97] 
#[0 22 113 0 97] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 117 0 197 22 117 0 198 0 253 1 6 22 117 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 117 1 15 0 253 1 20 22 117 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 22 121 0 197 22 121 0 198 0 253 1 6 22 121 1 9 1 125 1 10 1 129 1 11 1 133 1 14 22 121 1 15 0 253 1 20 22 121 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 9 222 0 1 9 222 0 2 9 222 0 4 9 222 0 5 9 222 0 6 9 222 0 8 9 222 0 35 9 222 0 36 9 222 0 37 9 222 0 38 9 222 0 39 9 222 0 52 9 222 0 56 9 222 0 57 9 222 0 58 9 222 0 59 9 222 0 61 9 222 0 62 9 222 0 63 9 222 0 65 9 222 0 66 9 222 0 67 9 222 0 68 9 222 0 69 9 222 0 70 22 125 0 71 9 222 0 72 9 222 0 73 9 222 0 75 9 222 0 77 9 222 0 79 9 222 0 82 9 222 0 83 9 222 0 88 9 222 0 90 9 222 0 93 9 222 0 94 9 222 0 95 9 222 0 103 9 222 0 107 9 222 0 108 9 222 0 110 9 222 0 111 9 222 0 112 9 222 0 113 9 222 0 114 9 222 0 115 9 222 0 116 9 222 0 117 9 222 0 118 9 222 0 119 9 222 0 120 9 222 0 125 9 222 0 127 9 222 0 129 9 222 0 130 9 222 0 131 9 222 0 133 9 222 0 134 9 222 0 137 9 222 1 229 9 222 1 230] 
#[1 22 129 0 5 22 133 0 59 22 137 0 68 22 141 0 245 22 145 0 246 22 149 0 247] 
#[0 9 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 9 230 0 3 22 153 1 229] 
#[0 9 234 0 3] 
#[0 22 157 0 3] 
#[0 9 238 0 8 0 122] 
#[0 9 242 0 8 0 122] 
#[0 9 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 9 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 22 161 0 5 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 19 169 0 143 19 169 0 155 19 169 0 156 19 169 0 157 7 33 1 70 7 37 1 71 22 165 1 171 19 177 1 172 19 181 1 173] 
#[0 22 169 0 4] 
#[1 4 105 0 74 22 173 1 36 4 121 1 229] 
#[0 9 254 0 8 0 122] 
#[0 10 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 15 221 0 142 22 177 1 212] 
#[0 22 181 0 8] 
#[1 0 34 0 4 0 34 0 6 11 141 0 72 0 219 0 125 15 221 0 142 15 225 1 211 15 229 1 212 0 34 1 229] 
#[1 11 145 0 61 19 89 0 63 6 101 0 72 11 153 0 79 11 157 0 81 19 97 0 83 6 117 0 88 19 101 0 90 11 169 0 93 11 173 0 116 22 185 0 210 0 65 0 211 22 189 1 155 22 209 1 170 22 193 1 181 22 197 1 210 22 201 1 213 22 205 1 214 22 209 1 220 22 213 1 221] 
#[1 0 189 0 125 22 217 0 142] 
#[1 0 38 0 4 0 38 0 6 0 223 0 125 15 221 0 142 15 241 1 211 15 229 1 212 0 38 1 229] 
#[0 10 6 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 10 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 14 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 18 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 22 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 26 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 30 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 34 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 22 221 0 5] 
#[1 10 38 0 5 11 145 0 61 19 89 0 63 6 101 0 72 19 93 0 73 11 153 0 79 11 157 0 81 19 97 0 83 6 117 0 88 19 101 0 90 11 169 0 93 11 173 0 116 19 105 0 210 0 65 0 211 19 109 1 155 19 129 1 170 19 113 1 181 19 117 1 210 19 121 1 213 19 125 1 214 19 129 1 220 19 133 1 221 22 225 1 224] 
#[0 10 42 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 1 210 0 1 10 50 0 5 16 77 0 67 0 35 0 73 16 85 0 83 6 117 0 88 6 121 0 93 6 125 0 114 23 9 1 52 22 233 1 138 23 9 1 145 23 9 1 155 23 9 1 175 23 9 1 181 23 9 1 195 23 1 1 199 23 5 1 200 23 9 1 201 23 9 1 204 23 9 1 206 23 9 1 207 23 9 1 208 23 9 1 209] 
#[1 8 134 0 5 11 145 0 61 19 89 0 63 6 101 0 72 19 93 0 73 11 153 0 79 11 157 0 81 19 97 0 83 6 117 0 88 19 101 0 90 11 169 0 93 11 173 0 116 19 105 0 210 0 65 0 211 19 109 1 155 19 129 1 170 19 113 1 181 19 117 1 210 19 121 1 213 19 125 1 214 19 129 1 220 19 133 1 221 23 33 1 222 19 141 1 223 19 145 1 224] 
#[0 10 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 10 62 0 5 23 37 0 23 10 62 0 122] 
#[0 23 41 0 5] 
#[1 10 66 0 5 23 45 0 122] 
#[0 10 70 0 5 0 122] 
#[0 10 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 7 221 0 78 23 49 1 57] 
#[1 23 53 0 8 7 221 0 78 23 57 1 57] 
#[0 23 61 0 4] 
#[0 23 65 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 23 69 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 23 73 0 3] 
#[0 1 230 0 8 0 22] 
#[1 10 86 0 8 23 77 0 22] 
#[0 23 81 0 8] 
#[0 23 85 0 2] 
#[0 10 90 0 4] 
#[0 10 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 149 0 4 23 89 1 120] 
#[0 10 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 3 41 0 61 3 45 0 62 6 93 0 63 16 77 0 67 6 101 0 72 3 53 0 79 19 97 0 83 6 117 0 88 0 65 0 90 6 121 0 93 6 125 0 114 2 9 0 116 23 93 0 210 0 65 0 211 23 97 0 214 23 101 1 5 23 105 1 19 23 109 1 33 23 113 1 145 23 117 1 155 23 121 1 170 23 125 1 175 23 129 1 181 23 133 1 209 16 133 1 229] 
#[1 4 141 0 2 4 145 0 22 0 189 0 125 22 217 0 142] 
#[0 10 102 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 106 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 110 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 118 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 122 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 126 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 130 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 134 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 23 137 0 5] 
#[1 0 97 0 2 0 19 0 4 10 138 0 5 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 6 89 0 61 3 45 0 62 6 93 0 63 1 229 0 65 1 233 0 66 16 77 0 67 0 141 0 69 1 237 0 70 6 101 0 72 19 253 0 73 1 173 0 75 1 241 0 77 6 109 0 79 1 245 0 82 20 1 0 83 6 117 0 88 0 65 0 90 6 121 0 93 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 6 125 0 114 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 23 141 0 201 23 141 0 204 23 141 0 205 23 141 0 206 23 141 0 210 0 65 0 211 23 141 0 214 23 141 0 228 23 141 0 229 23 141 0 230 23 141 0 231 23 141 0 232 23 141 0 233 23 141 0 234 23 141 0 235 23 141 0 238 23 141 0 239 23 141 0 241 23 141 0 242 23 141 0 243 23 141 0 248 23 141 0 250 23 141 0 251 23 141 0 255 23 141 1 5 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 23 141 1 19 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 23 141 1 33 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 23 141 1 145 1 209 1 150 23 141 1 155 23 141 1 170 23 141 1 175 23 141 1 179 23 141 1 180 23 141 1 181 23 141 1 209 6 221 1 229] 
#[0 10 142 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 146 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 150 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 154 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 10 158 0 4 0 22] 
#[0 23 145 0 8] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 23 149 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 23 149 1 130 23 149 1 131 2 217 1 132 2 217 1 134] 
#[1 4 101 0 4 4 105 0 74 0 189 0 125 23 153 0 142 11 137 1 35 4 117 1 36 4 121 1 229] 
#[1 11 221 0 2 11 225 0 26 0 189 0 125 23 157 0 142] 
#[1 0 126 0 2 0 126 0 6 0 227 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 84 0 126 0 87 0 126 0 133 0 126 0 134 0 126 1 228 0 126 1 229] 
#[0 23 165 0 8] 
#[0 10 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 166 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 170 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 23 169 0 23 2 106 0 78 2 106 0 122] 
#[0 23 173 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 23 177 1 7 14 209 1 8 0 6 1 229] 
#[0 10 182 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 10 186 0 4 0 5 0 8 0 122] 
#[0 23 181 0 7] 
#[0 23 185 0 7] 
#[1 10 190 0 5 10 190 0 8 10 190 0 122 12 61 0 123 23 189 1 136] 
#[0 23 193 0 3] 
#[0 10 194 0 5 0 8 0 122] 
#[1 10 198 0 4 10 198 0 5 10 198 0 8 10 198 0 122 12 61 0 123 23 197 1 136] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 23 201 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 23 201 1 130 23 201 1 131 2 217 1 132 2 217 1 134] 
#[0 23 205 0 19] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 23 209 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 23 209 1 130 23 209 1 131 2 217 1 132 2 217 1 134] 
#[0 10 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 23 213 0 4 23 217 1 229] 
#[0 23 221 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 23 225 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 23 229 0 3] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 23 233 1 7 14 209 1 8 0 6 1 229] 
#[0 23 237 0 4] 
#[0 23 241 0 3] 
#[0 23 245 0 4] 
#[1 8 78 0 4 8 206 0 8 12 61 0 123 23 249 1 136] 
#[0 10 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 23 253 1 7 14 209 1 8 0 6 1 229] 
#[0 24 1 0 3] 
#[0 24 5 0 5] 
#[1 4 101 0 4 4 105 0 74 24 9 1 35 4 117 1 36 4 121 1 229] 
#[0 10 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 2 157 0 11 24 13 1 101] 
#[1 4 101 0 4 4 105 0 74 24 17 1 35 4 117 1 36 4 121 1 229] 
#[1 4 101 0 4 4 105 0 74 24 21 1 35 4 117 1 36 4 121 1 229] 
#[0 10 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 101 0 4 4 105 0 74 0 189 0 125 24 25 0 142 24 29 1 35 4 117 1 36 4 121 1 229] 
#[1 0 189 0 125 24 33 0 142 24 33 1 61] 
#[0 10 218 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 10 222 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 24 37 0 7] 
#[0 10 226 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 10 230 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 10 234 0 3 0 5 0 7 0 122] 
#[0 10 238 0 3 0 5 0 7 0 122] 
#[1 10 242 0 3 10 242 0 5 10 242 0 7 10 242 0 122 12 61 0 123 24 41 1 136] 
#[0 10 246 0 3 0 5 0 7 0 122] 
#[1 10 250 0 3 10 250 0 5 10 250 0 7 8 117 0 23 10 250 0 122 24 45 0 159] 
#[0 10 254 0 3 0 5 0 7 0 122] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 24 49 1 31 0 6 1 229] 
#[1 12 61 0 123 24 53 1 136] 
#[0 24 57 0 4] 
#[0 24 61 0 3] 
#[1 24 65 0 4 24 69 1 229] 
#[0 11 2 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 230] 
#[0 24 73 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 24 77 1 0 3 241 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 24 81 0 3] 
#[0 24 85 0 4] 
#[0 11 6 0 3] 
#[0 24 89 0 3] 
#[0 11 10 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 24 93 0 4] 
#[0 24 97 0 3] 
#[1 3 153 0 4 3 157 0 6 0 189 0 125 24 101 0 142 24 105 0 217 24 105 0 218 24 105 0 219 24 109 0 225 24 109 0 226 24 109 1 4 24 109 1 18 24 113 1 141 24 117 1 149 6 245 1 229] 
#[1 24 121 0 4 24 125 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 129 1 7 14 209 1 8 0 6 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 24 133 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 24 137 0 4 24 141 0 8] 
#[1 6 249 0 2 9 122 0 8 2 157 0 11 8 117 0 23 24 145 0 43 12 61 0 123 21 141 0 159 7 41 1 101 24 149 1 136 24 153 1 137 24 157 1 166] 
#[0 11 14 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 11 18 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 122 0 8 8 117 0 23 12 61 0 123 21 141 0 159 24 161 1 136 24 165 1 166] 
#[0 11 22 0 8] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 24 169 1 166] 
#[1 24 173 0 4 24 177 0 8] 
#[0 24 181 0 8] 
#[1 21 117 0 2 24 185 1 163] 
#[1 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 24 189 0 143 24 189 0 155 24 189 0 156 24 189 0 157 7 33 1 70 7 37 1 71 24 193 1 147 24 197 1 148 18 25 1 229] 
#[1 6 249 0 2 9 122 0 8 2 157 0 11 8 117 0 23 24 201 0 43 12 61 0 123 21 141 0 159 7 41 1 101 24 205 1 136 24 209 1 137 24 213 1 166] 
#[0 11 26 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 11 30 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 11 34 0 4 0 122] 
#[0 24 217 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 221 1 7 14 209 1 8 24 225 1 22 0 6 1 229] 
#[0 24 229 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 233 1 7 14 209 1 8 0 6 1 229] 
#[0 11 38 0 3 0 122] 
#[0 11 42 0 14 0 122] 
#[0 11 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 18 61 0 121 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 18 65 0 197 18 65 0 198 0 253 1 6 18 65 1 9 1 125 1 10 1 129 1 11 1 133 1 14 18 65 1 15 0 253 1 20 18 65 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 24 237 0 9] 
#[1 5 197 0 122 11 50 0 135 11 50 0 136] 
#[1 11 54 0 14 10 205 0 138 24 241 1 78 24 241 1 79 24 241 1 80 10 221 1 81 10 225 1 82 24 245 1 99] 
#[0 11 58 0 5] 
#[0 11 62 0 5] 
#[1 0 122 0 5 24 249 1 96] 
#[0 24 253 0 5] 
#[0 11 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 25 1 0 14] 
#[0 11 70 0 4 0 137 0 139] 
#[0 11 74 0 4 0 9 0 14 0 138] 
#[0 11 78 0 4 0 9 0 14 0 138] 
#[0 11 82 0 4 0 9 0 14 0 138] 
#[0 11 86 0 4 0 9 0 14 0 138] 
#[0 25 5 0 4] 
#[1 0 22 0 5 25 9 1 95] 
#[0 25 13 0 5] 
#[0 11 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 11 94 0 4 0 8 0 19] 
#[0 25 17 0 8] 
#[0 11 98 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 21 0 201 25 21 0 204 25 21 0 205 25 21 0 206 25 21 0 214 25 21 0 228 25 21 0 229 25 21 0 230 25 21 0 231 25 21 0 232 25 21 0 233 25 21 0 234 25 21 0 235 25 21 0 238 25 21 0 239 25 21 0 241 25 21 0 242 25 21 0 243 25 21 0 248 25 21 0 250 25 21 0 251 25 21 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 25 0 201 25 25 0 204 25 25 0 205 25 25 0 206 25 25 0 214 25 25 0 228 25 25 0 229 25 25 0 230 25 25 0 231 25 25 0 232 25 25 0 233 25 25 0 234 25 25 0 235 25 25 0 238 25 25 0 239 25 25 0 241 25 25 0 242 25 25 0 243 25 25 0 248 25 25 0 250 25 25 0 251 25 25 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 25 29 0 3 5 197 0 122] 
#[1 0 97 0 2 25 33 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 37 0 197 25 37 0 198 25 37 0 200 0 253 1 6 25 37 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 37 1 15 0 253 1 20 25 37 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 25 41 0 8 5 197 0 122] 
#[1 25 45 0 3 5 197 0 122] 
#[0 25 49 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 53 0 201 25 53 0 204 25 53 0 205 25 53 0 206 25 53 0 214 25 53 0 228 25 53 0 229 25 53 0 230 25 53 0 231 25 53 0 232 25 53 0 233 25 53 0 234 25 53 0 235 25 53 0 238 25 53 0 239 25 53 0 241 25 53 0 242 25 53 0 243 25 53 0 248 25 53 0 250 25 53 0 251 25 53 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 57 0 201 25 57 0 204 25 57 0 205 25 57 0 206 25 57 0 214 25 57 0 228 25 57 0 229 25 57 0 230 25 57 0 231 25 57 0 232 25 57 0 233 25 57 0 234 25 57 0 235 25 57 0 238 25 57 0 239 25 57 0 241 25 57 0 242 25 57 0 243 25 57 0 248 25 57 0 250 25 57 0 251 25 57 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 61 0 201 25 61 0 204 25 61 0 205 25 61 0 206 25 61 0 214 25 61 0 228 25 61 0 229 25 61 0 230 25 61 0 231 25 61 0 232 25 61 0 233 25 61 0 234 25 61 0 235 25 61 0 238 25 61 0 239 25 61 0 241 25 61 0 242 25 61 0 243 25 61 0 248 25 61 0 250 25 61 0 251 25 61 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 25 65 0 3 5 197 0 122] 
#[1 0 97 0 2 25 69 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 73 0 197 25 73 0 198 25 73 0 200 0 253 1 6 25 73 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 73 1 15 0 253 1 20 25 73 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 11 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 77 0 201 25 77 0 204 25 77 0 205 25 77 0 206 25 77 0 214 25 77 0 228 25 77 0 229 25 77 0 230 25 77 0 231 25 77 0 232 25 77 0 233 25 77 0 234 25 77 0 235 25 77 0 238 25 77 0 239 25 77 0 241 25 77 0 242 25 77 0 243 25 77 0 248 25 77 0 250 25 77 0 251 25 77 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 81 0 201 25 81 0 204 25 81 0 205 25 81 0 206 25 81 0 214 25 81 0 228 25 81 0 229 25 81 0 230 25 81 0 231 25 81 0 232 25 81 0 233 25 81 0 234 25 81 0 235 25 81 0 238 25 81 0 239 25 81 0 241 25 81 0 242 25 81 0 243 25 81 0 248 25 81 0 250 25 81 0 251 25 81 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 25 85 0 3 5 197 0 122] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 89 0 201 25 89 0 204 25 89 0 205 25 89 0 206 25 89 0 214 25 89 0 228 25 89 0 229 25 89 0 230 25 89 0 231 25 89 0 232 25 89 0 233 25 89 0 234 25 89 0 235 25 89 0 238 25 89 0 239 25 89 0 241 25 89 0 242 25 89 0 243 25 89 0 248 25 89 0 250 25 89 0 251 25 89 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 93 0 201 25 93 0 204 25 93 0 205 25 93 0 206 25 93 0 214 25 93 0 228 25 93 0 229 25 93 0 230 25 93 0 231 25 93 0 232 25 93 0 233 25 93 0 234 25 93 0 235 25 93 0 238 25 93 0 239 25 93 0 241 25 93 0 242 25 93 0 243 25 93 0 248 25 93 0 250 25 93 0 251 25 93 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 97 0 197 25 97 0 198 0 253 1 6 25 97 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 97 1 15 0 253 1 20 25 97 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 25 101 0 3] 
#[0 25 105 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 25 109 0 201 25 109 0 204 25 109 0 205 25 109 0 206 25 109 0 214 25 109 0 228 25 109 0 229 25 109 0 230 25 109 0 231 25 109 0 232 25 109 0 233 25 109 0 234 25 109 0 235 25 109 0 238 25 109 0 239 25 109 0 241 25 109 0 242 25 109 0 243 25 109 0 248 25 109 0 250 25 109 0 251 25 109 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 11 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 113 0 197 25 113 0 198 25 113 0 200 0 253 1 6 25 113 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 113 1 15 0 253 1 20 25 113 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 25 117 0 123] 
#[1 25 121 0 5 22 133 0 59 22 137 0 68 25 125 0 246 25 129 0 247] 
#[0 11 110 0 5 0 59 0 68] 
#[1 25 133 0 5 22 133 0 59 25 137 0 245 22 145 0 246] 
#[1 12 61 0 123 25 141 1 136] 
#[1 1 217 0 4 25 145 0 206] 
#[0 11 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 25 149 0 5] 
#[1 11 118 0 5 7 1 0 6 25 153 0 64 25 165 0 98 25 165 0 99 25 165 0 100 25 165 0 101 25 157 0 105 7 13 0 126 7 33 0 129 7 37 0 130 25 161 0 143 25 161 0 155 25 161 0 156 25 161 0 157 7 33 1 70 7 37 1 71 25 165 1 140 25 181 1 143 25 173 1 215 25 177 1 216 25 181 1 217 25 181 1 218 25 181 1 219] 
#[0 25 193 0 4] 
#[0 11 122 0 8 0 122] 
#[0 11 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 130 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 134 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 138 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 142 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 146 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 150 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 154 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 158 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 23 169 0 23] 
#[0 11 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 166 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 170 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[1 7 233 0 1 25 197 0 73 12 1 1 226] 
#[0 11 174 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 178 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 182 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 186 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 190 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 25 201 0 5] 
#[1 1 210 0 1 11 194 0 5 16 77 0 67 0 35 0 73 16 85 0 83 6 117 0 88 6 121 0 93 6 125 0 114 25 205 1 52 22 233 1 138 25 205 1 145 25 205 1 155 25 205 1 175 25 205 1 181 25 205 1 195 25 205 1 201 25 205 1 204 25 205 1 206 25 205 1 207 25 205 1 208 25 205 1 209] 
#[0 11 198 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 202 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 206 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 210 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 214 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 218 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 25 209 0 5] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 25 217 0 197 25 217 0 198 0 253 1 6 25 217 1 9 1 125 1 10 1 129 1 11 1 133 1 14 25 217 1 15 0 253 1 20 25 217 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 25 217 1 174 1 213 1 229] 
#[0 11 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 11 226 0 5 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 19 169 0 143 19 169 0 155 19 169 0 156 19 169 0 157 7 33 1 70 7 37 1 71 25 221 1 173] 
#[0 25 225 0 8] 
#[0 11 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 25 229 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 25 233 1 7 14 209 1 8 0 6 1 229] 
#[0 25 237 0 4] 
#[0 25 241 0 3] 
#[0 25 245 0 4] 
#[1 0 189 0 125 25 249 0 142] 
#[0 11 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 25 253 0 129 1 70] 
#[0 11 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 11 242 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 11 246 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 11 250 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 11 254 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 2 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 6 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 10 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 14 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 18 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 22 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 26 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 34 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229] 
#[0 12 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 26 1 0 8] 
#[1 4 101 0 4 2 157 0 11 4 105 0 74 15 209 1 35 26 5 1 36 19 69 1 101 4 121 1 229] 
#[1 26 9 0 2 2 157 0 11 7 41 1 101 19 85 1 137] 
#[0 12 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 46 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 189 0 125 19 221 0 142 19 225 1 119 19 229 1 182] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 13 1 7 14 209 1 8 0 6 1 229] 
#[0 26 17 0 5] 
#[1 12 61 0 123 26 21 1 136] 
#[1 12 61 0 123 26 25 1 136] 
#[0 12 50 0 5 0 8 0 122] 
#[1 12 54 0 5 12 54 0 8 12 54 0 122 12 61 0 123 26 29 1 136] 
#[0 12 58 0 4 0 5 0 8 0 122] 
#[0 12 62 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 85 2 165 0 89 2 169 0 94 2 173 0 110 2 177 0 115 2 181 0 117 0 189 0 125 2 189 0 129 2 193 0 130 2 185 0 142 2 189 1 70 2 193 1 71 2 197 1 101 26 33 1 108 2 205 1 109 2 209 1 110 2 209 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 217 1 117 2 241 1 118 2 245 1 119 2 217 1 120 2 217 1 124 2 217 1 125 2 205 1 128 2 209 1 129 26 33 1 130 26 33 1 131 2 217 1 132 2 217 1 134] 
#[0 12 66 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 26 37 1 31 0 6 1 229] 
#[1 12 61 0 123 26 41 1 136] 
#[0 26 45 0 4] 
#[0 26 49 0 3] 
#[1 26 53 0 4 26 57 1 229] 
#[0 26 61 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 221 1 7 14 209 1 8 26 65 1 22 0 6 1 229] 
#[0 26 69 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 73 1 7 14 209 1 8 0 6 1 229] 
#[1 9 210 0 4 10 186 0 8] 
#[0 26 77 0 5] 
#[1 9 218 0 4 10 198 0 8 12 61 0 123 26 81 1 136] 
#[0 12 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 101 0 4 4 105 0 74 26 85 1 35 4 117 1 36 4 121 1 229] 
#[0 12 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 4 101 0 4 4 105 0 74 26 89 1 35 4 117 1 36 4 121 1 229] 
#[0 12 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 90 0 5 0 122] 
#[0 12 94 0 3 0 5 0 7 0 23 0 43 0 84 0 97 0 122 0 123] 
#[0 12 98 0 3 0 5 0 7 0 122] 
#[0 12 102 0 3 0 5 0 7 0 122] 
#[0 26 93 0 5] 
#[0 26 97 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 101 1 7 14 209 1 8 26 105 1 27 0 6 1 229] 
#[0 26 109 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 26 113 1 31 0 6 1 229] 
#[1 12 61 0 123 26 117 1 136] 
#[0 26 121 0 4] 
#[0 26 125 0 3] 
#[1 26 129 0 4 26 133 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 137 1 7 14 209 1 8 0 6 1 229] 
#[0 26 141 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 145 1 7 14 209 1 8 0 6 1 229] 
#[1 12 61 0 123 26 149 1 136] 
#[1 2 162 0 3 8 117 0 23 12 106 0 123 8 169 0 159] 
#[1 2 166 0 3 8 117 0 23 12 110 0 123 8 177 0 159] 
#[0 26 153 0 3] 
#[1 12 61 0 123 26 157 1 136] 
#[0 26 161 0 3] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 165 1 7 14 209 1 8 0 6 1 229] 
#[0 12 114 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 26 169 0 5] 
#[0 26 173 0 3] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 177 1 7 14 209 1 8 0 6 1 229] 
#[0 12 118 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 122 0 8 8 117 0 23 12 61 0 123 21 141 0 159 26 181 1 136 26 185 1 166] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 26 189 1 166] 
#[1 26 193 0 4 26 197 0 8] 
#[0 26 201 0 8] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 26 205 1 166] 
#[0 26 209 0 8] 
#[0 26 213 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 217 1 7 14 209 1 8 0 6 1 229] 
#[0 12 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 12 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 26 221 0 4 26 225 0 8] 
#[1 6 249 0 2 9 122 0 8 2 157 0 11 8 117 0 23 26 229 0 43 12 61 0 123 21 141 0 159 7 41 1 101 26 233 1 136 26 237 1 137 26 241 1 166] 
#[0 12 130 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 12 134 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 122 0 8 8 117 0 23 12 61 0 123 21 141 0 159 26 245 1 136 26 249 1 166] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 26 253 1 166] 
#[1 27 1 0 4 27 5 0 8] 
#[0 27 9 0 8] 
#[0 12 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 12 142 0 5] 
#[0 27 13 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 221 1 7 14 209 1 8 27 17 1 22 0 6 1 229] 
#[0 27 21 0 5] 
#[1 11 54 0 14 27 25 1 99] 
#[1 11 54 0 14 27 29 1 99] 
#[0 27 33 0 14] 
#[0 27 37 0 5] 
#[0 12 146 0 4 0 137 0 139] 
#[0 12 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 27 41 0 197 27 41 0 198 0 253 1 6 27 41 1 9 1 125 1 10 1 129 1 11 1 133 1 14 27 41 1 15 0 253 1 20 27 41 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 27 45 0 5] 
#[0 12 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 12 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 49 0 201 27 49 0 204 27 49 0 205 27 49 0 206 27 49 0 214 27 49 0 228 27 49 0 229 27 49 0 230 27 49 0 231 27 49 0 232 27 49 0 233 27 49 0 234 27 49 0 235 27 49 0 238 27 49 0 239 27 49 0 241 27 49 0 242 27 49 0 243 27 49 0 248 27 49 0 250 27 49 0 251 27 49 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 53 0 201 27 53 0 204 27 53 0 205 27 53 0 206 27 53 0 214 27 53 0 228 27 53 0 229 27 53 0 230 27 53 0 231 27 53 0 232 27 53 0 233 27 53 0 234 27 53 0 235 27 53 0 238 27 53 0 239 27 53 0 241 27 53 0 242 27 53 0 243 27 53 0 248 27 53 0 250 27 53 0 251 27 53 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 27 57 0 3 5 197 0 122] 
#[1 0 97 0 2 27 61 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 83 0 157 0 94 1 169 0 95 0 165 0 107 0 169 0 110 1 173 0 112 0 177 0 115 0 181 0 117 0 185 0 120 0 189 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 27 65 0 197 27 65 0 198 27 65 0 200 0 253 1 6 27 65 1 9 1 125 1 10 1 129 1 11 1 133 1 14 27 65 1 15 0 253 1 20 27 65 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 69 0 201 27 69 0 204 27 69 0 205 27 69 0 206 27 69 0 214 27 69 0 228 27 69 0 229 27 69 0 230 27 69 0 231 27 69 0 232 27 69 0 233 27 69 0 234 27 69 0 235 27 69 0 238 27 69 0 239 27 69 0 241 27 69 0 242 27 69 0 243 27 69 0 248 27 69 0 250 27 69 0 251 27 69 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 73 0 201 27 73 0 204 27 73 0 205 27 73 0 206 27 73 0 214 27 73 0 228 27 73 0 229 27 73 0 230 27 73 0 231 27 73 0 232 27 73 0 233 27 73 0 234 27 73 0 235 27 73 0 238 27 73 0 239 27 73 0 241 27 73 0 242 27 73 0 243 27 73 0 248 27 73 0 250 27 73 0 251 27 73 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 12 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 77 0 201 27 77 0 204 27 77 0 205 27 77 0 206 27 77 0 214 27 77 0 228 27 77 0 229 27 77 0 230 27 77 0 231 27 77 0 232 27 77 0 233 27 77 0 234 27 77 0 235 27 77 0 238 27 77 0 239 27 77 0 241 27 77 0 242 27 77 0 243 27 77 0 248 27 77 0 250 27 77 0 251 27 77 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 81 0 201 27 81 0 204 27 81 0 205 27 81 0 206 27 81 0 214 27 81 0 228 27 81 0 229 27 81 0 230 27 81 0 231 27 81 0 232 27 81 0 233 27 81 0 234 27 81 0 235 27 81 0 238 27 81 0 239 27 81 0 241 27 81 0 242 27 81 0 243 27 81 0 248 27 81 0 250 27 81 0 251 27 81 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 27 85 0 3 5 197 0 122] 
#[0 12 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 89 0 201 27 89 0 204 27 89 0 205 27 89 0 206 27 89 0 214 27 89 0 228 27 89 0 229 27 89 0 230 27 89 0 231 27 89 0 232 27 89 0 233 27 89 0 234 27 89 0 235 27 89 0 238 27 89 0 239 27 89 0 241 27 89 0 242 27 89 0 243 27 89 0 248 27 89 0 250 27 89 0 251 27 89 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 12 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 93 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 97 0 201 27 97 0 204 27 97 0 205 27 97 0 206 27 97 0 214 27 97 0 228 27 97 0 229 27 97 0 230 27 97 0 231 27 97 0 232 27 97 0 233 27 97 0 234 27 97 0 235 27 97 0 238 27 97 0 239 27 97 0 241 27 97 0 242 27 97 0 243 27 97 0 248 27 97 0 250 27 97 0 251 27 97 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 27 101 0 201 27 101 0 204 27 101 0 205 27 101 0 206 27 101 0 214 27 101 0 228 27 101 0 229 27 101 0 230 27 101 0 231 27 101 0 232 27 101 0 233 27 101 0 234 27 101 0 235 27 101 0 238 27 101 0 239 27 101 0 241 27 101 0 242 27 101 0 243 27 101 0 248 27 101 0 250 27 101 0 251 27 101 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 12 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 5 197 0 122 27 105 0 123] 
#[1 0 6 0 2 0 6 0 4 12 202 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 12 202 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 27 109 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 0 6 1 229] 
#[0 12 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 210 0 5 0 59 0 68] 
#[1 27 113 0 5 22 133 0 59 27 117 0 245 22 145 0 246] 
#[0 12 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 27 121 0 5 22 133 0 59 25 125 0 246] 
#[0 12 218 0 3] 
#[0 12 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 125 0 2] 
#[1 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 27 129 0 143 27 129 0 155 27 129 0 156 27 129 0 157 7 33 1 70 7 37 1 71] 
#[1 6 249 0 2 27 133 0 8 2 157 0 11 12 61 0 123 7 41 1 101 27 137 1 136 27 141 1 137] 
#[1 8 57 0 6 27 145 0 64 27 149 0 105 7 13 0 126 7 33 0 129 7 37 0 130 27 153 0 143 27 153 0 155 27 153 0 156 27 153 0 157 7 33 1 70 7 37 1 71] 
#[0 12 230 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 27 157 0 5] 
#[1 12 234 0 5 7 1 0 6 25 153 0 64 25 165 0 98 25 165 0 99 25 165 0 100 25 165 0 101 25 157 0 105 7 13 0 126 7 33 0 129 7 37 0 130 25 161 0 143 25 161 0 155 25 161 0 156 25 161 0 157 7 33 1 70 7 37 1 71 25 165 1 140 27 161 1 143 27 161 1 217 27 161 1 218 27 161 1 219] 
#[0 12 238 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 12 242 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 12 246 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 11 118 0 5 7 1 0 6 25 153 0 64 25 165 0 98 25 165 0 99 25 165 0 100 25 165 0 101 25 157 0 105 7 13 0 126 7 33 0 129 7 37 0 130 25 161 0 143 25 161 0 155 25 161 0 156 25 161 0 157 7 33 1 70 7 37 1 71 25 165 1 140 25 181 1 143 27 165 1 215 25 177 1 216 25 181 1 217 25 181 1 218 25 181 1 219] 
#[1 16 77 0 67 27 169 0 68 19 97 0 83 6 117 0 88 6 125 0 114 27 173 1 145 27 177 1 155 16 125 1 181 27 181 1 209] 
#[0 12 250 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 12 254 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 13 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 6 0 5 0 122] 
#[0 13 10 0 5 0 122] 
#[0 13 14 0 5 0 122] 
#[0 13 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 185 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 221 1 7 14 209 1 8 27 189 1 22 0 6 1 229] 
#[0 27 193 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 27 197 1 7 14 209 1 8 0 6 1 229] 
#[0 6 206 0 8 0 22] 
#[0 27 201 0 3] 
#[0 13 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 205 0 4] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 27 209 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[0 27 213 0 5] 
#[1 12 70 0 1 0 231 0 2 12 70 0 4 12 70 0 5 0 231 0 6 0 231 0 8 11 90 0 9 11 90 0 10 11 90 0 11 11 90 0 12 11 90 0 13 11 90 0 14 11 90 0 15 11 90 0 16 11 90 0 17 11 90 0 18 11 90 0 20 11 90 0 21 11 90 0 22 11 90 0 23 11 90 0 24 11 90 0 25 11 90 0 26 11 90 0 27 11 90 0 28 11 90 0 29 11 90 0 30 11 90 0 31 11 90 0 32 11 90 0 33 11 90 0 34 0 231 0 35 0 231 0 36 0 231 0 37 0 231 0 38 12 70 0 39 11 90 0 40 11 90 0 41 11 90 0 42 11 90 0 43 11 90 0 44 11 90 0 45 11 90 0 46 11 90 0 47 11 90 0 48 11 90 0 49 11 90 0 50 11 90 0 51 12 70 0 52 11 90 0 53 11 90 0 54 12 70 0 56 12 70 0 57 12 70 0 58 12 70 0 61 12 70 0 62 12 70 0 63 12 70 0 65 12 70 0 66 12 70 0 67 12 70 0 69 12 70 0 70 12 70 0 72 12 70 0 73 12 70 0 75 12 70 0 77 12 70 0 79 12 70 0 82 12 70 0 83 11 90 0 84 11 90 0 87 12 70 0 88 12 70 0 90 12 70 0 93 12 70 0 94 12 70 0 95 12 70 0 103 12 70 0 107 12 70 0 108 12 70 0 110 12 70 0 111 12 70 0 112 12 70 0 113 12 70 0 114 12 70 0 115 12 70 0 116 12 70 0 117 12 70 0 118 12 70 0 119 12 70 0 120 11 90 0 122 12 70 0 125 12 70 0 127 12 70 0 129 12 70 0 130 12 70 0 131 0 231 0 133 0 231 0 134 12 70 0 137 11 90 1 228 0 231 1 229 12 70 1 230] 
#[0 13 30 0 5 0 6 0 8 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 13 34 0 5 0 6 0 8 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 13 38 0 5 0 8 0 122] 
#[0 13 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 229 1 230] 
#[0 27 217 0 5] 
#[0 27 221 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 101 1 7 14 209 1 8 27 225 1 27 0 6 1 229] 
#[0 27 229 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 27 233 1 31 0 6 1 229] 
#[1 12 61 0 123 27 237 1 136] 
#[0 13 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 27 241 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 221 1 7 14 209 1 8 27 245 1 22 0 6 1 229] 
#[0 27 249 0 5] 
#[0 13 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 11 94 0 4 12 58 0 8] 
#[0 13 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 27 253 1 31 0 6 1 229] 
#[0 13 66 0 5] 
#[0 28 1 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 101 1 7 14 209 1 8 28 5 1 27 0 6 1 229] 
#[0 28 9 0 5] 
#[0 28 13 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 221 1 7 14 209 1 8 28 17 1 22 0 6 1 229] 
#[0 28 21 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 28 25 1 31 0 6 1 229] 
#[1 12 61 0 123 28 29 1 136] 
#[0 28 33 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 37 1 7 14 209 1 8 0 6 1 229] 
#[0 28 41 0 5] 
#[0 28 45 0 4] 
#[1 12 61 0 123 28 49 1 136] 
#[0 13 70 0 3] 
#[1 28 53 0 4 12 61 0 123 28 57 1 136] 
#[0 28 61 0 5] 
#[0 13 74 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 13 78 0 4 13 78 0 8 12 61 0 123 28 65 1 136] 
#[0 28 69 0 5] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 28 73 1 166] 
#[0 28 77 0 8] 
#[0 28 81 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 85 1 7 14 209 1 8 0 6 1 229] 
#[0 13 82 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 86 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 28 89 0 8] 
#[0 13 90 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 94 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 28 93 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 97 1 7 14 209 1 8 0 6 1 229] 
#[0 13 98 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[1 9 122 0 8 8 117 0 23 12 61 0 123 21 141 0 159 28 101 1 136 28 105 1 166] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 28 109 1 166] 
#[1 28 113 0 4 28 117 0 8] 
#[0 28 121 0 8] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 28 125 1 166] 
#[0 28 129 0 8] 
#[0 28 133 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 28 137 1 7 14 209 1 8 0 6 1 229] 
#[0 13 102 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 106 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 28 141 0 5] 
#[0 13 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 28 145 0 14] 
#[0 28 149 0 14] 
#[0 13 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 13 122 0 4 0 137 0 139] 
#[1 0 22 0 5 28 153 1 95] 
#[0 13 126 0 4 0 9 0 14 0 138] 
#[0 13 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 157 0 201 28 157 0 204 28 157 0 205 28 157 0 206 28 157 0 214 28 157 0 228 28 157 0 229 28 157 0 230 28 157 0 231 28 157 0 232 28 157 0 233 28 157 0 234 28 157 0 235 28 157 0 238 28 157 0 239 28 157 0 241 28 157 0 242 28 157 0 243 28 157 0 248 28 157 0 250 28 157 0 251 28 157 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 161 0 201 28 161 0 204 28 161 0 205 28 161 0 206 28 161 0 214 28 161 0 228 28 161 0 229 28 161 0 230 28 161 0 231 28 161 0 232 28 161 0 233 28 161 0 234 28 161 0 235 28 161 0 238 28 161 0 239 28 161 0 241 28 161 0 242 28 161 0 243 28 161 0 248 28 161 0 250 28 161 0 251 28 161 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[1 28 165 0 3 5 197 0 122] 
#[0 13 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 169 0 201 28 169 0 204 28 169 0 205 28 169 0 206 28 169 0 214 28 169 0 228 28 169 0 229 28 169 0 230 28 169 0 231 28 169 0 232 28 169 0 233 28 169 0 234 28 169 0 235 28 169 0 238 28 169 0 239 28 169 0 241 28 169 0 242 28 169 0 243 28 169 0 248 28 169 0 250 28 169 0 251 28 169 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 13 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 28 173 0 201 28 173 0 204 28 173 0 205 28 173 0 206 28 173 0 214 28 173 0 228 28 173 0 229 28 173 0 230 28 173 0 231 28 173 0 232 28 173 0 233 28 173 0 234 28 173 0 235 28 173 0 238 28 173 0 239 28 173 0 241 28 173 0 242 28 173 0 243 28 173 0 248 28 173 0 250 28 173 0 251 28 173 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 13 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 13 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 166 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 13 166 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 28 177 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 0 6 1 229] 
#[1 0 6 0 2 0 6 0 4 13 170 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 170 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 85 0 208 0 57 0 209 6 85 0 210 0 65 0 211 0 6 1 229] 
#[0 13 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 28 181 0 5 22 133 0 59 25 125 0 246] 
#[0 13 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 28 185 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 6 249 0 2 28 189 0 8 2 157 0 11 12 61 0 123 7 41 1 101 28 193 1 136 28 197 1 137] 
#[0 13 182 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 28 201 0 8] 
#[0 28 205 0 8] 
#[0 28 209 0 2] 
#[1 8 57 0 6 7 13 0 126 7 33 0 129 7 37 0 130 28 213 0 143 28 213 0 155 28 213 0 156 28 213 0 157 7 33 1 70 7 37 1 71] 
#[1 6 249 0 2 28 217 0 8 2 157 0 11 12 61 0 123 7 41 1 101 28 221 1 136 28 225 1 137] 
#[0 13 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 13 190 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 28 229 0 5] 
#[1 11 145 0 61 11 153 0 79 0 189 0 125 28 233 0 142 20 105 1 213 20 109 1 214] 
#[0 8 170 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 8 182 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 8 202 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[1 13 46 0 1 0 235 0 2 13 46 0 4 13 46 0 5 0 235 0 6 0 235 0 8 12 138 0 9 12 138 0 10 12 138 0 11 12 138 0 12 12 138 0 13 12 138 0 14 12 138 0 15 12 138 0 16 12 138 0 17 12 138 0 18 12 138 0 20 12 138 0 21 12 138 0 22 12 138 0 23 12 138 0 24 12 138 0 25 12 138 0 26 12 138 0 27 12 138 0 28 12 138 0 29 12 138 0 30 12 138 0 31 12 138 0 32 12 138 0 33 12 138 0 34 0 235 0 35 0 235 0 36 0 235 0 37 0 235 0 38 13 46 0 39 12 138 0 40 12 138 0 41 12 138 0 42 12 138 0 43 12 138 0 44 12 138 0 45 12 138 0 46 12 138 0 47 12 138 0 48 12 138 0 49 12 138 0 50 12 138 0 51 13 46 0 52 12 138 0 53 12 138 0 54 13 46 0 56 13 46 0 57 13 46 0 58 13 46 0 61 13 46 0 62 13 46 0 63 13 46 0 65 13 46 0 66 13 46 0 67 13 46 0 69 13 46 0 70 13 46 0 72 13 46 0 73 13 46 0 75 13 46 0 77 13 46 0 79 13 46 0 82 13 46 0 83 12 138 0 84 12 138 0 87 13 46 0 88 13 46 0 90 13 46 0 93 13 46 0 94 13 46 0 95 13 46 0 103 13 46 0 107 13 46 0 108 13 46 0 110 13 46 0 111 13 46 0 112 13 46 0 113 13 46 0 114 13 46 0 115 13 46 0 116 13 46 0 117 13 46 0 118 13 46 0 119 13 46 0 120 12 138 0 122 13 46 0 125 13 46 0 127 13 46 0 129 13 46 0 130 13 46 0 131 0 235 0 133 0 235 0 134 13 46 0 137 12 138 1 228 0 235 1 229 13 46 1 230] 
#[0 28 237 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 24 221 1 7 14 209 1 8 28 241 1 22 0 6 1 229] 
#[0 28 245 0 5] 
#[0 28 249 0 8] 
#[1 0 239 0 5 7 1 0 6 9 13 0 8 9 17 0 26 9 21 0 56 25 153 0 64 9 25 0 80 25 165 0 98 25 165 0 99 25 165 0 100 25 165 0 101 9 29 0 104 28 253 0 105 9 37 0 125 7 13 0 126 9 41 0 127 7 33 0 129 7 37 0 130 25 161 0 143 25 161 0 155 25 161 0 156 25 161 0 157 9 69 1 17 9 69 1 21 9 69 1 26 9 69 1 30 14 49 1 37 9 65 1 38 9 69 1 39 9 73 1 40 9 77 1 41 9 69 1 42 7 33 1 70 7 37 1 71 25 165 1 140 25 181 1 143 9 69 1 147 9 69 1 148 25 173 1 215 25 177 1 216 25 181 1 217 25 181 1 218 25 181 1 219 9 93 1 229] 
#[0 29 1 0 3] 
#[1 13 50 0 1 0 243 0 2 13 50 0 4 13 50 0 5 0 243 0 6 0 243 0 8 12 154 0 9 12 154 0 10 12 154 0 11 12 154 0 12 12 154 0 13 12 154 0 14 12 154 0 15 12 154 0 16 12 154 0 17 12 154 0 18 12 154 0 20 12 154 0 21 12 154 0 22 12 154 0 23 12 154 0 24 12 154 0 25 12 154 0 26 12 154 0 27 12 154 0 28 12 154 0 29 12 154 0 30 12 154 0 31 12 154 0 32 12 154 0 33 12 154 0 34 0 243 0 35 0 243 0 36 0 243 0 37 0 243 0 38 13 50 0 39 12 154 0 40 12 154 0 41 12 154 0 42 12 154 0 43 12 154 0 44 12 154 0 45 12 154 0 46 12 154 0 47 12 154 0 48 12 154 0 49 12 154 0 50 12 154 0 51 13 50 0 52 12 154 0 53 12 154 0 54 13 50 0 56 13 50 0 57 13 50 0 58 13 50 0 61 13 50 0 62 13 50 0 63 13 50 0 65 13 50 0 66 13 50 0 67 13 50 0 69 13 50 0 70 13 50 0 72 13 50 0 73 13 50 0 75 13 50 0 77 13 50 0 79 13 50 0 82 13 50 0 83 12 154 0 84 12 154 0 87 13 50 0 88 13 50 0 90 13 50 0 93 13 50 0 94 13 50 0 95 13 50 0 103 13 50 0 107 13 50 0 108 13 50 0 110 13 50 0 111 13 50 0 112 13 50 0 113 13 50 0 114 13 50 0 115 13 50 0 116 13 50 0 117 13 50 0 118 13 50 0 119 13 50 0 120 12 154 0 122 13 50 0 125 13 50 0 127 13 50 0 129 13 50 0 130 13 50 0 131 0 243 0 133 0 243 0 134 13 50 0 137 12 154 1 228 0 243 1 229 13 50 1 230] 
#[0 13 194 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 29 5 1 31 0 6 1 229] 
#[0 29 9 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 101 1 7 14 209 1 8 29 13 1 27 0 6 1 229] 
#[0 29 17 0 5] 
#[0 29 21 0 4] 
#[0 13 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 25 0 5] 
#[0 13 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 29 0 5] 
#[0 13 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 29 33 0 5] 
#[0 13 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 29 37 1 31 0 6 1 229] 
#[0 29 41 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 26 101 1 7 14 209 1 8 29 45 1 27 0 6 1 229] 
#[0 29 49 0 5] 
#[0 29 53 0 4] 
#[0 13 214 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 57 0 5] 
#[0 13 218 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 61 1 7 14 209 1 8 0 6 1 229] 
#[0 29 65 0 4] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 69 1 7 14 209 1 8 0 6 1 229] 
#[0 29 73 0 4] 
#[0 13 222 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 13 226 0 4 0 8] 
#[0 13 230 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 77 0 8] 
#[0 13 234 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 238 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 81 0 5] 
#[0 13 242 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 246 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 85 0 5] 
#[1 9 122 0 8 8 117 0 23 21 141 0 159 29 89 1 166] 
#[0 29 93 0 8] 
#[0 29 97 0 8] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 101 1 7 14 209 1 8 0 6 1 229] 
#[0 13 250 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 13 254 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 105 0 8] 
#[0 14 2 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 6 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 109 0 5] 
#[0 14 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 14 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 138 1 228 1 229 1 230] 
#[0 14 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 228 1 229 1 230] 
#[0 29 113 0 5] 
#[0 14 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 82 0 153 0 83 0 157 0 94 1 169 0 95 1 249 0 103 0 165 0 107 1 253 0 108 0 169 0 110 2 1 0 111 1 173 0 112 2 5 0 113 0 177 0 115 2 9 0 116 0 181 0 117 2 13 0 118 2 17 0 119 0 185 0 120 2 21 0 125 0 193 0 127 1 177 0 129 1 181 0 130 0 205 0 131 0 209 0 133 0 18 0 134 0 15 0 137 0 217 0 142 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 147 0 253 0 151 0 241 0 152 0 253 0 160 0 249 0 161 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 0 253 0 168 1 37 0 169 1 21 0 170 1 21 0 171 1 21 0 172 1 33 0 175 1 37 0 179 1 45 0 180 1 45 0 181 1 53 0 182 1 53 0 183 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 73 0 189 1 77 0 190 1 81 0 191 1 85 0 192 1 89 0 193 1 93 0 194 1 97 0 195 1 101 0 196 2 25 0 197 2 25 0 198 2 25 0 200 29 117 0 201 29 117 0 204 29 117 0 205 29 117 0 206 29 117 0 214 29 117 0 228 29 117 0 229 29 117 0 230 29 117 0 231 29 117 0 232 29 117 0 233 29 117 0 234 29 117 0 235 29 117 0 238 29 117 0 239 29 117 0 241 29 117 0 242 29 117 0 243 29 117 0 248 29 117 0 250 29 117 0 251 29 117 0 255 0 253 1 6 2 25 1 9 1 125 1 10 1 129 1 11 1 133 1 14 2 25 1 15 0 253 1 20 2 25 1 23 0 253 1 25 0 253 1 29 1 45 1 32 0 253 1 34 1 165 1 67 1 169 1 68 1 173 1 69 1 177 1 70 1 181 1 71 0 253 1 72 0 253 1 73 0 253 1 74 1 197 1 75 0 253 1 77 1 205 1 95 1 209 1 150 1 213 1 229] 
#[0 14 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 14 38 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 14 38 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 14 38 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 85 0 208 0 57 0 209 6 85 0 210 0 65 0 211 0 6 1 229] 
#[0 14 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 121 0 3] 
#[0 14 46 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 125 0 8] 
#[0 29 129 0 8] 
#[0 14 50 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 54 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 121 0 189 0 125 8 65 0 142 3 221 0 217 3 221 0 218 3 221 0 219 3 253 0 225 3 253 0 226 3 249 0 227 29 133 1 1 3 245 1 2 3 249 1 3 3 253 1 4 6 245 1 229] 
#[1 6 249 0 2 29 137 0 8 2 157 0 11 12 61 0 123 7 41 1 101 29 141 1 136 29 145 1 137] 
#[0 14 58 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 149 0 8] 
#[0 29 153 0 8] 
#[0 14 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 23 161 0 8] 
#[1 13 198 0 1 0 247 0 2 13 198 0 4 13 198 0 5 0 247 0 6 0 247 0 8 13 110 0 9 13 110 0 10 13 110 0 11 13 110 0 12 13 110 0 13 13 110 0 14 13 110 0 15 13 110 0 16 13 110 0 17 13 110 0 18 13 110 0 20 13 110 0 21 13 110 0 22 13 110 0 23 13 110 0 24 13 110 0 25 13 110 0 26 13 110 0 27 13 110 0 28 13 110 0 29 13 110 0 30 13 110 0 31 13 110 0 32 13 110 0 33 13 110 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 13 198 0 39 13 110 0 40 13 110 0 41 13 110 0 42 13 110 0 43 13 110 0 44 13 110 0 45 13 110 0 46 13 110 0 47 13 110 0 48 13 110 0 49 13 110 0 50 13 110 0 51 13 198 0 52 13 110 0 53 13 110 0 54 13 198 0 56 13 198 0 57 13 198 0 58 13 198 0 61 13 198 0 62 13 198 0 63 13 198 0 65 13 198 0 66 13 198 0 67 13 198 0 69 13 198 0 70 13 198 0 72 13 198 0 73 13 198 0 75 13 198 0 77 13 198 0 79 13 198 0 82 13 198 0 83 13 110 0 84 13 110 0 87 13 198 0 88 13 198 0 90 13 198 0 93 13 198 0 94 13 198 0 95 13 198 0 103 13 198 0 107 13 198 0 108 13 198 0 110 13 198 0 111 13 198 0 112 13 198 0 113 13 198 0 114 13 198 0 115 13 198 0 116 13 198 0 117 13 198 0 118 13 198 0 119 13 198 0 120 13 110 0 122 13 198 0 125 13 198 0 127 13 198 0 129 13 198 0 130 13 198 0 131 0 247 0 133 0 247 0 134 13 198 0 137 13 110 1 228 0 247 1 229 13 198 1 230] 
#[0 29 157 0 5] 
#[1 13 202 0 1 0 251 0 2 13 202 0 4 13 202 0 5 0 251 0 6 0 251 0 8 13 114 0 9 13 114 0 10 13 114 0 11 13 114 0 12 13 114 0 13 13 114 0 14 13 114 0 15 13 114 0 16 13 114 0 17 13 114 0 18 13 114 0 20 13 114 0 21 13 114 0 22 13 114 0 23 13 114 0 24 13 114 0 25 13 114 0 26 13 114 0 27 13 114 0 28 13 114 0 29 13 114 0 30 13 114 0 31 13 114 0 32 13 114 0 33 13 114 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 13 202 0 39 13 114 0 40 13 114 0 41 13 114 0 42 13 114 0 43 13 114 0 44 13 114 0 45 13 114 0 46 13 114 0 47 13 114 0 48 13 114 0 49 13 114 0 50 13 114 0 51 13 202 0 52 13 114 0 53 13 114 0 54 13 202 0 56 13 202 0 57 13 202 0 58 13 202 0 61 13 202 0 62 13 202 0 63 13 202 0 65 13 202 0 66 13 202 0 67 13 202 0 69 13 202 0 70 13 202 0 72 13 202 0 73 13 202 0 75 13 202 0 77 13 202 0 79 13 202 0 82 13 202 0 83 13 114 0 84 13 114 0 87 13 202 0 88 13 202 0 90 13 202 0 93 13 202 0 94 13 202 0 95 13 202 0 103 13 202 0 107 13 202 0 108 13 202 0 110 13 202 0 111 13 202 0 112 13 202 0 113 13 202 0 114 13 202 0 115 13 202 0 116 13 202 0 117 13 202 0 118 13 202 0 119 13 202 0 120 13 114 0 122 13 202 0 125 13 202 0 127 13 202 0 129 13 202 0 130 13 202 0 131 0 251 0 133 0 251 0 134 13 202 0 137 13 114 1 228 0 251 1 229 13 202 1 230] 
#[0 14 66 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 13 225 0 4 8 57 0 6 9 17 0 26 9 21 0 56 9 25 0 80 9 29 0 104 9 37 0 125 7 13 0 126 9 41 0 127 7 33 0 129 7 37 0 130 27 129 0 143 27 129 0 155 27 129 0 156 27 129 0 157 13 229 1 17 13 229 1 21 13 229 1 26 13 229 1 30 13 233 1 40 9 77 1 41 7 33 1 70 7 37 1 71 13 229 1 147 13 229 1 148 9 241 1 229] 
#[1 25 245 0 4 8 206 0 8 12 61 0 123 20 129 1 136] 
#[0 29 161 0 5] 
#[0 14 70 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 165 0 5] 
#[0 14 74 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 29 169 1 31 0 6 1 229] 
#[0 14 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 14 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 29 173 0 5] 
#[0 14 90 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 177 0 5] 
#[0 14 94 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 17 193 1 7 14 209 1 8 29 181 1 31 0 6 1 229] 
#[0 14 98 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 185 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 189 1 7 14 209 1 8 0 6 1 229] 
#[0 29 193 0 5] 
#[1 0 6 0 2 0 6 0 4 6 22 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 65 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 14 201 0 207 2 121 0 208 0 57 0 209 2 121 0 210 0 65 0 211 29 197 1 7 14 209 1 8 0 6 1 229] 
#[0 14 102 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 106 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 110 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 201 0 8] 
#[0 14 114 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 118 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 29 205 0 5] 
#[0 14 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 130 0 4 0 9 0 14 0 138] 
#[0 14 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 209 0 8] 
#[0 14 138 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 142 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 213 0 3] 
#[0 14 146 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 217 0 8] 
#[0 29 221 0 8] 
#[0 14 150 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 154 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 14 78 0 1 0 255 0 2 14 78 0 4 14 78 0 5 0 255 0 6 0 255 0 8 14 10 0 9 14 10 0 10 14 10 0 11 14 10 0 12 14 10 0 13 14 10 0 14 14 10 0 15 14 10 0 16 14 10 0 17 14 10 0 18 14 10 0 20 14 10 0 21 14 10 0 22 14 10 0 23 14 10 0 24 14 10 0 25 14 10 0 26 14 10 0 27 14 10 0 28 14 10 0 29 14 10 0 30 14 10 0 31 14 10 0 32 14 10 0 33 14 10 0 34 0 255 0 35 0 255 0 36 0 255 0 37 0 255 0 38 14 78 0 39 14 10 0 40 14 10 0 41 14 10 0 42 14 10 0 43 14 10 0 44 14 10 0 45 14 10 0 46 14 10 0 47 14 10 0 48 14 10 0 49 14 10 0 50 14 10 0 51 14 78 0 52 14 10 0 53 14 10 0 54 14 78 0 56 14 78 0 57 14 78 0 58 14 78 0 61 14 78 0 62 14 78 0 63 14 78 0 65 14 78 0 66 14 78 0 67 14 78 0 69 14 78 0 70 14 78 0 72 14 78 0 73 14 78 0 75 14 78 0 77 14 78 0 79 14 78 0 82 14 78 0 83 14 10 0 84 14 10 0 87 14 78 0 88 14 78 0 90 14 78 0 93 14 78 0 94 14 78 0 95 14 78 0 103 14 78 0 107 14 78 0 108 14 78 0 110 14 78 0 111 14 78 0 112 14 78 0 113 14 78 0 114 14 78 0 115 14 78 0 116 14 78 0 117 14 78 0 118 14 78 0 119 14 78 0 120 14 10 0 122 14 78 0 125 14 78 0 127 14 78 0 129 14 78 0 130 14 78 0 131 0 255 0 133 0 255 0 134 14 78 0 137 14 10 1 228 0 255 1 229 14 78 1 230] 
#[0 14 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 29 225 0 5] 
#[0 14 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 228 1 229 1 230] 
#[0 14 170 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 229 0 5] 
#[0 14 174 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 233 0 5] 
#[0 14 178 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 29 237 0 5] 
#[0 14 182 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 186 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 229] 
#[0 14 190 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 241 0 8] 
#[0 14 194 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 198 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 202 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 229 1 230] 
#[0 14 206 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 14 210 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 14 214 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 229] 
#[0 14 218 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130]
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
