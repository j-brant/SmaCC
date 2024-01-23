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
#[ 0 6 0 45] 
#[ 0 6 0 97] 
#[ 0 22 0 217] 
#[ 0 14 1 221] 
#[ 0 14 3 233] 
#[ 0 162 5 9] 
#[ 0 186 5 9] 
#[ 0 38 0 141] 
#[ 0 38 6 181] 
#[ 1 242 7 217] 
#[ 1 246 7 221] 
#[ 1 114 1 254] 
#[ 1 114 2 22] 
#[ 0 38 7 77] 
#[ 0 38 7 89] 
#[ 0 38 0 201] 
#[ 0 38 0 205] 
#[ 0 130 2 214] 
#[ 0 130 8 37] 
#[ 0 38 9 105] 
#[ 0 38 9 109] 
#[ 0 38 9 113] 
#[ 0 38 9 117] 
#[ 0 38 0 193] 
#[ 0 182 3 46] 
#[ 3 74 5 9] 
#[ 3 86 5 9] 
#[ 3 90 5 9] 
#[ 0 14 11 17] 
#[ 1 226 2 214] 
#[ 1 114 4 134] 
#[ 1 114 4 138] 
#[ 2 250 5 6] 
#[ 0 14 14 97] 
#[ 3 70 5 138] 
#[ 0 22 6 98] 
#[ 1 226 4 126] 
#[ 0 202 15 177] 
#[ 4 54 4 250] 
#[ 4 114 5 6] 
#[ 2 254 12 181] 
#[ 6 246 7 221] 
#[ 1 114 6 250] 
#[ 0 130 7 50] 
#[ 5 65 7 54] 
#[ 0 186 5 9 7 54] 
#[ 0 130 5 30] 
#[ 5 86 7 110] 
#[ 0 38 20 189] 
#[ 8 198 8 202] 
#[ 8 206 8 210] 
#[ 8 226 8 230] 
#[ 0 34 0 193] 
#[ 0 42 0 193] 
#[ 0 130 24 49] 
#[ 11 138 12 158] 
#[ 12 178 13 146] 
#[ 11 166 14 117] 
#[ 12 198 13 154] 
#[ 13 166 14 54] 
#[ 13 170 14 58] 
#[ 14 70 14 170]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2024-01-22T14:14:37.519813-06:00'
]

{ #category : #generated }
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
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CheckSemicolon NullableIndicator? TypeAnnotation? Initializer? <semicolon> 'semicolon' {{}}
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
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CheckSemicolon TypeAnnotation? <semicolon> 'semicolon' {{MemberVariableDeclaration}}
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
	#(209 0 #reduceActionForStartStatementListItem1: 24195073 true) 
	#(306 0 #reduceActionForModule1: 38709249 false) 
	#(152 0 #reduceActionForValidationNotArrowFunction1: 11709441 true) 
	#(161 0 #reduceActionForStartTemplateLiteral1: 12924929 true) 
	#(354 0 #reduceActionForSwitchToJSX1: 44561409 true) 
	#(304 0 #reduceActionForScript1: 38650881 false) 
	#(445 0 #reduceActionForSourceFileElement__element__1: 60288001 false) 
	#(211 1 #liftFirstValue: 24367106 false) 
	#(290 0 #reduceActionForSourceFileElement__element__1: 37026817 false) 
	#(211 1 #liftFirstValue: 24367105 false) 
	#(309 1 #liftFirstValue: 38842371 false) 
	#(208 1 #liftFirstValue: 24097794 false) 
	#(141 1 #liftFirstValue: 9046017 false) 
	#(306 1 #reduceActionForModule2: 38709250 false) 
	#(307 1 #reduceActionForModuleBody1: 38737921 false) 
	#(308 1 #reduceActionForModuleItemList1: 38768641 false) 
	#(309 1 #liftFirstValue: 38842369 false) 
	#(309 1 #liftFirstValue: 38842370 false) 
	#(257 0 #reduceActionForFormalParameters1: 32097281 false) 
	#(328 1 #liftFirstValue: 41814018 false) 
	#(327 1 #liftFirstValue: 41790465 false) 
	#(144 1 #reduceActionForPrimaryExpression1: 9453569 false) 
	#(328 1 #liftFirstValue: 41814017 false) 
	#(279 1 #reduceActionForYieldExpression1: 35125249 false) 
	#(142 1 #reduceActionForIdentifier1: 9158657 false) 
	#(326 1 #reduceActionForIdentifier1: 41720833 false) 
	#(329 1 #liftFirstValue: 41850881 false) 
	#(330 1 #liftFirstValue: 41886721 false) 
	#(331 1 #reduceActionForRegularExpressionLiteral1: 41924609 false) 
	#(160 1 #reduceActionForTemplateLiteral1: 12769281 false) 
	#(355 0 #reduceActionForSwitchToJSXText1: 44602369 true) 
	#(144 1 #liftFirstValue: 9453570 false) 
	#(267 1 #reduceActionForArrowParameterDeclaration1: 33166337 false) 
	#(164 1 #liftFirstValue: 13195265 false) 
	#(144 1 #liftFirstValue: 9453581 false) 
	#(144 1 #liftFirstValue: 9453571 false) 
	#(144 1 #liftFirstValue: 9453572 false) 
	#(144 1 #liftFirstValue: 9453573 false) 
	#(144 1 #liftFirstValue: 9453580 false) 
	#(169 1 #liftFirstValue: 14306305 false) 
	#(164 1 #liftFirstValue: 13195269 false) 
	#(164 1 #liftFirstValue: 13195270 false) 
	#(166 1 #liftFirstValue: 14074881 false) 
	#(166 1 #liftFirstValue: 14074882 false) 
	#(179 1 #liftFirstValue: 16631809 false) 
	#(179 1 #liftFirstValue: 16631810 false) 
	#(170 1 #liftFirstValue: 14396418 false) 
	#(170 1 #liftFirstValue: 14396419 false) 
	#(179 1 #liftFirstValue: 16631811 false) 
	#(180 1 #liftFirstValue: 16713729 false) 
	#(181 1 #liftFirstValue: 17082369 false) 
	#(182 1 #liftFirstValue: 17534977 false) 
	#(183 1 #liftFirstValue: 17704961 false) 
	#(185 1 #liftFirstValue: 17965057 false) 
	#(186 1 #liftFirstValue: 18263041 false) 
	#(187 1 #liftFirstValue: 18648065 false) 
	#(188 1 #liftFirstValue: 19496961 false) 
	#(189 1 #liftFirstValue: 20027393 false) 
	#(190 1 #liftFirstValue: 20191233 false) 
	#(191 1 #liftFirstValue: 20359169 false) 
	#(192 1 #liftFirstValue: 20526081 false) 
	#(195 1 #liftFirstValue: 21023746 false) 
	#(193 1 #liftFirstValue: 20696065 false) 
	#(196 1 #liftFirstValue: 21097473 false) 
	#(196 1 #liftFirstValue: 21097474 false) 
	#(195 1 #liftFirstValue: 21023745 false) 
	#(197 1 #liftFirstValue: 21171201 false) 
	#(198 1 #liftFirstValue: 21398529 false) 
	#(200 1 #liftFirstValue: 23176193 false) 
	#(144 1 #liftFirstValue: 9453574 false) 
	#(198 1 #liftFirstValue: 21398531 false) 
	#(266 1 #reduceActionForArrowParameters1: 33076225 false) 
	#(266 1 #reduceActionForArrowParameters2: 33076226 false) 
	#(198 1 #liftFirstValue: 21398532 false) 
	#(144 1 #liftFirstValue: 9453576 false) 
	#(198 1 #liftFirstValue: 21398530 false) 
	#(144 1 #liftFirstValue: 9453578 false) 
	#(144 1 #liftFirstValue: 9453577 false) 
	#(181 1 #liftFirstValue: 17082377 false) 
	#(144 1 #liftFirstValue: 9453575 false) 
	#(146 1 #reduceActionForLiteral1: 10554369 false) 
	#(146 1 #reduceActionForLiteral2: 10554370 false) 
	#(146 1 #reduceActionForLiteral4: 10554372 false) 
	#(146 1 #reduceActionForLiteral3: 10554371 false) 
	#(144 1 #liftFirstValue: 9453579 false) 
	#(144 1 #liftFirstValue: 9453582 false) 
	#(332 1 #liftFirstValue: 42176513 false) 
	#(356 0 #reduceActionForStartJSXText1: 44651521 true) 
	#(144 1 #liftFirstValue: 9453583 false) 
	#(181 1 #liftFirstValue: 17082379 false) 
	#(228 1 #reduceActionForEmptyStatement1: 26714113 false) 
	#(240 0 #reduceActionForCheckEOL1: 30331905 true) 
	#(201 1 #liftFirstValue: 23327750 false) 
	#(201 1 #liftFirstValue: 23327745 false) 
	#(205 1 #liftFirstValue: 23877633 false) 
	#(201 1 #liftFirstValue: 23327746 false) 
	#(201 1 #liftFirstValue: 23327747 false) 
	#(201 1 #liftFirstValue: 23327748 false) 
	#(201 1 #liftFirstValue: 23327749 false) 
	#(204 1 #liftFirstValue: 23815169 false) 
	#(231 1 #liftFirstValue: 27134977 false) 
	#(231 1 #liftFirstValue: 27134978 false) 
	#(231 1 #liftFirstValue: 27134979 false) 
	#(231 1 #liftFirstValue: 27134980 false) 
	#(201 1 #liftFirstValue: 23327751 false) 
	#(201 1 #liftFirstValue: 23327752 false) 
	#(201 1 #liftFirstValue: 23327753 false) 
	#(201 1 #liftFirstValue: 23327754 false) 
	#(204 1 #liftFirstValue: 23815170 false) 
	#(201 1 #liftFirstValue: 23327755 false) 
	#(201 1 #liftFirstValue: 23327756 false) 
	#(201 1 #liftFirstValue: 23327757 false) 
	#(201 1 #liftFirstValue: 23327758 false) 
	#(305 1 #reduceActionForModuleBody1: 38679553 false) 
	#(207 1 #reduceActionForModuleItemList1: 24000513 false) 
	#(304 1 #reduceActionForScript2: 38650882 false) 
	#(444 1 #reduceActionForSourceFile1: 60185601 false) 
	#(393 1 #reduceActionForThisType1: 48288769 false) 
	#(375 1 #reduceActionForPredefinedType1: 46321665 false) 
	#(377 1 #reduceActionForTypeName1: 46470145 false) 
	#(378 1 #reduceActionForNamespaceName1: 46576641 false) 
	#(373 1 #reduceActionForLiteralType1: 46158849 false) 
	#(373 1 #reduceActionForLiteralType1: 46158850 false) 
	#(367 1 #liftFirstValue: 45473793 false) 
	#(368 1 #liftFirstValue: 45550594 false) 
	#(369 1 #liftFirstValue: 45627394 false) 
	#(370 1 #liftFirstValue: 45688833 false) 
	#(371 1 #liftFirstValue: 45832202 false) 
	#(371 1 #liftFirstValue: 45832201 false) 
	#(371 1 #liftFirstValue: 45832193 false) 
	#(371 1 #liftFirstValue: 45832194 false) 
	#(371 1 #liftFirstValue: 45832195 false) 
	#(376 1 #reduceActionForTypeReference1: 46373889 false) 
	#(371 1 #liftFirstValue: 45832196 false) 
	#(371 1 #liftFirstValue: 45832197 false) 
	#(371 1 #liftFirstValue: 45832198 false) 
	#(368 1 #liftFirstValue: 45550593 false) 
	#(369 1 #liftFirstValue: 45627393 false) 
	#(367 1 #liftFirstValue: 45473794 false) 
	#(367 1 #liftFirstValue: 45473795 false) 
	#(371 1 #liftFirstValue: 45832199 false) 
	#(371 1 #liftFirstValue: 45832200 false) 
	#(296 1 #reduceActionForEmptyStatement1: 37575689 false) 
	#(300 1 #reduceActionForIdentifier1: 38305793 false) 
	#(299 0 #reduceActionForCheckSemicolon1: 38258689 true) 
	#(300 1 #reduceActionForIdentifier1: 38305794 false) 
	#(298 1 #reduceActionForIdentifier1: 38115330 false) 
	#(296 1 #liftFirstValue: 37575684 false) 
	#(273 1 #liftFirstValue: 33732610 false) 
	#(273 1 #liftFirstValue: 33732612 false) 
	#(273 1 #liftFirstValue: 33732611 false) 
	#(297 1 #reduceActionForFieldDefinition2: 38004738 false) 
	#(296 1 #liftFirstValue: 37575688 false) 
	#(273 1 #liftFirstValue: 33732618 false) 
	#(273 1 #liftFirstValue: 33732619 false) 
	#(322 1 #reduceActionForExportFromClause1: 41170945 false) 
	#(321 2 #reduceActionForExportDeclaration4: 40377348 false) 
	#(202 1 #liftFirstValue: 23610369 false) 
	#(202 1 #liftFirstValue: 23610371 false) 
	#(321 2 #reduceActionForExportDeclaration3: 40377347 false) 
	#(203 1 #liftFirstValue: 23689217 false) 
	#(203 1 #liftFirstValue: 23689218 false) 
	#(203 1 #liftFirstValue: 23689220 false) 
	#(203 1 #liftFirstValue: 23689219 false) 
	#(202 1 #liftFirstValue: 23610370 false) 
	#(322 1 #reduceActionForExportFromClause3: 41170947 false) 
	#(320 1 #liftFirstValue: 40342529 false) 
	#(312 1 #reduceActionForImportClause1: 39144449 false) 
	#(312 1 #reduceActionForImportClause1: 39144450 false) 
	#(312 1 #reduceActionForImportClause1: 39144451 false) 
	#(313 1 #liftFirstValue: 39505921 false) 
	#(319 1 #liftFirstValue: 40300545 false) 
	#(208 2 #liftSecondValue: 24097793 false) 
	#(213 1 #reduceActionForArrowParameterDeclaration1: 24497153 false) 
	#(212 1 #reduceActionForNamespaceName1: 24398849 false) 
	#(217 1 #liftFirstValue: 25043969 false) 
	#(217 1 #liftFirstValue: 25043970 false) 
	#(213 1 #liftFirstValue: 24497156 false) 
	#(213 1 #liftFirstValue: 24497157 false) 
	#(308 2 #reduceActionForModuleItemList2: 38768642 false) 
	#(226 1 #reduceActionForArrowParameterDeclaration1: 26445825 false) 
	#(225 1 #reduceActionForBindingElement2: 26335234 false) 
	#(260 1 #liftFirstValue: 32466945 false) 
	#(225 1 #liftFirstValue: 26335233 false) 
	#(259 1 #liftFirstValue: 32420865 false) 
	#(256 1 #reduceActionForModuleBody1: 32052225 false) 
	#(257 1 #reduceActionForFormalParameters3: 32097283 false) 
	#(257 1 #reduceActionForFormalParameters2: 32097282 false) 
	#(258 1 #reduceActionForNamespaceName1: 32299009 false) 
	#(147 2 #reduceActionForArrayLiteral1: 10736641 false) 
	#(149 1 #reduceActionForModuleItemList1: 11215873 false) 
	#(148 1 #reduceActionForNamespaceName1: 10997763 false) 
	#(148 1 #reduceActionForNamespaceName1: 10997761 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17082373 false) 
	#(180 2 #reduceActionForUpdateExpression4: 16713732 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17082374 false) 
	#(180 2 #reduceActionForUpdateExpression4: 16713733 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17082375 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17082376 false) 
	#(288 2 #reduceActionForAwaitExpression1: 36930561 false) 
	#(291 2 #reduceActionForClassExpression1: 37202945 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17082370 false) 
	#(169 2 #reduceActionForNewExpression2: 14306306 false) 
	#(171 2 #reduceActionForSuperCall1: 14995457 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17082372 false) 
	#(181 2 #reduceActionForUnaryExpression5: 17082371 false) 
	#(279 2 #reduceActionForYieldExpression2: 35125250 false) 
	#(164 2 #reduceActionForMemberExpression4: 13195268 false) 
	#(170 2 #reduceActionForCallExpression1: 14396417 false) 
	#(175 2 #reduceActionForOptionalExpression1: 15660033 false) 
	#(170 2 #reduceActionForMemberExpression4: 14396423 false) 
	#(170 2 #reduceActionForCallExpression1: 14396420 false) 
	#(175 2 #reduceActionForOptionalExpression1: 15660034 false) 
	#(175 2 #reduceActionForOptionalExpression1: 15660035 false) 
	#(199 1 #liftFirstValue: 21603331 false) 
	#(199 1 #liftFirstValue: 21603335 false) 
	#(199 1 #liftFirstValue: 21603336 false) 
	#(199 1 #liftFirstValue: 21603337 false) 
	#(199 1 #liftFirstValue: 21603329 false) 
	#(199 1 #liftFirstValue: 21603330 false) 
	#(199 1 #liftFirstValue: 21603332 false) 
	#(199 1 #liftFirstValue: 21603338 false) 
	#(199 1 #liftFirstValue: 21603339 false) 
	#(199 1 #liftFirstValue: 21603340 false) 
	#(199 1 #liftFirstValue: 21603334 false) 
	#(199 1 #liftFirstValue: 21603333 false) 
	#(180 2 #reduceActionForUpdateExpression2: 16713730 false) 
	#(180 2 #reduceActionForUpdateExpression2: 16713731 false) 
	#(199 1 #liftFirstValue: 21603342 false) 
	#(199 1 #liftFirstValue: 21603344 false) 
	#(199 1 #liftFirstValue: 21603343 false) 
	#(199 1 #liftFirstValue: 21603341 false) 
	#(184 1 #liftFirstValue: 17907714 false) 
	#(184 1 #liftFirstValue: 17907713 false) 
	#(184 1 #liftFirstValue: 17907715 false) 
	#(351 0 #reduceActionForSourceFileElement__element__1: 44247041 false) 
	#(270 2 #reduceActionForArrowFormalParameters2: 33417218 false) 
	#(206 2 #reduceActionForBlock1: 23903233 false) 
	#(239 2 #reduceActionForBreakStatement1: 30222337 false) 
	#(238 2 #reduceActionForContinueStatement1: 30105601 false) 
	#(255 2 #reduceActionForDebuggerStatement1: 31966209 false) 
	#(241 2 #reduceActionForReturnStatement1: 30366721 false) 
	#(216 1 #reduceActionForArrowParameterDeclaration1: 24883201 false) 
	#(215 1 #reduceActionForNamespaceName1: 24747009 false) 
	#(229 2 #reduceActionForExpressionStatement1: 26764289 false) 
	#(207 2 #reduceActionForModuleItemList2: 24000514 false) 
	#(452 1 #liftFirstValue: 61372417 false) 
	#(452 1 #liftFirstValue: 61372418 false) 
	#(452 1 #liftFirstValue: 61372419 false) 
	#(452 1 #liftFirstValue: 61372420 false) 
	#(452 1 #liftFirstValue: 61372421 false) 
	#(446 1 #liftFirstValue: 60337155 false) 
	#(452 1 #liftFirstValue: 61372423 false) 
	#(452 1 #liftFirstValue: 61372422 false) 
	#(452 1 #liftFirstValue: 61372424 false) 
	#(452 1 #liftFirstValue: 61372425 false) 
	#(452 1 #liftFirstValue: 61372427 false) 
	#(445 2 #reduceActionForModuleItemList2: 60288002 false) 
	#(446 1 #liftFirstValue: 60337153 false) 
	#(446 1 #liftFirstValue: 60337156 false) 
	#(446 1 #liftFirstValue: 60337157 false) 
	#(446 1 #liftFirstValue: 60337161 false) 
	#(446 1 #liftFirstValue: 60337158 false) 
	#(446 1 #liftFirstValue: 60337162 false) 
	#(446 1 #liftFirstValue: 60337159 false) 
	#(446 1 #liftFirstValue: 60337160 false) 
	#(452 1 #liftFirstValue: 61372426 false) 
	#(446 1 #liftFirstValue: 60337154 false) 
	#(379 2 #reduceActionForObjectType1: 46681089 false) 
	#(143 1 #reduceActionForIdentifier1: 9352193 false) 
	#(156 1 #liftFirstValue: 12374017 false) 
	#(394 1 #reduceActionForPropertySignature1: 48326657 false) 
	#(155 1 #liftFirstValue: 12311553 false) 
	#(155 1 #liftFirstValue: 12311554 false) 
	#(156 1 #reduceActionForIdentifier1: 12374018 false) 
	#(156 1 #reduceActionForIdentifier1: 12374019 false) 
	#(380 1 #reduceActionForModuleBody1: 46763009 false) 
	#(381 1 #reduceActionForNamespaceName1: 46859265 false) 
	#(382 1 #liftFirstValue: 47013889 false) 
	#(382 1 #liftFirstValue: 47013890 false) 
	#(382 1 #liftFirstValue: 47013891 false) 
	#(382 1 #liftFirstValue: 47013892 false) 
	#(382 1 #liftFirstValue: 47013893 false) 
	#(384 2 #reduceActionForTupleType1: 47228929 false) 
	#(386 1 #liftFirstValue: 47456257 false) 
	#(385 1 #reduceActionForNamespaceName1: 47347713 false) 
	#(362 1 #reduceActionForTypeParameter1: 45159425 false) 
	#(361 1 #reduceActionForNamespaceName1: 45046785 false) 
	#(370 2 #reduceActionForPrefixType3: 45688835 false) 
	#(370 2 #reduceActionForPrefixType2: 45688834 false) 
	#(392 1 #reduceActionForTypeQueryExpression1: 48164865 false) 
	#(391 2 #reduceActionForTypeQuery1: 48091137 false) 
	#(303 0 #reduceActionForSourceFileElement__element__1: 38595585 false) 
	#(296 2 #reduceActionForClassElement5: 37575685 false) 
	#(298 2 #reduceActionForIdentifier1: 38115329 false) 
	#(296 2 #reduceActionForClassElement6: 37575686 false) 
	#(297 2 #reduceActionForFieldDefinition1: 38004737 false) 
	#(296 2 #liftSecondValue: 37575681 false) 
	#(296 2 #liftSecondValue: 37575682 false) 
	#(424 1 #liftFirstValue: 56834049 false) 
	#(424 1 #liftFirstValue: 56834050 false) 
	#(424 1 #liftFirstValue: 56834051 false) 
	#(296 2 #liftSecondValue: 37575683 false) 
	#(323 2 #reduceActionForNamedExports1: 41278465 false) 
	#(310 1 #liftFirstValue: 38917121 false) 
	#(325 1 #reduceActionForExportSpecifier1: 41598977 false) 
	#(324 1 #reduceActionForNamespaceName1: 41494529 false) 
	#(310 1 #liftFirstValue: 38917122 false) 
	#(290 2 #reduceActionForModuleItemList2: 37026818 false) 
	#(321 3 #reduceActionForExportDeclaration2: 40377346 false) 
	#(202 2 #liftSecondValue: 23610373 false) 
	#(202 2 #liftSecondValue: 23610372 false) 
	#(202 2 #liftSecondValue: 23610374 false) 
	#(315 2 #reduceActionForNamedImports1: 39630849 false) 
	#(317 1 #reduceActionForNamespaceName1: 39913473 false) 
	#(318 1 #reduceActionForImportSpecifier1: 40017921 false) 
	#(311 3 #reduceActionForImportDeclaration2: 38972418 false) 
	#(218 2 #reduceActionForObjectBindingPattern1: 25107457 false) 
	#(221 1 #reduceActionForNamespaceName1: 25932801 false) 
	#(224 1 #liftFirstValue: 26221569 false) 
	#(219 2 #reduceActionForArrayBindingPattern1: 25495553 false) 
	#(222 1 #reduceActionForBindingElementList1: 26051585 false) 
	#(223 1 #reduceActionForBindingElisionElement1: 26160129 false) 
	#(213 2 #reduceActionForLexicalBinding2: 24497154 false) 
	#(210 3 #reduceActionForLexicalDeclaration1: 24278017 false) 
	#(213 2 #reduceActionForLexicalBinding3: 24497155 false) 
	#(227 2 #reduceActionForBindingRestElement1: 26531841 false) 
	#(227 2 #reduceActionForBindingRestElement1: 26531842 false) 
	#(226 2 #reduceActionForLexicalBinding2: 26445826 false) 
	#(145 3 #reduceActionForParenthesizedExpression1: 9819137 false) 
	#(225 2 #reduceActionForLexicalBinding3: 26335235 false) 
	#(270 3 #reduceActionForArrowFormalParameters1: 33417217 false) 
	#(257 2 #reduceActionForFormalParameters4: 32097284 false) 
	#(400 1 #liftFirstValue: 50635780 false) 
	#(400 1 #liftFirstValue: 50635778 false) 
	#(400 1 #liftFirstValue: 50635779 false) 
	#(400 1 #liftFirstValue: 50635777 false) 
	#(397 0 #reduceActionForSourceFileElement__element__1: 48811009 false) 
	#(150 2 #reduceActionForSpreadElement1: 11271169 false) 
	#(147 3 #reduceActionForArrayLiteral3: 10736643 false) 
	#(147 3 #reduceActionForArrayLiteral2: 10736642 false) 
	#(149 2 #reduceActionForModuleItemList2: 11215874 false) 
	#(148 2 #reduceActionForElementList4: 10997764 false) 
	#(148 2 #reduceActionForElementList4: 10997762 false) 
	#(292 2 #reduceActionForClassTail1: 37282817 false) 
	#(294 1 #reduceActionForModuleBody1: 37455873 false) 
	#(295 1 #reduceActionForModuleItemList1: 37487617 false) 
	#(293 2 #reduceActionForClassHeritage1: 37374977 false) 
	#(291 3 #reduceActionForClassExpression2: 37202946 false) 
	#(293 2 #reduceActionForClassHeritage4: 37374980 false) 
	#(293 2 #reduceActionForClassHeritage2: 37374978 false) 
	#(168 3 #reduceActionForImportMeta1: 14219265 false) 
	#(167 3 #reduceActionForNewTarget1: 14115841 false) 
	#(164 3 #reduceActionForMemberExpression7: 13195271 false) 
	#(173 2 #reduceActionForArguments1: 15206401 false) 
	#(174 1 #reduceActionForArgumentList1: 15391745 false) 
	#(165 3 #reduceActionForSuperProperty2: 13809666 false) 
	#(279 3 #reduceActionForYieldExpression3: 35125251 false) 
	#(151 3 #reduceActionForObjectLiteral1: 11369473 false) 
	#(154 1 #liftFirstValue: 12062721 false) 
	#(153 1 #reduceActionForNamespaceName1: 11927553 false) 
	#(154 1 #liftFirstValue: 12062722 false) 
	#(154 1 #liftFirstValue: 12062724 false) 
	#(164 3 #reduceActionForMemberExpression3: 13195267 false) 
	#(164 3 #reduceActionForMemberExpression3: 13195272 false) 
	#(178 1 #reduceActionForOptionalFirst3: 16319491 false) 
	#(178 1 #reduceActionForOptionalFirst3: 16319493 false) 
	#(178 1 #reduceActionForOptionalFirst4: 16319492 false) 
	#(178 1 #reduceActionForOptionalFirst1: 16319489 false) 
	#(176 2 #reduceActionForOptionalChain1: 15838209 false) 
	#(177 1 #reduceActionForOptionalFirst4: 15961092 false) 
	#(177 1 #reduceActionForOptionalFirst1: 15961089 false) 
	#(176 2 #reduceActionForOptionalChain2: 15838210 false) 
	#(170 3 #reduceActionForMemberExpression3: 14396422 false) 
	#(170 3 #reduceActionForMemberExpression3: 14396424 false) 
	#(198 3 #reduceActionForAssignmentExpression5: 21398533 false) 
	#(144 3 #reduceActionForPrimaryExpression16: 9453584 false) 
	#(182 3 #reduceActionForExponentiationExpression2: 17534978 false) 
	#(183 3 #reduceActionForExponentiationExpression2: 17704962 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 17965058 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 17965059 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18263042 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18263043 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18263044 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18648066 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18648067 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18648068 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18648069 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18648071 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18648070 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19496962 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19496964 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19496963 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 19496965 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 20027394 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 20191234 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 20359170 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 20526082 false) 
	#(193 3 #reduceActionForExponentiationExpression2: 20696066 false) 
	#(194 3 #reduceActionForExponentiationExpression2: 20866049 false) 
	#(200 3 #reduceActionForExpression2: 23176194 false) 
	#(264 0 #reduceActionForSourceFileElement__element__1: 32966657 false) 
	#(269 1 #liftFirstValue: 33376257 false) 
	#(265 3 #reduceActionForArrowFunction1: 33008641 false) 
	#(268 1 #reduceActionForImportClause1: 33261569 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18648072 false) 
	#(359 0 #reduceActionForSwitchToDefault1: 44813313 true) 
	#(350 1 #reduceActionForModuleBody1: 44232705 false) 
	#(337 1 #reduceActionForJSXElementName1: 43088897 false) 
	#(337 1 #liftFirstValue: 43088898 false) 
	#(337 1 #liftFirstValue: 43088899 false) 
	#(341 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 43415553 false) 
	#(206 3 #reduceActionForBlock2: 23903234 false) 
	#(250 3 #reduceActionForThrowStatement1: 31385601 false) 
	#(251 3 #reduceActionForTryStatement1: 31481857 false) 
	#(251 3 #reduceActionForTryStatement2: 31481858 false) 
	#(216 2 #reduceActionForLexicalBinding2: 24883202 false) 
	#(214 3 #reduceActionForVariableStatement1: 24651777 false) 
	#(216 2 #reduceActionForLexicalBinding3: 24883203 false) 
	#(216 2 #liftSecondValue: 24883204 false) 
	#(216 2 #liftSecondValue: 24883205 false) 
	#(249 1 #liftFirstValue: 31291393 false) 
	#(248 3 #reduceActionForLabelledStatement1: 31192065 false) 
	#(481 1 #liftFirstValue: 68427777 false) 
	#(470 2 #reduceActionForAmbientDeclaration1: 66306049 false) 
	#(470 2 #reduceActionForAmbientDeclaration1: 66306050 false) 
	#(470 2 #reduceActionForAmbientDeclaration1: 66306051 false) 
	#(470 2 #reduceActionForAmbientDeclaration1: 66306052 false) 
	#(470 2 #reduceActionForAmbientDeclaration1: 66306053 false) 
	#(437 1 #reduceActionForNamespaceName1: 58674177 false) 
	#(374 3 #reduceActionForParenthesizedExpression1: 46233601 false) 
	#(394 2 #reduceActionForPropertySignature5: 48326661 false) 
	#(427 1 #liftFirstValue: 57187329 false) 
	#(427 1 #liftFirstValue: 57187330 false) 
	#(394 2 #reduceActionForPropertySignature2: 48326658 false) 
	#(404 2 #reduceActionForMethodSignature1: 51884033 false) 
	#(394 2 #reduceActionForPropertySignature3: 48326659 false) 
	#(379 3 #reduceActionForObjectType2: 46681090 false) 
	#(380 2 #reduceActionForOptionalChain2: 46763010 false) 
	#(380 2 #reduceActionForOptionalChain2: 46763012 false) 
	#(384 3 #reduceActionForTupleType2: 47228930 false) 
	#(384 3 #reduceActionForTupleType3: 47228931 false) 
	#(362 2 #reduceActionForTypeParameter2: 45159426 false) 
	#(360 3 #reduceActionForTypeParameters1: 44967937 false) 
	#(387 3 #reduceActionForUnionType1: 47482881 false) 
	#(388 3 #reduceActionForIntersectionType1: 47603713 false) 
	#(376 3 #reduceActionForTypeReference2: 46373890 false) 
	#(377 3 #reduceActionForTypeName2: 46470146 false) 
	#(378 3 #reduceActionForNamespaceName2: 46576642 false) 
	#(303 1 #reduceActionForModuleBody1: 38595586 false) 
	#(302 1 #reduceActionForModuleBody1: 38539265 false) 
	#(296 3 #reduceActionForClassElement7: 37575687 false) 
	#(159 2 #reduceActionForInitializer1: 12704769 false) 
	#(429 2 #reduceActionForMemberAccessorDeclaration1: 57732097 false) 
	#(429 2 #reduceActionForMemberAccessorDeclaration1: 57732101 false) 
	#(430 2 #reduceActionForIndexMemberDeclaration1: 58008577 false) 
	#(323 3 #reduceActionForNamedExports2: 41278466 false) 
	#(322 3 #reduceActionForExportFromClause2: 41170946 false) 
	#(321 4 #reduceActionForExportDeclaration5: 40377349 false) 
	#(487 2 #reduceActionForDecoratorExpression2: 69899266 false) 
	#(487 2 #reduceActionForDecoratorExpression2: 69899265 false) 
	#(289 3 #reduceActionForClassDeclaration1: 37007361 false) 
	#(316 2 #reduceActionForInitializer1: 39862273 false) 
	#(321 4 #reduceActionForExportDeclaration1: 40377345 false) 
	#(315 3 #reduceActionForNamedImports2: 39630850 false) 
	#(314 3 #reduceActionForNameSpaceImport1: 39549953 false) 
	#(311 4 #reduceActionForImportDeclaration1: 38972417 false) 
	#(312 3 #reduceActionForImportClause4: 39144452 false) 
	#(312 3 #reduceActionForImportClause4: 39144453 false) 
	#(312 3 #reduceActionForImportClause6: 39144454 false) 
	#(312 3 #reduceActionForImportClause6: 39144455 false) 
	#(220 2 #reduceActionForBindingRestProperty1: 25861121 false) 
	#(218 3 #reduceActionForObjectBindingPattern2: 25107458 false) 
	#(218 3 #reduceActionForObjectBindingPattern3: 25107459 false) 
	#(219 3 #reduceActionForArrayBindingPattern3: 25495555 false) 
	#(223 2 #reduceActionForBindingElisionElement2: 26160130 false) 
	#(219 3 #reduceActionForArrayBindingPattern5: 25495557 false) 
	#(219 3 #reduceActionForArrayBindingPattern2: 25495554 false) 
	#(212 3 #reduceActionForNamespaceName2: 24398850 false) 
	#(413 3 #reduceActionForSimpleLexicalBinding1: 54974465 false) 
	#(414 3 #reduceActionForDestructuringLexicalBinding1: 55084033 false) 
	#(227 3 #reduceActionForBindingRestElement3: 26531843 false) 
	#(257 3 #reduceActionForFormalParameters5: 32097285 false) 
	#(258 3 #reduceActionForNamespaceName2: 32299010 false) 
	#(226 3 #reduceActionForSimpleLexicalBinding1: 26445827 false) 
	#(226 3 #reduceActionForSingleNameBinding9: 26445833 false) 
	#(399 0 #nil 49305604 false) 
	#(226 3 #reduceActionForSingleNameBinding7: 26445831 false) 
	#(147 4 #reduceActionForArrayLiteral4: 10736644 false) 
	#(148 3 #reduceActionForElementList6: 10997766 false) 
	#(148 3 #reduceActionForElementList6: 10997765 false) 
	#(272 1 #reduceActionForImportClause1: 33611777 false) 
	#(271 4 #reduceActionForAsyncArrowFunction1: 33509377 false) 
	#(292 3 #reduceActionForClassTail2: 37282818 false) 
	#(295 2 #reduceActionForModuleItemList2: 37487618 false) 
	#(292 3 #reduceActionForClassTail3: 37282819 false) 
	#(420 1 #liftFirstValue: 56095745 false) 
	#(419 2 #reduceActionForInitializer1: 56036353 false) 
	#(418 1 #liftFirstValue: 55888897 false) 
	#(421 2 #reduceActionForImplementsClause1: 56137729 false) 
	#(417 1 #reduceActionForNamespaceName1: 55757825 false) 
	#(293 3 #reduceActionForClassHeritage3: 37374979 false) 
	#(172 4 #reduceActionForImportCall1: 15066113 false) 
	#(174 2 #reduceActionForArgumentList2: 15391746 false) 
	#(173 3 #reduceActionForArguments2: 15206402 false) 
	#(165 4 #reduceActionForSuperProperty1: 13809665 false) 
	#(365 1 #reduceActionForNamespaceName1: 45344769 false) 
	#(366 1 #liftFirstValue: 45451265 false) 
	#(154 2 #reduceActionForPropertyDefinition5: 12062725 false) 
	#(158 2 #reduceActionForCoverInitializedName1: 12621825 false) 
	#(151 4 #reduceActionForObjectLiteral2: 11369474 false) 
	#(162 1 #reduceActionForNamespaceName1: 12962817 false) 
	#(160 4 #reduceActionForTemplateLiteral2: 12769282 false) 
	#(164 4 #reduceActionForMemberExpression2: 13195266 false) 
	#(177 2 #reduceActionForOptionalRest3: 15961091 false) 
	#(177 2 #reduceActionForOptionalRest3: 15961093 false) 
	#(170 4 #reduceActionForMemberExpression2: 14396421 false) 
	#(410 4 #reduceActionForAsExpression1: 54320129 false) 
	#(264 1 #reduceActionForModuleBody1: 32966658 false) 
	#(263 1 #reduceActionForModuleBody1: 32925697 false) 
	#(332 4 #reduceActionForJSXElement2: 42176514 false) 
	#(352 1 #reduceActionForJSXChild1: 44267521 false) 
	#(352 1 #liftFirstValue: 44267522 false) 
	#(351 2 #reduceActionForModuleItemList2: 44247042 false) 
	#(340 2 #reduceActionForInitializer1: 43415553 false) 
	#(357 0 #reduceActionForSwitchToJSXTextOrDefault11: 44680193 true) 
	#(347 1 #reduceActionForJSXElementName1: 43839489 false) 
	#(347 1 #liftFirstValue: 43839490 false) 
	#(344 1 #reduceActionForModuleItemList1: 43542529 false) 
	#(342 1 #reduceActionForModuleBody1: 43526145 false) 
	#(343 1 #liftFirstValue: 43542529 false) 
	#(343 1 #liftFirstValue: 43542530 false) 
	#(346 1 #reduceActionForJSXAttribute1: 43756545 false) 
	#(339 2 #reduceActionForJSXMemberExpression1: 43393025 false) 
	#(341 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 43415554 false) 
	#(334 4 #reduceActionForJSXOpeningElement3: 42510339 false) 
	#(410 4 #reduceActionForAsExpression1: 54320130 false) 
	#(406 3 #reduceActionForArrowFormalParameters1: 52588547 false) 
	#(239 4 #reduceActionForBreakStatement2: 30222338 false) 
	#(238 4 #reduceActionForContinueStatement2: 30105602 false) 
	#(237 1 #liftFirstValue: 30058497 false) 
	#(237 1 #liftFirstValue: 30058498 false) 
	#(236 2 #reduceActionForInitializer1: 29993985 false) 
	#(241 4 #reduceActionForReturnStatement2: 30366722 false) 
	#(252 2 #reduceActionForCatch2: 31652866 false) 
	#(253 2 #reduceActionForInitializer1: 31820801 false) 
	#(251 4 #reduceActionForTryStatement3: 31481859 false) 
	#(215 3 #reduceActionForNamespaceName2: 24747010 false) 
	#(411 2 #reduceActionForSimpleVariableDeclaration1: 54674433 false) 
	#(473 1 #reduceActionForArrowParameterDeclaration1: 67103745 false) 
	#(472 1 #reduceActionForNamespaceName1: 66991105 false) 
	#(483 0 #reduceActionForSourceFileElement__element__1: 68771841 false) 
	#(468 3 #reduceActionForExportListDeclaration5: 65837061 false) 
	#(415 3 #reduceActionForInterfaceDeclaration1: 55517185 false) 
	#(438 0 #reduceActionForSourceFileElement__element__1: 58779649 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145987 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145986 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145985 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145988 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145994 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145990 false) 
	#(465 3 #reduceActionForExportDeclarationElement2: 64410626 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145989 false) 
	#(465 3 #reduceActionForExportDeclarationElement2: 64410625 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145991 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145992 false) 
	#(465 3 #reduceActionForExportDeclarationElement2: 64410628 false) 
	#(465 3 #reduceActionForExportDeclarationElement2: 64410627 false) 
	#(464 3 #reduceActionForExportImplementationElement3: 63145993 false) 
	#(396 3 #reduceActionForCallSignature1: 48564225 false) 
	#(157 3 #reduceActionForComputedPropertyName1: 12500993 false) 
	#(394 3 #reduceActionForPropertySignature6: 48326662 false) 
	#(394 3 #reduceActionForPropertySignature7: 48326663 false) 
	#(395 2 #reduceActionForInitializer1: 48510977 false) 
	#(394 3 #reduceActionForPropertySignature4: 48326660 false) 
	#(404 3 #reduceActionForMethodSignature2: 51884034 false) 
	#(381 3 #reduceActionForNamespaceName2: 46859266 false) 
	#(381 3 #reduceActionForNamespaceName2: 46859267 false) 
	#(384 4 #reduceActionForTupleType4: 47228932 false) 
	#(385 3 #reduceActionForNamespaceName2: 47347714 false) 
	#(363 2 #reduceActionForInitializer1: 45213697 false) 
	#(361 3 #reduceActionForNamespaceName2: 45046786 false) 
	#(392 3 #reduceActionForTypeQueryExpression2: 48164866 false) 
	#(383 4 #reduceActionForArrayType1: 47121409 false) 
	#(274 1 #liftFirstValue: 34342913 false) 
	#(301 4 #reduceActionForClassStaticBlock1: 38416385 false) 
	#(429 3 #reduceActionForMemberAccessorDeclaration2: 57732098 false) 
	#(429 3 #reduceActionForMemberAccessorDeclaration2: 57732102 false) 
	#(426 0 #reduceActionForInitializer_1: 57142273 false) 
	#(429 3 #reduceActionForMemberAccessorDeclaration3: 57732099 false) 
	#(429 3 #reduceActionForMemberAccessorDeclaration3: 57732103 false) 
	#(325 3 #reduceActionForExportSpecifier2: 41598978 false) 
	#(323 4 #reduceActionForNamedExports3: 41278467 false) 
	#(324 3 #reduceActionForNamespaceName2: 41494530 false) 
	#(289 4 #reduceActionForClassDeclaration3: 37007363 false) 
	#(289 4 #reduceActionForClassDeclaration5: 37007365 false) 
	#(261 4 #reduceActionForFunctionDeclaration5: 32502789 false) 
	#(318 3 #reduceActionForImportSpecifier2: 40017922 false) 
	#(315 4 #reduceActionForNamedImports3: 39630851 false) 
	#(317 3 #reduceActionForNamespaceName2: 39913474 false) 
	#(318 3 #reduceActionForImportSpecifier3: 40017923 false) 
	#(224 3 #reduceActionForBindingProperty2: 26221570 false) 
	#(218 4 #reduceActionForObjectBindingPattern4: 25107460 false) 
	#(221 3 #reduceActionForNamespaceName2: 25932802 false) 
	#(219 4 #reduceActionForArrayBindingPattern4: 25495556 false) 
	#(219 4 #reduceActionForArrayBindingPattern6: 25495558 false) 
	#(222 3 #reduceActionForBindingElementList2: 26051586 false) 
	#(413 4 #reduceActionForSimpleLexicalBinding2: 54974466 false) 
	#(414 4 #reduceActionForDestructuringLexicalBinding2: 55084034 false) 
	#(226 4 #reduceActionForSimpleLexicalBinding2: 26445828 false) 
	#(398 1 #liftFirstValue: 49223682 false) 
	#(399 1 #reduceActionForIdentifier1: 49305602 false) 
	#(399 1 #liftFirstValue: 49305601 false) 
	#(399 1 #liftFirstValue: 49305603 false) 
	#(397 2 #reduceActionForModuleItemList2: 48811010 false) 
	#(225 4 #reduceActionForBindingElement6: 26335238 false) 
	#(398 1 #liftFirstValue: 49223681 false) 
	#(226 4 #reduceActionForSingleNameBinding8: 26445832 false) 
	#(226 4 #reduceActionForSingleNameBinding5: 26445829 false) 
	#(226 4 #reduceActionForSingleNameBinding10: 26445834 false) 
	#(287 1 #reduceActionForModuleBody1: 36894721 false) 
	#(292 4 #reduceActionForClassTail4: 37282820 false) 
	#(173 4 #reduceActionForArguments3: 15206403 false) 
	#(174 3 #reduceActionForArgumentList3: 15391747 false) 
	#(364 3 #reduceActionForTypeArguments1: 45266945 false) 
	#(173 4 #reduceActionForArguments4: 15206404 false) 
	#(151 5 #reduceActionForObjectLiteral3: 11369475 false) 
	#(153 3 #reduceActionForNamespaceName2: 11927554 false) 
	#(154 3 #reduceActionForPropertyDefinition3: 12062723 false) 
	#(163 2 #reduceActionForTemplateMiddleList1: 13049857 false) 
	#(162 2 #reduceActionForTemplateSpans2: 12962818 false) 
	#(178 3 #reduceActionForOptionalFirst2: 16319490 false) 
	#(177 3 #reduceActionForOptionalFirst2: 15961090 false) 
	#(197 5 #reduceActionForConditionalExpression2: 21171202 false) 
	#(268 3 #reduceActionForConciseBody2: 33261570 false) 
	#(338 3 #reduceActionForJSXNamespacedName1: 43269121 false) 
	#(344 2 #reduceActionForModuleItemList2: 43542530 false) 
	#(346 2 #reduceActionForJSXAttribute2: 43756546 false) 
	#(334 5 #reduceActionForJSXOpeningElement1: 42510337 false) 
	#(406 4 #reduceActionForTypeCallSignature1: 52588545 false) 
	#(181 5 #reduceActionForUnaryExpression10: 17082378 false) 
	#(406 4 #reduceActionForTypeCallSignature4: 52588548 false) 
	#(230 5 #reduceActionForIfStatement2: 26844162 false) 
	#(243 5 #reduceActionForSwitchStatement1: 30614529 false) 
	#(254 1 #liftFirstValue: 31881217 false) 
	#(254 1 #liftFirstValue: 31881219 false) 
	#(411 3 #reduceActionForSimpleVariableDeclaration2: 54674434 false) 
	#(412 3 #reduceActionForDestructuringVariableDeclaration1: 54779905 false) 
	#(233 5 #reduceActionForWhileStatement1: 27421697 false) 
	#(242 5 #reduceActionForWithStatement1: 30482433 false) 
	#(473 2 #reduceActionForAmbientBinding2: 67103746 false) 
	#(471 3 #reduceActionForLexicalDeclaration1: 66695171 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951043 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951049 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951055 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951041 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951045 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951047 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951051 false) 
	#(485 1 #reduceActionForAmbientNamespaceElement3: 68951053 false) 
	#(483 1 #reduceActionForModuleBody1: 68771842 false) 
	#(484 1 #reduceActionForModuleItemList1: 68824065 false) 
	#(471 3 #reduceActionForLexicalDeclaration1: 66695170 false) 
	#(460 0 #reduceActionForSourceFileElement__element__1: 62509057 false) 
	#(471 3 #reduceActionForLexicalDeclaration1: 66695169 false) 
	#(431 4 #reduceActionForEnumDeclaration1: 58099713 false) 
	#(434 1 #reduceActionForEnumMember1: 58385409 false) 
	#(432 1 #reduceActionForModuleBody1: 58247169 false) 
	#(433 1 #reduceActionForNamespaceName1: 58293249 false) 
	#(469 4 #reduceActionForExportAssignment1: 66173953 false) 
	#(468 4 #reduceActionForExportListDeclaration1: 65837057 false) 
	#(468 4 #reduceActionForExportListDeclaration3: 65837059 false) 
	#(443 1 #reduceActionForModuleBody1: 60073985 false) 
	#(416 2 #reduceActionForInitializer1: 55672833 false) 
	#(415 4 #reduceActionForInterfaceDeclaration3: 55517187 false) 
	#(415 4 #reduceActionForInterfaceDeclaration2: 55517186 false) 
	#(440 1 #liftFirstValue: 58915841 false) 
	#(440 1 #liftFirstValue: 58915842 false) 
	#(440 1 #liftFirstValue: 58915843 false) 
	#(440 1 #liftFirstValue: 58915844 false) 
	#(440 1 #liftFirstValue: 58915845 false) 
	#(440 1 #liftFirstValue: 58915847 false) 
	#(440 1 #liftFirstValue: 58915846 false) 
	#(440 1 #liftFirstValue: 58915848 false) 
	#(440 1 #liftFirstValue: 58915849 false) 
	#(438 1 #reduceActionForModuleBody1: 58779650 false) 
	#(439 1 #reduceActionForModuleItemList1: 58817537 false) 
	#(440 1 #liftFirstValue: 58915852 false) 
	#(440 1 #liftFirstValue: 58915851 false) 
	#(440 1 #liftFirstValue: 58915850 false) 
	#(437 3 #reduceActionForNamespaceName2: 58674178 false) 
	#(466 4 #reduceActionForExportDefaultImplementationElement1: 64839681 false) 
	#(466 4 #reduceActionForExportDefaultImplementationElement1: 64839682 false) 
	#(466 4 #reduceActionForExportDefaultImplementationElement1: 64839683 false) 
	#(467 4 #reduceActionForExportDefaultDeclarationElement1: 65400833 false) 
	#(467 4 #reduceActionForExportDefaultDeclarationElement1: 65400834 false) 
	#(389 5 #reduceActionForFunctionType1: 47710209 false) 
	#(396 4 #reduceActionForCallSignature2: 48564226 false) 
	#(402 4 #reduceActionForConstructSignature1: 51390465 false) 
	#(394 4 #reduceActionForPropertySignature8: 48326664 false) 
	#(396 4 #reduceActionForCallSignature3: 48564227 false) 
	#(372 5 #reduceActionForIndexedAccessType1: 46029825 false) 
	#(401 1 #liftFirstValue: 50711553 false) 
	#(401 1 #liftFirstValue: 50711554 false) 
	#(273 5 #reduceActionForMethodDefinition9: 33732617 false) 
	#(422 4 #reduceActionForConstructorDeclaration3: 56216579 false) 
	#(426 1 #reduceActionForModuleBody1: 57142274 false) 
	#(428 4 #reduceActionForMemberFunctionDeclaration9: 57274377 false) 
	#(429 4 #reduceActionForMemberAccessorDeclaration4: 57732100 false) 
	#(429 4 #reduceActionForMemberAccessorDeclaration4: 57732104 false) 
	#(289 5 #reduceActionForClassDeclaration2: 37007362 false) 
	#(289 5 #reduceActionForClassDeclaration7: 37007367 false) 
	#(261 5 #reduceActionForFunctionDeclaration6: 32502790 false) 
	#(218 5 #reduceActionForObjectBindingPattern5: 25107461 false) 
	#(219 5 #reduceActionForArrayBindingPattern8: 25495560 false) 
	#(219 5 #reduceActionForArrayBindingPattern7: 25495559 false) 
	#(321 6 #reduceActionForExportDeclaration6: 40377350 false) 
	#(225 5 #reduceActionForBindingElement7: 26335239 false) 
	#(225 5 #reduceActionForBindingElement4: 26335236 false) 
	#(225 5 #reduceActionForBindingElement8: 26335240 false) 
	#(226 5 #reduceActionForSingleNameBinding6: 26445830 false) 
	#(272 3 #reduceActionForConciseBody2: 33611778 false) 
	#(417 3 #reduceActionForNamespaceName2: 55757826 false) 
	#(174 4 #reduceActionForArgumentList4: 15391748 false) 
	#(365 3 #reduceActionForNamespaceName2: 45344770 false) 
	#(173 5 #reduceActionForArguments5: 15206405 false) 
	#(173 5 #reduceActionForArguments6: 15206406 false) 
	#(163 3 #reduceActionForTemplateMiddleList2: 13049858 false) 
	#(358 0 #reduceActionForSwitchToJSXTextOrDefault21: 44746753 true) 
	#(353 1 #liftFirstValue: 44499970 false) 
	#(353 1 #liftFirstValue: 44499969 false) 
	#(333 6 #reduceActionForJSXSelfClosingElement1: 42327041 false) 
	#(334 6 #reduceActionForJSXOpeningElement2: 42510338 false) 
	#(349 1 #reduceActionForLiteral4: 44004353 false) 
	#(349 1 #liftFirstValue: 44004355 false) 
	#(349 1 #liftFirstValue: 44004356 false) 
	#(348 2 #reduceActionForInitializer1: 43930625 false) 
	#(262 6 #reduceActionForFunctionExpression3: 32714755 false) 
	#(406 5 #reduceActionForTypeCallSignature2: 52588546 false) 
	#(234 6 #reduceActionForForStatement1: 27570177 false) 
	#(234 6 #reduceActionForForStatement13: 27570189 false) 
	#(244 2 #reduceActionForCaseBlock1: 30740481 false) 
	#(245 1 #reduceActionForModuleItemList1: 30924801 false) 
	#(431 5 #reduceActionForEnumDeclaration3: 58099715 false) 
	#(476 0 #reduceActionForSourceFileElement__element__1: 67539969 false) 
	#(472 3 #reduceActionForNamespaceName2: 66991106 false) 
	#(474 4 #reduceActionForAmbientFunctionDeclaration1: 67186689 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951044 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951050 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951056 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951042 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951046 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951048 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951052 false) 
	#(485 2 #reduceActionForAmbientNamespaceElement4: 68951054 false) 
	#(482 4 #reduceActionForAmbientNamespaceDeclaration2: 68471810 false) 
	#(484 2 #reduceActionForModuleItemList2: 68824066 false) 
	#(462 1 #liftFirstValue: 62690306 false) 
	#(456 1 #liftFirstValue: 61890562 false) 
	#(456 1 #liftFirstValue: 61890561 false) 
	#(456 1 #liftFirstValue: 61890563 false) 
	#(456 1 #liftFirstValue: 61890565 false) 
	#(462 1 #liftFirstValue: 62690305 false) 
	#(460 1 #reduceActionForModuleBody1: 62509058 false) 
	#(461 1 #reduceActionForModuleItemList1: 62559233 false) 
	#(462 1 #liftFirstValue: 62690307 false) 
	#(462 1 #liftFirstValue: 62690308 false) 
	#(462 1 #liftFirstValue: 62690309 false) 
	#(462 1 #liftFirstValue: 62690310 false) 
	#(456 1 #liftFirstValue: 61890564 false) 
	#(431 5 #reduceActionForEnumDeclaration2: 58099714 false) 
	#(432 2 #reduceActionForOptionalChain2: 58247170 false) 
	#(468 5 #reduceActionForExportListDeclaration6: 65837062 false) 
	#(442 5 #reduceActionForImportAliasDeclaration1: 59938817 false) 
	#(415 5 #reduceActionForInterfaceDeclaration4: 55517188 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196418 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196417 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196419 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196420 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196421 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196423 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196422 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196424 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196425 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196427 false) 
	#(441 2 #reduceActionForAmbientNamespaceElement4: 59196426 false) 
	#(436 5 #reduceActionForNamespaceDeclaration1: 58532865 false) 
	#(439 2 #reduceActionForModuleItemList2: 58817538 false) 
	#(405 5 #reduceActionForTypeAliasDeclaration1: 51976193 false) 
	#(467 5 #reduceActionForExportDefaultDeclarationElement3: 65400835 false) 
	#(466 5 #reduceActionForExportDefaultImplementationElement4: 64839684 false) 
	#(402 5 #reduceActionForConstructSignature2: 51390466 false) 
	#(402 5 #reduceActionForConstructSignature3: 51390467 false) 
	#(396 5 #reduceActionForCallSignature4: 48564228 false) 
	#(390 6 #reduceActionForConstructorType1: 47890433 false) 
	#(389 6 #reduceActionForFunctionType2: 47710210 false) 
	#(409 2 #reduceActionForTypedPropertySetParameterList1: 53622785 false) 
	#(273 6 #reduceActionForMethodDefinition7: 33732615 false) 
	#(428 5 #reduceActionForMemberFunctionDeclaration10: 57274378 false) 
	#(423 3 #reduceActionForCallSignature1: 56681473 false) 
	#(428 5 #reduceActionForMemberFunctionDeclaration11: 57274379 false) 
	#(425 5 #reduceActionForMemberVariableDeclaration1: 56948737 false) 
	#(422 5 #reduceActionForConstructorDeclaration4: 56216580 false) 
	#(428 5 #reduceActionForMemberFunctionDeclaration13: 57274381 false) 
	#(289 6 #reduceActionForClassDeclaration4: 37007364 false) 
	#(289 6 #reduceActionForClassDeclaration6: 37007366 false) 
	#(261 6 #reduceActionForFunctionExpression3: 32502787 false) 
	#(318 5 #reduceActionForImportSpecifier4: 40017924 false) 
	#(219 6 #reduceActionForArrayBindingPattern9: 25495561 false) 
	#(225 6 #reduceActionForBindingElement5: 26335237 false) 
	#(225 6 #reduceActionForBindingElement9: 26335241 false) 
	#(262 7 #reduceActionForFunctionExpression1: 32714753 false) 
	#(278 1 #reduceActionForModuleBody1: 35093505 false) 
	#(173 6 #reduceActionForArguments7: 15206407 false) 
	#(352 4 #reduceActionForJSXChild3: 44267523 false) 
	#(333 7 #reduceActionForJSXSelfClosingElement2: 42327042 false) 
	#(262 7 #reduceActionForFunctionExpression4: 32714756 false) 
	#(232 7 #reduceActionForDoWhileStatement1: 27229185 false) 
	#(234 7 #reduceActionForForStatement2: 27570178 false) 
	#(234 7 #reduceActionForForStatement3: 27570179 false) 
	#(235 7 #reduceActionForForInOfStatement1: 28291073 false) 
	#(235 7 #reduceActionForForInOfStatement4: 28291076 false) 
	#(234 7 #reduceActionForForStatement5: 27570181 false) 
	#(234 7 #reduceActionForForStatement14: 27570190 false) 
	#(234 7 #reduceActionForForStatement15: 27570191 false) 
	#(235 7 #reduceActionForForInOfStatement3: 28291075 false) 
	#(235 7 #reduceActionForForInOfStatement6: 28291078 false) 
	#(230 7 #reduceActionForIfStatement1: 26844161 false) 
	#(247 2 #reduceActionForDefaultClause1: 31104001 false) 
	#(244 3 #reduceActionForCaseBlock2: 30740482 false) 
	#(245 2 #reduceActionForModuleItemList2: 30924802 false) 
	#(244 3 #reduceActionForCaseBlock3: 30740483 false) 
	#(254 3 #liftFirstValue: 31881218 false) 
	#(252 5 #reduceActionForCatch1: 31652865 false) 
	#(431 6 #reduceActionForEnumDeclaration4: 58099716 false) 
	#(478 1 #liftFirstValue: 67715075 false) 
	#(476 1 #reduceActionForModuleBody1: 67539970 false) 
	#(477 1 #reduceActionForModuleItemList1: 67588097 false) 
	#(478 1 #liftFirstValue: 67715073 false) 
	#(478 1 #liftFirstValue: 67715074 false) 
	#(486 6 #reduceActionForAmbientModuleDeclaration1: 69723137 false) 
	#(461 2 #reduceActionForModuleItemList2: 62559234 false) 
	#(482 5 #reduceActionForNamespaceDeclaration1: 68471809 false) 
	#(435 1 #liftFirstValue: 58490881 false) 
	#(434 3 #reduceActionForEnumMember2: 58385410 false) 
	#(433 3 #reduceActionForNamespaceName2: 58293250 false) 
	#(468 6 #reduceActionForExportListDeclaration2: 65837058 false) 
	#(468 6 #reduceActionForExportListDeclaration4: 65837060 false) 
	#(405 6 #reduceActionForTypeAliasDeclaration2: 51976194 false) 
	#(405 6 #reduceActionForTypeAliasDeclaration3: 51976195 false) 
	#(403 6 #reduceActionForIndexSignature2: 51582978 false) 
	#(403 6 #reduceActionForIndexSignature2: 51582977 false) 
	#(402 6 #reduceActionForConstructSignature4: 51390468 false) 
	#(390 7 #reduceActionForConstructorType2: 47890434 false) 
	#(273 7 #reduceActionForMethodDefinition5: 33732613 false) 
	#(273 7 #reduceActionForMethodDefinition1: 33732609 false) 
	#(273 7 #reduceActionForMethodDefinition8: 33732616 false) 
	#(423 4 #reduceActionForCallSignature2: 56681474 false) 
	#(422 6 #reduceActionForConstructorDeclaration1: 56216577 false) 
	#(428 6 #reduceActionForMemberFunctionDeclaration12: 57274380 false) 
	#(425 6 #reduceActionForMemberVariableDeclaration5: 56948741 false) 
	#(425 6 #reduceActionForMemberVariableDeclaration2: 56948738 false) 
	#(425 6 #reduceActionForMemberVariableDeclaration3: 56948739 false) 
	#(428 6 #reduceActionForMemberFunctionDeclaration1: 57274369 false) 
	#(428 6 #reduceActionForMemberFunctionDeclaration14: 57274382 false) 
	#(428 6 #reduceActionForMemberFunctionDeclaration15: 57274383 false) 
	#(425 6 #reduceActionForMemberVariableDeclaration9: 56948745 false) 
	#(261 7 #reduceActionForFunctionExpression1: 32502785 false) 
	#(289 7 #reduceActionForClassDeclaration8: 37007368 false) 
	#(261 7 #reduceActionForFunctionExpression4: 32502788 false) 
	#(285 8 #reduceActionForAsyncFunctionExpression1: 36374529 false) 
	#(283 1 #reduceActionForModuleBody1: 36064257 false) 
	#(276 8 #reduceActionForGeneratorExpression1: 34637825 false) 
	#(262 8 #reduceActionForFunctionExpression2: 32714754 false) 
	#(335 5 #reduceActionForJSXClosingElement1: 42739713 false) 
	#(352 5 #reduceActionForJSXChild4: 44267524 false) 
	#(345 5 #reduceActionForJSXSpreadAttribute1: 43607041 false) 
	#(234 8 #reduceActionForForStatement4: 27570180 false) 
	#(234 8 #reduceActionForForStatement9: 27570185 false) 
	#(235 8 #reduceActionForForInOfStatement2: 28291074 false) 
	#(235 8 #reduceActionForForInOfStatement5: 28291077 false) 
	#(234 8 #reduceActionForForStatement6: 27570182 false) 
	#(234 8 #reduceActionForForStatement7: 27570183 false) 
	#(234 8 #reduceActionForForStatement16: 27570192 false) 
	#(235 8 #reduceActionForForInOfStatement7: 28291079 false) 
	#(235 8 #reduceActionForForInOfStatement9: 28291081 false) 
	#(246 3 #reduceActionForCaseClause1: 30997505 false) 
	#(247 3 #reduceActionForDefaultClause2: 31104002 false) 
	#(244 4 #reduceActionForCaseBlock5: 30740485 false) 
	#(244 4 #reduceActionForCaseBlock4: 30740484 false) 
	#(475 6 #reduceActionForAmbientClassDeclaration1: 67334145 false) 
	#(477 2 #reduceActionForModuleItemList2: 67588098 false) 
	#(405 7 #reduceActionForTypeAliasDeclaration4: 51976196 false) 
	#(277 8 #reduceActionForGeneratorMethod1: 34873345 false) 
	#(286 8 #reduceActionForAsyncMethod1: 36647937 false) 
	#(273 8 #reduceActionForMethodDefinition6: 33732614 false) 
	#(428 7 #reduceActionForMemberFunctionDeclaration2: 57274370 false) 
	#(425 7 #reduceActionForMemberVariableDeclaration6: 56948742 false) 
	#(425 7 #reduceActionForMemberVariableDeclaration7: 56948743 false) 
	#(428 7 #reduceActionForMemberFunctionDeclaration3: 57274371 false) 
	#(425 7 #reduceActionForMemberVariableDeclaration4: 56948740 false) 
	#(422 7 #reduceActionForConstructorDeclaration2: 56216578 false) 
	#(428 7 #reduceActionForMemberFunctionDeclaration16: 57274384 false) 
	#(425 7 #reduceActionForMemberVariableDeclaration13: 56948749 false) 
	#(425 7 #reduceActionForMemberVariableDeclaration10: 56948746 false) 
	#(425 7 #reduceActionForMemberVariableDeclaration11: 56948747 false) 
	#(428 7 #reduceActionForMemberFunctionDeclaration5: 57274373 false) 
	#(284 8 #reduceActionForAsyncFunctionExpression1: 36101121 false) 
	#(275 8 #reduceActionForGeneratorExpression1: 34401281 false) 
	#(261 8 #reduceActionForFunctionExpression2: 32502786 false) 
	#(281 9 #reduceActionForAsyncGeneratorExpression1: 35532801 false) 
	#(285 9 #reduceActionForAsyncFunctionExpression3: 36374531 false) 
	#(276 9 #reduceActionForGeneratorExpression2: 34637826 false) 
	#(336 9 #reduceActionForJSXFragment1: 42900481 false) 
	#(335 6 #reduceActionForJSXClosingElement2: 42739714 false) 
	#(234 9 #reduceActionForForStatement10: 27570186 false) 
	#(234 9 #reduceActionForForStatement11: 27570187 false) 
	#(234 9 #reduceActionForForStatement8: 27570184 false) 
	#(235 9 #reduceActionForForInOfStatement8: 28291080 false) 
	#(246 4 #reduceActionForCaseClause2: 30997506 false) 
	#(244 5 #reduceActionForCaseBlock6: 30740486 false) 
	#(480 3 #reduceActionForAmbientPropertyMemberDeclaration1: 68069377 false) 
	#(480 3 #reduceActionForAmbientPropertyMemberDeclaration9: 68069385 false) 
	#(475 7 #reduceActionForAmbientClassDeclaration2: 67334146 false) 
	#(463 8 #reduceActionForImportRequireDeclaration1: 62926849 false) 
	#(282 9 #reduceActionForAsyncGeneratorMethod1: 35807233 false) 
	#(407 9 #reduceActionForGetAccessor1: 52952065 false) 
	#(408 9 #reduceActionForSetAccessor2: 53157890 false) 
	#(428 8 #reduceActionForMemberFunctionDeclaration4: 57274372 false) 
	#(425 8 #reduceActionForMemberVariableDeclaration8: 56948744 false) 
	#(428 8 #reduceActionForMemberFunctionDeclaration6: 57274374 false) 
	#(425 8 #reduceActionForMemberVariableDeclaration14: 56948750 false) 
	#(425 8 #reduceActionForMemberVariableDeclaration15: 56948751 false) 
	#(428 8 #reduceActionForMemberFunctionDeclaration7: 57274375 false) 
	#(425 8 #reduceActionForMemberVariableDeclaration12: 56948748 false) 
	#(280 9 #reduceActionForAsyncGeneratorExpression1: 35257345 false) 
	#(284 9 #reduceActionForAsyncFunctionExpression3: 36101123 false) 
	#(275 9 #reduceActionForGeneratorExpression2: 34401282 false) 
	#(285 10 #reduceActionForAsyncFunctionExpression2: 36374530 false) 
	#(281 10 #reduceActionForAsyncGeneratorExpression2: 35532802 false) 
	#(349 5 #reduceActionForJSXChild4: 44004354 false) 
	#(234 10 #reduceActionForForStatement12: 27570188 false) 
	#(480 4 #reduceActionForAmbientPropertyMemberDeclaration3: 68069379 false) 
	#(480 4 #reduceActionForAmbientPropertyMemberDeclaration10: 68069386 false) 
	#(480 4 #reduceActionForAmbientPropertyMemberDeclaration2: 68069378 false) 
	#(480 4 #reduceActionForAmbientPropertyMemberDeclaration5: 68069381 false) 
	#(480 4 #reduceActionForAmbientPropertyMemberDeclaration11: 68069387 false) 
	#(286 10 #reduceActionForAsyncMethod2: 36647938 false) 
	#(408 10 #reduceActionForSetAccessor1: 53157889 false) 
	#(408 10 #reduceActionForSetAccessor1: 53157891 false) 
	#(428 9 #reduceActionForMemberFunctionDeclaration8: 57274376 false) 
	#(425 9 #reduceActionForMemberVariableDeclaration16: 56948752 false) 
	#(284 10 #reduceActionForAsyncFunctionExpression2: 36101122 false) 
	#(280 10 #reduceActionForAsyncGeneratorExpression2: 35257346 false) 
	#(285 11 #reduceActionForAsyncFunctionExpression4: 36374532 false) 
	#(479 5 #reduceActionForAmbientConstructorDeclaration1: 67827713 false) 
	#(480 5 #reduceActionForAmbientPropertyMemberDeclaration4: 68069380 false) 
	#(480 5 #reduceActionForAmbientPropertyMemberDeclaration7: 68069383 false) 
	#(480 5 #reduceActionForAmbientPropertyMemberDeclaration12: 68069388 false) 
	#(480 5 #reduceActionForAmbientPropertyMemberDeclaration6: 68069382 false) 
	#(284 11 #reduceActionForAsyncFunctionExpression4: 36101124 false) 
	#(479 6 #reduceActionForAmbientConstructorDeclaration2: 67827714 false) 
	#(480 6 #reduceActionForAmbientPropertyMemberDeclaration8: 68069384 false)
	).
]

{ #category : #'generated-accessing' }
JSParser class >> scannerClass [
	^JSScanner
]

{ #category : #generated }
JSParser class >> startingStateForClassElement [
	^ 8
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<global>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'DecoratorExpression ''decorator''*' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementNameWithSemicolonCheck' 'CheckSemicolon' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'BindingModifier*' 'BindingModifier' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'AsExpression' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'Initializer?' 'NullableIndicator' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'SourceFileElement ''element''*' 'SourceFileElement' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #OrderedCollection #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode nil #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #SmaCCToken #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSAsExpressionNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #OrderedCollection #SmaCCToken #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #JSProgramNode #JSProgramNode #Object #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 41 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 0 53 0 141 0 85 0 208 0 61 0 209 0 85 0 210 0 69 0 211 0 53 1 50 0 77 1 51 0 81 1 52 0 85 1 53 0 85 1 55 0 85 1 65 0 11 1 234 0 10 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 1 117 0 197 1 117 0 198 1 117 0 200 1 1 1 6 1 117 1 9 1 129 1 10 1 133 1 11 1 137 1 14 1 117 1 15 1 1 1 20 1 117 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 2 33 0 201 2 33 0 204 2 33 0 205 2 33 0 206 2 33 0 214 2 33 0 228 2 33 0 229 2 33 0 230 2 33 0 231 2 33 0 232 2 33 0 233 2 33 0 234 2 33 0 235 2 33 0 238 2 33 0 239 2 33 0 241 2 33 0 242 2 33 0 243 2 33 0 248 2 33 0 250 2 33 0 251 2 33 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 2 121 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 2 129 1 48 2 133 1 49 0 6 1 234 0 26 1 235] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 41 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 0 85 0 208 0 61 0 209 0 85 0 210 0 69 0 211 2 137 1 50 0 77 1 51 0 81 1 52 0 85 1 53 0 85 1 55 0 85 1 65 0 11 1 234 0 10 1 235] 
#[1 0 30 0 1 0 30 0 2 0 30 0 4 0 30 0 6 0 30 0 8 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 39 0 30 0 52 0 30 0 56 0 30 0 57 0 30 0 58 0 30 0 61 0 30 0 62 0 30 0 63 0 30 0 65 0 30 0 66 0 30 0 67 0 30 0 69 0 30 0 70 0 30 0 72 0 30 0 73 0 30 0 75 0 30 0 77 0 30 0 79 0 30 0 82 0 30 0 83 0 30 0 88 0 30 0 90 0 30 0 93 0 30 0 94 0 30 0 95 0 30 0 103 0 30 0 107 0 30 0 108 0 30 0 110 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 115 0 30 0 116 0 30 0 117 0 30 0 118 0 30 0 119 0 30 0 120 0 30 0 125 0 30 0 127 0 30 0 129 0 30 0 130 0 30 0 131 0 30 0 133 0 30 0 134 0 30 0 137 2 141 1 188 2 145 1 189 0 30 1 234 0 30 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 2 205 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 2 205 1 133 2 205 1 134 2 221 1 135 2 221 1 137] 
#[1 3 33 0 8 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 3 53 0 105 3 57 0 125 3 61 0 127 3 81 1 17 3 81 1 21 3 81 1 26 3 81 1 30 3 81 1 40 3 85 1 41 3 89 1 42 3 93 1 44 3 81 1 45 3 81 1 151 3 81 1 152 3 109 1 234] 
#[0 0 34 0 4 0 6 0 125 1 234] 
#[1 0 38 0 1 3 113 0 4 3 117 0 26 3 121 0 56 0 38 0 61 0 38 0 62 0 69 0 63 3 125 0 68 3 129 0 79 0 69 0 90 2 13 0 116 3 133 0 202 3 133 0 203 3 133 0 210 0 69 0 211 3 145 0 214 3 133 1 5 3 133 1 19 3 133 1 24 3 133 1 28 3 133 1 33 3 169 1 34 3 173 1 66 3 177 1 67 3 181 1 234] 
#[1 3 185 0 4 3 189 0 26 0 193 0 125 3 213 0 129 3 201 0 142 3 197 1 56 3 201 1 57 3 205 1 58 3 209 1 59 3 213 1 63 3 201 1 64 3 213 1 73 3 225 1 234] 
#[0 0 42 0 4 0 6 0 125 1 234] 
#[0 0 0 1 235] 
#[0 0 46 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 3 229 0 201 3 229 0 204 3 229 0 205 3 229 0 206 3 229 0 214 3 229 0 228 3 229 0 229 3 229 0 230 3 229 0 231 3 229 0 232 3 229 0 233 3 229 0 234 3 229 0 235 3 229 0 238 3 229 0 239 3 229 0 241 3 229 0 242 3 229 0 243 3 229 0 248 3 229 0 250 3 229 0 251 3 229 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 0 50 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 3 241 0 142 3 245 0 212 3 249 0 213 3 253 0 217 3 253 0 218 3 253 0 219 3 249 1 157 3 249 1 158 4 17 1 234] 
#[0 0 54 1 235] 
#[0 0 58 1 235] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 41 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 7 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 4 21 0 208 0 61 0 209 4 21 0 210 0 69 0 211 4 21 1 53 4 21 1 55 4 21 1 65 0 11 1 234 0 62 1 235] 
#[0 0 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 0 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 0 74 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 25 0 73] 
#[1 0 101 0 2 0 78 0 3 0 23 0 4 4 29 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 4 33 0 121 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 4 37 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 4 41 0 197 4 41 0 198 4 41 0 200 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 4 61 1 0 4 65 1 1 4 69 1 2 4 73 1 3 4 77 1 4 1 1 1 6 4 41 1 9 1 129 1 10 1 133 1 11 1 137 1 14 4 41 1 15 1 1 1 20 4 41 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 81 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 4 85 0 7 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 4 89 0 121 4 93 0 122 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 4 97 0 148 4 101 0 149 4 105 0 150 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 4 109 0 197 4 109 0 198 1 1 1 6 4 109 1 9 1 129 1 10 1 133 1 11 1 137 1 14 4 109 1 15 1 1 1 20 4 109 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 129 0 180 4 129 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 129 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 137 0 180 4 137 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 137 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 141 0 180 4 141 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 141 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 145 0 180 4 145 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 145 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 149 0 180 4 149 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 149 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 153 0 180 4 153 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 153 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 157 0 2 4 161 0 79 0 193 0 125 4 165 0 142 4 169 1 10 1 133 1 11 1 137 1 14 4 173 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 177 0 180 4 177 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 177 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 181 0 4 4 185 0 74 0 193 0 125 4 189 0 142 4 193 1 36 4 197 1 37 4 201 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 4 205 0 180 4 205 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 4 205 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 4 209 0 2 4 213 0 26 0 193 0 125 4 217 0 142] 
#[1 4 221 0 2 4 225 0 22] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 4 229 0 22 4 117 0 56 0 141 0 61 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 4 233 0 142 4 233 0 144 4 233 0 145 4 233 0 146 4 233 0 147 4 233 0 151 0 245 0 152 4 233 0 160 0 253 0 161 4 233 0 164 4 233 0 165 4 233 0 166 4 233 0 167 4 233 0 168 4 237 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 241 0 179 4 233 1 6 4 233 1 20 4 233 1 25 4 233 1 29 4 233 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 4 233 1 75 4 233 1 76 4 233 1 77 1 201 1 78 4 233 1 80 1 209 1 98 4 245 1 234] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 4 249 0 2 4 253 0 6 5 1 0 22 5 5 0 173 5 9 1 234] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 5 13 0 180 5 13 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 5 13 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 5 17 0 180 5 17 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 5 17 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 0 101 0 2 0 98 0 3 0 14 0 4 0 98 0 5 0 105 0 6 0 98 0 7 0 98 0 8 5 21 0 26 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 98 0 122 0 98 0 123 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 98 0 135 0 98 0 136 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 5 25 0 197 5 25 0 198 1 1 1 6 5 25 1 9 1 129 1 10 1 133 1 11 1 137 1 14 5 25 1 15 1 1 1 20 5 25 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234 0 98 1 235] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 74 0 78 0 84 0 86 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 106 0 84] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 64 0 78 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 133 0 134 0 135 0 136 0 138 1 233 1 234 1 235] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 64 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 126 0 14 5 29 1 99] 
#[1 0 130 0 2 0 130 0 3 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 130 0 97 0 130 0 122 0 130 0 123 0 130 0 133 0 130 0 134 0 130 0 135 0 130 0 136 0 130 1 233 0 130 1 234 0 130 1 235] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 33 0 4] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 37 0 134] 
#[1 4 249 0 2 0 162 0 3 0 162 0 4 0 162 0 5 5 41 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 20 0 162 0 21 5 45 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 40 0 162 0 41 0 162 0 42 0 162 0 43 5 49 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 53 0 162 0 54 0 162 0 84 0 162 0 87 0 162 0 97 0 162 0 122 0 162 0 123 0 213 0 133 0 18 0 134 0 162 0 135 0 162 0 136 5 53 0 160 0 253 0 161 5 57 0 173 5 61 0 176 0 162 1 233 0 27 1 234 0 162 1 235] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 182 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 135 0 136 1 233 1 234 1 235] 
#[1 4 249 0 2 0 186 0 3 0 186 0 4 0 186 0 5 5 65 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 20 0 186 0 21 5 69 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 40 0 186 0 41 0 186 0 42 0 186 0 43 5 49 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 49 0 186 0 50 0 186 0 51 0 186 0 53 0 186 0 54 0 186 0 84 0 186 0 87 0 186 0 97 0 186 0 122 0 186 0 123 0 213 0 133 0 18 0 134 0 186 0 135 0 186 0 136 5 73 0 160 0 253 0 161 5 77 0 173 5 81 0 176 0 186 1 233 0 31 1 234 0 186 1 235] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 17 0 198 0 18 0 198 0 20 0 198 0 21 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 5 49 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 84 0 198 0 87 0 198 0 97 0 198 0 122 0 198 0 123 0 198 0 135 0 198 0 136 5 85 0 176 0 198 1 233 0 198 1 234 0 198 1 235] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 5 157 0 10 0 202 0 11 0 202 0 12 5 157 0 13 0 202 0 14 0 202 0 15 5 157 0 16 5 157 0 17 0 202 0 18 0 202 0 20 0 202 0 21 5 157 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 5 157 0 28 5 157 0 29 5 157 0 30 5 157 0 31 5 157 0 32 5 157 0 33 5 157 0 34 0 202 0 35 5 137 0 36 0 202 0 37 5 141 0 38 0 202 0 40 0 202 0 41 5 157 0 42 0 202 0 43 0 202 0 45 5 157 0 46 0 202 0 47 0 202 0 48 0 202 0 49 5 157 0 50 0 202 0 51 0 202 0 53 0 202 0 54 0 202 0 84 0 202 0 87 0 202 0 122 0 202 0 123 0 202 0 135 0 202 0 136 5 157 0 199 5 157 1 233 5 165 1 234 0 202 1 235] 
#[0 0 206 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 0 210 0 3 0 210 0 5 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 11 0 210 0 12 0 210 0 14 0 210 0 15 0 210 0 18 0 210 0 20 0 210 0 21 0 210 0 24 0 210 0 25 0 210 0 26 5 169 0 27 0 210 0 35 0 210 0 37 0 210 0 40 0 210 0 41 0 210 0 43 0 210 0 45 0 210 0 47 0 210 0 48 0 210 0 49 0 210 0 51 0 210 0 53 0 210 0 54 0 210 0 84 0 210 0 87 0 210 0 122 0 210 0 123 0 210 0 135 0 210 0 136 0 210 1 235] 
#[0 0 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 0 218 0 3 0 218 0 5 0 218 0 7 0 218 0 8 5 185 0 9 0 218 0 11 0 218 0 12 0 218 0 14 0 218 0 15 0 218 0 18 0 218 0 20 0 218 0 21 0 218 0 24 0 218 0 25 5 185 0 26 0 218 0 35 0 218 0 37 0 218 0 40 0 218 0 41 0 218 0 43 0 218 0 45 5 185 0 47 0 218 0 48 0 218 0 49 0 218 0 51 0 218 0 53 0 218 0 54 0 218 0 84 0 218 0 87 0 218 0 122 0 218 0 123 0 218 0 135 0 218 0 136 5 185 0 184 0 218 1 235] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 11 0 222 0 12 0 222 0 14 0 222 0 15 0 222 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 5 189 0 35 5 193 0 37 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 48 0 222 0 49 0 222 0 51 0 222 0 53 0 222 0 54 0 222 0 84 0 222 0 87 0 222 0 122 0 222 0 123 0 222 0 135 0 222 0 136 0 222 1 235] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 0 226 0 11 5 197 0 12 0 226 0 14 5 201 0 15 5 205 0 18 0 226 0 20 0 226 0 21 0 226 0 24 0 226 0 25 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 48 0 226 0 49 0 226 0 51 0 226 0 53 0 226 0 54 0 226 0 84 0 226 0 87 0 226 0 122 0 226 0 123 0 226 0 135 0 226 0 136 0 226 1 235] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 5 209 0 11 5 213 0 14 5 217 0 20 5 221 0 21 0 230 0 24 0 230 0 25 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 48 0 230 0 49 0 230 0 51 0 230 0 53 0 230 0 54 5 225 0 84 5 229 0 87 0 230 0 122 0 230 0 123 0 230 0 135 0 230 0 136 0 230 1 235] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 5 233 0 24 5 237 0 25 0 234 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 48 0 234 0 49 0 234 0 51 5 241 0 53 5 245 0 54 0 234 0 122 0 234 0 123 0 234 0 135 0 234 0 136 0 234 1 235] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 5 249 0 40 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 48 0 238 0 49 0 238 0 51 0 238 0 122 0 238 0 123 0 238 0 135 0 238 0 136 0 238 1 235] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 0 242 0 45 0 242 0 48 0 242 0 49 5 253 0 51 0 242 0 122 0 242 0 123 0 242 0 135 0 242 0 136 0 242 1 235] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 43 0 250 0 45 6 1 0 48 0 246 0 49 0 246 0 122 0 246 0 123 0 246 0 135 0 246 0 136 0 246 1 235] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 6 5 0 41 0 254 0 43 0 254 0 49 0 254 0 122 0 254 0 123 0 254 0 135 0 254 0 136 0 254 1 235] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 43 6 9 0 49 1 2 0 122 1 2 0 123 1 2 0 135 1 2 0 136 1 2 1 235] 
#[1 1 6 0 3 1 6 0 5 1 6 0 7 1 6 0 8 1 6 0 43 1 10 0 45 1 6 0 122 1 6 0 123 1 6 0 135 1 6 0 136 1 6 1 235] 
#[0 6 13 0 45] 
#[1 1 14 0 3 1 14 0 5 1 14 0 7 1 14 0 8 6 17 0 43 1 14 0 122 1 14 0 123 1 14 0 135 1 14 0 136 1 14 1 235] 
#[0 1 18 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 1 22 0 3 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[1 6 21 0 122 0 0 1 235] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 30 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 6 25 0 19] 
#[0 1 34 0 19] 
#[0 1 38 0 19] 
#[0 1 42 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 50 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 62 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 6 29 0 84] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 233 1 234 1 235] 
#[1 1 98 0 4 1 98 0 137 1 98 0 139 6 33 1 100] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 6 37 0 137] 
#[1 1 106 0 3 1 106 0 5 1 106 0 7 1 106 0 8 1 106 0 9 1 106 0 11 1 106 0 12 1 106 0 14 1 106 0 15 1 106 0 18 1 106 0 20 1 106 0 21 1 106 0 24 1 106 0 25 1 106 0 26 1 106 0 27 1 106 0 35 1 106 0 37 1 106 0 40 1 106 0 41 1 106 0 43 1 106 0 45 1 106 0 47 1 106 0 48 1 106 0 49 1 106 0 51 1 106 0 53 1 106 0 54 1 106 0 84 1 106 0 87 1 106 0 122 1 106 0 123 1 106 0 135 1 106 0 136 6 41 1 234 1 106 1 235] 
#[1 6 45 0 2 6 49 0 11 6 53 0 79 6 57 1 104 6 61 1 150] 
#[1 0 6 0 2 0 6 0 4 6 65 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 69 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 0 6 1 234] 
#[0 1 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 6 73 0 8 1 114 0 125 6 77 0 240] 
#[1 6 81 0 8 1 114 0 125 6 85 0 240] 
#[0 6 89 0 8] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 6 93 0 201 6 93 0 204 6 93 0 205 6 93 0 206 6 93 0 214 6 93 0 228 6 93 0 229 6 93 0 230 6 93 0 231 6 93 0 232 6 93 0 233 6 93 0 234 6 93 0 235 6 93 0 238 6 93 0 239 6 93 0 241 6 93 0 242 6 93 0 243 6 93 0 248 6 93 0 250 6 93 0 251 6 93 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 6 97 0 2 6 101 0 57] 
#[0 6 105 0 2] 
#[1 1 114 0 2 1 114 0 4 1 114 0 6 6 109 0 8 1 114 0 35 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 52 1 114 0 56 1 114 0 57 1 114 0 61 1 114 0 69 1 114 0 75 1 114 0 79 1 114 0 83 1 114 0 94 1 114 0 95 1 114 0 107 1 114 0 110 1 114 0 112 1 114 0 115 1 114 0 117 1 114 0 120 1 114 0 125 1 114 0 127 1 114 0 129 1 114 0 130 1 114 0 131 1 114 0 133 1 114 0 134 1 114 0 137 6 113 0 240 1 114 1 234] 
#[0 6 117 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 6 121 0 197 6 121 0 198 6 121 0 200 1 1 1 6 6 121 1 9 1 129 1 10 1 133 1 11 1 137 1 14 6 121 1 15 1 1 1 20 6 121 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 1 221 0 4 6 125 0 206] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 6 129 0 142 6 133 0 215 6 137 0 216 6 141 0 217 6 141 0 218 6 141 0 219 6 145 1 234] 
#[0 6 149 0 2] 
#[0 6 153 0 2] 
#[1 0 102 0 2 0 102 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 102 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 38 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 53 0 102 0 54 0 102 0 84 0 102 0 87 0 102 0 122 6 157 0 123 0 102 0 133 0 102 0 134 0 102 1 233 0 102 1 234] 
#[1 6 161 0 8 6 21 0 122] 
#[0 0 0 1 235] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 1 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 165 0 208 0 61 0 209 6 165 0 210 0 69 0 211 0 6 1 234 1 202 1 235] 
#[0 1 206 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 0 0 1 235] 
#[0 1 210 1 235] 
#[0 0 0 1 235] 
#[0 0 0 1 235] 
#[1 0 38 0 1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 35 0 61 0 38 0 62 6 169 0 63 1 233 0 65 1 237 0 66 6 173 0 67 0 145 0 69 1 241 0 70 6 177 0 72 0 39 0 73 1 177 0 75 1 245 0 77 6 185 0 79 1 249 0 82 6 189 0 83 6 193 0 88 0 69 0 90 6 197 0 93 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 6 201 0 114 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 6 253 0 201 6 253 0 204 6 253 0 205 6 253 0 206 6 253 0 210 0 69 0 211 6 253 0 214 6 253 0 228 6 253 0 229 6 253 0 230 6 253 0 231 6 253 0 232 6 253 0 233 6 253 0 234 6 253 0 235 6 253 0 238 6 253 0 239 6 253 0 241 6 253 0 242 6 253 0 243 6 253 0 248 6 253 0 250 6 253 0 251 6 253 0 255 6 253 1 5 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 6 253 1 19 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 6 253 1 33 6 225 1 34 1 1 1 35 6 253 1 55 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 6 253 1 149 1 213 1 154 6 253 1 159 6 253 1 175 6 253 1 180 6 253 1 186 6 253 1 190 6 253 1 196 6 253 1 207 6 253 1 208 6 253 1 209 6 253 1 210 6 253 1 211 6 253 1 212 6 253 1 213 6 253 1 214 6 253 1 230 7 41 1 234 1 214 1 235] 
#[1 2 149 0 2 0 78 0 3 7 45 0 4 7 49 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 4 33 0 121 0 193 0 125 2 193 0 129 2 197 0 130 7 53 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 7 57 1 1 4 69 1 2 4 73 1 3 4 77 1 4 2 193 1 73 2 197 1 74 2 201 1 104 7 61 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 7 61 1 133 7 61 1 134 2 221 1 135 2 221 1 137 7 65 1 234] 
#[1 7 69 0 2 7 73 0 5 7 77 0 6 2 161 0 11 7 81 0 94 7 85 0 102 7 89 0 126 7 109 0 129 7 113 0 130 7 97 0 143 7 97 0 155 7 97 0 156 7 97 0 157 7 109 1 73 7 113 1 74 7 117 1 104 7 121 1 124 7 125 1 125 7 129 1 126 7 129 1 138 7 129 1 140 7 129 1 146 7 129 1 147 7 129 1 148] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 7 153 0 7 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 7 157 0 122 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 7 169 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 7 165 1 129 7 169 1 130 2 209 1 131 2 213 1 132 7 169 1 133 7 169 1 134 2 221 1 135 2 221 1 137] 
#[1 0 193 0 125 7 173 0 142 7 177 1 105 7 181 1 106] 
#[1 7 185 0 2 2 153 0 4 2 157 0 6 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 7 189 1 115 7 189 1 116 7 189 1 117 7 189 1 118 7 189 1 119 7 189 1 120 2 245 1 121 2 249 1 122 7 189 1 123 7 189 1 127 7 189 1 128 7 189 1 135 7 189 1 137] 
#[1 7 185 0 2 2 153 0 4 2 157 0 6 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 7 193 1 115 7 193 1 116 7 193 1 117 7 193 1 118 7 193 1 119 7 193 1 120 2 245 1 121 2 249 1 122 7 193 1 123 7 193 1 127 7 193 1 128 7 193 1 135 7 193 1 137] 
#[1 7 197 0 2 2 161 0 11 7 201 1 104] 
#[0 1 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 0 193 0 125 7 205 0 142 7 209 1 136] 
#[0 1 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 1 226 0 3 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 1 226 0 8 1 226 0 9 1 226 0 11 1 226 0 12 1 226 0 14 1 226 0 15 1 226 0 18 1 226 0 19 1 226 0 20 1 226 0 21 1 230 0 22 1 226 0 23 1 226 0 24 1 226 0 25 1 226 0 26 1 226 0 27 1 226 0 35 1 226 0 37 1 226 0 40 1 226 0 41 1 226 0 43 1 226 0 45 1 226 0 47 1 226 0 48 1 226 0 49 1 226 0 51 1 226 0 53 1 226 0 54 1 226 0 64 1 226 0 84 1 226 0 86 1 226 0 87 1 226 0 98 1 226 0 99 1 226 0 100 1 226 0 101 1 226 0 105 1 226 0 122 1 226 0 123 1 226 0 126 1 226 0 129 1 226 0 130 1 226 0 135 1 226 0 136 1 226 1 234 1 226 1 235] 
#[0 1 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 1 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 7 213 0 2] 
#[0 0 0 1 235] 
#[1 1 242 0 3 1 242 0 4 1 242 0 5 1 242 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 11 1 242 0 12 1 242 0 14 1 242 0 15 1 242 0 18 1 242 0 19 1 242 0 20 1 242 0 21 1 242 0 23 1 242 0 24 1 242 0 25 1 242 0 26 1 242 0 27 1 242 0 35 1 242 0 37 1 242 0 40 1 242 0 41 1 242 0 43 1 242 0 45 1 242 0 47 0 43 0 48 1 242 0 49 1 242 0 51 1 242 0 53 1 242 0 54 1 242 0 64 1 242 0 84 1 242 0 87 1 242 0 98 1 242 0 99 1 242 0 100 1 242 0 101 1 242 0 105 1 242 0 122 1 242 0 123 1 242 0 126 1 242 0 129 1 242 0 130 1 242 0 135 1 242 0 136 1 242 1 234 1 242 1 235] 
#[1 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 14 1 246 0 15 1 246 0 18 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 23 1 246 0 24 1 246 0 25 1 246 0 26 1 246 0 27 1 246 0 35 1 246 0 37 0 47 0 40 1 246 0 41 1 246 0 43 1 246 0 45 1 246 0 47 1 246 0 48 1 246 0 49 1 246 0 51 1 246 0 53 1 246 0 54 1 246 0 64 1 246 0 84 1 246 0 87 1 246 0 98 1 246 0 99 1 246 0 100 1 246 0 101 1 246 0 105 1 246 0 122 1 246 0 123 1 246 0 126 1 246 0 129 1 246 0 130 1 246 0 135 1 246 0 136 1 246 1 234 1 246 1 235] 
#[0 1 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 1 254 0 3 1 254 0 4 1 254 0 5 0 51 0 6 1 254 0 7 1 254 0 8 1 254 0 9 1 254 0 11 1 254 0 12 1 254 0 14 1 254 0 15 1 254 0 18 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 23 1 254 0 24 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 35 1 254 0 37 1 254 0 40 1 254 0 41 1 254 0 43 1 254 0 45 1 254 0 47 1 254 0 48 1 254 0 49 1 254 0 51 1 254 0 53 1 254 0 54 1 254 0 64 1 254 0 84 1 254 0 87 1 254 0 98 1 254 0 99 1 254 0 100 1 254 0 101 1 254 0 105 1 254 0 122 1 254 0 123 1 254 0 126 1 254 0 129 1 254 0 130 1 254 0 135 1 254 0 136 7 225 0 240 1 254 1 234 1 254 1 235] 
#[0 2 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 10 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 2 22 0 3 2 22 0 4 2 22 0 5 2 22 0 6 2 22 0 7 2 22 0 8 2 22 0 9 0 55 0 11 2 22 0 12 2 22 0 14 2 22 0 15 2 22 0 18 2 22 0 19 2 22 0 20 2 22 0 21 2 22 0 23 2 22 0 24 2 22 0 25 2 22 0 26 2 22 0 27 2 22 0 35 2 22 0 37 2 22 0 40 2 22 0 41 2 22 0 43 2 22 0 45 2 22 0 47 2 22 0 48 2 22 0 49 2 22 0 51 2 22 0 53 2 22 0 54 2 22 0 64 2 22 0 84 2 22 0 86 2 22 0 87 2 22 0 98 2 22 0 99 2 22 0 100 2 22 0 101 2 22 0 105 2 22 0 122 2 22 0 123 2 22 0 126 2 22 0 129 2 22 0 130 2 22 0 135 2 22 0 136 7 229 0 240 2 22 1 234 2 22 1 235] 
#[0 7 233 0 22] 
#[0 2 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 54 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 58 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 2 62 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 7 237 0 125 7 241 0 127 7 245 1 44] 
#[1 7 249 0 26 7 237 0 125 7 241 0 127 7 253 1 44] 
#[1 7 237 0 125 7 241 0 127 8 1 1 44] 
#[1 7 237 0 125 7 241 0 127 8 5 1 44] 
#[1 8 9 0 4 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 3 57 0 125 3 61 0 127 8 13 1 17 8 13 1 21 8 13 1 26 8 13 1 30 8 17 1 41 3 89 1 42 3 93 1 44 8 13 1 151 8 13 1 152 8 21 1 234] 
#[1 2 66 0 2 2 70 0 8 2 66 0 23 8 25 1 43] 
#[1 2 74 0 2 2 78 0 8 2 74 0 23] 
#[0 2 82 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 2 86 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 2 90 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 2 94 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 0 0 1 235] 
#[0 8 29 0 8] 
#[0 2 98 0 8] 
#[1 8 33 0 2 8 37 0 23 8 41 0 159] 
#[0 2 102 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 2 106 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 2 110 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[1 0 38 0 1 0 59 0 6 0 38 0 56 0 38 0 64 8 45 0 80 0 38 0 98 0 38 0 99 0 38 0 100 0 38 0 101 8 49 0 104 0 38 0 105 0 63 0 126 0 67 0 129 0 71 0 130 8 53 0 143 8 53 0 155 8 53 0 156 8 53 0 157 8 57 1 34 7 109 1 73 7 113 1 74 8 61 1 147 8 65 1 166 8 69 1 168 8 69 1 169 8 69 1 172 8 69 1 173 8 85 1 174 0 38 1 234] 
#[1 8 89 0 5 8 97 0 126 8 97 0 129 8 97 1 54 8 101 1 68 8 105 1 69 8 97 1 73] 
#[1 8 113 0 55 2 114 0 78] 
#[0 8 117 0 79] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 8 121 0 197 8 121 0 198 1 1 1 6 8 121 1 9 1 129 1 10 1 133 1 11 1 137 1 14 8 121 1 15 1 1 1 20 8 121 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 8 125 0 2 8 129 0 26 0 193 0 125 8 133 0 142] 
#[0 2 118 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 122 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 126 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 130 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 134 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 138 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 142 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 146 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 2 150 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 8 137 0 1 8 141 0 61 8 145 0 62 8 149 1 231] 
#[1 8 153 0 78 8 157 1 60] 
#[1 8 161 0 8 2 154 0 78] 
#[1 8 165 0 63 6 177 0 72 8 169 0 79 6 193 0 88 6 201 0 114 8 173 1 149 8 177 1 159 8 181 1 175] 
#[1 8 185 0 5 0 193 0 125 8 189 0 126 8 189 0 129 8 201 0 142 8 189 1 54 8 193 1 61 8 197 1 62 8 201 1 64 8 189 1 73 8 205 1 234] 
#[0 8 209 0 55] 
#[0 2 158 0 5 0 78 0 122] 
#[1 8 153 0 78 8 213 1 60] 
#[1 2 162 0 78 8 217 0 122] 
#[0 2 166 0 78] 
#[0 2 170 0 78] 
#[0 8 221 0 8] 
#[0 2 174 0 78 0 122] 
#[0 2 178 0 8] 
#[0 8 225 0 114] 
#[0 2 182 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 8 229 0 5 8 233 0 6 8 237 0 121 0 193 0 125 7 89 0 126 7 109 0 129 7 113 0 130 8 241 0 142 8 245 0 143 8 245 0 155 8 245 0 156 8 245 0 157 8 249 0 220 8 253 0 221 9 1 0 224 9 1 0 226 7 109 1 73 7 113 1 74 9 9 1 234] 
#[1 3 233 0 4 3 237 0 6 9 13 0 7 4 33 0 121 4 93 0 122 0 193 0 125 8 241 0 142 9 17 0 149 4 45 0 217 4 45 0 218 4 45 0 219 9 21 0 222 9 25 0 223 9 29 0 225 9 29 0 226 9 33 0 227 7 65 1 234] 
#[1 2 186 0 8 8 37 0 23 2 186 0 122 9 37 0 159] 
#[1 9 41 0 8 9 45 0 122] 
#[0 2 190 0 8 0 122] 
#[1 8 37 0 23 9 49 0 159] 
#[0 2 194 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 2 198 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 2 202 0 8 0 122] 
#[0 2 206 0 8 0 122] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 9 53 0 142 9 57 0 217 9 57 0 218 9 57 0 219] 
#[0 2 210 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 9 61 0 114] 
#[1 0 101 0 2 0 23 0 4 4 29 0 6 9 65 0 7 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 9 69 0 121 4 93 0 122 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 4 37 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 4 97 0 148 9 73 0 149 4 105 0 150 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 4 109 0 197 4 109 0 198 4 45 0 217 4 45 0 218 4 45 0 219 9 21 0 222 9 25 0 223 9 29 0 225 9 29 0 226 9 33 0 227 1 1 1 6 4 109 1 9 1 129 1 10 1 133 1 11 1 137 1 14 4 109 1 15 1 1 1 20 4 109 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 81 1 234] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 9 77 0 142 9 81 0 217 9 81 0 218 9 81 0 219] 
#[1 0 130 0 2 0 75 0 3 0 130 0 6 0 75 0 7 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 79 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 75 0 122 0 130 0 133 0 130 0 134 9 85 0 159 0 130 1 233 0 130 1 234] 
#[1 9 89 0 3 6 21 0 122] 
#[1 2 218 0 3 2 218 0 5 2 218 0 7 8 37 0 23 2 218 0 122 9 93 0 159] 
#[0 2 222 0 3 0 122] 
#[0 2 226 0 3 0 5 0 7 0 122] 
#[0 2 230 0 3] 
#[0 9 97 0 3] 
#[0 2 234 0 3] 
#[1 2 238 0 3 9 101 0 122] 
#[0 2 242 0 3] 
#[0 2 246 0 3 0 122] 
#[1 0 38 0 1 6 45 0 2 0 38 0 3 0 38 0 4 0 38 0 6 0 38 0 7 6 49 0 11 0 38 0 23 0 38 0 43 0 38 0 52 6 53 0 79 0 83 0 98 0 87 0 99 0 91 0 100 0 95 0 101 0 38 0 102 0 38 0 110 0 38 0 122 0 38 0 123 0 99 0 125 9 121 0 142 9 125 1 34 6 57 1 104 9 129 1 144 6 61 1 150] 
#[0 2 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 9 133 0 197 9 133 0 198 1 1 1 6 9 133 1 9 1 129 1 10 1 133 1 11 1 137 1 14 9 133 1 15 1 1 1 20 9 133 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 2 254 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 121 0 122 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[1 9 137 0 7 4 93 0 122 9 141 0 149] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 9 145 0 7 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 4 89 0 121 9 149 0 122 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 9 153 0 150 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 9 157 0 197 9 157 0 198 1 1 1 6 9 157 1 9 1 129 1 10 1 133 1 11 1 137 1 14 9 157 1 15 1 1 1 20 9 157 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 3 2 0 7 0 122] 
#[0 3 6 0 7 0 122] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 4 41 0 197 4 41 0 198 4 41 0 200 1 1 1 6 4 41 1 9 1 129 1 10 1 133 1 11 1 137 1 14 4 41 1 15 1 1 1 20 4 41 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 4 161 0 79] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 11 0 202 0 12 0 202 0 14 0 202 0 15 0 202 0 18 0 202 0 20 0 202 0 21 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 35 5 137 0 36 0 202 0 37 5 141 0 38 0 202 0 40 0 202 0 41 0 202 0 43 0 202 0 45 0 202 0 47 0 202 0 48 0 202 0 49 0 202 0 51 0 202 0 53 0 202 0 54 0 202 0 84 0 202 0 87 0 202 0 122 0 202 0 123 0 202 0 135 0 202 0 136 5 165 1 234 0 202 1 235] 
#[0 3 10 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 9 161 0 11 6 53 0 79] 
#[0 3 14 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 3 18 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 3 22 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 3 26 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 3 30 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 4 61 1 0 4 65 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 9 165 0 2 9 169 0 26 0 193 0 125 9 173 0 142] 
#[0 0 134 0 19] 
#[0 9 177 0 19] 
#[1 6 45 0 2 2 161 0 11 6 57 1 104 6 61 1 150] 
#[0 3 34 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 9 181 0 5 3 33 0 8 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 3 53 0 105 3 57 0 125 3 61 0 127 9 193 1 17 9 193 1 21 9 193 1 26 9 193 1 30 9 185 1 38 9 189 1 39 9 193 1 40 3 85 1 41 3 89 1 42 3 93 1 44 9 193 1 45 9 193 1 151 9 193 1 152 3 109 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 4 117 0 56 0 141 0 61 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 9 197 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 9 197 0 179 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 4 245 1 234] 
#[1 4 181 0 4 4 185 0 74 9 201 1 36 4 197 1 37 4 201 1 234] 
#[0 3 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 9 205 0 4] 
#[1 9 209 0 74 9 213 0 86 9 217 1 163 9 221 1 165] 
#[0 3 42 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 9 225 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 9 229 0 2 0 193 0 125 9 233 0 142] 
#[0 9 237 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 9 241 0 197 9 241 0 198 1 1 1 6 9 241 1 9 1 129 1 10 1 133 1 11 1 137 1 14 9 241 1 15 1 1 1 20 9 241 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 9 245 0 91] 
#[0 9 249 0 109] 
#[1 4 249 0 2 0 162 0 3 0 162 0 4 0 162 0 5 5 41 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 20 0 162 0 21 5 45 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 40 0 162 0 41 0 162 0 42 0 162 0 43 5 49 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 53 0 162 0 54 0 162 0 84 0 162 0 87 0 162 0 97 0 162 0 122 0 162 0 123 0 213 0 133 0 18 0 134 0 162 0 135 0 162 0 136 5 53 0 160 0 253 0 161 9 253 0 173 5 61 0 176 0 162 1 233 0 27 1 234 0 162 1 235] 
#[1 3 46 0 3 3 46 0 4 3 46 0 5 3 46 0 7 3 46 0 8 3 46 0 9 3 46 0 10 3 46 0 11 3 46 0 12 3 46 0 13 3 46 0 14 3 46 0 15 3 46 0 16 3 46 0 17 3 46 0 18 3 46 0 20 3 46 0 21 3 46 0 23 3 46 0 24 3 46 0 25 3 46 0 26 3 46 0 27 3 46 0 28 3 46 0 29 3 46 0 30 3 46 0 31 3 46 0 32 3 46 0 33 3 46 0 34 3 46 0 35 3 46 0 36 3 46 0 37 3 46 0 38 3 46 0 40 3 46 0 41 3 46 0 42 3 46 0 43 3 46 0 45 3 46 0 46 3 46 0 47 3 46 0 48 3 46 0 49 3 46 0 50 3 46 0 51 3 46 0 53 3 46 0 54 3 46 0 84 3 46 0 87 3 46 0 97 3 46 0 122 3 46 0 123 3 46 0 135 3 46 0 136 3 46 1 233 0 103 1 234 3 46 1 235] 
#[0 10 1 1 234] 
#[0 6 53 0 79] 
#[1 0 101 0 2 10 5 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 10 9 0 121 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 10 13 0 174 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 17 0 197 10 17 0 198 1 1 1 6 10 17 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 17 1 15 1 1 1 20 10 17 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 21 0 197 10 21 0 198 10 21 0 200 1 1 1 6 10 21 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 21 1 15 1 1 1 20 10 21 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 10 25 0 126] 
#[0 3 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 10 29 0 11 10 33 1 108] 
#[0 3 54 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 3 58 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 37 0 197 10 37 0 198 1 1 1 6 10 37 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 37 1 15 1 1 1 20 10 37 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 3 62 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 10 41 0 14] 
#[1 10 45 0 5 8 233 0 6 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 10 49 0 121 10 53 0 125 7 89 0 126 7 241 0 127 7 109 0 129 7 113 0 130 10 57 0 142 10 69 0 143 10 61 0 153 10 65 0 154 10 69 0 155 10 69 0 156 10 69 0 157 10 65 0 158 10 65 1 17 10 65 1 21 10 65 1 26 10 65 1 30 10 81 1 44 7 109 1 73 7 113 1 74 10 65 1 151 10 65 1 152 8 21 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 85 0 197 10 85 0 198 10 85 0 200 1 1 1 6 10 85 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 85 1 15 1 1 1 20 10 85 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 89 0 197 10 89 0 198 10 89 0 200 1 1 1 6 10 89 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 89 1 15 1 1 1 20 10 89 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 10 93 0 126 10 97 0 127] 
#[1 4 249 0 2 10 101 0 6 10 105 0 126 10 109 0 127 0 213 0 133 0 18 0 134 10 113 0 160 0 253 0 161 10 117 0 173 10 121 0 178 5 9 1 234] 
#[0 3 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 3 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 4 249 0 2 3 74 0 3 3 74 0 4 3 74 0 5 10 125 0 6 3 74 0 7 3 74 0 8 3 74 0 9 3 74 0 10 3 74 0 11 3 74 0 12 3 74 0 13 3 74 0 14 3 74 0 15 3 74 0 16 3 74 0 17 3 74 0 18 3 74 0 20 3 74 0 21 10 129 0 22 3 74 0 23 3 74 0 24 3 74 0 25 3 74 0 26 3 74 0 27 3 74 0 28 3 74 0 29 3 74 0 30 3 74 0 31 3 74 0 32 3 74 0 33 3 74 0 34 3 74 0 35 3 74 0 36 3 74 0 37 3 74 0 38 3 74 0 40 3 74 0 41 3 74 0 42 3 74 0 43 3 74 0 44 3 74 0 45 3 74 0 46 3 74 0 47 3 74 0 48 3 74 0 49 3 74 0 50 3 74 0 51 3 74 0 53 3 74 0 54 3 74 0 84 3 74 0 87 3 74 0 97 3 74 0 122 3 74 0 123 0 213 0 133 0 18 0 134 3 74 0 135 3 74 0 136 10 133 0 160 0 253 0 161 10 137 0 173 10 141 0 177 3 74 1 233 0 107 1 234 3 74 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 145 0 197 10 145 0 198 10 145 0 200 1 1 1 6 10 145 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 145 1 15 1 1 1 20 10 145 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 10 149 0 126 10 153 0 127] 
#[0 3 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 3 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 4 249 0 2 3 86 0 3 3 86 0 4 3 86 0 5 10 125 0 6 3 86 0 7 3 86 0 8 3 86 0 9 3 86 0 10 3 86 0 11 3 86 0 12 3 86 0 13 3 86 0 14 3 86 0 15 3 86 0 16 3 86 0 17 3 86 0 18 3 86 0 20 3 86 0 21 10 129 0 22 3 86 0 23 3 86 0 24 3 86 0 25 3 86 0 26 3 86 0 27 3 86 0 28 3 86 0 29 3 86 0 30 3 86 0 31 3 86 0 32 3 86 0 33 3 86 0 34 3 86 0 35 3 86 0 36 3 86 0 37 3 86 0 38 3 86 0 40 3 86 0 41 3 86 0 42 3 86 0 43 3 86 0 44 3 86 0 45 3 86 0 46 3 86 0 47 3 86 0 48 3 86 0 49 3 86 0 50 3 86 0 51 3 86 0 53 3 86 0 54 3 86 0 84 3 86 0 87 3 86 0 97 3 86 0 122 3 86 0 123 0 213 0 133 0 18 0 134 3 86 0 135 3 86 0 136 10 133 0 160 0 253 0 161 10 137 0 173 10 141 0 177 3 86 1 233 0 111 1 234 3 86 1 235] 
#[1 4 249 0 2 3 90 0 3 3 90 0 4 3 90 0 5 10 125 0 6 3 90 0 7 3 90 0 8 3 90 0 9 3 90 0 10 3 90 0 11 3 90 0 12 3 90 0 13 3 90 0 14 3 90 0 15 3 90 0 16 3 90 0 17 3 90 0 18 3 90 0 20 3 90 0 21 10 129 0 22 3 90 0 23 3 90 0 24 3 90 0 25 3 90 0 26 3 90 0 27 3 90 0 28 3 90 0 29 3 90 0 30 3 90 0 31 3 90 0 32 3 90 0 33 3 90 0 34 3 90 0 35 3 90 0 36 3 90 0 37 3 90 0 38 3 90 0 40 3 90 0 41 3 90 0 42 3 90 0 43 3 90 0 44 3 90 0 45 3 90 0 46 3 90 0 47 3 90 0 48 3 90 0 49 3 90 0 50 3 90 0 51 3 90 0 53 3 90 0 54 3 90 0 84 3 90 0 87 3 90 0 97 3 90 0 122 3 90 0 123 0 213 0 133 0 18 0 134 3 90 0 135 3 90 0 136 10 133 0 160 0 253 0 161 10 137 0 173 10 141 0 177 3 90 1 233 0 115 1 234 3 90 1 235] 
#[0 3 94 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 98 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 102 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 106 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 110 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 114 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 118 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 122 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 126 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 130 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 134 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 138 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 142 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 3 146 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 3 150 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 154 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 158 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 157 0 197 10 157 0 198 1 1 1 6 10 157 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 157 1 15 1 1 1 20 10 157 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 3 162 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[1 10 161 0 52 10 165 0 55] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 10 169 0 182 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[0 3 166 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 170 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 3 174 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 125 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 10 173 0 182 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 10 177 0 182 10 177 0 183 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 10 181 0 182 10 181 0 183 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 10 185 0 185 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 10 189 0 185 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 10 193 0 185 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 10 197 0 186 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 10 201 0 186 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 10 205 0 186 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 10 209 0 186 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 10 213 0 186 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 10 217 0 186 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 10 221 0 187 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 10 225 0 187 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 10 229 0 187 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 10 233 0 187 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 10 237 0 188 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 10 241 0 189 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 10 245 0 190 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 10 249 0 191 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 10 253 0 191 11 1 0 192 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 11 5 0 191 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 9 0 197 11 9 0 198 1 1 1 6 11 9 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 9 1 15 1 1 1 20 11 9 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 13 0 197 11 13 0 198 1 1 1 6 11 13 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 13 1 15 1 1 1 20 11 13 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 119 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 29 0 197 11 29 0 198 1 1 1 6 11 29 1 9 1 129 1 10 1 133 1 11 11 25 1 12 11 29 1 13 1 137 1 14 11 29 1 15 1 1 1 20 11 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 11 33 0 186 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[1 3 178 0 4 3 178 0 137 3 178 0 139 11 37 1 94 11 41 1 95] 
#[1 0 126 0 14 11 45 0 138 11 49 1 81 11 49 1 82 11 49 1 83 11 61 1 84 11 65 1 85 11 69 1 99] 
#[0 11 73 0 55] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 11 77 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 11 81 0 142 2 193 1 73 2 197 1 74 2 201 1 104 7 177 1 105 7 181 1 106 11 85 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 11 85 1 133 11 85 1 134 2 221 1 135 2 221 1 137] 
#[1 6 45 0 2 2 161 0 11 0 193 0 125 11 89 0 142 6 57 1 104 11 93 1 150] 
#[0 11 97 0 2] 
#[0 3 182 0 19] 
#[0 3 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 11 101 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 165 0 208 0 61 0 209 6 165 0 210 0 69 0 211 0 6 1 234] 
#[0 3 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 193 0 125 11 105 0 142] 
#[0 3 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 193 0 125 11 109 0 142] 
#[0 3 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 11 113 0 118] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 11 117 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 11 137 0 63 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 11 137 0 90 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 11 121 0 116 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 11 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 11 125 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 129 0 197 11 129 0 198 11 129 0 200 11 133 0 210 11 137 0 211 11 141 0 236 1 1 1 6 11 129 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 129 1 15 1 1 1 20 11 129 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 11 145 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 149 0 197 11 149 0 198 11 149 0 200 1 1 1 6 11 149 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 149 1 15 1 1 1 20 11 149 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 3 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 153 0 197 11 153 0 198 11 153 0 200 1 1 1 6 11 153 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 153 1 15 1 1 1 20 11 153 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 157 0 197 11 157 0 198 11 157 0 200 1 1 1 6 11 157 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 157 1 15 1 1 1 20 11 157 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 11 161 0 8 6 21 0 122] 
#[1 11 165 0 60 11 169 0 76 11 173 0 252 11 177 0 253] 
#[1 3 206 0 8 8 37 0 23 3 206 0 122 11 181 0 159] 
#[1 11 185 0 8 11 189 0 122] 
#[0 3 210 0 8 0 122] 
#[1 8 37 0 23 11 193 0 159] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 11 197 0 142 11 201 0 217 11 201 0 218 11 201 0 219 11 205 1 155 11 209 1 156] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 213 0 197 11 213 0 198 11 213 0 200 1 1 1 6 11 213 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 213 1 15 1 1 1 20 11 213 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 11 217 0 197 11 217 0 198 11 217 0 200 1 1 1 6 11 217 1 9 1 129 1 10 1 133 1 11 1 137 1 14 11 217 1 15 1 1 1 20 11 217 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 11 225 0 201 11 225 0 204 11 225 0 205 11 225 0 206 11 225 0 214 11 225 0 228 11 225 0 229 11 225 0 230 11 225 0 231 11 225 0 232 11 225 0 233 11 225 0 234 11 225 0 235 11 225 0 238 11 225 0 239 11 225 0 241 11 225 0 242 11 225 0 243 11 225 0 248 11 225 0 249 11 225 0 250 11 225 0 251 11 225 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 3 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 218 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 34 0 4 0 34 0 6 11 229 0 72 0 34 0 125 0 34 1 234] 
#[1 11 233 0 61 11 237 0 63 6 177 0 72 11 241 0 79 11 245 0 81 11 249 0 90 11 253 0 92 12 1 0 93 12 5 0 116 12 25 1 175 12 13 1 215 12 17 1 218 12 21 1 219 12 25 1 225 12 29 1 226] 
#[1 0 193 0 125 12 33 0 142] 
#[1 3 113 0 4 12 37 0 23 12 41 0 26 12 45 1 67 12 49 1 234] 
#[1 12 53 0 2 12 57 0 26 0 193 0 125 12 61 0 142] 
#[1 4 221 0 2 3 185 0 4 4 225 0 22 3 189 0 26 0 193 0 125 3 213 0 129 12 65 0 142 3 197 1 56 3 201 1 57 3 205 1 58 3 209 1 59 3 213 1 63 3 201 1 64 3 213 1 73 3 225 1 234] 
#[1 0 193 0 125 12 69 0 142] 
#[1 0 193 0 125 12 73 0 142 12 77 1 181] 
#[1 0 193 0 125 12 81 0 142] 
#[0 3 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 8 137 0 1 8 141 0 61 8 145 0 62 12 85 0 73 8 149 1 231] 
#[0 3 242 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 246 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 250 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 3 254 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 2 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 6 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 10 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 14 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 18 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 22 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 26 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 30 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 34 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 38 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 42 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 46 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 50 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 6 45 0 2 6 49 0 11 12 89 0 79 6 57 1 104 6 61 1 150] 
#[1 7 69 0 2 12 93 0 5 7 77 0 6 2 161 0 11 7 81 0 94 7 85 0 102 8 237 0 121 0 193 0 125 7 89 0 126 7 109 0 129 7 113 0 130 8 241 0 142 12 97 0 143 12 97 0 155 12 97 0 156 12 97 0 157 8 249 0 220 8 253 0 221 9 1 0 224 9 1 0 226 7 109 1 73 7 113 1 74 7 117 1 104 7 121 1 124 7 125 1 125 7 129 1 126 7 129 1 138 7 129 1 140 7 129 1 146 7 129 1 147 7 129 1 148 9 9 1 234] 
#[1 2 149 0 2 7 45 0 4 7 49 0 6 12 101 0 7 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 4 33 0 121 12 105 0 122 0 193 0 125 2 193 0 129 2 197 0 130 7 53 0 142 9 17 0 149 4 45 0 217 4 45 0 218 4 45 0 219 9 21 0 222 9 25 0 223 9 29 0 225 9 29 0 226 9 33 0 227 2 193 1 73 2 197 1 74 2 201 1 104 7 169 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 7 165 1 129 7 169 1 130 2 209 1 131 2 213 1 132 7 169 1 133 7 169 1 134 2 221 1 135 2 221 1 137 7 65 1 234] 
#[1 0 123 0 3 0 123 0 5 1 226 0 6 0 123 0 7 1 226 0 8 1 226 0 11 1 230 0 22 8 37 0 23 1 226 0 40 1 226 0 48 0 123 0 122 9 85 0 159] 
#[0 12 109 0 3] 
#[0 12 113 0 3] 
#[1 0 38 0 1 0 38 0 3 0 38 0 4 0 38 0 5 0 38 0 6 0 38 0 7 0 38 0 23 0 38 0 43 0 38 0 52 0 83 0 98 0 87 0 99 0 91 0 100 0 95 0 101 0 38 0 102 0 38 0 110 0 38 0 122 0 38 0 123 0 99 0 125 9 121 0 142 9 125 1 34 9 129 1 144] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 12 117 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 105 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 12 121 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 12 125 0 197 12 125 0 198 1 1 1 6 12 125 1 9 1 129 1 10 1 133 1 11 1 137 1 14 12 125 1 15 1 1 1 20 12 125 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 12 129 0 2 2 161 0 11 12 133 1 104] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 12 137 0 143 12 137 0 155 12 137 0 156 12 137 0 157 7 109 1 73 7 113 1 74] 
#[0 4 58 0 2 0 5 0 8 0 11 0 23 0 43 0 52 0 122 0 123] 
#[0 4 62 0 2 0 5 0 8 0 11 0 23 0 43 0 52 0 122 0 123] 
#[1 7 69 0 2 4 66 0 5 4 66 0 8 2 161 0 11 12 161 0 43 12 161 0 52 4 66 0 122 12 149 0 123 7 117 1 104 12 153 1 139 12 157 1 140 12 161 1 171] 
#[0 4 70 0 2 0 5 0 8 0 11 0 23 0 43 0 52 0 122 0 123] 
#[0 4 74 0 2 0 5 0 8 0 11 0 23 0 43 0 52 0 122 0 123] 
#[0 4 78 0 2 0 5 0 8 0 11 0 23 0 43 0 52 0 122 0 123] 
#[0 4 82 0 2 0 5 0 8 0 11 0 23 0 43 0 52 0 122 0 123] 
#[0 12 165 0 2] 
#[0 12 169 0 5] 
#[1 4 86 0 5 12 173 0 8 12 177 0 122] 
#[0 4 90 0 5 0 8 0 122] 
#[0 4 94 0 5 0 8 0 122] 
#[0 4 98 0 5 0 8 0 122] 
#[0 4 102 0 5 0 8 0 122] 
#[0 4 106 0 5 0 8 0 122] 
#[0 4 110 0 5 0 8 0 122] 
#[0 4 114 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 12 181 0 7] 
#[0 4 118 0 7 0 122] 
#[1 12 185 0 7 12 189 0 122] 
#[0 4 122 0 7 0 122] 
#[1 4 126 0 14 12 193 0 74 4 126 0 122 12 197 1 107] 
#[1 12 201 0 14 12 205 0 122] 
#[0 4 130 0 14 0 122] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 7 61 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 7 61 1 133 7 61 1 134 2 221 1 135 2 221 1 137] 
#[1 4 134 0 3 4 134 0 4 4 134 0 5 0 127 0 6 4 134 0 7 4 134 0 8 4 134 0 9 4 134 0 11 4 134 0 12 4 134 0 14 4 134 0 15 4 134 0 18 4 134 0 19 4 134 0 20 4 134 0 21 4 134 0 23 4 134 0 24 4 134 0 25 4 134 0 26 4 134 0 27 4 134 0 35 4 134 0 37 4 134 0 40 4 134 0 41 4 134 0 43 4 134 0 45 4 134 0 47 4 134 0 48 4 134 0 49 4 134 0 51 4 134 0 53 4 134 0 54 4 134 0 64 4 134 0 84 4 134 0 87 4 134 0 98 4 134 0 99 4 134 0 100 4 134 0 101 4 134 0 105 4 134 0 122 4 134 0 123 4 134 0 126 4 134 0 129 4 134 0 130 4 134 0 135 4 134 0 136 7 225 0 240 4 134 1 234 4 134 1 235] 
#[1 4 138 0 3 4 138 0 4 4 138 0 5 0 131 0 6 4 138 0 7 4 138 0 8 4 138 0 9 4 138 0 11 4 138 0 12 4 138 0 14 4 138 0 15 4 138 0 18 4 138 0 19 4 138 0 20 4 138 0 21 4 138 0 23 4 138 0 24 4 138 0 25 4 138 0 26 4 138 0 27 4 138 0 35 4 138 0 37 4 138 0 40 4 138 0 41 4 138 0 43 4 138 0 45 4 138 0 47 4 138 0 48 4 138 0 49 4 138 0 51 4 138 0 53 4 138 0 54 4 138 0 64 4 138 0 84 4 138 0 87 4 138 0 98 4 138 0 99 4 138 0 100 4 138 0 101 4 138 0 105 4 138 0 122 4 138 0 123 4 138 0 126 4 138 0 129 4 138 0 130 4 138 0 135 4 138 0 136 7 225 0 240 4 138 1 234 4 138 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 12 209 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 12 213 0 2] 
#[0 4 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 4 146 0 3 4 146 0 4 4 146 0 5 4 146 0 6 4 146 0 7 4 146 0 8 4 146 0 9 4 146 0 11 4 146 0 12 4 146 0 14 4 146 0 15 4 146 0 18 4 146 0 19 4 146 0 20 4 146 0 21 12 217 0 22 4 146 0 23 4 146 0 24 4 146 0 25 4 146 0 26 4 146 0 27 4 146 0 35 4 146 0 37 4 146 0 40 4 146 0 41 4 146 0 43 4 146 0 45 4 146 0 47 4 146 0 48 4 146 0 49 4 146 0 51 4 146 0 53 4 146 0 54 4 146 0 64 4 146 0 84 4 146 0 87 4 146 0 98 4 146 0 99 4 146 0 100 4 146 0 101 4 146 0 105 4 146 0 122 4 146 0 123 4 146 0 126 4 146 0 129 4 146 0 130 4 146 0 135 4 146 0 136 4 146 1 234 4 146 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 12 221 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 7 185 0 2 2 153 0 4 2 157 0 6 2 165 0 85 2 169 0 89 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 12 225 1 113 12 225 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 12 225 1 132 2 221 1 135 2 221 1 137] 
#[1 7 185 0 2 2 153 0 4 2 157 0 6 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 12 229 1 115 12 229 1 116 12 229 1 117 12 229 1 118 12 229 1 119 12 229 1 120 2 245 1 121 2 249 1 122 12 229 1 123 12 229 1 127 12 229 1 128 12 229 1 135 12 229 1 137] 
#[0 12 233 0 6] 
#[1 10 29 0 11 12 237 1 108] 
#[1 0 193 0 125 12 241 0 142] 
#[0 2 66 0 2] 
#[0 2 74 0 2] 
#[0 12 245 0 2] 
#[1 7 237 0 125 7 241 0 127 12 249 1 44] 
#[0 12 253 0 2] 
#[0 13 1 0 2] 
#[0 13 5 0 2] 
#[1 0 6 0 2 0 6 0 4 4 150 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 13 9 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 13 13 1 46 13 17 1 47 0 6 1 234] 
#[0 4 154 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 13 21 0 8] 
#[1 8 233 0 6 8 45 0 80 8 49 0 104 7 89 0 126 7 109 0 129 7 113 0 130 8 53 0 143 8 53 0 155 8 53 0 156 8 53 0 157 7 109 1 73 7 113 1 74] 
#[0 4 158 0 8] 
#[0 4 162 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 13 25 1 0 4 65 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 13 29 0 197 13 29 0 198 1 1 1 6 13 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 13 29 1 15 1 1 1 20 13 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 4 166 0 8] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 13 33 0 143 13 33 0 155 13 33 0 156 13 33 0 157 7 109 1 73 7 113 1 74] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 13 37 0 143 13 37 0 155 13 37 0 156 13 37 0 157 7 109 1 73 7 113 1 74] 
#[1 6 45 0 2 2 161 0 11 13 45 0 43 13 45 0 52 6 57 1 104 13 41 1 150 13 45 1 171] 
#[1 8 137 0 1 8 233 0 6 13 49 0 56 13 53 0 64 13 65 0 98 13 65 0 99 13 65 0 100 13 65 0 101 13 57 0 105 7 89 0 126 7 109 0 129 7 113 0 130 13 61 0 143 13 61 0 155 13 61 0 156 13 61 0 157 7 109 1 73 7 113 1 74 13 65 1 144 13 69 1 151 13 73 1 152 8 149 1 231 13 77 1 234] 
#[0 13 81 0 8] 
#[0 4 170 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 4 174 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 4 178 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 4 182 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 4 186 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 4 190 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 4 194 0 8 0 78] 
#[0 4 198 0 5 0 55 0 78 0 122] 
#[1 4 202 0 5 13 85 0 55 4 202 0 122] 
#[1 13 89 0 5 13 93 0 122] 
#[0 4 206 0 5 0 122] 
#[0 4 210 0 5 0 55 0 78 0 122] 
#[0 13 97 0 126 0 129 1 54 1 73] 
#[1 13 101 0 2 13 105 0 26 0 193 0 125 13 109 0 142] 
#[0 13 113 0 8] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 13 117 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 13 121 0 2 0 193 0 125 13 125 0 142] 
#[0 13 129 0 2] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 4 117 0 56 0 141 0 61 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 13 133 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 241 0 169 13 137 0 170 13 137 0 171 13 137 0 172 1 37 0 175 4 241 0 179 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 4 245 1 234] 
#[1 4 181 0 4 4 185 0 74 0 193 0 125 13 141 0 142 13 145 1 36 4 197 1 37 13 149 1 234] 
#[0 13 153 0 61] 
#[0 4 214 0 1 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 56 0 61 0 62 0 64 0 73 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 234] 
#[0 13 157 0 129 1 63 1 73] 
#[0 13 161 0 8] 
#[0 4 218 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 11 229 0 72] 
#[1 13 165 0 2 2 161 0 11 0 193 0 125 13 169 0 142 13 173 1 104 13 177 1 140 13 181 1 150] 
#[0 4 222 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 226 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 230 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 4 234 0 78] 
#[0 13 185 0 55] 
#[1 13 189 0 5 13 193 0 122] 
#[0 4 238 0 5 0 122] 
#[0 4 242 0 5 0 122] 
#[0 13 197 0 114] 
#[1 0 193 0 125 13 201 0 142 13 201 1 64] 
#[0 13 205 0 8] 
#[1 3 185 0 4 3 189 0 26 13 209 1 58 13 213 1 59] 
#[0 4 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 3 185 0 4 0 193 0 125 13 217 0 142 13 217 1 57 13 221 1 59 13 217 1 64] 
#[0 4 250 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 12 125 0 197 12 125 0 198 1 1 1 6 12 125 1 9 1 129 1 10 1 133 1 11 1 137 1 14 12 125 1 15 1 1 1 20 12 125 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 193 0 125 13 225 0 142] 
#[1 2 214 0 3 2 214 0 5 2 214 0 7 8 37 0 23 2 214 0 122 9 85 0 159] 
#[0 13 229 0 123] 
#[0 13 233 0 5] 
#[1 13 237 0 5 13 241 0 122] 
#[0 4 254 0 5 0 122] 
#[0 5 2 0 5 0 122] 
#[1 9 129 0 98 9 129 0 99 9 129 0 100 9 129 0 101 0 193 0 125 9 121 0 142 9 129 1 144] 
#[0 5 6 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[1 3 233 0 4 3 237 0 6 13 245 0 7 4 33 0 121 9 149 0 122 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 13 249 0 225 13 249 0 226 13 253 0 227 7 65 1 234] 
#[1 14 1 0 7 14 5 0 122] 
#[0 5 10 0 7 0 122] 
#[0 5 14 0 7 0 122] 
#[0 14 9 0 7] 
#[0 5 18 0 8 0 122] 
#[0 5 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 3 241 0 142 14 13 0 213 3 253 0 217 3 253 0 218 3 253 0 219 14 13 1 157 14 13 1 158 4 17 1 234] 
#[0 5 26 0 8 0 122] 
#[1 12 149 0 123 14 17 1 139] 
#[1 12 149 0 123 14 21 1 139] 
#[1 3 113 0 4 3 117 0 26 14 25 1 66 14 29 1 67] 
#[1 2 250 0 2 0 135 0 3 2 250 0 6 0 135 0 7 2 250 0 9 2 250 0 10 2 250 0 11 2 250 0 12 2 250 0 13 2 250 0 14 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 18 2 250 0 20 2 250 0 21 2 250 0 22 0 135 0 23 2 250 0 24 2 250 0 25 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 29 2 250 0 30 2 250 0 31 2 250 0 32 2 250 0 33 2 250 0 34 2 250 0 35 2 250 0 36 2 250 0 37 2 250 0 38 2 250 0 40 2 250 0 41 2 250 0 42 2 250 0 43 2 250 0 44 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 53 2 250 0 54 2 250 0 84 2 250 0 87 0 135 0 122 2 250 0 133 2 250 0 134 2 250 1 233 2 250 1 234] 
#[1 0 101 0 2 0 23 0 4 4 29 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 14 33 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 9 133 0 197 9 133 0 198 9 81 0 217 9 81 0 218 9 81 0 219 1 1 1 6 9 133 1 9 1 129 1 10 1 133 1 11 1 137 1 14 9 133 1 15 1 1 1 20 9 133 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 23 0 4 4 29 0 6 14 37 0 7 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 9 69 0 121 9 149 0 122 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 4 37 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 9 153 0 150 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 9 157 0 197 9 157 0 198 4 45 0 217 4 45 0 218 4 45 0 219 13 249 0 225 13 249 0 226 13 253 0 227 1 1 1 6 9 157 1 9 1 129 1 10 1 133 1 11 1 137 1 14 9 157 1 15 1 1 1 20 9 157 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 81 1 234] 
#[1 5 30 0 3 5 30 0 7 12 149 0 123 14 41 1 139] 
#[0 5 34 0 3 0 7] 
#[0 5 38 0 3 0 5 0 7 0 122] 
#[0 5 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 46 0 3 0 5 0 7 0 122] 
#[0 5 50 0 19] 
#[1 5 54 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 14 49 0 225 14 49 0 226 14 45 0 227 14 45 1 3 14 49 1 4 7 65 1 234] 
#[0 5 58 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 56 0 64 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 234] 
#[0 5 62 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 56 0 64 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 234] 
#[0 5 66 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 56 0 64 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 234] 
#[0 5 70 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 56 0 64 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 1 234] 
#[1 14 57 0 43 14 57 0 52 12 149 0 123 14 53 1 139 14 57 1 171] 
#[1 8 137 0 1 5 74 0 3 5 74 0 4 5 74 0 5 5 74 0 6 5 74 0 7 5 74 0 23 5 74 0 43 5 74 0 52 5 74 0 98 5 74 0 99 5 74 0 100 5 74 0 101 5 74 0 102 5 74 0 110 5 74 0 122 5 74 0 123 5 74 0 125 14 61 1 141 8 149 1 231] 
#[1 0 193 0 125 14 65 0 142] 
#[0 5 78 0 5 0 7 0 122] 
#[0 5 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 14 69 0 7 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 4 89 0 121 9 149 0 122 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 14 73 0 150 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 14 77 0 197 14 77 0 198 1 1 1 6 14 77 1 9 1 129 1 10 1 133 1 11 1 137 1 14 14 77 1 15 1 1 1 20 14 77 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 5 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 90 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 83 0 94 0 95 0 107 0 110 0 112 0 115 0 117 0 120 0 121 0 122 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 5 94 0 7 0 122] 
#[0 5 98 0 7 0 122] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 11 85 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 11 85 1 133 11 85 1 134 2 221 1 135 2 221 1 137] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 14 81 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 14 85 0 2 0 193 0 125 14 89 0 142] 
#[0 14 93 0 2] 
#[1 0 101 0 2 0 139 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 14 101 0 197 14 101 0 198 1 1 1 6 14 101 1 9 1 129 1 10 1 133 1 11 14 101 1 13 1 137 1 14 14 101 1 15 14 105 1 16 1 1 1 20 14 101 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 5 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 233 1 234 1 235] 
#[0 14 109 0 5] 
#[1 5 106 0 5 3 33 0 8 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 3 53 0 105 3 57 0 125 3 61 0 127 14 113 1 17 14 113 1 21 14 113 1 26 14 113 1 30 14 113 1 40 3 85 1 41 3 89 1 42 3 93 1 44 14 113 1 45 14 113 1 151 14 113 1 152 3 109 1 234] 
#[0 5 110 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234] 
#[1 5 114 0 4 10 1 1 234] 
#[0 5 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 14 117 0 5 3 33 0 8 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 3 53 0 105 3 57 0 125 3 61 0 127 9 193 1 17 9 193 1 21 9 193 1 26 9 193 1 30 14 121 1 38 9 189 1 39 9 193 1 40 3 85 1 41 3 89 1 42 3 93 1 44 9 193 1 45 9 193 1 151 9 193 1 152 3 109 1 234] 
#[1 0 193 0 125 2 189 0 142 14 129 1 120 2 245 1 121 2 249 1 122 14 129 1 164] 
#[1 0 193 0 125 2 189 0 142 14 141 1 120 2 245 1 121 2 249 1 122 14 137 1 161 14 141 1 162] 
#[1 5 122 0 4 9 213 0 86 14 145 1 165] 
#[0 5 126 0 4] 
#[0 14 149 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 14 153 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 14 157 0 2] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 14 161 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 14 165 0 3] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 143 0 2 5 138 0 3 5 138 0 4 5 138 0 5 0 143 0 6 5 138 0 7 5 138 0 8 5 138 0 9 5 138 0 10 5 138 0 11 5 138 0 12 5 138 0 13 5 138 0 14 5 138 0 15 5 138 0 16 5 138 0 17 5 138 0 18 5 138 0 20 5 138 0 21 0 143 0 22 5 138 0 23 5 138 0 24 5 138 0 25 5 138 0 26 5 138 0 27 5 138 0 28 5 138 0 29 5 138 0 30 5 138 0 31 5 138 0 32 5 138 0 33 5 138 0 34 5 138 0 35 5 138 0 36 5 138 0 37 5 138 0 38 5 138 0 40 5 138 0 41 5 138 0 42 5 138 0 43 0 143 0 44 5 138 0 45 5 138 0 46 5 138 0 47 5 138 0 48 5 138 0 49 5 138 0 50 5 138 0 51 5 138 0 53 5 138 0 54 5 138 0 84 5 138 0 87 5 138 0 97 5 138 0 122 5 138 0 123 0 143 0 133 0 143 0 134 5 138 0 135 5 138 0 136 5 138 1 233 0 143 1 234 5 138 1 235] 
#[0 10 161 0 52] 
#[0 5 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 14 169 0 197 14 169 0 198 1 1 1 6 14 169 1 9 1 129 1 10 1 133 1 11 1 137 1 14 14 169 1 15 1 1 1 20 14 169 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 14 173 0 3 14 177 0 122] 
#[0 5 146 0 3 0 122] 
#[1 14 181 0 7 6 21 0 122] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 14 185 1 109 14 189 1 110 14 189 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 14 189 1 133 14 189 1 134 2 221 1 135 2 221 1 137] 
#[0 14 197 0 2] 
#[0 5 154 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[1 1 98 0 4 1 98 0 137 1 98 0 139 14 201 1 100] 
#[0 5 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 14 205 0 197 14 205 0 198 1 1 1 6 14 205 1 9 1 129 1 10 1 133 1 11 1 137 1 14 14 205 1 15 1 1 1 20 14 205 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 2 66 0 2 0 102 0 5 0 102 0 23 0 102 0 122] 
#[1 5 162 0 5 8 37 0 23 5 162 0 122 14 209 0 159] 
#[1 14 213 0 5 14 217 0 122] 
#[0 5 166 0 5 0 122] 
#[0 14 221 0 123] 
#[0 5 170 0 5 0 122] 
#[0 5 174 0 5 0 122] 
#[0 8 33 0 2] 
#[1 6 21 0 122 14 225 0 135 14 229 0 136 14 233 0 162 14 237 0 163] 
#[1 14 241 0 7 6 21 0 122] 
#[0 5 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 14 245 0 197 14 245 0 198 14 245 0 200 1 1 1 6 14 245 1 9 1 129 1 10 1 133 1 11 1 137 1 14 14 245 1 15 1 1 1 20 14 245 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 5 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 14 249 0 197 14 249 0 198 14 249 0 200 1 1 1 6 14 249 1 9 1 129 1 10 1 133 1 11 1 137 1 14 14 249 1 15 1 1 1 20 14 249 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 14 253 0 126 15 1 0 127] 
#[0 5 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 15 5 0 7 6 21 0 122] 
#[0 5 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 5 226 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 5 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 15 9 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 15 9 1 133 15 9 1 134 2 221 1 135 2 221 1 137] 
#[0 5 234 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[0 5 238 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 5 242 0 3 5 242 0 5 5 242 0 7 5 242 0 8 5 185 0 9 5 242 0 11 5 242 0 12 5 242 0 14 5 242 0 15 5 242 0 18 5 242 0 20 5 242 0 21 5 242 0 24 5 242 0 25 5 185 0 26 5 242 0 35 5 242 0 37 5 242 0 40 5 242 0 41 5 242 0 43 5 242 0 45 5 185 0 47 5 242 0 48 5 242 0 49 5 242 0 51 5 242 0 53 5 242 0 54 5 242 0 84 5 242 0 87 5 242 0 122 5 242 0 123 5 242 0 135 5 242 0 136 5 185 0 184 5 242 1 235] 
#[1 5 246 0 3 5 246 0 5 5 246 0 7 5 246 0 8 5 185 0 9 5 246 0 11 5 246 0 12 5 246 0 14 5 246 0 15 5 246 0 18 5 246 0 20 5 246 0 21 5 246 0 24 5 246 0 25 5 185 0 26 5 246 0 35 5 246 0 37 5 246 0 40 5 246 0 41 5 246 0 43 5 246 0 45 5 185 0 47 5 246 0 48 5 246 0 49 5 246 0 51 5 246 0 53 5 246 0 54 5 246 0 84 5 246 0 87 5 246 0 122 5 246 0 123 5 246 0 135 5 246 0 136 5 185 0 184 5 246 1 235] 
#[1 5 250 0 3 5 250 0 5 5 250 0 7 5 250 0 8 5 250 0 11 5 250 0 12 5 250 0 14 5 250 0 15 5 250 0 18 5 250 0 20 5 250 0 21 5 250 0 24 5 250 0 25 5 189 0 35 5 193 0 37 5 250 0 40 5 250 0 41 5 250 0 43 5 250 0 45 5 250 0 48 5 250 0 49 5 250 0 51 5 250 0 53 5 250 0 54 5 250 0 84 5 250 0 87 5 250 0 122 5 250 0 123 5 250 0 135 5 250 0 136 5 250 1 235] 
#[1 5 254 0 3 5 254 0 5 5 254 0 7 5 254 0 8 5 254 0 11 5 254 0 12 5 254 0 14 5 254 0 15 5 254 0 18 5 254 0 20 5 254 0 21 5 254 0 24 5 254 0 25 5 189 0 35 5 193 0 37 5 254 0 40 5 254 0 41 5 254 0 43 5 254 0 45 5 254 0 48 5 254 0 49 5 254 0 51 5 254 0 53 5 254 0 54 5 254 0 84 5 254 0 87 5 254 0 122 5 254 0 123 5 254 0 135 5 254 0 136 5 254 1 235] 
#[1 6 2 0 3 6 2 0 5 6 2 0 7 6 2 0 8 6 2 0 11 6 2 0 12 6 2 0 14 6 2 0 15 6 2 0 18 6 2 0 20 6 2 0 21 6 2 0 24 6 2 0 25 5 189 0 35 5 193 0 37 6 2 0 40 6 2 0 41 6 2 0 43 6 2 0 45 6 2 0 48 6 2 0 49 6 2 0 51 6 2 0 53 6 2 0 54 6 2 0 84 6 2 0 87 6 2 0 122 6 2 0 123 6 2 0 135 6 2 0 136 6 2 1 235] 
#[1 6 6 0 3 6 6 0 5 6 6 0 7 6 6 0 8 6 6 0 11 5 197 0 12 6 6 0 14 5 201 0 15 5 205 0 18 6 6 0 20 6 6 0 21 6 6 0 24 6 6 0 25 6 6 0 40 6 6 0 41 6 6 0 43 6 6 0 45 6 6 0 48 6 6 0 49 6 6 0 51 6 6 0 53 6 6 0 54 6 6 0 84 6 6 0 87 6 6 0 122 6 6 0 123 6 6 0 135 6 6 0 136 6 6 1 235] 
#[1 6 10 0 3 6 10 0 5 6 10 0 7 6 10 0 8 6 10 0 11 5 197 0 12 6 10 0 14 5 201 0 15 5 205 0 18 6 10 0 20 6 10 0 21 6 10 0 24 6 10 0 25 6 10 0 40 6 10 0 41 6 10 0 43 6 10 0 45 6 10 0 48 6 10 0 49 6 10 0 51 6 10 0 53 6 10 0 54 6 10 0 84 6 10 0 87 6 10 0 122 6 10 0 123 6 10 0 135 6 10 0 136 6 10 1 235] 
#[1 6 14 0 3 6 14 0 5 6 14 0 7 6 14 0 8 6 14 0 11 5 197 0 12 6 14 0 14 5 201 0 15 5 205 0 18 6 14 0 20 6 14 0 21 6 14 0 24 6 14 0 25 6 14 0 40 6 14 0 41 6 14 0 43 6 14 0 45 6 14 0 48 6 14 0 49 6 14 0 51 6 14 0 53 6 14 0 54 6 14 0 84 6 14 0 87 6 14 0 122 6 14 0 123 6 14 0 135 6 14 0 136 6 14 1 235] 
#[1 6 18 0 3 6 18 0 5 6 18 0 7 6 18 0 8 6 18 0 11 5 197 0 12 6 18 0 14 5 201 0 15 5 205 0 18 6 18 0 20 6 18 0 21 6 18 0 24 6 18 0 25 6 18 0 40 6 18 0 41 6 18 0 43 6 18 0 45 6 18 0 48 6 18 0 49 6 18 0 51 6 18 0 53 6 18 0 54 6 18 0 84 6 18 0 87 6 18 0 122 6 18 0 123 6 18 0 135 6 18 0 136 6 18 1 235] 
#[1 6 22 0 3 6 22 0 5 6 22 0 7 6 22 0 8 6 22 0 11 5 197 0 12 6 22 0 14 5 201 0 15 5 205 0 18 6 22 0 20 6 22 0 21 6 22 0 24 6 22 0 25 6 22 0 40 6 22 0 41 6 22 0 43 6 22 0 45 6 22 0 48 6 22 0 49 6 22 0 51 6 22 0 53 6 22 0 54 6 22 0 84 6 22 0 87 6 22 0 122 6 22 0 123 6 22 0 135 6 22 0 136 6 22 1 235] 
#[1 6 26 0 3 6 26 0 5 6 26 0 7 6 26 0 8 6 26 0 11 5 197 0 12 6 26 0 14 5 201 0 15 5 205 0 18 6 26 0 20 6 26 0 21 6 26 0 24 6 26 0 25 6 26 0 40 6 26 0 41 6 26 0 43 6 26 0 45 6 26 0 48 6 26 0 49 6 26 0 51 6 26 0 53 6 26 0 54 6 26 0 84 6 26 0 87 6 26 0 122 6 26 0 123 6 26 0 135 6 26 0 136 6 26 1 235] 
#[1 6 30 0 3 6 30 0 5 6 30 0 7 6 30 0 8 5 209 0 11 5 213 0 14 5 217 0 20 5 221 0 21 6 30 0 24 6 30 0 25 6 30 0 40 6 30 0 41 6 30 0 43 6 30 0 45 6 30 0 48 6 30 0 49 6 30 0 51 6 30 0 53 6 30 0 54 5 225 0 84 5 229 0 87 6 30 0 122 6 30 0 123 6 30 0 135 6 30 0 136 6 30 1 235] 
#[1 6 34 0 3 6 34 0 5 6 34 0 7 6 34 0 8 5 209 0 11 5 213 0 14 5 217 0 20 5 221 0 21 6 34 0 24 6 34 0 25 6 34 0 40 6 34 0 41 6 34 0 43 6 34 0 45 6 34 0 48 6 34 0 49 6 34 0 51 6 34 0 53 6 34 0 54 5 225 0 84 5 229 0 87 6 34 0 122 6 34 0 123 6 34 0 135 6 34 0 136 6 34 1 235] 
#[1 6 38 0 3 6 38 0 5 6 38 0 7 6 38 0 8 5 209 0 11 5 213 0 14 5 217 0 20 5 221 0 21 6 38 0 24 6 38 0 25 6 38 0 40 6 38 0 41 6 38 0 43 6 38 0 45 6 38 0 48 6 38 0 49 6 38 0 51 6 38 0 53 6 38 0 54 5 225 0 84 5 229 0 87 6 38 0 122 6 38 0 123 6 38 0 135 6 38 0 136 6 38 1 235] 
#[1 6 42 0 3 6 42 0 5 6 42 0 7 6 42 0 8 5 209 0 11 5 213 0 14 5 217 0 20 5 221 0 21 6 42 0 24 6 42 0 25 6 42 0 40 6 42 0 41 6 42 0 43 6 42 0 45 6 42 0 48 6 42 0 49 6 42 0 51 6 42 0 53 6 42 0 54 5 225 0 84 5 229 0 87 6 42 0 122 6 42 0 123 6 42 0 135 6 42 0 136 6 42 1 235] 
#[1 6 46 0 3 6 46 0 5 6 46 0 7 6 46 0 8 5 233 0 24 5 237 0 25 6 46 0 40 6 46 0 41 6 46 0 43 6 46 0 45 6 46 0 48 6 46 0 49 6 46 0 51 5 241 0 53 5 245 0 54 6 46 0 122 6 46 0 123 6 46 0 135 6 46 0 136 6 46 1 235] 
#[1 6 50 0 3 6 50 0 5 6 50 0 7 6 50 0 8 5 249 0 40 6 50 0 41 6 50 0 43 6 50 0 45 6 50 0 48 6 50 0 49 6 50 0 51 6 50 0 122 6 50 0 123 6 50 0 135 6 50 0 136 6 50 1 235] 
#[1 6 54 0 3 6 54 0 5 6 54 0 7 6 54 0 8 6 54 0 41 6 54 0 43 6 54 0 45 6 54 0 48 6 54 0 49 5 253 0 51 6 54 0 122 6 54 0 123 6 54 0 135 6 54 0 136 6 54 1 235] 
#[1 6 58 0 3 6 58 0 5 6 58 0 7 6 58 0 8 6 58 0 41 6 58 0 43 6 1 0 48 6 58 0 49 6 58 0 122 6 58 0 123 6 58 0 135 6 58 0 136 6 58 1 235] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 43 6 1 0 48 0 246 0 49 0 246 0 122 0 246 0 123 0 246 0 135 0 246 0 136 0 246 1 235] 
#[1 6 62 0 3 6 62 0 5 6 62 0 7 6 62 0 8 6 5 0 41 6 62 0 43 6 62 0 49 6 62 0 122 6 62 0 123 6 62 0 135 6 62 0 136 6 62 1 235] 
#[1 6 66 0 3 6 66 0 5 6 66 0 7 6 66 0 8 6 66 0 43 6 66 0 45 6 1 0 48 6 66 0 122 6 66 0 123 6 66 0 135 6 66 0 136 6 66 1 235] 
#[0 15 13 0 123] 
#[0 6 70 0 3 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 15 21 1 7 15 25 1 8 0 6 1 234] 
#[0 6 78 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 6 82 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 6 86 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[1 6 90 0 3 6 90 0 5 6 90 0 7 6 90 0 8 6 90 0 11 5 197 0 12 6 90 0 14 5 201 0 15 5 205 0 18 6 90 0 20 6 90 0 21 6 90 0 24 6 90 0 25 6 90 0 40 6 90 0 41 6 90 0 43 6 90 0 45 6 90 0 48 6 90 0 49 6 90 0 51 6 90 0 53 6 90 0 54 6 90 0 84 6 90 0 87 6 90 0 122 6 90 0 123 6 90 0 135 6 90 0 136 6 90 1 235] 
#[1 0 22 0 137 15 29 1 79 15 33 1 98] 
#[1 6 94 0 4 0 147 0 137 15 37 0 139 15 45 1 76 15 45 1 77 1 201 1 78 15 45 1 96 1 209 1 98 15 49 1 103] 
#[1 6 102 0 4 6 102 0 9 6 102 0 14 15 53 0 22 15 57 0 123 6 102 0 138] 
#[1 6 94 0 4 15 61 0 9 0 126 0 14 15 65 0 138 15 93 1 82 15 73 1 86 15 77 1 87 15 81 1 88 15 77 1 89 15 77 1 90 15 93 1 91 15 97 1 99 15 101 1 103] 
#[0 6 106 0 4 0 9 0 14 0 138] 
#[0 6 110 0 4 0 9 0 14 0 138] 
#[0 6 114 0 138] 
#[1 15 105 0 138 15 109 1 84] 
#[0 15 113 0 14] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 15 117 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 15 117 1 133 15 117 1 134 2 221 1 135 2 221 1 137] 
#[0 15 121 0 3] 
#[1 1 226 0 6 1 226 0 11 0 151 0 14 1 230 0 22 1 226 0 40 1 226 0 48 12 193 0 74 4 126 0 122 12 197 1 107] 
#[0 15 125 0 14] 
#[1 6 45 0 2 2 161 0 11 6 57 1 104 15 129 1 150] 
#[0 15 133 0 4] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 15 137 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 6 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 15 141 0 8] 
#[0 15 145 0 8] 
#[0 15 149 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 15 153 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 15 157 0 197 15 157 0 198 15 157 0 200 1 1 1 6 15 157 1 9 1 129 1 10 1 133 1 11 1 137 1 14 15 157 1 15 1 1 1 20 15 157 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 15 161 0 142 15 165 0 215 6 137 0 216 15 169 0 217 15 169 0 218 15 169 0 219 15 173 0 237 6 145 1 234] 
#[1 0 202 0 8 0 202 0 9 5 157 0 10 0 202 0 11 0 202 0 12 5 157 0 13 0 202 0 14 0 202 0 15 5 157 0 16 5 157 0 17 0 202 0 18 0 202 0 20 0 202 0 21 5 157 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 5 157 0 28 5 157 0 29 5 157 0 30 5 157 0 31 5 157 0 32 5 157 0 33 5 157 0 34 0 202 0 35 5 137 0 36 0 202 0 37 5 141 0 38 0 202 0 40 0 202 0 41 5 157 0 42 0 202 0 43 0 202 0 45 5 157 0 46 0 202 0 47 0 202 0 48 0 202 0 49 5 157 0 50 0 202 0 51 0 202 0 53 0 202 0 54 0 155 0 84 0 202 0 87 15 181 0 97 0 202 0 122 5 157 0 199 5 157 1 233 5 165 1 234] 
#[1 15 185 0 8 6 21 0 122] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 15 189 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 15 193 0 197 15 193 0 198 15 193 0 200 1 1 1 6 15 193 1 9 1 129 1 10 1 133 1 11 1 137 1 14 15 193 1 15 1 1 1 20 15 193 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 15 197 0 142 3 245 0 212 3 249 0 213 15 201 0 217 15 201 0 218 15 201 0 219 15 205 0 237 3 249 1 157 3 249 1 158 4 17 1 234] 
#[1 15 209 0 84 15 213 0 97] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 4 117 0 56 0 141 0 61 15 225 0 63 1 177 0 75 0 153 0 79 0 157 0 83 15 225 0 90 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 15 217 0 116 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 15 221 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 15 221 0 179 15 225 0 211 15 229 0 236 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 4 245 1 234] 
#[1 15 233 0 3 6 21 0 122] 
#[1 15 237 0 8 6 21 0 122] 
#[1 15 241 0 3 6 21 0 122] 
#[0 6 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 15 245 0 2 1 221 0 4 15 249 0 206] 
#[1 1 221 0 4 15 253 0 206] 
#[1 6 126 0 1 6 126 0 2 6 126 0 4 6 126 0 5 6 126 0 6 6 126 0 8 6 126 0 35 6 126 0 36 6 126 0 37 6 126 0 38 6 126 0 39 6 126 0 52 6 126 0 56 6 126 0 57 6 126 0 58 6 126 0 59 6 126 0 61 6 126 0 62 6 126 0 63 6 126 0 65 6 126 0 66 6 126 0 67 6 126 0 68 6 126 0 69 6 126 0 70 6 126 0 71 6 126 0 72 6 126 0 73 6 126 0 75 11 169 0 76 6 126 0 77 6 126 0 79 6 126 0 82 6 126 0 83 6 126 0 88 6 126 0 90 6 126 0 93 6 126 0 94 6 126 0 95 6 126 0 103 6 126 0 107 6 126 0 108 6 126 0 110 6 126 0 111 6 126 0 112 6 126 0 113 6 126 0 114 6 126 0 115 6 126 0 116 6 126 0 117 6 126 0 118 6 126 0 119 6 126 0 120 6 126 0 125 6 126 0 127 6 126 0 129 6 126 0 130 6 126 0 131 6 126 0 133 6 126 0 134 6 126 0 137 16 1 0 253 6 126 1 234 6 126 1 235] 
#[0 6 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 6 134 0 8 0 122] 
#[0 6 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 6 129 0 142 16 5 0 216 6 141 0 217 6 141 0 218 6 141 0 219 6 145 1 234] 
#[0 6 142 0 8 0 122] 
#[1 12 149 0 123 16 9 1 139] 
#[1 12 149 0 123 16 13 1 139] 
#[0 6 146 0 8 0 122] 
#[0 6 150 0 8 0 122] 
#[1 16 17 0 3 6 21 0 122] 
#[1 16 21 0 3 6 21 0 122] 
#[0 6 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 6 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 193 0 125 16 25 0 142] 
#[1 0 193 0 125 16 29 0 142] 
#[1 11 229 0 72 0 193 0 125 16 33 0 142 16 37 1 216 16 41 1 217] 
#[1 0 193 0 125 16 45 0 142] 
#[0 16 49 0 4] 
#[1 0 193 0 125 16 33 0 142 16 53 1 216 16 41 1 217] 
#[0 16 57 0 129 1 73] 
#[1 0 193 0 125 12 73 0 142 16 61 1 181] 
#[1 0 193 0 125 16 33 0 142 16 65 1 216 16 41 1 217] 
#[0 6 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 6 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 6 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 6 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 6 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 6 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 16 69 0 4] 
#[1 0 193 0 125 16 73 0 142] 
#[1 8 153 0 78 16 77 1 60] 
#[1 16 81 0 8 8 153 0 78 16 85 1 60] 
#[0 16 89 0 114] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 16 93 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 16 97 0 2 0 193 0 125 16 101 0 142] 
#[0 16 105 0 2] 
#[1 16 109 0 23 2 158 0 78 2 158 0 122] 
#[1 2 153 0 4 2 161 0 11 16 113 0 74 16 117 1 104 16 121 1 123 16 125 1 160] 
#[0 6 186 0 4 0 22] 
#[1 16 129 0 4 16 133 0 22] 
#[1 2 161 0 11 16 137 0 23 16 141 1 104] 
#[1 0 38 0 1 3 121 0 56 0 38 0 61 0 38 0 62 6 169 0 63 16 145 0 67 16 149 0 68 6 177 0 72 3 129 0 79 16 153 0 83 6 193 0 88 0 69 0 90 6 197 0 93 6 201 0 114 2 13 0 116 16 157 0 203 16 161 0 210 0 69 0 211 16 165 0 214 16 157 1 5 16 157 1 19 16 157 1 24 16 157 1 28 16 169 1 33 3 169 1 34 16 173 1 55 16 177 1 149 16 181 1 159 16 185 1 175 16 189 1 180 16 193 1 186 16 197 1 214 16 201 1 234] 
#[1 13 165 0 2 2 161 0 11 0 193 0 125 16 205 0 142 13 173 1 104 13 177 1 140 16 209 1 150] 
#[1 0 159 0 3 0 159 0 5 4 54 0 6 0 159 0 7 4 54 0 8 4 250 0 23 4 54 0 40 4 54 0 48 0 159 0 122] 
#[1 7 69 0 2 4 66 0 5 4 66 0 8 2 161 0 11 12 161 0 43 12 161 0 52 4 66 0 122 16 213 0 123 7 117 1 104 12 153 1 139 12 157 1 140 12 161 1 171] 
#[1 0 163 0 3 0 163 0 5 4 114 0 6 0 163 0 7 4 114 0 8 5 6 0 23 4 114 0 40 4 114 0 48 0 163 0 122] 
#[1 2 254 0 4 2 254 0 6 0 167 0 7 2 254 0 121 2 254 0 122 2 254 0 125 2 254 1 234] 
#[0 16 217 0 19] 
#[0 6 190 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 16 221 0 3] 
#[1 0 130 0 2 0 130 0 6 0 130 0 7 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 16 225 0 123 0 130 0 133 0 130 0 134 0 130 1 233 0 130 1 234] 
#[0 16 229 0 7] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 16 233 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 16 237 0 2] 
#[1 6 194 0 5 6 194 0 8 16 245 0 43 16 245 0 52 6 194 0 122 12 149 0 123 16 241 1 139 16 245 1 171] 
#[0 6 198 0 2 0 3 0 5 0 7 0 8 0 11 0 23 0 122 0 123] 
#[0 6 202 0 2 0 3 0 5 0 7 0 8 0 11 0 23 0 122 0 123] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 16 249 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 16 249 1 133 16 249 1 134 2 221 1 135 2 221 1 137] 
#[0 6 206 0 5 0 8 0 122] 
#[0 6 210 0 5 0 8 0 122] 
#[1 7 69 0 2 6 214 0 5 6 214 0 8 2 161 0 11 6 214 0 122 12 149 0 123 7 117 1 104 16 253 1 139 17 1 1 140] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 5 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 6 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 105 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 234 1 235] 
#[1 7 69 0 2 6 222 0 5 7 77 0 6 2 161 0 11 7 81 0 94 7 85 0 102 7 89 0 126 7 109 0 129 7 113 0 130 7 97 0 143 7 97 0 155 7 97 0 156 7 97 0 157 7 109 1 73 7 113 1 74 7 117 1 104 17 9 1 126 17 9 1 138 17 9 1 140 17 9 1 146 17 9 1 147 17 9 1 148] 
#[1 7 69 0 2 6 226 0 5 7 77 0 6 2 161 0 11 7 81 0 94 7 85 0 102 7 89 0 126 7 109 0 129 7 113 0 130 7 97 0 143 7 97 0 155 7 97 0 156 7 97 0 157 7 109 1 73 7 113 1 74 7 117 1 104 17 13 1 126 17 13 1 138 17 13 1 140 17 13 1 146 17 13 1 147 17 13 1 148] 
#[0 6 230 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 6 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 17 17 0 7 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 17 21 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 17 21 1 130 2 209 1 131 2 213 1 132 17 21 1 133 17 21 1 134 2 221 1 135 2 221 1 137] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 17 25 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 17 25 1 133 17 25 1 134 2 221 1 135 2 221 1 137] 
#[0 6 238 0 14 0 122] 
#[0 6 242 0 2 0 4 0 23 0 74 1 234] 
#[1 0 193 0 125 7 173 0 142 17 29 1 106] 
#[0 17 33 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 37 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 0 193 0 125 17 41 0 142] 
#[0 17 45 0 3] 
#[1 6 246 0 3 6 246 0 4 6 246 0 5 6 246 0 6 6 246 0 7 6 246 0 8 6 246 0 9 6 246 0 11 6 246 0 12 6 246 0 14 6 246 0 15 6 246 0 18 6 246 0 19 6 246 0 20 6 246 0 21 6 246 0 23 6 246 0 24 6 246 0 25 6 246 0 26 6 246 0 27 6 246 0 35 6 246 0 37 0 171 0 40 6 246 0 41 6 246 0 43 6 246 0 45 6 246 0 47 6 246 0 48 6 246 0 49 6 246 0 51 6 246 0 53 6 246 0 54 6 246 0 64 6 246 0 84 6 246 0 87 6 246 0 98 6 246 0 99 6 246 0 100 6 246 0 101 6 246 0 105 6 246 0 122 6 246 0 123 6 246 0 126 6 246 0 129 6 246 0 130 6 246 0 135 6 246 0 136 6 246 1 234 6 246 1 235] 
#[1 6 250 0 3 6 250 0 4 6 250 0 5 0 175 0 6 6 250 0 7 6 250 0 8 6 250 0 9 6 250 0 11 6 250 0 12 6 250 0 14 6 250 0 15 6 250 0 18 6 250 0 19 6 250 0 20 6 250 0 21 6 250 0 23 6 250 0 24 6 250 0 25 6 250 0 26 6 250 0 27 6 250 0 35 6 250 0 37 6 250 0 40 6 250 0 41 6 250 0 43 6 250 0 45 6 250 0 47 6 250 0 48 6 250 0 49 6 250 0 51 6 250 0 53 6 250 0 54 6 250 0 64 6 250 0 84 6 250 0 87 6 250 0 98 6 250 0 99 6 250 0 100 6 250 0 101 6 250 0 105 6 250 0 122 6 250 0 123 6 250 0 126 6 250 0 129 6 250 0 130 6 250 0 135 6 250 0 136 7 225 0 240 6 250 1 234 6 250 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 17 49 0 7 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 17 53 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 17 53 1 133 17 53 1 134 2 221 1 135 2 221 1 137] 
#[0 6 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 86 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 7 2 0 3 7 2 0 4 7 2 0 5 7 2 0 6 7 2 0 7 7 2 0 8 7 2 0 9 7 2 0 11 7 2 0 12 7 2 0 14 7 2 0 15 7 2 0 18 7 2 0 19 7 2 0 20 7 2 0 21 7 6 0 22 7 2 0 23 7 2 0 24 7 2 0 25 7 2 0 26 7 2 0 27 7 2 0 35 7 2 0 37 7 2 0 40 7 2 0 41 7 2 0 43 7 2 0 45 7 2 0 47 7 2 0 48 7 2 0 49 7 2 0 51 7 2 0 53 7 2 0 54 7 2 0 64 7 2 0 84 7 2 0 86 7 2 0 87 7 2 0 98 7 2 0 99 7 2 0 100 7 2 0 101 7 2 0 105 7 2 0 122 7 2 0 123 7 2 0 126 7 2 0 129 7 2 0 130 7 2 0 135 7 2 0 136 7 2 1 234 7 2 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 57 1 0 4 65 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 17 61 0 2] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 65 1 0 4 65 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 17 69 0 3] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 17 77 0 225 17 77 0 226 17 77 1 4 17 77 1 18 7 65 1 234] 
#[1 0 6 0 2 0 6 0 4 7 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 165 0 208 0 61 0 209 6 165 0 210 0 69 0 211 0 6 1 234] 
#[0 17 81 0 5] 
#[0 7 14 0 5] 
#[0 7 18 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 17 85 0 3] 
#[0 7 22 0 3 0 5 0 7 0 8 0 122] 
#[0 17 89 0 2] 
#[0 17 93 0 2] 
#[0 17 97 0 4] 
#[1 6 45 0 2 2 161 0 11 6 57 1 104 17 101 1 150] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 17 105 0 143 17 105 0 155 17 105 0 156 17 105 0 157 7 109 1 73 7 113 1 74] 
#[1 17 109 0 2 17 113 1 167] 
#[1 8 233 0 6 17 117 0 56 7 89 0 126 7 109 0 129 7 113 0 130 17 121 0 143 17 121 0 155 17 121 0 156 17 121 0 157 7 109 1 73 7 113 1 74 17 125 1 151 17 129 1 152 13 77 1 234] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 23 2 70 0 43 2 70 0 52 2 70 0 123 17 133 1 43 7 117 1 104 17 137 1 140] 
#[1 8 233 0 6 17 141 0 56 17 145 0 64 17 149 0 105 7 89 0 126 7 109 0 129 7 113 0 130 17 153 0 143 17 153 0 155 17 153 0 156 17 153 0 157 7 109 1 73 7 113 1 74 17 157 1 151 17 161 1 152 13 77 1 234] 
#[0 7 26 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 7 30 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 8 45 0 80 8 49 0 104] 
#[0 7 34 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 17 165 0 126 0 129 1 54 1 73] 
#[0 7 38 0 8 0 78] 
#[1 17 169 0 5 8 97 0 126 8 97 0 129 8 97 1 54 17 173 1 69 8 97 1 73] 
#[0 7 42 0 78] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 177 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 17 181 0 2 0 193 0 125 17 185 0 142] 
#[0 17 189 0 2] 
#[0 7 46 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 17 193 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 197 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 17 201 0 2] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 205 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 7 50 0 1 0 130 0 2 7 50 0 3 7 50 0 4 7 50 0 5 0 179 0 6 7 50 0 7 0 130 0 22 7 50 0 23 7 50 0 43 0 130 0 44 7 50 0 52 7 50 0 56 7 50 0 61 7 50 0 62 7 50 0 64 7 50 0 73 7 50 0 98 7 50 0 99 7 50 0 100 7 50 0 101 7 50 0 102 7 50 0 105 7 50 0 110 7 50 0 122 7 50 0 123 7 50 0 125 7 50 0 126 7 50 0 129 7 50 0 130 0 130 0 133 0 130 0 134 0 179 1 234] 
#[1 7 54 0 1 4 249 0 2 7 54 0 3 7 54 0 4 7 54 0 5 0 183 0 6 7 54 0 7 5 69 0 22 7 54 0 23 7 54 0 43 5 49 0 44 7 54 0 52 7 54 0 56 7 54 0 61 7 54 0 62 7 54 0 64 7 54 0 73 7 54 0 98 7 54 0 99 7 54 0 100 7 54 0 101 7 54 0 102 7 54 0 105 7 54 0 110 7 54 0 122 7 54 0 123 7 54 0 125 7 54 0 126 7 54 0 129 7 54 0 130 0 213 0 133 0 18 0 134 5 73 0 160 0 253 0 161 5 77 0 173 5 81 0 176 0 187 1 234] 
#[1 4 181 0 4 4 185 0 74 17 209 1 36 4 197 1 37 17 213 1 234] 
#[0 7 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 2 161 0 11 9 209 0 74 9 213 0 86 17 217 1 104 9 217 1 163 9 221 1 165] 
#[1 4 181 0 4 4 185 0 74 0 193 0 125 17 221 0 142 17 225 1 36 4 197 1 37 17 229 1 234] 
#[0 7 62 0 8] 
#[0 7 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 17 233 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 13 165 0 2 2 161 0 11 13 173 1 104 17 237 1 140 17 241 1 150] 
#[0 17 245 0 2] 
#[0 17 249 0 8] 
#[0 17 253 0 4] 
#[1 0 193 0 125 18 1 0 142 18 1 1 64] 
#[0 7 70 0 78] 
#[1 18 5 0 5 0 193 0 125 8 189 0 126 8 189 0 129 8 201 0 142 8 189 1 54 18 9 1 62 8 201 1 64 8 189 1 73 8 205 1 234] 
#[1 0 193 0 125 18 13 0 126 18 13 0 129 18 17 0 142 18 13 1 54 18 17 1 64 18 13 1 73] 
#[0 7 74 0 78] 
#[0 7 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 7 82 0 78] 
#[0 7 86 0 78] 
#[0 7 90 0 78] 
#[0 7 94 0 78] 
#[0 7 98 0 5] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 18 21 0 225 18 21 0 226 7 65 1 234] 
#[0 7 102 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 7 106 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[1 18 25 0 5 8 233 0 6 8 237 0 121 0 193 0 125 7 89 0 126 7 109 0 129 7 113 0 130 8 241 0 142 8 245 0 143 8 245 0 155 8 245 0 156 8 245 0 157 18 29 0 220 18 33 0 224 18 33 0 226 7 109 1 73 7 113 1 74 9 9 1 234] 
#[0 7 110 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 7 114 0 7 0 122] 
#[0 18 37 0 7] 
#[0 7 118 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[1 3 233 0 4 3 237 0 6 18 41 0 7 4 33 0 121 4 93 0 122 0 193 0 125 8 241 0 142 18 45 0 149 4 45 0 217 4 45 0 218 4 45 0 219 18 49 0 223 9 29 0 225 9 29 0 226 18 53 0 227 7 65 1 234] 
#[0 7 122 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 7 126 0 8 0 122] 
#[1 7 130 0 8 8 37 0 23 7 130 0 122 18 57 0 159] 
#[1 7 134 0 8 8 37 0 23 7 134 0 122 18 61 0 159] 
#[1 8 153 0 78 18 65 1 60] 
#[0 2 154 0 78] 
#[1 0 130 0 2 0 130 0 6 0 191 0 7 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 130 0 122 12 149 0 123 0 130 0 133 0 130 0 134 14 41 1 139 0 130 1 233 0 130 1 234] 
#[1 5 86 0 2 0 195 0 3 5 86 0 6 0 195 0 7 5 86 0 9 5 86 0 10 5 86 0 11 5 86 0 12 5 86 0 13 5 86 0 14 5 86 0 15 5 86 0 16 5 86 0 17 5 86 0 18 5 86 0 20 5 86 0 21 5 86 0 22 0 195 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 29 5 86 0 30 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 34 5 86 0 35 5 86 0 36 5 86 0 37 5 86 0 38 5 86 0 40 5 86 0 41 5 86 0 42 5 86 0 43 5 86 0 44 5 86 0 45 5 86 0 46 5 86 0 47 5 86 0 48 5 86 0 49 5 86 0 50 5 86 0 51 5 86 0 53 5 86 0 54 5 86 0 84 5 86 0 87 0 195 0 122 5 86 0 133 5 86 0 134 5 86 1 233 5 86 1 234] 
#[0 7 138 0 3 0 7] 
#[0 7 142 0 3] 
#[0 7 146 0 3 0 122] 
#[1 7 150 0 3 7 150 0 5 7 150 0 7 8 37 0 23 7 150 0 122 18 69 0 159] 
#[0 7 154 0 3 0 5 0 7 0 122] 
#[1 7 158 0 3 3 233 0 4 7 158 0 5 3 237 0 6 7 158 0 7 7 158 0 23 7 158 0 43 7 158 0 52 18 89 0 98 18 89 0 99 18 89 0 100 18 89 0 101 18 89 0 102 18 77 0 110 7 158 0 122 7 158 0 123 0 193 0 125 18 93 0 142 18 93 0 217 18 93 0 218 18 93 0 219 18 89 1 142 18 93 1 143 18 89 1 144] 
#[1 7 162 0 3 7 162 0 5 7 162 0 7 8 37 0 23 18 109 0 43 18 109 0 52 7 162 0 122 12 149 0 123 18 101 0 159 18 105 1 139 18 109 1 171] 
#[0 7 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 7 170 0 7 0 122] 
#[0 7 174 0 7 0 122] 
#[0 18 113 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 18 117 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 18 121 0 2] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 18 125 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 18 133 1 31 0 6 1 234] 
#[0 7 178 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 7 182 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 7 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 233 1 234 1 235] 
#[0 7 190 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234] 
#[0 7 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 233 1 234 1 235] 
#[0 18 137 0 5] 
#[0 7 198 0 4 0 86] 
#[0 7 202 0 4 0 86] 
#[0 7 206 0 4 0 122] 
#[1 7 210 0 4 18 141 0 122] 
#[0 7 214 0 4 0 122] 
#[0 7 218 0 4] 
#[0 18 145 0 4] 
#[0 18 149 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 18 153 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 18 157 0 3] 
#[0 7 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 7 226 0 3 0 122] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 18 161 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 18 165 0 121 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 18 169 0 197 18 169 0 198 1 1 1 6 18 169 1 9 1 129 1 10 1 133 1 11 1 137 1 14 18 169 1 15 1 1 1 20 18 169 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 7 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 18 173 0 14 18 177 0 122] 
#[0 7 238 0 14 0 122] 
#[0 7 242 0 14 0 122] 
#[1 0 101 0 2 18 181 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 10 9 0 121 18 185 0 122 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 18 189 0 174 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 10 17 0 197 10 17 0 198 1 1 1 6 10 17 1 9 1 129 1 10 1 133 1 11 1 137 1 14 10 17 1 15 1 1 1 20 10 17 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 3 178 0 4 3 178 0 137 3 178 0 139 18 193 1 94 11 41 1 95] 
#[0 7 246 0 5 0 122] 
#[0 7 250 0 5 0 122] 
#[0 7 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 18 197 0 5 8 233 0 6 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 10 49 0 121 10 53 0 125 7 89 0 126 7 241 0 127 7 109 0 129 7 113 0 130 10 57 0 142 10 69 0 143 18 201 0 154 10 69 0 155 10 69 0 156 10 69 0 157 18 201 0 158 18 201 1 17 18 201 1 21 18 201 1 26 18 201 1 30 10 81 1 44 7 109 1 73 7 113 1 74 18 201 1 151 18 201 1 152 8 21 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 18 205 0 197 18 205 0 198 1 1 1 6 18 205 1 9 1 129 1 10 1 133 1 11 1 137 1 14 18 205 1 15 1 1 1 20 18 205 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 18 209 0 197 18 209 0 198 18 209 0 200 1 1 1 6 18 209 1 9 1 129 1 10 1 133 1 11 1 137 1 14 18 209 1 15 1 1 1 20 18 209 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 8 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 8 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 18 213 0 135 18 217 0 136] 
#[0 8 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 18 221 0 7 6 21 0 122] 
#[1 18 225 0 7 6 21 0 122] 
#[0 8 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 8 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 8 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 8 26 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 18 229 0 197 18 229 0 198 1 1 1 6 18 229 1 9 1 129 1 10 1 133 1 11 1 137 1 14 18 229 1 15 1 1 1 20 18 229 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 6 0 2 0 6 0 4 8 30 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 165 0 208 0 61 0 209 6 165 0 210 0 69 0 211 0 6 1 234] 
#[0 18 233 0 5] 
#[0 8 34 0 5] 
#[0 8 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 233 1 234 1 235] 
#[0 18 237 0 137] 
#[0 8 42 0 4 0 137 0 139] 
#[0 8 46 0 4 0 137 0 139] 
#[0 8 50 0 4 0 137 0 139] 
#[0 18 241 0 4] 
#[0 8 54 0 138] 
#[0 18 245 0 138] 
#[1 8 58 0 14 18 249 1 101] 
#[1 8 62 0 4 8 62 0 9 8 62 0 14 8 62 0 23 15 57 0 123 8 62 0 138] 
#[0 8 66 0 4 0 9 0 14 0 23 0 138] 
#[1 18 253 0 9 0 126 0 14 19 1 1 99] 
#[0 8 70 0 4 0 9 0 14 0 138] 
#[1 6 94 0 4 8 74 0 9 8 74 0 14 15 65 0 138 15 93 1 82 19 5 1 87 19 5 1 89 19 5 1 90 15 93 1 91 15 101 1 103] 
#[0 8 78 0 4 0 9 0 14 0 138] 
#[0 8 82 0 4 0 9 0 14 0 138] 
#[1 8 86 0 4 8 86 0 9 8 86 0 14 19 9 0 23 8 86 0 138 19 13 1 92] 
#[0 19 17 0 14] 
#[0 19 21 0 4] 
#[1 8 90 0 4 8 90 0 9 8 90 0 14 15 53 0 22 8 90 0 138] 
#[0 8 94 0 138] 
#[0 8 98 0 4 0 137 0 139] 
#[0 8 102 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 234 1 235] 
#[1 8 106 0 4 8 106 0 8 8 106 0 19 12 149 0 123 19 25 1 139] 
#[1 4 113 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 4 117 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 193 0 125 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 1 1 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 4 125 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 4 125 0 179 19 29 0 180 19 29 0 181 1 1 1 6 1 1 1 20 1 1 1 25 1 1 1 29 19 29 1 32 1 1 1 35 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 4 133 1 234] 
#[0 19 33 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 19 37 1 7 15 25 1 8 0 6 1 234] 
#[0 19 41 0 3] 
#[0 8 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 45 0 197 19 45 0 198 19 45 0 200 1 1 1 6 19 45 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 45 1 15 1 1 1 20 19 45 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 19 49 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 53 0 197 19 53 0 198 19 53 0 200 1 1 1 6 19 53 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 53 1 15 1 1 1 20 19 53 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 19 57 0 8 6 21 0 122] 
#[1 3 206 0 8 8 37 0 23 8 118 0 84 8 118 0 97 3 206 0 122 11 181 0 159] 
#[1 19 61 0 8 11 189 0 122] 
#[1 8 37 0 23 8 122 0 84 8 122 0 97 11 193 0 159] 
#[1 19 65 0 84 19 69 0 97] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 73 0 197 19 73 0 198 19 73 0 200 1 1 1 6 19 73 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 73 1 15 1 1 1 20 19 73 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 77 0 197 19 77 0 198 1 1 1 6 19 77 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 77 1 15 1 1 1 20 19 77 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 19 81 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 85 0 197 19 85 0 198 19 85 0 200 1 1 1 6 19 85 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 85 1 15 1 1 1 20 19 85 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 19 89 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 93 0 197 19 93 0 198 19 93 0 200 1 1 1 6 19 93 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 93 1 15 1 1 1 20 19 93 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 19 97 0 8 6 21 0 122] 
#[1 2 186 0 8 8 37 0 23 8 118 0 84 8 118 0 97 2 186 0 122 9 37 0 159] 
#[1 8 37 0 23 8 122 0 84 8 122 0 97 9 49 0 159] 
#[0 8 126 0 84 0 97] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 101 0 197 19 101 0 198 19 101 0 200 1 1 1 6 19 101 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 101 1 15 1 1 1 20 19 101 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 19 105 0 197 19 105 0 198 1 1 1 6 19 105 1 9 1 129 1 10 1 133 1 11 1 137 1 14 19 105 1 15 1 1 1 20 19 105 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 19 117 0 142 19 117 0 217 19 117 0 218 19 117 0 219 19 117 0 237] 
#[1 19 121 0 97 10 1 1 234] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 15 205 0 142 15 205 0 217 15 205 0 218 15 205 0 219 15 205 0 237] 
#[0 19 125 0 97] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 19 129 0 201 19 129 0 204 19 129 0 205 19 129 0 206 19 129 0 214 19 129 0 228 19 129 0 229 19 129 0 230 19 129 0 231 19 129 0 232 19 129 0 233 19 129 0 234 19 129 0 235 19 129 0 238 19 129 0 239 19 129 0 241 19 129 0 242 19 129 0 243 19 129 0 248 19 129 0 250 19 129 0 251 19 129 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 8 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 19 133 0 4 19 137 0 244] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 19 141 0 142 19 149 0 217 19 149 0 218 19 149 0 219 19 149 0 254] 
#[0 8 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 146 0 8 0 122] 
#[1 8 150 0 8 8 37 0 23 8 150 0 122 19 153 0 159] 
#[1 8 37 0 23 19 157 0 159] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 19 161 0 201 19 161 0 204 19 161 0 205 19 161 0 206 19 161 0 214 19 161 0 228 19 161 0 229 19 161 0 230 19 161 0 231 19 161 0 232 19 161 0 233 19 161 0 234 19 161 0 235 19 161 0 238 19 161 0 239 19 161 0 241 19 161 0 242 19 161 0 243 19 161 0 248 19 161 0 250 19 161 0 251 19 161 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 19 165 0 201 19 165 0 204 19 165 0 205 19 165 0 206 19 165 0 214 19 165 0 228 19 165 0 229 19 165 0 230 19 165 0 231 19 165 0 232 19 165 0 233 19 165 0 234 19 165 0 235 19 165 0 238 19 165 0 239 19 165 0 241 19 165 0 242 19 165 0 243 19 165 0 248 19 165 0 250 19 165 0 251 19 165 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 19 169 0 4] 
#[1 2 161 0 11 4 185 0 74 19 173 1 37 19 177 1 104 4 201 1 234] 
#[1 8 154 0 8 8 154 0 122 12 149 0 123 19 181 1 139] 
#[1 19 185 0 8 19 189 0 122] 
#[0 8 158 0 8 0 122] 
#[1 7 69 0 2 2 161 0 11 7 117 1 104 19 193 1 140] 
#[1 8 162 0 5 11 233 0 61 19 197 0 63 6 177 0 72 19 201 0 73 11 241 0 79 11 245 0 81 19 205 0 83 6 193 0 88 19 209 0 90 12 1 0 93 12 5 0 116 19 213 0 210 0 69 0 211 19 217 1 159 19 237 1 175 19 221 1 186 19 225 1 215 19 229 1 218 19 233 1 219 19 237 1 225 19 241 1 226 19 245 1 227 19 249 1 228 19 253 1 229] 
#[1 20 1 0 8 19 189 0 122] 
#[0 20 5 0 4] 
#[1 20 9 0 4 16 133 0 22] 
#[1 20 13 0 8 19 189 0 122] 
#[1 20 17 0 5 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 20 21 0 143 20 21 0 155 20 21 0 156 20 21 0 157 7 109 1 73 7 113 1 74 20 25 1 176 20 29 1 177 20 33 1 178] 
#[0 20 37 0 8] 
#[0 20 41 0 8] 
#[0 8 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 20 45 0 8] 
#[1 3 113 0 4 20 49 0 26 20 53 1 67] 
#[0 20 57 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 20 61 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 20 65 0 2] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 20 69 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 0 193 0 125 20 73 0 142 20 77 1 122 20 81 1 187 20 85 1 232] 
#[1 0 193 0 125 2 189 0 142 20 89 1 120 2 245 1 121 2 249 1 122 20 89 1 162] 
#[1 2 153 0 4 16 113 0 74 20 93 1 123 20 97 1 160] 
#[0 8 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 2 153 0 4 20 101 1 123] 
#[1 0 38 0 1 0 101 0 2 0 19 0 4 8 174 0 5 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 35 0 61 0 38 0 62 6 169 0 63 1 233 0 65 1 237 0 66 16 145 0 67 0 145 0 69 1 241 0 70 6 177 0 72 20 105 0 73 1 177 0 75 1 245 0 77 6 185 0 79 1 249 0 82 20 109 0 83 6 193 0 88 0 69 0 90 6 197 0 93 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 6 201 0 114 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 20 157 0 201 20 157 0 204 20 157 0 205 20 157 0 206 20 157 0 210 0 69 0 211 20 157 0 214 20 157 0 228 20 157 0 229 20 157 0 230 20 157 0 231 20 157 0 232 20 157 0 233 20 157 0 234 20 157 0 235 20 157 0 238 20 157 0 239 20 157 0 241 20 157 0 242 20 157 0 243 20 157 0 248 20 157 0 250 20 157 0 251 20 157 0 255 20 157 1 5 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 20 157 1 19 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 20 157 1 33 3 169 1 34 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 20 157 1 149 1 213 1 154 20 157 1 159 20 157 1 175 20 157 1 180 20 149 1 182 20 153 1 183 20 157 1 184 20 157 1 185 20 157 1 186 20 157 1 214 7 41 1 234] 
#[1 0 193 0 125 20 173 0 142] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 20 177 0 48 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 20 181 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 20 181 1 133 20 181 1 134 2 221 1 135 2 221 1 137] 
#[0 20 185 0 23] 
#[1 11 233 0 61 11 237 0 63 6 177 0 72 11 241 0 79 11 245 0 81 11 249 0 90 12 1 0 93 12 5 0 116 12 25 1 175 12 13 1 215 12 17 1 218 12 21 1 219 12 25 1 225 12 29 1 226] 
#[1 0 38 0 1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 199 0 61 0 38 0 62 0 145 0 69 1 177 0 75 20 193 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 20 197 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 20 201 0 197 20 201 0 198 20 205 1 5 1 1 1 6 20 201 1 9 1 129 1 10 1 133 1 11 1 137 1 14 20 201 1 15 20 209 1 19 1 1 1 20 20 201 1 23 1 1 1 25 1 1 1 29 1 49 1 32 20 213 1 33 3 169 1 34 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 20 217 1 218 20 221 1 219 7 41 1 234] 
#[1 3 185 0 4 3 189 0 26 0 193 0 125 3 213 0 129 20 225 0 142 3 197 1 56 3 201 1 57 3 205 1 58 3 209 1 59 3 213 1 63 3 201 1 64 3 213 1 73 3 225 1 234] 
#[0 8 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 190 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 194 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 0 203 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 0 207 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 218 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 0 211 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 8 169 0 79] 
#[1 13 165 0 2 2 161 0 11 13 173 1 104 17 237 1 140 20 229 1 150] 
#[0 20 233 0 4] 
#[1 2 149 0 2 7 45 0 4 7 49 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 7 53 0 142 4 45 0 217 4 45 0 218 4 45 0 219 18 21 0 225 18 21 0 226 2 193 1 73 2 197 1 74 2 201 1 104 16 249 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 16 249 1 133 16 249 1 134 2 221 1 135 2 221 1 137 7 65 1 234] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 20 237 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 20 237 1 133 20 237 1 134 2 221 1 135 2 221 1 137] 
#[1 8 234 0 4 8 234 0 5 8 234 0 8 8 234 0 122 12 149 0 123 20 241 1 139] 
#[1 20 245 0 96 20 249 0 106] 
#[0 8 238 0 2 0 5 0 8 0 11 0 23 0 43 0 52 0 122 0 123] 
#[0 20 253 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 21 1 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 8 242 0 5 0 8 0 122] 
#[1 8 246 0 5 8 246 0 8 8 246 0 122 12 149 0 123 21 5 1 139] 
#[0 8 250 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 8 254 0 5 0 8 0 122] 
#[0 9 2 0 5 0 8 0 122] 
#[0 21 9 0 3] 
#[0 9 6 0 5 0 8 0 122] 
#[0 9 10 0 5 0 8 0 122] 
#[0 9 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 9 18 0 7 0 122] 
#[0 9 22 0 14 0 122] 
#[0 9 26 0 14 0 122] 
#[0 21 13 0 19] 
#[0 21 17 0 3] 
#[0 9 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 21 21 0 19] 
#[0 9 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 21 25 0 7] 
#[0 21 29 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 21 33 1 0 4 65 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 21 37 0 3] 
#[0 21 41 0 4] 
#[0 9 38 0 3] 
#[0 21 45 0 3] 
#[0 9 42 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 21 49 0 4] 
#[0 21 53 0 3] 
#[1 3 233 0 4 3 237 0 6 0 193 0 125 21 57 0 142 21 61 0 217 21 61 0 218 21 61 0 219 21 65 0 225 21 65 0 226 21 65 1 4 21 65 1 18 21 69 1 145 21 73 1 153 7 65 1 234] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 21 77 1 7 15 25 1 8 0 6 1 234] 
#[1 21 81 0 4 21 85 0 8] 
#[1 7 69 0 2 2 161 0 11 7 117 1 104 21 89 1 140] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 21 93 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 21 97 0 4 21 101 0 8] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 21 105 0 143 21 105 0 155 21 105 0 156 21 105 0 157 7 109 1 73 7 113 1 74] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 23 2 70 0 43 2 70 0 52 2 70 0 123 21 109 1 43 7 117 1 104 21 113 1 140] 
#[0 9 46 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 9 50 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 9 54 0 8 8 37 0 23 21 129 0 43 21 129 0 52 12 149 0 123 21 117 0 159 21 121 1 139 21 125 1 170 21 129 1 171] 
#[1 21 133 0 4 21 137 0 8] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 21 141 0 143 21 141 0 155 21 141 0 156 21 141 0 157 7 109 1 73 7 113 1 74] 
#[1 17 109 0 2 21 145 1 167] 
#[1 8 233 0 6 21 149 0 56 7 89 0 126 7 109 0 129 7 113 0 130 21 153 0 143 21 153 0 155 21 153 0 156 21 153 0 157 7 109 1 73 7 113 1 74 21 157 1 151 21 161 1 152 13 77 1 234] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 23 2 70 0 43 2 70 0 52 2 70 0 123 21 165 1 43 7 117 1 104 21 169 1 140] 
#[0 9 58 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 9 62 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 9 66 0 5 0 122] 
#[0 9 70 0 8 0 78] 
#[0 9 74 0 5 0 122] 
#[0 21 173 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 21 177 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 21 181 0 2] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 21 185 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 21 189 0 4] 
#[0 21 193 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 21 197 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 21 201 0 3] 
#[0 9 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 2 161 0 11 9 209 0 74 9 213 0 86 21 205 1 104 9 217 1 163 9 221 1 165] 
#[1 4 181 0 4 4 185 0 74 21 209 1 36 4 197 1 37 4 201 1 234] 
#[1 4 181 0 4 4 185 0 74 21 213 1 36 4 197 1 37 21 217 1 234] 
#[0 9 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 2 161 0 11 9 209 0 74 9 213 0 86 21 221 1 104 9 217 1 163 9 221 1 165] 
#[0 21 225 0 3] 
#[0 21 229 0 8] 
#[0 21 233 0 4] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 21 237 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 9 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 21 241 1 7 15 25 1 8 0 6 1 234] 
#[0 9 90 0 5 0 122] 
#[0 9 94 0 78] 
#[0 9 98 0 5 0 122] 
#[0 21 245 0 55] 
#[0 9 102 0 5 0 122] 
#[0 9 106 0 5 0 122] 
#[0 9 110 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 21 249 0 5] 
#[0 9 114 0 5 0 122] 
#[0 9 118 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 9 122 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[1 3 233 0 4 3 237 0 6 21 253 0 7 4 33 0 121 9 149 0 122 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 13 249 0 225 13 249 0 226 22 1 0 227 7 65 1 234] 
#[0 9 126 0 7 0 122] 
#[0 22 5 0 7] 
#[0 9 130 0 8 0 122] 
#[0 9 134 0 8 0 122] 
#[0 22 9 0 8] 
#[0 9 138 0 3 0 5 0 7 0 122] 
#[0 9 142 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 98 0 99 0 100 0 101 0 102 0 110 0 122 0 123 0 125] 
#[0 9 146 0 3 0 5 0 7 0 23 0 43 0 52 0 122 0 123] 
#[0 9 150 0 3 0 5 0 7 0 23 0 43 0 52 0 122 0 123] 
#[0 9 154 0 3 0 5 0 7 0 23 0 43 0 52 0 122 0 123] 
#[0 9 158 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 98 0 99 0 100 0 101 0 102 0 110 0 122 0 123 0 125] 
#[1 9 162 0 3 9 162 0 5 9 162 0 7 8 37 0 23 22 21 0 43 22 21 0 52 9 162 0 122 12 149 0 123 22 13 0 159 22 17 1 139 22 21 1 171] 
#[0 9 166 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 52 0 98 0 99 0 100 0 101 0 102 0 110 0 122 0 123 0 125] 
#[0 9 170 0 3 0 5 0 7 0 122] 
#[1 9 174 0 3 9 174 0 5 9 174 0 7 8 37 0 23 9 174 0 122 22 25 0 159] 
#[0 9 178 0 3 0 5 0 7 0 122] 
#[1 22 29 0 4 22 33 1 234] 
#[0 22 37 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 22 41 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 22 45 0 3] 
#[0 9 182 0 5] 
#[0 22 49 0 5] 
#[0 9 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 84 0 87 0 88 0 90 0 93 0 94 0 95 0 97 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 122 0 123 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 1 233 1 234 1 235] 
#[1 0 193 0 125 2 189 0 142 22 53 1 120 2 245 1 121 2 249 1 122 22 53 1 162] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 22 57 1 7 15 25 1 8 0 6 1 234] 
#[0 22 61 0 4] 
#[0 22 65 0 3] 
#[0 22 69 0 4] 
#[0 9 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 73 0 197 22 73 0 198 1 1 1 6 22 73 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 73 1 15 1 1 1 20 22 73 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 9 194 0 3 0 122] 
#[0 9 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 86 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 22 77 1 110 22 77 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 22 77 1 133 22 77 1 134 2 221 1 135 2 221 1 137] 
#[0 9 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 22 81 0 3] 
#[1 22 85 0 3 22 89 0 122] 
#[0 22 93 0 137] 
#[0 9 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 9 210 0 5 0 122] 
#[0 9 214 0 5 0 122] 
#[1 6 21 0 122 9 218 0 135 9 218 0 136] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 97 0 197 22 97 0 198 22 97 0 200 1 1 1 6 22 97 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 97 1 15 1 1 1 20 22 97 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 9 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 9 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 9 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 9 234 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 9 238 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 22 101 0 9] 
#[1 0 101 0 2 0 14 0 4 0 126 0 5 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 4 89 0 121 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 22 113 0 150 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 113 0 197 22 113 0 198 1 1 1 6 22 113 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 113 1 15 1 1 1 20 22 113 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 22 113 1 97 1 209 1 98 22 117 1 99 1 213 1 154 1 217 1 234] 
#[0 9 242 0 4 0 9 0 14 0 23 0 138] 
#[0 22 121 0 14] 
#[1 8 58 0 14 22 125 1 101] 
#[0 22 129 0 14] 
#[0 9 246 0 4 0 9 0 14 0 138] 
#[1 6 94 0 4 22 133 0 129 0 15 0 137 22 133 1 73 22 145 1 76 22 145 1 77 1 201 1 78 22 145 1 80 22 145 1 93 1 209 1 98 22 149 1 103] 
#[0 9 250 0 4 0 9 0 14 0 138] 
#[0 9 254 0 4 0 137 0 139] 
#[1 4 89 0 121 22 153 0 150] 
#[0 10 2 0 4 0 8 0 19] 
#[0 10 6 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 84 0 87 0 122 0 123 0 135 0 136 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 22 157 1 7 15 25 1 8 0 6 1 234] 
#[0 22 161 0 5] 
#[1 10 10 0 4 10 10 0 8 10 10 0 19 12 149 0 123 22 165 1 139] 
#[1 22 169 0 3 6 21 0 122] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 22 173 0 201 22 173 0 204 22 173 0 205 22 173 0 206 22 173 0 214 22 173 0 228 22 173 0 229 22 173 0 230 22 173 0 231 22 173 0 232 22 173 0 233 22 173 0 234 22 173 0 235 22 173 0 238 22 173 0 239 22 173 0 241 22 173 0 242 22 173 0 243 22 173 0 248 22 173 0 250 22 173 0 251 22 173 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 22 177 0 3 6 21 0 122] 
#[1 0 101 0 2 22 181 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 185 0 197 22 185 0 198 22 185 0 200 1 1 1 6 22 185 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 185 1 15 1 1 1 20 22 185 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 22 189 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 193 0 197 22 193 0 198 22 193 0 200 1 1 1 6 22 193 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 193 1 15 1 1 1 20 22 193 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 197 0 197 22 197 0 198 22 197 0 200 1 1 1 6 22 197 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 197 1 15 1 1 1 20 22 197 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 201 0 197 22 201 0 198 1 1 1 6 22 201 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 201 1 15 1 1 1 20 22 201 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 22 205 0 3 6 21 0 122] 
#[0 22 209 0 3] 
#[1 0 101 0 2 22 213 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 217 0 197 22 217 0 198 22 217 0 200 1 1 1 6 22 217 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 217 1 15 1 1 1 20 22 217 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 22 221 0 8 6 21 0 122] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 22 225 0 201 22 225 0 204 22 225 0 205 22 225 0 206 22 225 0 214 22 225 0 228 22 225 0 229 22 225 0 230 22 225 0 231 22 225 0 232 22 225 0 233 22 225 0 234 22 225 0 235 22 225 0 238 22 225 0 239 22 225 0 241 22 225 0 242 22 225 0 243 22 225 0 248 22 225 0 250 22 225 0 251 22 225 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 22 229 0 3 6 21 0 122] 
#[1 0 101 0 2 22 233 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 237 0 197 22 237 0 198 22 237 0 200 1 1 1 6 22 237 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 237 1 15 1 1 1 20 22 237 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 22 241 0 3 6 21 0 122] 
#[0 22 245 0 3] 
#[0 8 118 0 97] 
#[0 8 122 0 97] 
#[0 22 249 0 97] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 22 253 0 197 22 253 0 198 1 1 1 6 22 253 1 9 1 129 1 10 1 133 1 11 1 137 1 14 22 253 1 15 1 1 1 20 22 253 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 23 1 0 197 23 1 0 198 1 1 1 6 23 1 1 9 1 129 1 10 1 133 1 11 1 137 1 14 23 1 1 15 1 1 1 20 23 1 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 10 14 0 1 10 14 0 2 10 14 0 4 10 14 0 5 10 14 0 6 10 14 0 8 10 14 0 35 10 14 0 36 10 14 0 37 10 14 0 38 10 14 0 39 10 14 0 52 10 14 0 56 10 14 0 57 10 14 0 58 10 14 0 59 10 14 0 61 10 14 0 62 10 14 0 63 10 14 0 65 10 14 0 66 10 14 0 67 10 14 0 68 10 14 0 69 10 14 0 70 23 5 0 71 10 14 0 72 10 14 0 73 10 14 0 75 10 14 0 77 10 14 0 79 10 14 0 82 10 14 0 83 10 14 0 88 10 14 0 90 10 14 0 93 10 14 0 94 10 14 0 95 10 14 0 103 10 14 0 107 10 14 0 108 10 14 0 110 10 14 0 111 10 14 0 112 10 14 0 113 10 14 0 114 10 14 0 115 10 14 0 116 10 14 0 117 10 14 0 118 10 14 0 119 10 14 0 120 10 14 0 125 10 14 0 127 10 14 0 129 10 14 0 130 10 14 0 131 10 14 0 133 10 14 0 134 10 14 0 137 10 14 1 234 10 14 1 235] 
#[1 23 9 0 5 23 13 0 59 23 17 0 68 23 21 0 245 23 25 0 246 23 29 0 247] 
#[0 10 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 10 22 0 3 23 33 1 234] 
#[0 10 26 0 3] 
#[0 23 37 0 3] 
#[0 10 30 0 8 0 122] 
#[0 10 34 0 8 0 122] 
#[0 10 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 23 41 0 5 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 20 21 0 143 20 21 0 155 20 21 0 156 20 21 0 157 7 109 1 73 7 113 1 74 23 45 1 176 20 29 1 177 20 33 1 178] 
#[0 23 49 0 4] 
#[1 4 185 0 74 23 53 1 37 4 201 1 234] 
#[0 10 46 0 8 0 122] 
#[0 10 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 193 0 125 16 33 0 142 23 57 1 217] 
#[0 23 61 0 8] 
#[1 0 34 0 4 0 34 0 6 11 229 0 72 0 215 0 125 16 33 0 142 16 37 1 216 16 41 1 217 0 34 1 234] 
#[1 11 233 0 61 19 197 0 63 6 177 0 72 11 241 0 79 11 245 0 81 19 205 0 83 6 193 0 88 19 209 0 90 12 1 0 93 12 5 0 116 23 65 0 210 0 69 0 211 23 69 1 159 23 89 1 175 23 73 1 186 23 77 1 215 23 81 1 218 23 85 1 219 23 89 1 225 23 93 1 226] 
#[1 0 193 0 125 23 97 0 142] 
#[1 0 42 0 4 0 42 0 6 0 219 0 125 16 33 0 142 16 53 1 216 16 41 1 217 0 42 1 234] 
#[0 10 54 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 58 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 62 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 66 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 70 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 74 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 78 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 82 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 23 101 0 5] 
#[1 10 86 0 5 11 233 0 61 19 197 0 63 6 177 0 72 19 201 0 73 11 241 0 79 11 245 0 81 19 205 0 83 6 193 0 88 19 209 0 90 12 1 0 93 12 5 0 116 19 213 0 210 0 69 0 211 19 217 1 159 19 237 1 175 19 221 1 186 19 225 1 215 19 229 1 218 19 233 1 219 19 237 1 225 19 241 1 226 23 105 1 229] 
#[0 10 90 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 10 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 38 0 1 10 98 0 5 16 145 0 67 0 39 0 73 16 153 0 83 6 193 0 88 6 197 0 93 6 201 0 114 23 109 1 34 23 145 1 55 23 145 1 149 23 145 1 159 23 145 1 180 23 145 1 186 23 145 1 200 23 137 1 204 23 141 1 205 23 145 1 206 23 145 1 209 23 145 1 211 23 145 1 212 23 145 1 213 23 145 1 214] 
#[1 8 162 0 5 11 233 0 61 19 197 0 63 6 177 0 72 19 201 0 73 11 241 0 79 11 245 0 81 19 205 0 83 6 193 0 88 19 209 0 90 12 1 0 93 12 5 0 116 19 213 0 210 0 69 0 211 19 217 1 159 19 237 1 175 19 221 1 186 19 225 1 215 19 229 1 218 19 233 1 219 19 237 1 225 19 241 1 226 23 169 1 227 19 249 1 228 19 253 1 229] 
#[0 10 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 10 110 0 5 23 173 0 23 10 110 0 122] 
#[0 23 177 0 5] 
#[1 10 114 0 5 23 181 0 122] 
#[0 10 118 0 5 0 122] 
#[0 10 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 8 153 0 78 23 185 1 60] 
#[1 23 189 0 8 8 153 0 78 23 193 1 60] 
#[0 23 197 0 4] 
#[0 23 201 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 23 205 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 23 209 0 3] 
#[0 1 230 0 8 0 22] 
#[1 10 134 0 8 23 213 0 22] 
#[0 23 217 0 8] 
#[0 23 221 0 2] 
#[0 10 138 0 4] 
#[0 10 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 2 153 0 4 23 225 1 123] 
#[0 10 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 38 0 1 0 38 0 61 0 38 0 62 6 169 0 63 16 145 0 67 6 177 0 72 3 129 0 79 19 205 0 83 6 193 0 88 0 69 0 90 6 197 0 93 6 201 0 114 2 13 0 116 23 229 0 210 0 69 0 211 23 233 0 214 23 237 1 5 23 241 1 19 23 245 1 33 3 169 1 34 23 249 1 149 23 253 1 159 24 1 1 175 24 5 1 180 24 9 1 186 24 13 1 214 16 201 1 234] 
#[1 4 221 0 2 4 225 0 22 0 193 0 125 23 97 0 142] 
#[0 10 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 24 17 0 5] 
#[1 0 38 0 1 0 101 0 2 0 19 0 4 10 186 0 5 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 35 0 61 0 38 0 62 6 169 0 63 1 233 0 65 1 237 0 66 16 145 0 67 0 145 0 69 1 241 0 70 6 177 0 72 20 105 0 73 1 177 0 75 1 245 0 77 6 185 0 79 1 249 0 82 20 109 0 83 6 193 0 88 0 69 0 90 6 197 0 93 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 6 201 0 114 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 24 21 0 201 24 21 0 204 24 21 0 205 24 21 0 206 24 21 0 210 0 69 0 211 24 21 0 214 24 21 0 228 24 21 0 229 24 21 0 230 24 21 0 231 24 21 0 232 24 21 0 233 24 21 0 234 24 21 0 235 24 21 0 238 24 21 0 239 24 21 0 241 24 21 0 242 24 21 0 243 24 21 0 248 24 21 0 250 24 21 0 251 24 21 0 255 24 21 1 5 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 24 21 1 19 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 24 21 1 33 3 169 1 34 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 24 21 1 149 1 213 1 154 24 21 1 159 24 21 1 175 24 21 1 180 24 21 1 184 24 21 1 185 24 21 1 186 24 21 1 214 7 41 1 234] 
#[0 10 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 10 206 0 4 0 22] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 24 25 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 24 25 1 133 24 25 1 134 2 221 1 135 2 221 1 137] 
#[0 24 29 0 8] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 24 33 0 48 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 24 37 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 24 37 1 133 24 37 1 134 2 221 1 135 2 221 1 137] 
#[1 4 181 0 4 4 185 0 74 0 193 0 125 24 41 0 142 4 193 1 36 4 197 1 37 4 201 1 234] 
#[1 12 53 0 2 12 57 0 26 0 193 0 125 24 45 0 142] 
#[1 0 130 0 2 0 130 0 6 0 223 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 134 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 53 0 130 0 54 0 130 0 84 0 130 0 87 0 130 0 133 0 130 0 134 0 130 1 233 0 130 1 234] 
#[0 24 53 0 8] 
#[0 10 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 218 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 10 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 24 57 0 23 2 158 0 78 2 158 0 122] 
#[0 24 61 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 24 65 1 7 15 25 1 8 0 6 1 234] 
#[0 10 230 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 10 234 0 4 0 5 0 8 0 122] 
#[0 24 69 0 7] 
#[0 24 73 0 7] 
#[1 10 238 0 5 10 238 0 8 10 238 0 122 12 149 0 123 24 77 1 139] 
#[0 24 81 0 3] 
#[0 10 242 0 5 0 8 0 122] 
#[1 10 246 0 4 10 246 0 5 10 246 0 8 10 246 0 122 12 149 0 123 24 85 1 139] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 24 89 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 24 89 1 133 24 89 1 134 2 221 1 135 2 221 1 137] 
#[0 24 93 0 19] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 24 97 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 24 97 1 133 24 97 1 134 2 221 1 135 2 221 1 137] 
#[0 10 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 24 101 0 4] 
#[0 24 105 0 3] 
#[1 24 109 0 4 24 113 1 234] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 24 117 1 7 15 25 1 8 0 6 1 234] 
#[0 24 121 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 24 125 1 7 15 25 1 8 0 6 1 234] 
#[1 12 149 0 123 24 129 1 139] 
#[1 2 214 0 3 8 37 0 23 10 254 0 123 9 85 0 159] 
#[1 2 218 0 3 8 37 0 23 11 2 0 123 9 93 0 159] 
#[0 24 133 0 3] 
#[1 12 149 0 123 24 137 1 139] 
#[0 24 141 0 3] 
#[0 24 145 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 24 149 1 7 15 25 1 8 0 6 1 234] 
#[0 11 6 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[1 24 153 0 4 24 157 0 8] 
#[0 24 161 0 3] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 24 165 1 7 15 25 1 8 0 6 1 234] 
#[0 11 10 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 7 69 0 2 2 161 0 11 7 117 1 104 24 169 1 140] 
#[1 9 54 0 8 8 37 0 23 24 181 0 43 24 181 0 52 12 149 0 123 21 117 0 159 24 173 1 139 24 177 1 170 24 181 1 171] 
#[1 24 185 0 4 24 189 0 8] 
#[0 11 14 0 8] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 24 193 1 170] 
#[0 24 197 0 8] 
#[1 9 54 0 8 8 37 0 23 12 149 0 123 21 117 0 159 24 201 1 139 24 205 1 170] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 24 209 1 7 15 25 1 8 0 6 1 234] 
#[0 11 18 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 7 69 0 2 2 161 0 11 7 117 1 104 24 213 1 140] 
#[1 24 217 0 4 24 221 0 8] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 24 225 0 143 24 225 0 155 24 225 0 156 24 225 0 157 7 109 1 73 7 113 1 74] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 23 2 70 0 43 2 70 0 52 2 70 0 123 24 229 1 43 7 117 1 104 24 233 1 140] 
#[0 11 22 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 11 26 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 9 54 0 8 8 37 0 23 24 245 0 43 24 245 0 52 12 149 0 123 21 117 0 159 24 237 1 139 24 241 1 170 24 245 1 171] 
#[1 24 249 0 4 24 253 0 8] 
#[1 25 1 0 4 25 5 1 234] 
#[0 25 9 0 3] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 25 13 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 25 17 0 3] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 21 1 7 15 25 1 8 0 6 1 234] 
#[0 25 25 0 4] 
#[0 25 29 0 3] 
#[0 25 33 0 4] 
#[1 4 181 0 4 4 185 0 74 25 37 1 36 4 197 1 37 4 201 1 234] 
#[0 11 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 11 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 2 161 0 11 9 209 0 74 9 213 0 86 25 41 1 104 9 217 1 163 9 221 1 165] 
#[1 4 181 0 4 4 185 0 74 25 45 1 36 4 197 1 37 4 201 1 234] 
#[1 8 106 0 4 8 234 0 8 12 149 0 123 25 49 1 139] 
#[0 11 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 53 1 7 15 25 1 8 0 6 1 234] 
#[0 25 57 0 3] 
#[0 25 61 0 5] 
#[1 0 193 0 125 25 65 0 142 25 65 1 64] 
#[0 11 42 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 11 46 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 25 69 0 7] 
#[0 11 50 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 11 54 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 82 0 83 0 90 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 11 58 0 3 0 5 0 7 0 122] 
#[1 11 62 0 3 11 62 0 5 11 62 0 7 8 37 0 23 11 62 0 122 25 73 0 159] 
#[1 11 66 0 3 11 66 0 5 11 66 0 7 11 66 0 122 12 149 0 123 25 77 1 139] 
#[0 11 70 0 3 0 5 0 7 0 122] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 25 81 1 31 0 6 1 234] 
#[1 12 149 0 123 25 85 1 139] 
#[0 25 89 0 4] 
#[0 25 93 0 3] 
#[1 25 97 0 4 25 101 1 234] 
#[0 11 74 0 3 0 5 0 7 0 8 0 122 0 123 0 135 0 136 1 235] 
#[0 11 78 0 4 0 122] 
#[0 25 105 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 109 1 7 15 25 1 8 25 113 1 22 0 6 1 234] 
#[0 25 117 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 121 1 7 15 25 1 8 0 6 1 234] 
#[0 11 82 0 3 0 122] 
#[0 11 86 0 14 0 122] 
#[0 11 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 11 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 101 0 2 25 125 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 18 165 0 121 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 18 169 0 197 18 169 0 198 1 1 1 6 18 169 1 9 1 129 1 10 1 133 1 11 1 137 1 14 18 169 1 15 1 1 1 20 18 169 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 25 129 0 9] 
#[1 6 21 0 122 11 98 0 135 11 98 0 136] 
#[1 11 102 0 14 11 45 0 138 25 133 1 81 25 133 1 82 25 133 1 83 11 61 1 84 11 65 1 85 25 137 1 102] 
#[0 11 106 0 5] 
#[0 11 110 0 5] 
#[1 0 126 0 5 25 141 1 99] 
#[0 25 145 0 5] 
#[0 11 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 233 1 234 1 235] 
#[0 25 149 0 14] 
#[0 11 118 0 4 0 137 0 139] 
#[0 11 122 0 4 0 9 0 14 0 138] 
#[0 11 126 0 4 0 9 0 14 0 138] 
#[0 11 130 0 4 0 9 0 14 0 138] 
#[0 11 134 0 4 0 9 0 14 0 138] 
#[0 25 153 0 4] 
#[1 0 22 0 5 25 157 1 98] 
#[0 25 161 0 5] 
#[0 11 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 11 142 0 4 0 8 0 19] 
#[0 25 165 0 8] 
#[0 11 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 169 0 201 25 169 0 204 25 169 0 205 25 169 0 206 25 169 0 214 25 169 0 228 25 169 0 229 25 169 0 230 25 169 0 231 25 169 0 232 25 169 0 233 25 169 0 234 25 169 0 235 25 169 0 238 25 169 0 239 25 169 0 241 25 169 0 242 25 169 0 243 25 169 0 248 25 169 0 250 25 169 0 251 25 169 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 173 0 201 25 173 0 204 25 173 0 205 25 173 0 206 25 173 0 214 25 173 0 228 25 173 0 229 25 173 0 230 25 173 0 231 25 173 0 232 25 173 0 233 25 173 0 234 25 173 0 235 25 173 0 238 25 173 0 239 25 173 0 241 25 173 0 242 25 173 0 243 25 173 0 248 25 173 0 250 25 173 0 251 25 173 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 25 177 0 3 6 21 0 122] 
#[1 0 101 0 2 25 181 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 25 185 0 197 25 185 0 198 25 185 0 200 1 1 1 6 25 185 1 9 1 129 1 10 1 133 1 11 1 137 1 14 25 185 1 15 1 1 1 20 25 185 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 25 189 0 8 6 21 0 122] 
#[1 25 193 0 3 6 21 0 122] 
#[0 25 197 0 3] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 201 0 201 25 201 0 204 25 201 0 205 25 201 0 206 25 201 0 214 25 201 0 228 25 201 0 229 25 201 0 230 25 201 0 231 25 201 0 232 25 201 0 233 25 201 0 234 25 201 0 235 25 201 0 238 25 201 0 239 25 201 0 241 25 201 0 242 25 201 0 243 25 201 0 248 25 201 0 250 25 201 0 251 25 201 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 205 0 201 25 205 0 204 25 205 0 205 25 205 0 206 25 205 0 214 25 205 0 228 25 205 0 229 25 205 0 230 25 205 0 231 25 205 0 232 25 205 0 233 25 205 0 234 25 205 0 235 25 205 0 238 25 205 0 239 25 205 0 241 25 205 0 242 25 205 0 243 25 205 0 248 25 205 0 250 25 205 0 251 25 205 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 209 0 201 25 209 0 204 25 209 0 205 25 209 0 206 25 209 0 214 25 209 0 228 25 209 0 229 25 209 0 230 25 209 0 231 25 209 0 232 25 209 0 233 25 209 0 234 25 209 0 235 25 209 0 238 25 209 0 239 25 209 0 241 25 209 0 242 25 209 0 243 25 209 0 248 25 209 0 250 25 209 0 251 25 209 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 25 213 0 3 6 21 0 122] 
#[1 0 101 0 2 25 217 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 25 221 0 197 25 221 0 198 25 221 0 200 1 1 1 6 25 221 1 9 1 129 1 10 1 133 1 11 1 137 1 14 25 221 1 15 1 1 1 20 25 221 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 11 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 225 0 201 25 225 0 204 25 225 0 205 25 225 0 206 25 225 0 214 25 225 0 228 25 225 0 229 25 225 0 230 25 225 0 231 25 225 0 232 25 225 0 233 25 225 0 234 25 225 0 235 25 225 0 238 25 225 0 239 25 225 0 241 25 225 0 242 25 225 0 243 25 225 0 248 25 225 0 250 25 225 0 251 25 225 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 229 0 201 25 229 0 204 25 229 0 205 25 229 0 206 25 229 0 214 25 229 0 228 25 229 0 229 25 229 0 230 25 229 0 231 25 229 0 232 25 229 0 233 25 229 0 234 25 229 0 235 25 229 0 238 25 229 0 239 25 229 0 241 25 229 0 242 25 229 0 243 25 229 0 248 25 229 0 250 25 229 0 251 25 229 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 25 233 0 3 6 21 0 122] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 237 0 201 25 237 0 204 25 237 0 205 25 237 0 206 25 237 0 214 25 237 0 228 25 237 0 229 25 237 0 230 25 237 0 231 25 237 0 232 25 237 0 233 25 237 0 234 25 237 0 235 25 237 0 238 25 237 0 239 25 237 0 241 25 237 0 242 25 237 0 243 25 237 0 248 25 237 0 250 25 237 0 251 25 237 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 25 241 0 201 25 241 0 204 25 241 0 205 25 241 0 206 25 241 0 214 25 241 0 228 25 241 0 229 25 241 0 230 25 241 0 231 25 241 0 232 25 241 0 233 25 241 0 234 25 241 0 235 25 241 0 238 25 241 0 239 25 241 0 241 25 241 0 242 25 241 0 243 25 241 0 248 25 241 0 250 25 241 0 251 25 241 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 25 245 0 197 25 245 0 198 1 1 1 6 25 245 1 9 1 129 1 10 1 133 1 11 1 137 1 14 25 245 1 15 1 1 1 20 25 245 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 25 249 0 3] 
#[0 25 253 0 3] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 26 1 0 201 26 1 0 204 26 1 0 205 26 1 0 206 26 1 0 214 26 1 0 228 26 1 0 229 26 1 0 230 26 1 0 231 26 1 0 232 26 1 0 233 26 1 0 234 26 1 0 235 26 1 0 238 26 1 0 239 26 1 0 241 26 1 0 242 26 1 0 243 26 1 0 248 26 1 0 250 26 1 0 251 26 1 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 11 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 26 5 0 197 26 5 0 198 26 5 0 200 1 1 1 6 26 5 1 9 1 129 1 10 1 133 1 11 1 137 1 14 26 5 1 15 1 1 1 20 26 5 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 26 9 0 123] 
#[1 26 13 0 5 23 13 0 59 23 17 0 68 26 17 0 246 26 21 0 247] 
#[0 11 158 0 5 0 59 0 68] 
#[1 26 25 0 5 23 13 0 59 26 29 0 245 23 25 0 246] 
#[1 12 149 0 123 26 33 1 139] 
#[1 1 221 0 4 26 37 0 206] 
#[0 11 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 26 41 0 5] 
#[1 11 166 0 5 7 77 0 6 26 45 0 64 26 57 0 98 26 57 0 99 26 57 0 100 26 57 0 101 26 49 0 105 7 89 0 126 7 109 0 129 7 113 0 130 26 53 0 143 26 53 0 155 26 53 0 156 26 53 0 157 7 109 1 73 7 113 1 74 26 57 1 144 26 73 1 147 26 65 1 220 26 69 1 221 26 73 1 222 26 73 1 223 26 73 1 224] 
#[0 26 85 0 4] 
#[0 11 170 0 8 0 122] 
#[0 11 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 11 178 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 182 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 186 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 190 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 194 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 198 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 202 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 11 206 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[0 24 57 0 23] 
#[0 11 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 11 214 0 5 0 61 0 63 0 72 0 73 0 79 0 81 0 83 0 88 0 90 0 93 0 116] 
#[1 8 137 0 1 26 89 0 73 8 149 1 231] 
#[0 11 218 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 222 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 226 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 230 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 234 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 238 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 26 93 0 5] 
#[1 0 38 0 1 11 242 0 5 16 145 0 67 0 39 0 73 16 153 0 83 6 193 0 88 6 197 0 93 6 201 0 114 23 109 1 34 26 97 1 55 26 97 1 149 26 97 1 159 26 97 1 180 26 97 1 186 26 97 1 200 26 97 1 206 26 97 1 209 26 97 1 211 26 97 1 212 26 97 1 213 26 97 1 214] 
#[0 11 246 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 250 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 11 254 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 12 2 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 12 6 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 12 10 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 26 101 0 5] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 26 109 0 197 26 109 0 198 1 1 1 6 26 109 1 9 1 129 1 10 1 133 1 11 1 137 1 14 26 109 1 15 1 1 1 20 26 109 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 26 109 1 179 1 217 1 234] 
#[0 12 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 12 18 0 5 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 20 21 0 143 20 21 0 155 20 21 0 156 20 21 0 157 7 109 1 73 7 113 1 74 26 113 1 178] 
#[0 26 117 0 8] 
#[0 12 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 26 121 0 8] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 26 125 1 7 15 25 1 8 0 6 1 234] 
#[0 26 129 0 4] 
#[0 26 133 0 3] 
#[0 26 137 0 4] 
#[1 0 193 0 125 26 141 0 142] 
#[0 12 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 26 145 0 129 1 73] 
#[0 12 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 12 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234] 
#[0 26 149 0 8] 
#[0 12 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 26 153 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 26 153 1 133 26 153 1 134 2 221 1 135 2 221 1 137] 
#[0 26 157 0 8] 
#[1 4 181 0 4 2 161 0 11 4 185 0 74 9 201 1 36 26 161 1 37 19 177 1 104 4 201 1 234] 
#[1 26 165 0 2 2 161 0 11 7 117 1 104 19 193 1 140] 
#[0 12 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 94 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 193 0 125 20 73 0 142 20 77 1 122 20 81 1 187] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 26 169 1 7 15 25 1 8 0 6 1 234] 
#[0 26 173 0 5] 
#[1 12 149 0 123 26 177 1 139] 
#[1 12 149 0 123 26 181 1 139] 
#[0 12 98 0 5 0 8 0 122] 
#[1 12 102 0 5 12 102 0 8 12 102 0 122 12 149 0 123 26 185 1 139] 
#[0 12 106 0 4 0 5 0 8 0 122] 
#[0 12 110 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 11 2 165 0 85 2 169 0 89 2 173 0 94 2 177 0 110 2 181 0 115 2 185 0 117 0 193 0 125 2 193 0 129 2 197 0 130 2 189 0 142 2 193 1 73 2 197 1 74 2 201 1 104 26 189 1 111 2 209 1 112 2 213 1 113 2 213 1 114 2 221 1 115 2 221 1 116 2 221 1 117 2 221 1 118 2 221 1 119 2 221 1 120 2 245 1 121 2 249 1 122 2 221 1 123 2 221 1 127 2 221 1 128 2 209 1 131 2 213 1 132 26 189 1 133 26 189 1 134 2 221 1 135 2 221 1 137] 
#[0 12 114 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 109 1 7 15 25 1 8 26 193 1 22 0 6 1 234] 
#[0 26 197 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 26 201 1 31 0 6 1 234] 
#[1 12 149 0 123 26 205 1 139] 
#[0 26 209 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 26 213 1 7 15 25 1 8 0 6 1 234] 
#[0 26 217 0 5] 
#[0 26 221 0 4] 
#[1 12 149 0 123 26 225 1 139] 
#[0 12 118 0 3] 
#[1 26 229 0 4 12 149 0 123 26 233 1 139] 
#[0 12 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 26 237 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 26 241 1 7 15 25 1 8 0 6 1 234] 
#[0 12 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 12 130 0 4 12 130 0 8 12 149 0 123 26 245 1 139] 
#[0 26 249 0 5] 
#[1 26 253 0 4 27 1 0 8] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 27 5 1 170] 
#[0 27 9 0 8] 
#[1 9 54 0 8 8 37 0 23 12 149 0 123 21 117 0 159 27 13 1 139 27 17 1 170] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 21 1 7 15 25 1 8 0 6 1 234] 
#[0 12 134 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 27 25 0 8] 
#[0 12 138 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 27 29 1 170] 
#[0 27 33 0 8] 
#[0 27 37 0 5] 
#[1 27 41 0 4 27 45 0 8] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 49 1 7 15 25 1 8 0 6 1 234] 
#[0 12 142 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 7 69 0 2 2 161 0 11 7 117 1 104 27 53 1 140] 
#[1 9 54 0 8 8 37 0 23 27 65 0 43 27 65 0 52 12 149 0 123 21 117 0 159 27 57 1 139 27 61 1 170 27 65 1 171] 
#[1 27 69 0 4 27 73 0 8] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 27 77 1 170] 
#[0 27 81 0 8] 
#[1 9 54 0 8 8 37 0 23 12 149 0 123 21 117 0 159 27 85 1 139 27 89 1 170] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 93 1 7 15 25 1 8 0 6 1 234] 
#[0 12 146 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 27 97 1 31 0 6 1 234] 
#[1 12 149 0 123 27 101 1 139] 
#[0 27 105 0 4] 
#[0 27 109 0 3] 
#[1 27 113 0 4 27 117 1 234] 
#[0 27 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 109 1 7 15 25 1 8 27 125 1 22 0 6 1 234] 
#[0 27 129 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 133 1 7 15 25 1 8 0 6 1 234] 
#[0 12 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 4 181 0 4 4 185 0 74 27 137 1 36 4 197 1 37 4 201 1 234] 
#[0 12 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 10 2 0 4 10 234 0 8] 
#[0 27 141 0 5] 
#[1 10 10 0 4 10 246 0 8 12 149 0 123 27 145 1 139] 
#[0 12 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 162 0 5 0 122] 
#[0 12 166 0 3 0 5 0 7 0 23 0 43 0 52 0 84 0 97 0 122 0 123] 
#[0 12 170 0 3 0 5 0 7 0 122] 
#[0 12 174 0 3 0 5 0 7 0 122] 
#[0 27 149 0 5] 
#[0 27 153 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 157 1 7 15 25 1 8 27 161 1 27 0 6 1 234] 
#[0 27 165 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 27 169 1 31 0 6 1 234] 
#[1 12 149 0 123 27 173 1 139] 
#[0 12 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 12 182 0 5] 
#[0 27 177 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 109 1 7 15 25 1 8 27 181 1 22 0 6 1 234] 
#[0 27 185 0 5] 
#[0 12 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 61 0 62 0 64 0 73 0 84 0 87 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 110 0 122 0 123 0 125 0 126 0 129 0 130 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 11 102 0 14 27 189 1 102] 
#[1 11 102 0 14 27 193 1 102] 
#[0 27 197 0 14] 
#[0 27 201 0 5] 
#[0 12 190 0 4 0 137 0 139] 
#[0 12 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 233 1 234 1 235] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 27 205 0 197 27 205 0 198 1 1 1 6 27 205 1 9 1 129 1 10 1 133 1 11 1 137 1 14 27 205 1 15 1 1 1 20 27 205 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 27 209 0 5] 
#[0 12 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 12 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 27 213 0 201 27 213 0 204 27 213 0 205 27 213 0 206 27 213 0 214 27 213 0 228 27 213 0 229 27 213 0 230 27 213 0 231 27 213 0 232 27 213 0 233 27 213 0 234 27 213 0 235 27 213 0 238 27 213 0 239 27 213 0 241 27 213 0 242 27 213 0 243 27 213 0 248 27 213 0 250 27 213 0 251 27 213 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 27 217 0 201 27 217 0 204 27 217 0 205 27 217 0 206 27 217 0 214 27 217 0 228 27 217 0 229 27 217 0 230 27 217 0 231 27 217 0 232 27 217 0 233 27 217 0 234 27 217 0 235 27 217 0 238 27 217 0 239 27 217 0 241 27 217 0 242 27 217 0 243 27 217 0 248 27 217 0 250 27 217 0 251 27 217 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 27 221 0 3 6 21 0 122] 
#[1 0 101 0 2 27 225 0 3 0 14 0 4 0 105 0 6 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 0 141 0 61 0 145 0 69 1 177 0 75 0 153 0 79 0 157 0 83 0 161 0 94 1 173 0 95 0 169 0 107 0 173 0 110 1 177 0 112 0 181 0 115 0 185 0 117 0 189 0 120 0 193 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 27 229 0 197 27 229 0 198 27 229 0 200 1 1 1 6 27 229 1 9 1 129 1 10 1 133 1 11 1 137 1 14 27 229 1 15 1 1 1 20 27 229 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 27 233 0 201 27 233 0 204 27 233 0 205 27 233 0 206 27 233 0 214 27 233 0 228 27 233 0 229 27 233 0 230 27 233 0 231 27 233 0 232 27 233 0 233 27 233 0 234 27 233 0 235 27 233 0 238 27 233 0 239 27 233 0 241 27 233 0 242 27 233 0 243 27 233 0 248 27 233 0 250 27 233 0 251 27 233 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 27 237 0 201 27 237 0 204 27 237 0 205 27 237 0 206 27 237 0 214 27 237 0 228 27 237 0 229 27 237 0 230 27 237 0 231 27 237 0 232 27 237 0 233 27 237 0 234 27 237 0 235 27 237 0 238 27 237 0 239 27 237 0 241 27 237 0 242 27 237 0 243 27 237 0 248 27 237 0 250 27 237 0 251 27 237 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 12 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 27 241 0 201 27 241 0 204 27 241 0 205 27 241 0 206 27 241 0 214 27 241 0 228 27 241 0 229 27 241 0 230 27 241 0 231 27 241 0 232 27 241 0 233 27 241 0 234 27 241 0 235 27 241 0 238 27 241 0 239 27 241 0 241 27 241 0 242 27 241 0 243 27 241 0 248 27 241 0 250 27 241 0 251 27 241 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 27 245 0 201 27 245 0 204 27 245 0 205 27 245 0 206 27 245 0 214 27 245 0 228 27 245 0 229 27 245 0 230 27 245 0 231 27 245 0 232 27 245 0 233 27 245 0 234 27 245 0 235 27 245 0 238 27 245 0 239 27 245 0 241 27 245 0 242 27 245 0 243 27 245 0 248 27 245 0 250 27 245 0 251 27 245 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 27 249 0 3 6 21 0 122] 
#[0 12 226 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 27 253 0 201 27 253 0 204 27 253 0 205 27 253 0 206 27 253 0 214 27 253 0 228 27 253 0 229 27 253 0 230 27 253 0 231 27 253 0 232 27 253 0 233 27 253 0 234 27 253 0 235 27 253 0 238 27 253 0 239 27 253 0 241 27 253 0 242 27 253 0 243 27 253 0 248 27 253 0 250 27 253 0 251 27 253 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 12 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 28 1 0 3] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 28 5 0 201 28 5 0 204 28 5 0 205 28 5 0 206 28 5 0 214 28 5 0 228 28 5 0 229 28 5 0 230 28 5 0 231 28 5 0 232 28 5 0 233 28 5 0 234 28 5 0 235 28 5 0 238 28 5 0 239 28 5 0 241 28 5 0 242 28 5 0 243 28 5 0 248 28 5 0 250 28 5 0 251 28 5 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 28 9 0 201 28 9 0 204 28 9 0 205 28 9 0 206 28 9 0 214 28 9 0 228 28 9 0 229 28 9 0 230 28 9 0 231 28 9 0 232 28 9 0 233 28 9 0 234 28 9 0 235 28 9 0 238 28 9 0 239 28 9 0 241 28 9 0 242 28 9 0 243 28 9 0 248 28 9 0 250 28 9 0 251 28 9 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 12 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 6 21 0 122 28 13 0 123] 
#[1 0 6 0 2 0 6 0 4 12 246 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 12 246 0 59 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 28 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 0 6 1 234] 
#[0 12 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 12 254 0 5 0 59 0 68] 
#[1 28 21 0 5 23 13 0 59 28 25 0 245 23 25 0 246] 
#[0 13 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 28 29 0 5 23 13 0 59 26 17 0 246] 
#[0 13 6 0 3] 
#[0 13 10 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 28 33 0 2] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 28 37 0 143 28 37 0 155 28 37 0 156 28 37 0 157 7 109 1 73 7 113 1 74] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 123 28 41 1 43 7 117 1 104 28 45 1 140] 
#[1 8 233 0 6 28 49 0 64 28 53 0 105 7 89 0 126 7 109 0 129 7 113 0 130 28 57 0 143 28 57 0 155 28 57 0 156 28 57 0 157 7 109 1 73 7 113 1 74] 
#[0 13 18 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 28 61 0 5] 
#[1 13 22 0 5 7 77 0 6 26 45 0 64 26 57 0 98 26 57 0 99 26 57 0 100 26 57 0 101 26 49 0 105 7 89 0 126 7 109 0 129 7 113 0 130 26 53 0 143 26 53 0 155 26 53 0 156 26 53 0 157 7 109 1 73 7 113 1 74 26 57 1 144 28 65 1 147 28 65 1 222 28 65 1 223 28 65 1 224] 
#[0 13 26 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 13 30 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 13 34 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 11 166 0 5 7 77 0 6 26 45 0 64 26 57 0 98 26 57 0 99 26 57 0 100 26 57 0 101 26 49 0 105 7 89 0 126 7 109 0 129 7 113 0 130 26 53 0 143 26 53 0 155 26 53 0 156 26 53 0 157 7 109 1 73 7 113 1 74 26 57 1 144 26 73 1 147 28 69 1 220 26 69 1 221 26 73 1 222 26 73 1 223 26 73 1 224] 
#[1 16 145 0 67 28 73 0 68 19 205 0 83 6 193 0 88 6 201 0 114 28 77 1 149 28 81 1 159 16 193 1 186 28 85 1 214] 
#[0 13 38 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 42 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 13 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 50 0 5 0 122] 
#[0 13 54 0 5 0 122] 
#[0 13 58 0 5 0 122] 
#[0 13 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 28 89 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 109 1 7 15 25 1 8 28 93 1 22 0 6 1 234] 
#[0 28 97 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 28 101 1 7 15 25 1 8 0 6 1 234] 
#[0 7 6 0 8 0 22] 
#[0 28 105 0 3] 
#[0 13 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 28 109 0 8] 
#[0 13 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 28 113 0 4] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 28 117 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[0 28 121 0 5] 
#[1 12 158 0 1 0 227 0 2 12 158 0 4 12 158 0 5 0 227 0 6 0 227 0 8 11 138 0 9 11 138 0 10 11 138 0 11 11 138 0 12 11 138 0 13 11 138 0 14 11 138 0 15 11 138 0 16 11 138 0 17 11 138 0 18 11 138 0 20 11 138 0 21 11 138 0 22 11 138 0 23 11 138 0 24 11 138 0 25 11 138 0 26 11 138 0 27 11 138 0 28 11 138 0 29 11 138 0 30 11 138 0 31 11 138 0 32 11 138 0 33 11 138 0 34 0 227 0 35 0 227 0 36 0 227 0 37 0 227 0 38 12 158 0 39 11 138 0 40 11 138 0 41 11 138 0 42 11 138 0 43 11 138 0 44 11 138 0 45 11 138 0 46 11 138 0 47 11 138 0 48 11 138 0 49 11 138 0 50 11 138 0 51 12 158 0 52 11 138 0 53 11 138 0 54 12 158 0 56 12 158 0 57 12 158 0 58 12 158 0 61 12 158 0 62 12 158 0 63 12 158 0 65 12 158 0 66 12 158 0 67 12 158 0 69 12 158 0 70 12 158 0 72 12 158 0 73 12 158 0 75 12 158 0 77 12 158 0 79 12 158 0 82 12 158 0 83 11 138 0 84 11 138 0 87 12 158 0 88 12 158 0 90 12 158 0 93 12 158 0 94 12 158 0 95 12 158 0 103 12 158 0 107 12 158 0 108 12 158 0 110 12 158 0 111 12 158 0 112 12 158 0 113 12 158 0 114 12 158 0 115 12 158 0 116 12 158 0 117 12 158 0 118 12 158 0 119 12 158 0 120 11 138 0 122 12 158 0 125 12 158 0 127 12 158 0 129 12 158 0 130 12 158 0 131 0 227 0 133 0 227 0 134 12 158 0 137 11 138 1 233 0 227 1 234 12 158 1 235] 
#[0 13 78 0 5 0 6 0 8 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 13 82 0 5 0 6 0 8 0 64 0 98 0 99 0 100 0 101 0 105 0 122 0 126 0 129 0 130] 
#[0 13 86 0 5 0 8 0 122] 
#[0 13 90 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 84 0 87 0 98 0 99 0 100 0 101 0 105 0 122 0 123 0 126 0 129 0 130 0 135 0 136 1 234 1 235] 
#[0 28 125 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 157 1 7 15 25 1 8 28 129 1 27 0 6 1 234] 
#[0 28 133 0 5] 
#[0 28 137 0 4] 
#[0 13 94 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 28 141 0 5] 
#[0 13 98 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 28 145 1 7 15 25 1 8 0 6 1 234] 
#[0 28 149 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 28 153 1 7 15 25 1 8 0 6 1 234] 
#[0 28 157 0 4] 
#[0 13 102 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 28 161 0 5] 
#[0 13 106 0 4 0 8] 
#[0 13 110 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 28 165 1 7 15 25 1 8 0 6 1 234] 
#[0 13 114 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 28 169 0 8] 
#[0 13 118 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 28 173 1 170] 
#[0 28 177 0 8] 
#[0 28 181 0 5] 
#[0 13 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 28 185 0 8] 
#[0 13 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 13 130 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 28 189 1 7 15 25 1 8 0 6 1 234] 
#[0 13 134 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 28 193 0 5] 
#[1 28 197 0 4 28 201 0 8] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 28 205 1 170] 
#[0 28 209 0 8] 
#[1 9 54 0 8 8 37 0 23 12 149 0 123 21 117 0 159 28 213 1 139 28 217 1 170] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 28 221 1 7 15 25 1 8 0 6 1 234] 
#[0 13 138 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 28 225 0 8] 
#[0 13 142 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 28 229 1 170] 
#[0 28 233 0 8] 
#[0 28 237 0 5] 
#[0 28 241 0 5] 
#[0 28 245 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 157 1 7 15 25 1 8 28 249 1 27 0 6 1 234] 
#[0 28 253 0 4] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 29 1 1 31 0 6 1 234] 
#[1 12 149 0 123 29 5 1 139] 
#[0 13 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 29 9 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 109 1 7 15 25 1 8 29 13 1 22 0 6 1 234] 
#[0 29 17 0 5] 
#[0 13 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 11 142 0 4 12 106 0 8] 
#[0 13 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 29 21 1 31 0 6 1 234] 
#[0 13 162 0 5] 
#[0 29 25 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 157 1 7 15 25 1 8 29 29 1 27 0 6 1 234] 
#[0 29 33 0 5] 
#[0 29 37 0 4] 
#[0 13 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 29 41 0 5] 
#[0 13 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 29 45 0 14] 
#[0 29 49 0 14] 
#[0 13 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 233 1 234 1 235] 
#[0 13 178 0 4 0 137 0 139] 
#[1 0 22 0 5 29 53 1 98] 
#[0 13 182 0 4 0 9 0 14 0 138] 
#[0 13 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 29 57 0 201 29 57 0 204 29 57 0 205 29 57 0 206 29 57 0 214 29 57 0 228 29 57 0 229 29 57 0 230 29 57 0 231 29 57 0 232 29 57 0 233 29 57 0 234 29 57 0 235 29 57 0 238 29 57 0 239 29 57 0 241 29 57 0 242 29 57 0 243 29 57 0 248 29 57 0 250 29 57 0 251 29 57 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 29 61 0 201 29 61 0 204 29 61 0 205 29 61 0 206 29 61 0 214 29 61 0 228 29 61 0 229 29 61 0 230 29 61 0 231 29 61 0 232 29 61 0 233 29 61 0 234 29 61 0 235 29 61 0 238 29 61 0 239 29 61 0 241 29 61 0 242 29 61 0 243 29 61 0 248 29 61 0 250 29 61 0 251 29 61 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[1 29 65 0 3 6 21 0 122] 
#[0 13 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 202 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 206 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 29 69 0 201 29 69 0 204 29 69 0 205 29 69 0 206 29 69 0 214 29 69 0 228 29 69 0 229 29 69 0 230 29 69 0 231 29 69 0 232 29 69 0 233 29 69 0 234 29 69 0 235 29 69 0 238 29 69 0 239 29 69 0 241 29 69 0 242 29 69 0 243 29 69 0 248 29 69 0 250 29 69 0 251 29 69 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 13 210 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 29 73 0 201 29 73 0 204 29 73 0 205 29 73 0 206 29 73 0 214 29 73 0 228 29 73 0 229 29 73 0 230 29 73 0 231 29 73 0 232 29 73 0 233 29 73 0 234 29 73 0 235 29 73 0 238 29 73 0 239 29 73 0 241 29 73 0 242 29 73 0 243 29 73 0 248 29 73 0 250 29 73 0 251 29 73 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 13 214 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 13 222 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 222 0 59 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 13 222 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 29 77 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 0 6 1 234] 
#[1 0 6 0 2 0 6 0 4 13 226 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 226 0 59 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 165 0 208 0 61 0 209 6 165 0 210 0 69 0 211 0 6 1 234] 
#[0 13 230 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 29 81 0 5 23 13 0 59 26 17 0 246] 
#[0 13 234 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 29 85 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 123 29 89 1 43 7 117 1 104 29 93 1 140] 
#[1 29 97 0 8 12 149 0 123 29 101 1 139] 
#[0 29 105 0 8] 
#[0 29 109 0 2] 
#[1 8 233 0 6 7 89 0 126 7 109 0 129 7 113 0 130 29 113 0 143 29 113 0 155 29 113 0 156 29 113 0 157 7 109 1 73 7 113 1 74] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 123 29 117 1 43 7 117 1 104 29 121 1 140] 
#[0 13 238 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 13 242 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 29 125 0 5] 
#[1 11 233 0 61 11 241 0 79 0 193 0 125 29 129 0 142 20 217 1 218 20 221 1 219] 
#[0 8 202 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 8 210 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[0 8 226 0 1 0 5 0 67 0 73 0 83 0 88 0 93 0 114] 
#[1 13 146 0 1 0 231 0 2 13 146 0 4 13 146 0 5 0 231 0 6 0 231 0 8 12 178 0 9 12 178 0 10 12 178 0 11 12 178 0 12 12 178 0 13 12 178 0 14 12 178 0 15 12 178 0 16 12 178 0 17 12 178 0 18 12 178 0 20 12 178 0 21 12 178 0 22 12 178 0 23 12 178 0 24 12 178 0 25 12 178 0 26 12 178 0 27 12 178 0 28 12 178 0 29 12 178 0 30 12 178 0 31 12 178 0 32 12 178 0 33 12 178 0 34 0 231 0 35 0 231 0 36 0 231 0 37 0 231 0 38 13 146 0 39 12 178 0 40 12 178 0 41 12 178 0 42 12 178 0 43 12 178 0 44 12 178 0 45 12 178 0 46 12 178 0 47 12 178 0 48 12 178 0 49 12 178 0 50 12 178 0 51 13 146 0 52 12 178 0 53 12 178 0 54 13 146 0 56 13 146 0 57 13 146 0 58 13 146 0 61 13 146 0 62 13 146 0 63 13 146 0 65 13 146 0 66 13 146 0 67 13 146 0 69 13 146 0 70 13 146 0 72 13 146 0 73 13 146 0 75 13 146 0 77 13 146 0 79 13 146 0 82 13 146 0 83 12 178 0 84 12 178 0 87 13 146 0 88 13 146 0 90 13 146 0 93 13 146 0 94 13 146 0 95 13 146 0 103 13 146 0 107 13 146 0 108 13 146 0 110 13 146 0 111 13 146 0 112 13 146 0 113 13 146 0 114 13 146 0 115 13 146 0 116 13 146 0 117 13 146 0 118 13 146 0 119 13 146 0 120 12 178 0 122 13 146 0 125 13 146 0 127 13 146 0 129 13 146 0 130 13 146 0 131 0 231 0 133 0 231 0 134 13 146 0 137 12 178 1 233 0 231 1 234 13 146 1 235] 
#[0 29 133 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 25 109 1 7 15 25 1 8 29 137 1 22 0 6 1 234] 
#[0 29 141 0 5] 
#[0 29 145 0 8] 
#[0 13 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 235 0 5 7 77 0 6 3 33 0 8 3 37 0 26 3 41 0 56 26 45 0 64 3 45 0 80 26 57 0 98 26 57 0 99 26 57 0 100 26 57 0 101 3 49 0 104 29 149 0 105 3 57 0 125 7 89 0 126 3 61 0 127 7 109 0 129 7 113 0 130 26 53 0 143 26 53 0 155 26 53 0 156 26 53 0 157 9 193 1 17 9 193 1 21 9 193 1 26 9 193 1 30 14 121 1 38 9 189 1 39 9 193 1 40 3 85 1 41 3 89 1 42 3 93 1 44 9 193 1 45 7 109 1 73 7 113 1 74 26 57 1 144 26 73 1 147 9 193 1 151 9 193 1 152 26 65 1 220 26 69 1 221 26 73 1 222 26 73 1 223 26 73 1 224 3 109 1 234] 
#[0 29 153 0 3] 
#[1 13 154 0 1 0 239 0 2 13 154 0 4 13 154 0 5 0 239 0 6 0 239 0 8 12 198 0 9 12 198 0 10 12 198 0 11 12 198 0 12 12 198 0 13 12 198 0 14 12 198 0 15 12 198 0 16 12 198 0 17 12 198 0 18 12 198 0 20 12 198 0 21 12 198 0 22 12 198 0 23 12 198 0 24 12 198 0 25 12 198 0 26 12 198 0 27 12 198 0 28 12 198 0 29 12 198 0 30 12 198 0 31 12 198 0 32 12 198 0 33 12 198 0 34 0 239 0 35 0 239 0 36 0 239 0 37 0 239 0 38 13 154 0 39 12 198 0 40 12 198 0 41 12 198 0 42 12 198 0 43 12 198 0 44 12 198 0 45 12 198 0 46 12 198 0 47 12 198 0 48 12 198 0 49 12 198 0 50 12 198 0 51 13 154 0 52 12 198 0 53 12 198 0 54 13 154 0 56 13 154 0 57 13 154 0 58 13 154 0 61 13 154 0 62 13 154 0 63 13 154 0 65 13 154 0 66 13 154 0 67 13 154 0 69 13 154 0 70 13 154 0 72 13 154 0 73 13 154 0 75 13 154 0 77 13 154 0 79 13 154 0 82 13 154 0 83 12 198 0 84 12 198 0 87 13 154 0 88 13 154 0 90 13 154 0 93 13 154 0 94 13 154 0 95 13 154 0 103 13 154 0 107 13 154 0 108 13 154 0 110 13 154 0 111 13 154 0 112 13 154 0 113 13 154 0 114 13 154 0 115 13 154 0 116 13 154 0 117 13 154 0 118 13 154 0 119 13 154 0 120 12 198 0 122 13 154 0 125 13 154 0 127 13 154 0 129 13 154 0 130 13 154 0 131 0 239 0 133 0 239 0 134 13 154 0 137 12 198 1 233 0 239 1 234 13 154 1 235] 
#[0 13 250 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 29 157 0 5] 
#[0 13 254 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 29 161 1 31 0 6 1 234] 
#[0 14 2 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 29 165 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 29 169 1 7 15 25 1 8 0 6 1 234] 
#[0 29 173 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 29 177 1 7 15 25 1 8 0 6 1 234] 
#[0 14 6 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 29 181 0 5] 
#[0 14 10 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 29 185 0 8] 
#[0 14 14 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 18 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 22 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 29 189 0 5] 
#[0 14 26 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 29 193 1 7 15 25 1 8 0 6 1 234] 
#[0 14 30 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 29 197 0 8] 
#[0 14 34 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[1 9 54 0 8 8 37 0 23 21 117 0 159 29 201 1 170] 
#[0 29 205 0 8] 
#[0 29 209 0 5] 
#[0 14 38 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 29 213 0 8] 
#[0 14 42 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 46 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 50 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 29 217 1 31 0 6 1 234] 
#[0 29 221 0 5] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 27 157 1 7 15 25 1 8 29 225 1 27 0 6 1 234] 
#[0 29 229 0 5] 
#[0 29 233 0 4] 
#[0 14 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 29 237 0 5] 
#[0 14 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 29 241 0 5] 
#[0 14 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 29 245 0 5] 
#[0 14 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 29 249 1 31 0 6 1 234] 
#[0 14 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 14 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 138 1 233 1 234 1 235] 
#[0 14 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 233 1 234 1 235] 
#[0 29 253 0 5] 
#[0 14 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 14 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 39 0 129 0 52 0 133 0 56 0 137 0 57 1 229 0 58 0 141 0 61 1 233 0 65 1 237 0 66 0 145 0 69 1 241 0 70 1 177 0 75 1 245 0 77 0 153 0 79 1 249 0 82 0 157 0 83 0 161 0 94 1 173 0 95 1 253 0 103 0 169 0 107 2 1 0 108 0 173 0 110 2 5 0 111 1 177 0 112 2 9 0 113 0 181 0 115 2 13 0 116 0 185 0 117 2 17 0 118 2 21 0 119 0 189 0 120 2 25 0 125 0 197 0 127 1 181 0 129 1 185 0 130 0 209 0 131 0 213 0 133 0 18 0 134 0 15 0 137 0 221 0 142 1 1 0 144 1 1 0 145 1 1 0 146 1 1 0 147 1 1 0 151 0 245 0 152 1 1 0 160 0 253 0 161 1 1 0 164 1 1 0 165 1 1 0 166 1 1 0 167 1 1 0 168 1 41 0 169 1 25 0 170 1 25 0 171 1 25 0 172 1 37 0 175 1 41 0 179 1 49 0 180 1 49 0 181 1 57 0 182 1 57 0 183 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 105 0 196 2 29 0 197 2 29 0 198 2 29 0 200 30 1 0 201 30 1 0 204 30 1 0 205 30 1 0 206 30 1 0 214 30 1 0 228 30 1 0 229 30 1 0 230 30 1 0 231 30 1 0 232 30 1 0 233 30 1 0 234 30 1 0 235 30 1 0 238 30 1 0 239 30 1 0 241 30 1 0 242 30 1 0 243 30 1 0 248 30 1 0 250 30 1 0 251 30 1 0 255 1 1 1 6 2 29 1 9 1 129 1 10 1 133 1 11 1 137 1 14 2 29 1 15 1 1 1 20 2 29 1 23 1 1 1 25 1 1 1 29 1 49 1 32 1 1 1 35 1 169 1 70 1 173 1 71 1 177 1 72 1 181 1 73 1 185 1 74 1 1 1 75 1 1 1 76 1 1 1 77 1 201 1 78 1 1 1 80 1 209 1 98 1 213 1 154 1 217 1 234] 
#[0 14 90 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 14 94 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 14 98 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 14 98 0 59 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 14 98 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 6 165 0 208 0 61 0 209 6 165 0 210 0 69 0 211 0 6 1 234] 
#[0 14 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 30 5 0 3] 
#[1 30 9 0 8 12 149 0 123 30 13 1 139] 
#[0 30 17 0 8] 
#[0 14 106 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 30 21 0 8] 
#[0 14 110 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 0 78 0 3 3 233 0 4 3 237 0 6 4 33 0 121 0 193 0 125 8 241 0 142 4 45 0 217 4 45 0 218 4 45 0 219 4 77 0 225 4 77 0 226 4 73 0 227 30 25 1 1 4 69 1 2 4 73 1 3 4 77 1 4 7 65 1 234] 
#[1 7 69 0 2 2 70 0 8 2 161 0 11 2 70 0 123 30 29 1 43 7 117 1 104 30 33 1 140] 
#[1 30 37 0 8 12 149 0 123 30 41 1 139] 
#[0 30 45 0 8] 
#[0 14 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 24 49 0 8] 
#[1 14 54 0 1 0 243 0 2 14 54 0 4 14 54 0 5 0 243 0 6 0 243 0 8 13 166 0 9 13 166 0 10 13 166 0 11 13 166 0 12 13 166 0 13 13 166 0 14 13 166 0 15 13 166 0 16 13 166 0 17 13 166 0 18 13 166 0 20 13 166 0 21 13 166 0 22 13 166 0 23 13 166 0 24 13 166 0 25 13 166 0 26 13 166 0 27 13 166 0 28 13 166 0 29 13 166 0 30 13 166 0 31 13 166 0 32 13 166 0 33 13 166 0 34 0 243 0 35 0 243 0 36 0 243 0 37 0 243 0 38 14 54 0 39 13 166 0 40 13 166 0 41 13 166 0 42 13 166 0 43 13 166 0 44 13 166 0 45 13 166 0 46 13 166 0 47 13 166 0 48 13 166 0 49 13 166 0 50 13 166 0 51 14 54 0 52 13 166 0 53 13 166 0 54 14 54 0 56 14 54 0 57 14 54 0 58 14 54 0 61 14 54 0 62 14 54 0 63 14 54 0 65 14 54 0 66 14 54 0 67 14 54 0 69 14 54 0 70 14 54 0 72 14 54 0 73 14 54 0 75 14 54 0 77 14 54 0 79 14 54 0 82 14 54 0 83 13 166 0 84 13 166 0 87 14 54 0 88 14 54 0 90 14 54 0 93 14 54 0 94 14 54 0 95 14 54 0 103 14 54 0 107 14 54 0 108 14 54 0 110 14 54 0 111 14 54 0 112 14 54 0 113 14 54 0 114 14 54 0 115 14 54 0 116 14 54 0 117 14 54 0 118 14 54 0 119 14 54 0 120 13 166 0 122 14 54 0 125 14 54 0 127 14 54 0 129 14 54 0 130 14 54 0 131 0 243 0 133 0 243 0 134 14 54 0 137 13 166 1 233 0 243 1 234 14 54 1 235] 
#[0 30 49 0 5] 
#[1 14 58 0 1 0 247 0 2 14 58 0 4 14 58 0 5 0 247 0 6 0 247 0 8 13 170 0 9 13 170 0 10 13 170 0 11 13 170 0 12 13 170 0 13 13 170 0 14 13 170 0 15 13 170 0 16 13 170 0 17 13 170 0 18 13 170 0 20 13 170 0 21 13 170 0 22 13 170 0 23 13 170 0 24 13 170 0 25 13 170 0 26 13 170 0 27 13 170 0 28 13 170 0 29 13 170 0 30 13 170 0 31 13 170 0 32 13 170 0 33 13 170 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 14 58 0 39 13 170 0 40 13 170 0 41 13 170 0 42 13 170 0 43 13 170 0 44 13 170 0 45 13 170 0 46 13 170 0 47 13 170 0 48 13 170 0 49 13 170 0 50 13 170 0 51 14 58 0 52 13 170 0 53 13 170 0 54 14 58 0 56 14 58 0 57 14 58 0 58 14 58 0 61 14 58 0 62 14 58 0 63 14 58 0 65 14 58 0 66 14 58 0 67 14 58 0 69 14 58 0 70 14 58 0 72 14 58 0 73 14 58 0 75 14 58 0 77 14 58 0 79 14 58 0 82 14 58 0 83 13 170 0 84 13 170 0 87 14 58 0 88 14 58 0 90 14 58 0 93 14 58 0 94 14 58 0 95 14 58 0 103 14 58 0 107 14 58 0 108 14 58 0 110 14 58 0 111 14 58 0 112 14 58 0 113 14 58 0 114 14 58 0 115 14 58 0 116 14 58 0 117 14 58 0 118 14 58 0 119 14 58 0 120 13 170 0 122 14 58 0 125 14 58 0 127 14 58 0 129 14 58 0 130 14 58 0 131 0 247 0 133 0 247 0 134 14 58 0 137 13 170 1 233 0 247 1 234 14 58 1 235] 
#[0 14 118 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 8 9 0 4 8 233 0 6 3 37 0 26 3 41 0 56 3 45 0 80 3 49 0 104 3 57 0 125 7 89 0 126 3 61 0 127 7 109 0 129 7 113 0 130 28 37 0 143 28 37 0 155 28 37 0 156 28 37 0 157 8 13 1 17 8 13 1 21 8 13 1 26 8 13 1 30 8 17 1 41 3 89 1 42 3 93 1 44 7 109 1 73 7 113 1 74 8 13 1 151 8 13 1 152 8 21 1 234] 
#[1 26 137 0 4 8 234 0 8 12 149 0 123 20 241 1 139] 
#[0 14 122 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 30 53 0 5] 
#[0 14 126 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 30 57 0 5] 
#[0 14 130 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 30 61 0 5] 
#[0 14 134 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 138 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 142 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 30 65 0 5] 
#[0 14 146 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 30 69 0 8] 
#[0 14 150 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 154 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 158 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 30 73 0 5] 
#[0 14 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 30 77 0 5] 
#[0 14 166 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[1 0 6 0 2 0 6 0 4 6 74 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 69 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 82 0 6 0 83 0 69 0 90 0 6 0 94 0 6 0 95 0 6 0 103 0 6 0 107 0 6 0 108 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 125 0 6 0 127 0 6 0 129 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 0 6 0 137 15 17 0 207 2 125 0 208 0 61 0 209 2 125 0 210 0 69 0 211 18 129 1 7 15 25 1 8 30 81 1 31 0 6 1 234] 
#[0 14 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 14 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 14 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 30 85 0 5] 
#[0 14 182 0 4 0 9 0 14 0 138] 
#[0 14 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 30 89 0 8] 
#[0 14 190 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 30 93 0 8] 
#[0 14 194 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 198 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 30 97 0 3] 
#[1 30 101 0 8 12 149 0 123 30 105 1 139] 
#[0 30 109 0 8] 
#[0 14 202 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 30 113 0 8] 
#[0 14 206 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[1 14 170 0 1 0 251 0 2 14 170 0 4 14 170 0 5 0 251 0 6 0 251 0 8 14 70 0 9 14 70 0 10 14 70 0 11 14 70 0 12 14 70 0 13 14 70 0 14 14 70 0 15 14 70 0 16 14 70 0 17 14 70 0 18 14 70 0 20 14 70 0 21 14 70 0 22 14 70 0 23 14 70 0 24 14 70 0 25 14 70 0 26 14 70 0 27 14 70 0 28 14 70 0 29 14 70 0 30 14 70 0 31 14 70 0 32 14 70 0 33 14 70 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 14 170 0 39 14 70 0 40 14 70 0 41 14 70 0 42 14 70 0 43 14 70 0 44 14 70 0 45 14 70 0 46 14 70 0 47 14 70 0 48 14 70 0 49 14 70 0 50 14 70 0 51 14 170 0 52 14 70 0 53 14 70 0 54 14 170 0 56 14 170 0 57 14 170 0 58 14 170 0 61 14 170 0 62 14 170 0 63 14 170 0 65 14 170 0 66 14 170 0 67 14 170 0 69 14 170 0 70 14 170 0 72 14 170 0 73 14 170 0 75 14 170 0 77 14 170 0 79 14 170 0 82 14 170 0 83 14 70 0 84 14 70 0 87 14 170 0 88 14 170 0 90 14 170 0 93 14 170 0 94 14 170 0 95 14 170 0 103 14 170 0 107 14 170 0 108 14 170 0 110 14 170 0 111 14 170 0 112 14 170 0 113 14 170 0 114 14 170 0 115 14 170 0 116 14 170 0 117 14 170 0 118 14 170 0 119 14 170 0 120 14 70 0 122 14 170 0 125 14 170 0 127 14 170 0 129 14 170 0 130 14 170 0 131 0 251 0 133 0 251 0 134 14 170 0 137 14 70 1 233 0 251 1 234 14 170 1 235] 
#[0 14 210 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 14 214 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 14 218 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 122 0 125 0 127 1 234 1 235] 
#[0 14 222 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 226 0 5 0 8 0 26 0 56 0 80 0 104 0 105 0 125 0 127 1 234 1 235] 
#[0 14 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 14 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 30 117 0 5] 
#[0 14 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 84 0 87 0 97 0 122 0 123 0 133 0 134 0 135 0 136 1 233 1 234 1 235] 
#[0 14 242 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 14 246 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 30 121 0 8] 
#[0 14 250 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 30 125 0 8] 
#[0 14 254 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 15 2 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 15 6 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 82 0 83 0 88 0 90 0 93 0 94 0 95 0 103 0 107 0 108 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 125 0 127 0 129 0 130 0 131 0 133 0 134 0 137 1 234 1 235] 
#[0 15 10 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130] 
#[0 15 14 0 5 0 6 0 64 0 98 0 99 0 100 0 101 0 105 0 126 0 129 0 130]
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
JSParser >> checkSemicolon [
	| token |
	currentToken value = ';' ifFalse: [ ^ self ].
	currentToken startPosition ifNotNil: [ ^ self ].
	states size < 2 ifTrue: [ ^ self ].
	nodeStack isEmpty ifTrue: [ ^ self ].
	(nodeStack last isKindOf: SmaCCToken)
		ifTrue: [ token := nodeStack last ]
		ifFalse: [ (nodeStack last isKindOf: JSNameExpressionNode)
				ifTrue: [ token := nodeStack last name ]
				ifFalse: [ (nodeStack last isKindOf: SmaCCDeferredReduceAction)
						ifTrue: [ token := nodeStack last arguments at: 1 ifAbsent: [  ] ] ] ].
	(token notNil and: [ token ids first ~= scanner identifierId ])
		ifTrue: [ self killState ]
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
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration4: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration5: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration6: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration7: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration8: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
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
	self add: (nodes at: 4) to: (result at: 6).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement6: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement8: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	result nullableIndicator: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
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
JSParser >> reduceActionForCheckSemicolon1: nodes [
	self checkSemicolon.
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
JSParser >> reduceActionForClassElement5: nodes [
	| result |
	result := nodes at: 2.
	result staticToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassElement6: nodes [
	| result |
	result := JSFieldDefinitionNode new.
	result variable: ((nodes at: 1) at: 1).
	result equalToken: ((nodes at: 1) at: 2).
	result value: ((nodes at: 1) at: 3).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFieldDefinition2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
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
JSParser >> reduceActionForInitializer1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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
	result asyncToken: (nodes at: 2).
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
	result staticToken: (nodes at: 2).
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
	result staticToken: (nodes at: 2).
	result asyncToken: (nodes at: 3).
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
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration9: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration10: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration11: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration12: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	result equalToken: ((nodes at: 7) at: 1).
	result value: ((nodes at: 7) at: 2).
	result semicolon: (nodes at: 8).
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
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
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
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	result equalToken: ((nodes at: 7) at: 1).
	result value: ((nodes at: 7) at: 2).
	result semicolon: (nodes at: 8).
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
	result nullableIndicator: (nodes at: 6).
	result equalToken: ((nodes at: 7) at: 1).
	result value: ((nodes at: 7) at: 2).
	result semicolon: (nodes at: 8).
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
	result nullableIndicator: (nodes at: 6).
	result colonToken: ((nodes at: 7) at: 1).
	result type: ((nodes at: 7) at: 2).
	result equalToken: ((nodes at: 8) at: 1).
	result value: ((nodes at: 8) at: 2).
	result semicolon: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration1: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result nullableIndicator: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration4: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result nullableIndicator: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration5: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration6: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration7: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration8: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	result equalToken: ((nodes at: 7) at: 1).
	result value: ((nodes at: 7) at: 2).
	result semicolon: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration9: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
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

{ #category : #'generated-reduction actions' }
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
	result nullableIndicator: (nodes at: 2).
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
	result nullableIndicator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature4: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	result nullableIndicator: (nodes at: 2).
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
	result nullableIndicator: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	result nullableIndicator: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding5: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding7: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding8: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
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
	result nullableIndicator: (nodes at: 3).
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
	result equalToken: (nodes at: 3).
	result bar: (nodes at: 4).
	result type: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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
