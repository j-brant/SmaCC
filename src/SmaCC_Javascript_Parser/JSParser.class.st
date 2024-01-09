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
#[ 1 210 6 93] 
#[ 1 242 7 129] 
#[ 1 246 7 133] 
#[ 1 110 1 254] 
#[ 1 210 7 221] 
#[ 0 126 2 158] 
#[ 0 126 8 105] 
#[ 1 210 8 177] 
#[ 1 210 8 181] 
#[ 1 210 8 185] 
#[ 1 210 8 189] 
#[ 0 189 1 210] 
#[ 0 178 2 246] 
#[ 3 18 4 185] 
#[ 3 30 4 185] 
#[ 3 34 4 185] 
#[ 0 14 10 165] 
#[ 1 226 2 158] 
#[ 1 110 4 66] 
#[ 1 110 4 70] 
#[ 4 82 9 173] 
#[ 2 194 4 154] 
#[ 0 14 13 189] 
#[ 1 210 6 245] 
#[ 1 210 7 1] 
#[ 0 197 1 210] 
#[ 0 201 1 210] 
#[ 3 14 5 74] 
#[ 0 22 6 34] 
#[ 1 226 4 58] 
#[ 0 198 15 101] 
#[ 2 238 4 106] 
#[ 3 242 4 142] 
#[ 4 46 4 154] 
#[ 2 198 12 85] 
#[ 6 190 7 133] 
#[ 1 110 6 194] 
#[ 0 126 6 238] 
#[ 4 241 6 242] 
#[ 0 182 4 185 6 242] 
#[ 0 126 4 178] 
#[ 4 234 7 30] 
#[ 5 54 6 218] 
#[ 8 166 8 170] 
#[ 8 174 8 178] 
#[ 8 194 8 198] 
#[ 0 126 23 109] 
#[ 0 34 0 189] 
#[ 0 38 0 189] 
#[ 11 50 12 30] 
#[ 12 98 13 42] 
#[ 11 78 14 41] 
#[ 12 114 13 46] 
#[ 13 106 13 194] 
#[ 13 110 13 198] 
#[ 14 6 14 74]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2024-01-08T08:43:05.864625-06:00'
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
	#(302 0 #reduceActionForModule1: 38234113 false) 
	#(151 0 #reduceActionForValidationNotArrowFunction1: 11667457 true) 
	#(160 0 #reduceActionForStartTemplateLiteral1: 12882945 true) 
	#(350 0 #reduceActionForSwitchToJSX1: 44086273 true) 
	#(300 0 #reduceActionForScript1: 38175745 false) 
	#(439 0 #reduceActionForSourceFileElement__element__1: 60191745 false) 
	#(210 1 #liftFirstValue: 24325122 false) 
	#(210 1 #liftFirstValue: 24325121 false) 
	#(305 1 #liftFirstValue: 38367235 false) 
	#(207 1 #liftFirstValue: 24055810 false) 
	#(140 1 #liftFirstValue: 9004033 false) 
	#(302 1 #reduceActionForModule2: 38234114 false) 
	#(303 1 #reduceActionForModuleBody1: 38262785 false) 
	#(304 1 #reduceActionForModuleItemList1: 38293505 false) 
	#(305 1 #liftFirstValue: 38367233 false) 
	#(305 1 #liftFirstValue: 38367234 false) 
	#(256 0 #reduceActionForFormalParameters1: 32049153 false) 
	#(324 1 #liftFirstValue: 41338882 false) 
	#(323 1 #liftFirstValue: 41315329 false) 
	#(143 1 #reduceActionForPrimaryExpression1: 9411585 false) 
	#(324 1 #liftFirstValue: 41338881 false) 
	#(278 1 #reduceActionForYieldExpression1: 35077121 false) 
	#(141 1 #reduceActionForIdentifier1: 9116673 false) 
	#(322 1 #reduceActionForIdentifier1: 41245697 false) 
	#(325 1 #liftFirstValue: 41375745 false) 
	#(326 1 #liftFirstValue: 41411585 false) 
	#(327 1 #reduceActionForRegularExpressionLiteral1: 41449473 false) 
	#(159 1 #reduceActionForTemplateLiteral1: 12727297 false) 
	#(351 0 #reduceActionForSwitchToJSXText1: 44127233 true) 
	#(143 1 #liftFirstValue: 9411586 false) 
	#(266 1 #reduceActionForArrowParameterDeclaration1: 33118209 false) 
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
	#(265 1 #reduceActionForArrowParameters1: 33028097 false) 
	#(265 1 #reduceActionForArrowParameters2: 33028098 false) 
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
	#(328 1 #liftFirstValue: 41701377 false) 
	#(352 0 #reduceActionForStartJSXText1: 44176385 true) 
	#(143 1 #liftFirstValue: 9411599 false) 
	#(180 1 #liftFirstValue: 17040395 false) 
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
	#(301 1 #reduceActionForModuleBody1: 38204417 false) 
	#(206 1 #reduceActionForModuleItemList1: 23958529 false) 
	#(300 1 #reduceActionForScript2: 38175746 false) 
	#(393 0 #reduceActionForSourceFileElement__element__1: 48313345 false) 
	#(438 1 #reduceActionForSourceFile1: 60089345 false) 
	#(389 1 #reduceActionForThisType1: 47811585 false) 
	#(371 1 #reduceActionForPredefinedType1: 45846529 false) 
	#(373 1 #reduceActionForTypeName1: 45992961 false) 
	#(374 1 #reduceActionForNamespaceName1: 46099457 false) 
	#(369 1 #reduceActionForLiteralType1: 45683713 false) 
	#(369 1 #reduceActionForLiteralType1: 45683714 false) 
	#(363 1 #liftFirstValue: 44998657 false) 
	#(364 1 #liftFirstValue: 45075458 false) 
	#(365 1 #liftFirstValue: 45152258 false) 
	#(366 1 #liftFirstValue: 45213697 false) 
	#(367 1 #liftFirstValue: 45357066 false) 
	#(367 1 #liftFirstValue: 45357065 false) 
	#(367 1 #liftFirstValue: 45357057 false) 
	#(367 1 #liftFirstValue: 45357058 false) 
	#(367 1 #liftFirstValue: 45357059 false) 
	#(367 1 #liftFirstValue: 45357060 false) 
	#(367 1 #liftFirstValue: 45357061 false) 
	#(367 1 #liftFirstValue: 45357062 false) 
	#(364 1 #liftFirstValue: 45075457 false) 
	#(365 1 #liftFirstValue: 45152257 false) 
	#(363 1 #liftFirstValue: 44998658 false) 
	#(363 1 #liftFirstValue: 44998659 false) 
	#(367 1 #liftFirstValue: 45357063 false) 
	#(367 1 #liftFirstValue: 45357064 false) 
	#(318 1 #reduceActionForExportFromClause1: 40695809 false) 
	#(317 2 #reduceActionForExportDeclaration4: 39902212 false) 
	#(201 1 #liftFirstValue: 23568385 false) 
	#(201 1 #liftFirstValue: 23568387 false) 
	#(317 2 #reduceActionForExportDeclaration3: 39902211 false) 
	#(202 1 #liftFirstValue: 23647233 false) 
	#(202 1 #liftFirstValue: 23647234 false) 
	#(202 1 #liftFirstValue: 23647236 false) 
	#(202 1 #liftFirstValue: 23647235 false) 
	#(201 1 #liftFirstValue: 23568386 false) 
	#(318 1 #reduceActionForExportFromClause3: 40695811 false) 
	#(316 1 #liftFirstValue: 39867393 false) 
	#(308 1 #reduceActionForImportClause1: 38669313 false) 
	#(308 1 #reduceActionForImportClause1: 38669314 false) 
	#(308 1 #reduceActionForImportClause1: 38669315 false) 
	#(309 1 #liftFirstValue: 39030785 false) 
	#(315 1 #liftFirstValue: 39825409 false) 
	#(207 2 #liftSecondValue: 24055809 false) 
	#(212 1 #reduceActionForArrowParameterDeclaration1: 24455169 false) 
	#(211 1 #reduceActionForNamespaceName1: 24356865 false) 
	#(216 1 #liftFirstValue: 25001985 false) 
	#(216 1 #liftFirstValue: 25001986 false) 
	#(212 1 #liftFirstValue: 24455172 false) 
	#(212 1 #liftFirstValue: 24455173 false) 
	#(304 2 #reduceActionForModuleItemList2: 38293506 false) 
	#(225 1 #reduceActionForArrowParameterDeclaration1: 26403841 false) 
	#(224 1 #reduceActionForBindingElement2: 26293250 false) 
	#(259 1 #liftFirstValue: 32418817 false) 
	#(224 1 #liftFirstValue: 26293249 false) 
	#(258 1 #liftFirstValue: 32372737 false) 
	#(255 1 #reduceActionForModuleBody1: 32004097 false) 
	#(256 1 #reduceActionForFormalParameters3: 32049155 false) 
	#(256 1 #reduceActionForFormalParameters2: 32049154 false) 
	#(257 1 #reduceActionForNamespaceName1: 32250881 false) 
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
	#(287 2 #reduceActionForAwaitExpression1: 36882433 false) 
	#(289 2 #reduceActionForClassExpression1: 37080065 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040386 false) 
	#(168 2 #reduceActionForNewExpression2: 14264322 false) 
	#(170 2 #reduceActionForSuperCall1: 14953473 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040388 false) 
	#(180 2 #reduceActionForUnaryExpression5: 17040387 false) 
	#(278 2 #reduceActionForYieldExpression2: 35077122 false) 
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
	#(347 0 #reduceActionForSourceFileElement__element__1: 43771905 false) 
	#(269 2 #reduceActionForArrowFormalParameters2: 33369090 false) 
	#(205 2 #reduceActionForBlock1: 23861249 false) 
	#(254 2 #reduceActionForDebuggerStatement1: 31918081 false) 
	#(215 1 #reduceActionForArrowParameterDeclaration1: 24841217 false) 
	#(214 1 #reduceActionForNamespaceName1: 24705025 false) 
	#(228 2 #reduceActionForExpressionStatement1: 26722305 false) 
	#(206 2 #reduceActionForModuleItemList2: 23958530 false) 
	#(446 1 #liftFirstValue: 61276161 false) 
	#(446 1 #liftFirstValue: 61276162 false) 
	#(446 1 #liftFirstValue: 61276163 false) 
	#(446 1 #liftFirstValue: 61276164 false) 
	#(446 1 #liftFirstValue: 61276165 false) 
	#(440 1 #liftFirstValue: 60240899 false) 
	#(446 1 #liftFirstValue: 61276167 false) 
	#(446 1 #liftFirstValue: 61276166 false) 
	#(446 1 #liftFirstValue: 61276168 false) 
	#(446 1 #liftFirstValue: 61276169 false) 
	#(446 1 #liftFirstValue: 61276171 false) 
	#(439 2 #reduceActionForModuleItemList2: 60191746 false) 
	#(440 1 #liftFirstValue: 60240897 false) 
	#(440 1 #liftFirstValue: 60240900 false) 
	#(440 1 #liftFirstValue: 60240901 false) 
	#(440 1 #liftFirstValue: 60240905 false) 
	#(440 1 #liftFirstValue: 60240902 false) 
	#(440 1 #liftFirstValue: 60240906 false) 
	#(440 1 #liftFirstValue: 60240903 false) 
	#(440 1 #liftFirstValue: 60240904 false) 
	#(446 1 #liftFirstValue: 61276170 false) 
	#(440 1 #liftFirstValue: 60240898 false) 
	#(375 2 #reduceActionForObjectType1: 46203905 false) 
	#(142 1 #reduceActionForIdentifier1: 9310209 false) 
	#(155 1 #liftFirstValue: 12332033 false) 
	#(390 1 #reduceActionForPropertySignature1: 47849473 false) 
	#(154 1 #liftFirstValue: 12269569 false) 
	#(154 1 #liftFirstValue: 12269570 false) 
	#(155 1 #reduceActionForIdentifier1: 12332034 false) 
	#(155 1 #reduceActionForIdentifier1: 12332035 false) 
	#(376 1 #reduceActionForModuleBody1: 46285825 false) 
	#(377 1 #reduceActionForNamespaceName1: 46382081 false) 
	#(378 1 #liftFirstValue: 46536705 false) 
	#(378 1 #liftFirstValue: 46536706 false) 
	#(378 1 #liftFirstValue: 46536707 false) 
	#(378 1 #liftFirstValue: 46536708 false) 
	#(378 1 #liftFirstValue: 46536709 false) 
	#(380 2 #reduceActionForTupleType1: 46751745 false) 
	#(382 1 #liftFirstValue: 46979073 false) 
	#(381 1 #reduceActionForNamespaceName1: 46870529 false) 
	#(358 1 #reduceActionForTypeParameter1: 44684289 false) 
	#(357 1 #reduceActionForNamespaceName1: 44571649 false) 
	#(366 2 #reduceActionForPrefixType3: 45213699 false) 
	#(366 2 #reduceActionForPrefixType2: 45213698 false) 
	#(388 1 #reduceActionForTypeQueryExpression1: 47687681 false) 
	#(387 2 #reduceActionForTypeQuery1: 47613953 false) 
	#(372 2 #reduceActionForTypeReference1: 45898753 false) 
	#(319 2 #reduceActionForNamedExports1: 40803329 false) 
	#(306 1 #liftFirstValue: 38441985 false) 
	#(321 1 #reduceActionForExportSpecifier1: 41123841 false) 
	#(320 1 #reduceActionForNamespaceName1: 41019393 false) 
	#(306 1 #liftFirstValue: 38441986 false) 
	#(288 2 #reduceActionForClassExpression1: 36959233 false) 
	#(317 3 #reduceActionForExportDeclaration2: 39902210 false) 
	#(201 2 #liftSecondValue: 23568389 false) 
	#(201 2 #liftSecondValue: 23568388 false) 
	#(201 2 #liftSecondValue: 23568390 false) 
	#(311 2 #reduceActionForNamedImports1: 39155713 false) 
	#(313 1 #reduceActionForNamespaceName1: 39438337 false) 
	#(314 1 #reduceActionForImportSpecifier1: 39542785 false) 
	#(307 3 #reduceActionForImportDeclaration2: 38497282 false) 
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
	#(269 3 #reduceActionForArrowFormalParameters1: 33369089 false) 
	#(256 2 #reduceActionForFormalParameters4: 32049156 false) 
	#(395 1 #liftFirstValue: 50167812 false) 
	#(395 1 #liftFirstValue: 50167810 false) 
	#(395 1 #liftFirstValue: 50167811 false) 
	#(395 1 #liftFirstValue: 50167809 false) 
	#(394 0 #nil 48824324 false) 
	#(149 2 #reduceActionForSpreadElement1: 11229185 false) 
	#(146 3 #reduceActionForArrayLiteral3: 10694659 false) 
	#(146 3 #reduceActionForArrayLiteral2: 10694658 false) 
	#(148 2 #reduceActionForModuleItemList2: 11173890 false) 
	#(147 2 #reduceActionForElementList4: 10955780 false) 
	#(147 2 #reduceActionForElementList4: 10955778 false) 
	#(290 2 #reduceActionForClassTail1: 37159937 false) 
	#(294 1 #reduceActionForEmptyStatement1: 37452806 false) 
	#(296 1 #reduceActionForIdentifier1: 37830657 false) 
	#(296 1 #reduceActionForIdentifier1: 37830658 false) 
	#(294 1 #liftFirstValue: 37452801 false) 
	#(272 1 #liftFirstValue: 33684482 false) 
	#(272 1 #liftFirstValue: 33684484 false) 
	#(272 1 #liftFirstValue: 33684483 false) 
	#(292 1 #reduceActionForModuleBody1: 37332993 false) 
	#(293 1 #reduceActionForModuleItemList1: 37364737 false) 
	#(295 1 #reduceActionForFieldDefinition1: 37768193 false) 
	#(294 1 #liftFirstValue: 37452805 false) 
	#(272 1 #liftFirstValue: 33684490 false) 
	#(272 1 #liftFirstValue: 33684491 false) 
	#(291 2 #reduceActionForClassHeritage1: 37252097 false) 
	#(289 3 #reduceActionForClassExpression2: 37080066 false) 
	#(291 2 #reduceActionForClassHeritage4: 37252100 false) 
	#(291 2 #reduceActionForClassHeritage2: 37252098 false) 
	#(167 3 #reduceActionForImportMeta1: 14177281 false) 
	#(166 3 #reduceActionForNewTarget1: 14073857 false) 
	#(163 3 #reduceActionForMemberExpression7: 13153287 false) 
	#(172 2 #reduceActionForArguments1: 15164417 false) 
	#(173 1 #reduceActionForArgumentList1: 15349761 false) 
	#(164 3 #reduceActionForSuperProperty2: 13767682 false) 
	#(278 3 #reduceActionForYieldExpression3: 35077123 false) 
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
	#(263 0 #reduceActionForSourceFileElement__element__1: 32918529 false) 
	#(268 1 #liftFirstValue: 33328129 false) 
	#(264 3 #reduceActionForArrowFunction1: 32960513 false) 
	#(267 1 #reduceActionForImportClause1: 33213441 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 18606088 false) 
	#(355 0 #reduceActionForSwitchToDefault1: 44338177 true) 
	#(346 1 #reduceActionForModuleBody1: 43757569 false) 
	#(333 1 #reduceActionForJSXElementName1: 42613761 false) 
	#(333 1 #liftFirstValue: 42613762 false) 
	#(333 1 #liftFirstValue: 42613763 false) 
	#(337 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 42940417 false) 
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
	#(475 1 #liftFirstValue: 68316161 false) 
	#(464 2 #reduceActionForAmbientDeclaration1: 66209793 false) 
	#(464 2 #reduceActionForAmbientDeclaration1: 66209794 false) 
	#(464 2 #reduceActionForAmbientDeclaration1: 66209795 false) 
	#(464 2 #reduceActionForAmbientDeclaration1: 66209796 false) 
	#(464 2 #reduceActionForAmbientDeclaration1: 66209797 false) 
	#(431 1 #reduceActionForNamespaceName1: 58577921 false) 
	#(393 2 #reduceActionForModuleItemList2: 48313346 false) 
	#(370 3 #reduceActionForParenthesizedExpression1: 45758465 false) 
	#(390 2 #reduceActionForPropertySignature5: 47849477 false) 
	#(390 2 #reduceActionForPropertySignature3: 47849475 false) 
	#(390 2 #reduceActionForPropertySignature2: 47849474 false) 
	#(399 2 #reduceActionForMethodSignature1: 51416065 false) 
	#(375 3 #reduceActionForObjectType2: 46203906 false) 
	#(376 2 #reduceActionForOptionalChain2: 46285826 false) 
	#(376 2 #reduceActionForOptionalChain2: 46285828 false) 
	#(380 3 #reduceActionForTupleType2: 46751746 false) 
	#(380 3 #reduceActionForTupleType3: 46751747 false) 
	#(358 2 #reduceActionForTypeParameter2: 44684290 false) 
	#(356 3 #reduceActionForTypeParameters1: 44492801 false) 
	#(383 3 #reduceActionForUnionType1: 47005697 false) 
	#(384 3 #reduceActionForIntersectionType1: 47126529 false) 
	#(372 3 #reduceActionForTypeReference2: 45898754 false) 
	#(373 3 #reduceActionForTypeName2: 45992962 false) 
	#(374 3 #reduceActionForNamespaceName2: 46099458 false) 
	#(319 3 #reduceActionForNamedExports2: 40803330 false) 
	#(318 3 #reduceActionForExportFromClause2: 40695810 false) 
	#(288 3 #reduceActionForClassExpression2: 36959234 false) 
	#(288 3 #reduceActionForClassDeclaration3: 36959235 false) 
	#(317 4 #reduceActionForExportDeclaration5: 39902213 false) 
	#(312 2 #reduceActionForFromClause1: 39387137 false) 
	#(317 4 #reduceActionForExportDeclaration1: 39902209 false) 
	#(481 2 #reduceActionForDecoratorExpression2: 69663746 false) 
	#(481 2 #reduceActionForDecoratorExpression2: 69663745 false) 
	#(311 3 #reduceActionForNamedImports2: 39155714 false) 
	#(310 3 #reduceActionForNameSpaceImport1: 39074817 false) 
	#(307 4 #reduceActionForImportDeclaration1: 38497281 false) 
	#(308 3 #reduceActionForImportClause4: 38669316 false) 
	#(308 3 #reduceActionForImportClause4: 38669317 false) 
	#(308 3 #reduceActionForImportClause6: 38669318 false) 
	#(308 3 #reduceActionForImportClause6: 38669319 false) 
	#(219 2 #reduceActionForBindingRestProperty1: 25819137 false) 
	#(217 3 #reduceActionForObjectBindingPattern2: 25065474 false) 
	#(217 3 #reduceActionForObjectBindingPattern3: 25065475 false) 
	#(218 3 #reduceActionForArrayBindingPattern3: 25453571 false) 
	#(222 2 #reduceActionForBindingElisionElement2: 26118146 false) 
	#(218 3 #reduceActionForArrayBindingPattern5: 25453573 false) 
	#(218 3 #reduceActionForArrayBindingPattern2: 25453570 false) 
	#(158 2 #reduceActionForFromClause1: 12662785 false) 
	#(211 3 #reduceActionForNamespaceName2: 24356866 false) 
	#(408 3 #reduceActionForSimpleLexicalBinding1: 54515713 false) 
	#(409 3 #reduceActionForDestructuringLexicalBinding1: 54625281 false) 
	#(226 3 #reduceActionForBindingRestElement3: 26489859 false) 
	#(256 3 #reduceActionForFormalParameters5: 32049157 false) 
	#(257 3 #reduceActionForNamespaceName2: 32250882 false) 
	#(225 3 #reduceActionForSingleNameBinding9: 26403849 false) 
	#(225 3 #reduceActionForSimpleLexicalBinding1: 26403843 false) 
	#(394 1 #reduceActionForIdentifier1: 48824322 false) 
	#(394 1 #liftFirstValue: 48824321 false) 
	#(394 1 #liftFirstValue: 48824323 false) 
	#(225 3 #reduceActionForSingleNameBinding7: 26403847 false) 
	#(146 4 #reduceActionForArrayLiteral4: 10694660 false) 
	#(147 3 #reduceActionForElementList6: 10955782 false) 
	#(147 3 #reduceActionForElementList6: 10955781 false) 
	#(271 1 #reduceActionForImportClause1: 33563649 false) 
	#(270 4 #reduceActionForAsyncArrowFunction1: 33461249 false) 
	#(299 0 #reduceActionForSourceFileElement__element__1: 38120449 false) 
	#(294 2 #reduceActionForClassElement2: 37452802 false) 
	#(290 3 #reduceActionForClassTail2: 37159938 false) 
	#(293 2 #reduceActionForModuleItemList2: 37364738 false) 
	#(294 2 #reduceActionForClassElement3: 37452803 false) 
	#(295 2 #reduceActionForFieldDefinition2: 37768194 false) 
	#(294 2 #liftSecondValue: 37452807 false) 
	#(294 2 #liftSecondValue: 37452808 false) 
	#(419 1 #liftFirstValue: 56871937 false) 
	#(419 1 #liftFirstValue: 56871938 false) 
	#(419 1 #liftFirstValue: 56871939 false) 
	#(294 2 #liftSecondValue: 37452809 false) 
	#(290 3 #reduceActionForClassTail3: 37159939 false) 
	#(415 1 #liftFirstValue: 56004609 false) 
	#(414 2 #reduceActionForFromClause1: 55945217 false) 
	#(413 1 #liftFirstValue: 55430145 false) 
	#(416 2 #reduceActionForImplementsClause1: 56046593 false) 
	#(412 1 #reduceActionForNamespaceName1: 55299073 false) 
	#(291 3 #reduceActionForClassHeritage3: 37252099 false) 
	#(171 4 #reduceActionForImportCall1: 15024129 false) 
	#(173 2 #reduceActionForArgumentList2: 15349762 false) 
	#(172 3 #reduceActionForArguments2: 15164418 false) 
	#(164 4 #reduceActionForSuperProperty1: 13767681 false) 
	#(361 1 #reduceActionForNamespaceName1: 44869633 false) 
	#(362 1 #liftFirstValue: 44976129 false) 
	#(153 2 #reduceActionForPropertyDefinition5: 12020741 false) 
	#(157 2 #reduceActionForCoverInitializedName1: 12579841 false) 
	#(150 4 #reduceActionForObjectLiteral2: 11327490 false) 
	#(161 1 #reduceActionForNamespaceName1: 12920833 false) 
	#(159 4 #reduceActionForTemplateLiteral2: 12727298 false) 
	#(163 4 #reduceActionForMemberExpression2: 13153282 false) 
	#(176 2 #reduceActionForOptionalRest3: 15919107 false) 
	#(176 2 #reduceActionForOptionalRest3: 15919109 false) 
	#(169 4 #reduceActionForMemberExpression2: 14354437 false) 
	#(405 4 #reduceActionForAsExpression1: 53861377 false) 
	#(263 1 #reduceActionForModuleBody1: 32918530 false) 
	#(262 1 #reduceActionForModuleBody1: 32877569 false) 
	#(328 4 #reduceActionForJSXElement2: 41701378 false) 
	#(348 1 #reduceActionForJSXChild1: 43792385 false) 
	#(348 1 #liftFirstValue: 43792386 false) 
	#(347 2 #reduceActionForModuleItemList2: 43771906 false) 
	#(336 2 #reduceActionForFromClause1: 42940417 false) 
	#(353 0 #reduceActionForSwitchToJSXTextOrDefault11: 44205057 true) 
	#(343 1 #reduceActionForJSXElementName1: 43364353 false) 
	#(343 1 #liftFirstValue: 43364354 false) 
	#(340 1 #reduceActionForModuleItemList1: 43067393 false) 
	#(338 1 #reduceActionForModuleBody1: 43051009 false) 
	#(339 1 #liftFirstValue: 43067393 false) 
	#(339 1 #liftFirstValue: 43067394 false) 
	#(342 1 #reduceActionForJSXAttribute1: 43281409 false) 
	#(335 2 #reduceActionForJSXMemberExpression1: 42917889 false) 
	#(337 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 42940418 false) 
	#(330 4 #reduceActionForJSXOpeningElement3: 42035203 false) 
	#(405 4 #reduceActionForAsExpression1: 53861378 false) 
	#(401 3 #reduceActionForArrowFormalParameters1: 52147203 false) 
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
	#(406 2 #reduceActionForSimpleVariableDeclaration1: 54215681 false) 
	#(467 1 #reduceActionForArrowParameterDeclaration1: 67007489 false) 
	#(466 1 #reduceActionForNamespaceName1: 66894849 false) 
	#(462 3 #reduceActionForExportListDeclaration5: 65740805 false) 
	#(410 3 #reduceActionForInterfaceDeclaration1: 55058433 false) 
	#(432 0 #reduceActionForSourceFileElement__element__1: 58683393 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049731 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049730 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049729 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049732 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049738 false) 
	#(459 3 #reduceActionForExportDeclarationElement2: 64314370 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049734 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049733 false) 
	#(459 3 #reduceActionForExportDeclarationElement2: 64314369 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049735 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049736 false) 
	#(459 3 #reduceActionForExportDeclarationElement2: 64314372 false) 
	#(458 3 #reduceActionForExportImplementationElement3: 63049737 false) 
	#(459 3 #reduceActionForExportDeclarationElement2: 64314371 false) 
	#(392 3 #reduceActionForCallSignature1: 48100353 false) 
	#(156 3 #reduceActionForComputedPropertyName1: 12459009 false) 
	#(390 3 #reduceActionForPropertySignature7: 47849479 false) 
	#(390 3 #reduceActionForPropertySignature6: 47849478 false) 
	#(390 3 #reduceActionForPropertySignature4: 47849476 false) 
	#(399 3 #reduceActionForMethodSignature2: 51416066 false) 
	#(391 2 #reduceActionForFromClause1: 48047105 false) 
	#(377 3 #reduceActionForNamespaceName2: 46382082 false) 
	#(377 3 #reduceActionForNamespaceName2: 46382083 false) 
	#(380 4 #reduceActionForTupleType4: 46751748 false) 
	#(381 3 #reduceActionForNamespaceName2: 46870530 false) 
	#(359 2 #reduceActionForFromClause1: 44738561 false) 
	#(357 3 #reduceActionForNamespaceName2: 44571650 false) 
	#(388 3 #reduceActionForTypeQueryExpression2: 47687682 false) 
	#(379 4 #reduceActionForArrayType1: 46644225 false) 
	#(321 3 #reduceActionForExportSpecifier2: 41123842 false) 
	#(319 4 #reduceActionForNamedExports3: 40803331 false) 
	#(320 3 #reduceActionForNamespaceName2: 41019394 false) 
	#(288 4 #reduceActionForClassDeclaration4: 36959236 false) 
	#(260 4 #reduceActionForFunctionDeclaration5: 32454661 false) 
	#(314 3 #reduceActionForImportSpecifier2: 39542786 false) 
	#(311 4 #reduceActionForNamedImports3: 39155715 false) 
	#(313 3 #reduceActionForNamespaceName2: 39438338 false) 
	#(314 3 #reduceActionForImportSpecifier3: 39542787 false) 
	#(223 3 #reduceActionForBindingProperty2: 26179586 false) 
	#(217 4 #reduceActionForObjectBindingPattern4: 25065476 false) 
	#(220 3 #reduceActionForNamespaceName2: 25890818 false) 
	#(218 4 #reduceActionForArrayBindingPattern4: 25453572 false) 
	#(218 4 #reduceActionForArrayBindingPattern6: 25453574 false) 
	#(221 3 #reduceActionForBindingElementList2: 26009602 false) 
	#(408 4 #reduceActionForSimpleLexicalBinding2: 54515714 false) 
	#(409 4 #reduceActionForDestructuringLexicalBinding2: 54625282 false) 
	#(225 4 #reduceActionForSimpleLexicalBinding2: 26403844 false) 
	#(224 4 #reduceActionForBindingElement10: 26293258 false) 
	#(224 4 #reduceActionForBindingElement4: 26293252 false) 
	#(224 4 #reduceActionForBindingElement8: 26293256 false) 
	#(225 4 #reduceActionForSingleNameBinding10: 26403850 false) 
	#(225 4 #reduceActionForSingleNameBinding8: 26403848 false) 
	#(225 4 #reduceActionForSingleNameBinding5: 26403845 false) 
	#(286 1 #reduceActionForModuleBody1: 36846593 false) 
	#(299 1 #reduceActionForModuleBody1: 38120450 false) 
	#(298 1 #reduceActionForModuleBody1: 38064129 false) 
	#(294 3 #reduceActionForClassElement4: 37452804 false) 
	#(421 0 #reduceActionForInitializer_1: 57178113 false) 
	#(423 2 #reduceActionForMemberAccessorDeclaration1: 57635841 false) 
	#(423 2 #reduceActionForMemberAccessorDeclaration1: 57635845 false) 
	#(424 2 #reduceActionForIndexMemberDeclaration1: 57912321 false) 
	#(290 4 #reduceActionForClassTail4: 37159940 false) 
	#(172 4 #reduceActionForArguments3: 15164419 false) 
	#(173 3 #reduceActionForArgumentList3: 15349763 false) 
	#(360 3 #reduceActionForTypeArguments1: 44791809 false) 
	#(172 4 #reduceActionForArguments4: 15164420 false) 
	#(150 5 #reduceActionForObjectLiteral3: 11327491 false) 
	#(152 3 #reduceActionForNamespaceName2: 11885570 false) 
	#(153 3 #reduceActionForPropertyDefinition3: 12020739 false) 
	#(162 2 #reduceActionForTemplateMiddleList1: 13007873 false) 
	#(161 2 #reduceActionForTemplateSpans2: 12920834 false) 
	#(177 3 #reduceActionForOptionalFirst2: 16277506 false) 
	#(176 3 #reduceActionForOptionalFirst2: 15919106 false) 
	#(196 5 #reduceActionForConditionalExpression2: 21129218 false) 
	#(267 3 #reduceActionForConciseBody2: 33213442 false) 
	#(334 3 #reduceActionForJSXNamespacedName1: 42793985 false) 
	#(340 2 #reduceActionForModuleItemList2: 43067394 false) 
	#(342 2 #reduceActionForJSXAttribute2: 43281410 false) 
	#(330 5 #reduceActionForJSXOpeningElement1: 42035201 false) 
	#(401 4 #reduceActionForTypeCallSignature1: 52147201 false) 
	#(180 5 #reduceActionForUnaryExpression10: 17040394 false) 
	#(401 4 #reduceActionForTypeCallSignature4: 52147204 false) 
	#(229 5 #reduceActionForIfStatement2: 26802178 false) 
	#(242 5 #reduceActionForSwitchStatement1: 30566401 false) 
	#(253 1 #liftFirstValue: 31833089 false) 
	#(253 1 #liftFirstValue: 31833091 false) 
	#(406 3 #reduceActionForSimpleVariableDeclaration2: 54215682 false) 
	#(407 3 #reduceActionForDestructuringVariableDeclaration1: 54321153 false) 
	#(232 5 #reduceActionForWhileStatement1: 27379713 false) 
	#(241 5 #reduceActionForWithStatement1: 30434305 false) 
	#(467 2 #reduceActionForAmbientBinding2: 67007490 false) 
	#(465 3 #reduceActionForLexicalDeclaration1: 66598915 false) 
	#(465 3 #reduceActionForLexicalDeclaration1: 66598914 false) 
	#(454 0 #reduceActionForSourceFileElement__element__1: 62412801 false) 
	#(477 0 #reduceActionForSourceFileElement__element__1: 68536321 false) 
	#(465 3 #reduceActionForLexicalDeclaration1: 66598913 false) 
	#(425 4 #reduceActionForEnumDeclaration1: 58003457 false) 
	#(428 1 #reduceActionForEnumMember1: 58289153 false) 
	#(426 1 #reduceActionForModuleBody1: 58150913 false) 
	#(427 1 #reduceActionForNamespaceName1: 58196993 false) 
	#(463 4 #reduceActionForExportAssignment1: 66077697 false) 
	#(462 4 #reduceActionForExportListDeclaration1: 65740801 false) 
	#(462 4 #reduceActionForExportListDeclaration3: 65740803 false) 
	#(437 1 #reduceActionForModuleBody1: 59977729 false) 
	#(411 2 #reduceActionForFromClause1: 55214081 false) 
	#(410 4 #reduceActionForInterfaceDeclaration3: 55058435 false) 
	#(410 4 #reduceActionForInterfaceDeclaration2: 55058434 false) 
	#(434 1 #liftFirstValue: 58819585 false) 
	#(434 1 #liftFirstValue: 58819586 false) 
	#(434 1 #liftFirstValue: 58819587 false) 
	#(434 1 #liftFirstValue: 58819588 false) 
	#(434 1 #liftFirstValue: 58819589 false) 
	#(434 1 #liftFirstValue: 58819591 false) 
	#(434 1 #liftFirstValue: 58819590 false) 
	#(434 1 #liftFirstValue: 58819592 false) 
	#(434 1 #liftFirstValue: 58819593 false) 
	#(432 1 #reduceActionForModuleBody1: 58683394 false) 
	#(433 1 #reduceActionForModuleItemList1: 58721281 false) 
	#(434 1 #liftFirstValue: 58819596 false) 
	#(434 1 #liftFirstValue: 58819595 false) 
	#(434 1 #liftFirstValue: 58819594 false) 
	#(431 3 #reduceActionForNamespaceName2: 58577922 false) 
	#(460 4 #reduceActionForExportDefaultImplementationElement1: 64743425 false) 
	#(460 4 #reduceActionForExportDefaultImplementationElement1: 64743426 false) 
	#(460 4 #reduceActionForExportDefaultImplementationElement1: 64743427 false) 
	#(461 4 #reduceActionForExportDefaultDeclarationElement1: 65304577 false) 
	#(461 4 #reduceActionForExportDefaultDeclarationElement1: 65304578 false) 
	#(385 5 #reduceActionForFunctionType1: 47233025 false) 
	#(392 4 #reduceActionForCallSignature2: 48100354 false) 
	#(397 4 #reduceActionForConstructSignature1: 50922497 false) 
	#(390 4 #reduceActionForPropertySignature8: 47849480 false) 
	#(392 4 #reduceActionForCallSignature3: 48100355 false) 
	#(368 5 #reduceActionForIndexedAccessType1: 45554689 false) 
	#(260 5 #reduceActionForFunctionDeclaration6: 32454662 false) 
	#(288 5 #reduceActionForClassDeclaration5: 36959237 false) 
	#(288 5 #reduceActionForClassDeclaration9: 36959241 false) 
	#(217 5 #reduceActionForObjectBindingPattern5: 25065477 false) 
	#(218 5 #reduceActionForArrayBindingPattern8: 25453576 false) 
	#(218 5 #reduceActionForArrayBindingPattern7: 25453575 false) 
	#(317 6 #reduceActionForExportDeclaration6: 39902214 false) 
	#(224 5 #reduceActionForBindingElement11: 26293259 false) 
	#(224 5 #reduceActionForBindingElement5: 26293253 false) 
	#(224 5 #reduceActionForBindingElement12: 26293260 false) 
	#(224 5 #reduceActionForBindingElement9: 26293257 false) 
	#(224 5 #reduceActionForBindingElement6: 26293254 false) 
	#(225 5 #reduceActionForSingleNameBinding6: 26403846 false) 
	#(271 3 #reduceActionForConciseBody2: 33563650 false) 
	#(273 1 #liftFirstValue: 34294785 false) 
	#(297 4 #reduceActionForClassStaticBlock1: 37941249 false) 
	#(423 3 #reduceActionForMemberAccessorDeclaration2: 57635842 false) 
	#(423 3 #reduceActionForMemberAccessorDeclaration2: 57635846 false) 
	#(421 1 #reduceActionForModuleBody1: 57178114 false) 
	#(423 3 #reduceActionForMemberAccessorDeclaration3: 57635843 false) 
	#(423 3 #reduceActionForMemberAccessorDeclaration3: 57635847 false) 
	#(412 3 #reduceActionForNamespaceName2: 55299074 false) 
	#(173 4 #reduceActionForArgumentList4: 15349764 false) 
	#(361 3 #reduceActionForNamespaceName2: 44869634 false) 
	#(172 5 #reduceActionForArguments5: 15164421 false) 
	#(162 3 #reduceActionForTemplateMiddleList2: 13007874 false) 
	#(354 0 #reduceActionForSwitchToJSXTextOrDefault21: 44271617 true) 
	#(349 1 #liftFirstValue: 44024834 false) 
	#(349 1 #liftFirstValue: 44024833 false) 
	#(329 6 #reduceActionForJSXSelfClosingElement1: 41851905 false) 
	#(330 6 #reduceActionForJSXOpeningElement2: 42035202 false) 
	#(345 1 #reduceActionForLiteral4: 43529217 false) 
	#(345 1 #liftFirstValue: 43529219 false) 
	#(345 1 #liftFirstValue: 43529220 false) 
	#(344 2 #reduceActionForFromClause1: 43455489 false) 
	#(261 6 #reduceActionForFunctionExpression3: 32666627 false) 
	#(401 5 #reduceActionForTypeCallSignature2: 52147202 false) 
	#(233 6 #reduceActionForForStatement1: 27528193 false) 
	#(233 6 #reduceActionForForStatement13: 27528205 false) 
	#(243 2 #reduceActionForCaseBlock1: 30692353 false) 
	#(244 1 #reduceActionForModuleItemList1: 30876673 false) 
	#(425 5 #reduceActionForEnumDeclaration3: 58003459 false) 
	#(470 0 #reduceActionForSourceFileElement__element__1: 67443713 false) 
	#(466 3 #reduceActionForNamespaceName2: 66894850 false) 
	#(468 4 #reduceActionForAmbientFunctionDeclaration1: 67090433 false) 
	#(456 1 #liftFirstValue: 62594050 false) 
	#(450 1 #liftFirstValue: 61794306 false) 
	#(450 1 #liftFirstValue: 61794305 false) 
	#(450 1 #liftFirstValue: 61794307 false) 
	#(450 1 #liftFirstValue: 61794309 false) 
	#(456 1 #liftFirstValue: 62594049 false) 
	#(454 1 #reduceActionForModuleBody1: 62412802 false) 
	#(455 1 #reduceActionForModuleItemList1: 62462977 false) 
	#(456 1 #liftFirstValue: 62594051 false) 
	#(456 1 #liftFirstValue: 62594052 false) 
	#(456 1 #liftFirstValue: 62594053 false) 
	#(456 1 #liftFirstValue: 62594054 false) 
	#(450 1 #liftFirstValue: 61794308 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715523 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715529 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715535 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715521 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715525 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715527 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715531 false) 
	#(479 1 #reduceActionForAmbientNamespaceElement3: 68715533 false) 
	#(477 1 #reduceActionForModuleBody1: 68536322 false) 
	#(478 1 #reduceActionForModuleItemList1: 68588545 false) 
	#(425 5 #reduceActionForEnumDeclaration2: 58003458 false) 
	#(426 2 #reduceActionForOptionalChain2: 58150914 false) 
	#(462 5 #reduceActionForExportListDeclaration6: 65740806 false) 
	#(436 5 #reduceActionForImportAliasDeclaration1: 59842561 false) 
	#(410 5 #reduceActionForInterfaceDeclaration4: 55058436 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100162 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100161 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100163 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100164 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100165 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100167 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100166 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100168 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100169 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100171 false) 
	#(435 2 #reduceActionForExportNamespaceElement2: 59100170 false) 
	#(430 5 #reduceActionForNamespaceDeclaration1: 58436609 false) 
	#(433 2 #reduceActionForModuleItemList2: 58721282 false) 
	#(400 5 #reduceActionForTypeAliasDeclaration1: 51521537 false) 
	#(461 5 #reduceActionForExportDefaultDeclarationElement3: 65304579 false) 
	#(460 5 #reduceActionForExportDefaultImplementationElement4: 64743428 false) 
	#(397 5 #reduceActionForConstructSignature2: 50922498 false) 
	#(397 5 #reduceActionForConstructSignature3: 50922499 false) 
	#(392 5 #reduceActionForCallSignature4: 48100356 false) 
	#(386 6 #reduceActionForConstructorType1: 47413249 false) 
	#(385 6 #reduceActionForFunctionType2: 47233026 false) 
	#(260 6 #reduceActionForFunctionExpression3: 32454659 false) 
	#(288 6 #reduceActionForClassDeclaration6: 36959238 false) 
	#(288 6 #reduceActionForClassDeclaration7: 36959239 false) 
	#(288 6 #reduceActionForClassDeclaration10: 36959242 false) 
	#(288 6 #reduceActionForClassDeclaration11: 36959243 false) 
	#(314 5 #reduceActionForImportSpecifier4: 39542788 false) 
	#(218 6 #reduceActionForArrayBindingPattern9: 25453577 false) 
	#(224 6 #reduceActionForBindingElement13: 26293261 false) 
	#(224 6 #reduceActionForBindingElement7: 26293255 false) 
	#(396 1 #liftFirstValue: 50243585 false) 
	#(396 1 #liftFirstValue: 50243586 false) 
	#(272 5 #reduceActionForMethodDefinition9: 33684489 false) 
	#(417 4 #reduceActionForConstructorDeclaration3: 56254467 false) 
	#(422 4 #reduceActionForMemberFunctionDeclaration5: 57223173 false) 
	#(420 4 #reduceActionForMemberVariableDeclaration1: 56986625 false) 
	#(423 4 #reduceActionForMemberAccessorDeclaration4: 57635844 false) 
	#(423 4 #reduceActionForMemberAccessorDeclaration4: 57635848 false) 
	#(261 7 #reduceActionForFunctionExpression1: 32666625 false) 
	#(277 1 #reduceActionForModuleBody1: 35045377 false) 
	#(348 4 #reduceActionForJSXChild3: 43792387 false) 
	#(329 7 #reduceActionForJSXSelfClosingElement2: 41851906 false) 
	#(261 7 #reduceActionForFunctionExpression4: 32666628 false) 
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
	#(253 3 #liftFirstValue: 31833090 false) 
	#(251 5 #reduceActionForCatch1: 31604737 false) 
	#(425 6 #reduceActionForEnumDeclaration4: 58003460 false) 
	#(472 1 #liftFirstValue: 67618819 false) 
	#(470 1 #reduceActionForModuleBody1: 67443714 false) 
	#(471 1 #reduceActionForModuleItemList1: 67491841 false) 
	#(472 1 #liftFirstValue: 67618817 false) 
	#(472 1 #liftFirstValue: 67618818 false) 
	#(480 6 #reduceActionForAmbientModuleDeclaration1: 69487617 false) 
	#(455 2 #reduceActionForModuleItemList2: 62462978 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715524 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715530 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715536 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715522 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715526 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715528 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715532 false) 
	#(479 2 #reduceActionForExportNamespaceElement2: 68715534 false) 
	#(476 5 #reduceActionForNamespaceDeclaration1: 68360193 false) 
	#(478 2 #reduceActionForModuleItemList2: 68588546 false) 
	#(429 1 #liftFirstValue: 58394625 false) 
	#(428 3 #reduceActionForEnumMember2: 58289154 false) 
	#(427 3 #reduceActionForNamespaceName2: 58196994 false) 
	#(462 6 #reduceActionForExportListDeclaration2: 65740802 false) 
	#(462 6 #reduceActionForExportListDeclaration4: 65740804 false) 
	#(400 6 #reduceActionForTypeAliasDeclaration2: 51521538 false) 
	#(398 6 #reduceActionForIndexSignature2: 51115010 false) 
	#(398 6 #reduceActionForIndexSignature2: 51115009 false) 
	#(397 6 #reduceActionForConstructSignature4: 50922500 false) 
	#(386 7 #reduceActionForConstructorType2: 47413250 false) 
	#(260 7 #reduceActionForFunctionExpression1: 32454657 false) 
	#(260 7 #reduceActionForFunctionExpression4: 32454660 false) 
	#(288 7 #reduceActionForClassDeclaration8: 36959240 false) 
	#(288 7 #reduceActionForClassDeclaration12: 36959244 false) 
	#(284 8 #reduceActionForAsyncFunctionExpression1: 36326401 false) 
	#(282 1 #reduceActionForModuleBody1: 36016129 false) 
	#(404 2 #reduceActionForTypedPropertySetParameterList1: 53181441 false) 
	#(272 6 #reduceActionForMethodDefinition7: 33684487 false) 
	#(418 3 #reduceActionForCallSignature1: 56719361 false) 
	#(422 5 #reduceActionForMemberFunctionDeclaration6: 57223174 false) 
	#(420 5 #reduceActionForMemberVariableDeclaration5: 56986629 false) 
	#(420 5 #reduceActionForMemberVariableDeclaration3: 56986627 false) 
	#(420 5 #reduceActionForMemberVariableDeclaration2: 56986626 false) 
	#(417 5 #reduceActionForConstructorDeclaration4: 56254468 false) 
	#(422 5 #reduceActionForMemberFunctionDeclaration7: 57223175 false) 
	#(420 5 #reduceActionForMemberVariableDeclaration9: 56986633 false) 
	#(275 8 #reduceActionForGeneratorExpression1: 34589697 false) 
	#(261 8 #reduceActionForFunctionExpression2: 32666626 false) 
	#(331 5 #reduceActionForJSXClosingElement1: 42264577 false) 
	#(348 5 #reduceActionForJSXChild4: 43792388 false) 
	#(341 5 #reduceActionForJSXSpreadAttribute1: 43131905 false) 
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
	#(474 2 #reduceActionForAmbientPropertyMemberDeclaration1: 67973121 false) 
	#(469 6 #reduceActionForAmbientClassDeclaration1: 67237889 false) 
	#(471 2 #reduceActionForModuleItemList2: 67491842 false) 
	#(283 8 #reduceActionForAsyncFunctionExpression1: 36052993 false) 
	#(274 8 #reduceActionForGeneratorExpression1: 34353153 false) 
	#(260 8 #reduceActionForFunctionExpression2: 32454658 false) 
	#(280 9 #reduceActionForAsyncGeneratorExpression1: 35484673 false) 
	#(284 9 #reduceActionForAsyncFunctionExpression3: 36326403 false) 
	#(272 7 #reduceActionForMethodDefinition5: 33684485 false) 
	#(272 7 #reduceActionForMethodDefinition1: 33684481 false) 
	#(272 7 #reduceActionForMethodDefinition8: 33684488 false) 
	#(418 4 #reduceActionForCallSignature2: 56719362 false) 
	#(417 6 #reduceActionForConstructorDeclaration1: 56254465 false) 
	#(420 6 #reduceActionForMemberVariableDeclaration7: 56986631 false) 
	#(420 6 #reduceActionForMemberVariableDeclaration6: 56986630 false) 
	#(420 6 #reduceActionForMemberVariableDeclaration4: 56986628 false) 
	#(422 6 #reduceActionForMemberFunctionDeclaration1: 57223169 false) 
	#(422 6 #reduceActionForMemberFunctionDeclaration8: 57223176 false) 
	#(420 6 #reduceActionForMemberVariableDeclaration13: 56986637 false) 
	#(420 6 #reduceActionForMemberVariableDeclaration11: 56986635 false) 
	#(420 6 #reduceActionForMemberVariableDeclaration10: 56986634 false) 
	#(275 9 #reduceActionForGeneratorExpression2: 34589698 false) 
	#(332 9 #reduceActionForJSXFragment1: 42425345 false) 
	#(331 6 #reduceActionForJSXClosingElement2: 42264578 false) 
	#(233 9 #reduceActionForForStatement10: 27528202 false) 
	#(233 9 #reduceActionForForStatement11: 27528203 false) 
	#(233 9 #reduceActionForForStatement8: 27528200 false) 
	#(234 9 #reduceActionForForInOfStatement8: 28249096 false) 
	#(245 4 #reduceActionForCaseClause2: 30949378 false) 
	#(243 5 #reduceActionForCaseBlock6: 30692358 false) 
	#(474 3 #reduceActionForAmbientPropertyMemberDeclaration3: 67973123 false) 
	#(474 3 #reduceActionForAmbientPropertyMemberDeclaration2: 67973122 false) 
	#(474 3 #reduceActionForAmbientPropertyMemberDeclaration9: 67973129 false) 
	#(474 3 #reduceActionForAmbientPropertyMemberDeclaration5: 67973125 false) 
	#(469 7 #reduceActionForAmbientClassDeclaration2: 67237890 false) 
	#(457 8 #reduceActionForImportRequireDeclaration1: 62830593 false) 
	#(279 9 #reduceActionForAsyncGeneratorExpression1: 35209217 false) 
	#(283 9 #reduceActionForAsyncFunctionExpression3: 36052995 false) 
	#(274 9 #reduceActionForGeneratorExpression2: 34353154 false) 
	#(284 10 #reduceActionForAsyncFunctionExpression2: 36326402 false) 
	#(280 10 #reduceActionForAsyncGeneratorExpression2: 35484674 false) 
	#(276 8 #reduceActionForGeneratorMethod1: 34825217 false) 
	#(285 8 #reduceActionForAsyncMethod1: 36599809 false) 
	#(272 8 #reduceActionForMethodDefinition6: 33684486 false) 
	#(420 7 #reduceActionForMemberVariableDeclaration8: 56986632 false) 
	#(422 7 #reduceActionForMemberFunctionDeclaration2: 57223170 false) 
	#(417 7 #reduceActionForConstructorDeclaration2: 56254466 false) 
	#(420 7 #reduceActionForMemberVariableDeclaration15: 56986639 false) 
	#(420 7 #reduceActionForMemberVariableDeclaration14: 56986638 false) 
	#(420 7 #reduceActionForMemberVariableDeclaration12: 56986636 false) 
	#(422 7 #reduceActionForMemberFunctionDeclaration3: 57223171 false) 
	#(345 5 #reduceActionForJSXChild4: 43529218 false) 
	#(233 10 #reduceActionForForStatement12: 27528204 false) 
	#(474 4 #reduceActionForAmbientPropertyMemberDeclaration4: 67973124 false) 
	#(474 4 #reduceActionForAmbientPropertyMemberDeclaration10: 67973130 false) 
	#(474 4 #reduceActionForAmbientPropertyMemberDeclaration7: 67973127 false) 
	#(474 4 #reduceActionForAmbientPropertyMemberDeclaration6: 67973126 false) 
	#(474 4 #reduceActionForAmbientPropertyMemberDeclaration11: 67973131 false) 
	#(283 10 #reduceActionForAsyncFunctionExpression2: 36052994 false) 
	#(279 10 #reduceActionForAsyncGeneratorExpression2: 35209218 false) 
	#(284 11 #reduceActionForAsyncFunctionExpression4: 36326404 false) 
	#(281 9 #reduceActionForAsyncGeneratorMethod1: 35759105 false) 
	#(402 9 #reduceActionForGetAccessor1: 52510721 false) 
	#(403 9 #reduceActionForSetAccessor2: 52716546 false) 
	#(420 8 #reduceActionForMemberVariableDeclaration16: 56986640 false) 
	#(422 8 #reduceActionForMemberFunctionDeclaration4: 57223172 false) 
	#(473 5 #reduceActionForAmbientConstructorDeclaration1: 67731457 false) 
	#(474 5 #reduceActionForAmbientPropertyMemberDeclaration8: 67973128 false) 
	#(474 5 #reduceActionForAmbientPropertyMemberDeclaration12: 67973132 false) 
	#(283 11 #reduceActionForAsyncFunctionExpression4: 36052996 false) 
	#(285 10 #reduceActionForAsyncMethod2: 36599810 false) 
	#(403 10 #reduceActionForSetAccessor1: 52716545 false) 
	#(403 10 #reduceActionForSetAccessor1: 52716547 false) 
	#(473 6 #reduceActionForAmbientConstructorDeclaration2: 67731458 false)
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'DecoratorExpression ''decorator''*' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'AsExpression' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'Initializer?' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'SourceFileElement ''element''*' 'SourceFileElement' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSAsExpressionNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #OrderedCollection #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #JSProgramNode #JSProgramNode #Object #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 0 49 0 140 0 81 0 207 0 57 0 208 0 81 0 209 0 65 0 210 0 49 1 46 0 73 1 47 0 77 1 48 0 81 1 49 0 81 1 51 0 81 1 61 0 11 1 228 0 10 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 1 113 0 196 1 113 0 197 1 113 0 199 0 253 1 5 1 113 1 8 1 125 1 9 1 129 1 10 1 133 1 13 1 113 1 14 0 253 1 19 1 113 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 2 29 0 200 2 29 0 203 2 29 0 204 2 29 0 205 2 29 0 213 2 29 0 227 2 29 0 228 2 29 0 229 2 29 0 230 2 29 0 231 2 29 0 232 2 29 0 233 2 29 0 234 2 29 0 237 2 29 0 238 2 29 0 240 2 29 0 241 2 29 0 242 2 29 0 247 2 29 0 249 2 29 0 250 2 29 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 2 117 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 2 125 1 44 2 129 1 45 0 6 1 228 0 26 1 229] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 0 81 0 207 0 57 0 208 0 81 0 209 0 65 0 210 2 133 1 46 0 73 1 47 0 77 1 48 0 81 1 49 0 81 1 51 0 81 1 61 0 11 1 228 0 10 1 229] 
#[1 0 30 0 1 0 30 0 2 0 30 0 4 0 30 0 6 0 30 0 8 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 39 0 30 0 52 0 30 0 56 0 30 0 57 0 30 0 58 0 30 0 61 0 30 0 62 0 30 0 63 0 30 0 65 0 30 0 66 0 30 0 67 0 30 0 69 0 30 0 70 0 30 0 72 0 30 0 73 0 30 0 75 0 30 0 77 0 30 0 79 0 30 0 81 0 30 0 82 0 30 0 87 0 30 0 89 0 30 0 92 0 30 0 93 0 30 0 94 0 30 0 102 0 30 0 106 0 30 0 107 0 30 0 109 0 30 0 110 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 115 0 30 0 116 0 30 0 117 0 30 0 118 0 30 0 119 0 30 0 124 0 30 0 126 0 30 0 128 0 30 0 129 0 30 0 130 0 30 0 132 0 30 0 133 0 30 0 136 2 137 1 182 2 141 1 183 0 30 1 228 0 30 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 2 201 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 2 201 1 129 2 201 1 130 2 217 1 131 2 217 1 133] 
#[0 0 34 0 4 0 6 0 124 1 228] 
#[1 3 29 0 4 3 33 0 26 3 37 0 56 3 41 0 61 3 45 0 62 0 65 0 63 3 49 0 68 3 53 0 79 0 65 0 89 2 9 0 115 3 57 0 201 3 57 0 202 3 57 0 209 0 65 0 210 3 69 0 213 3 57 1 4 3 57 1 18 3 57 1 23 3 57 1 27 3 57 1 32 3 93 1 62 3 97 1 63 3 101 1 228] 
#[1 3 105 0 4 3 109 0 26 0 189 0 124 3 133 0 128 3 121 0 141 3 117 1 52 3 121 1 53 3 125 1 54 3 129 1 55 3 133 1 59 3 121 1 60 3 133 1 69 3 145 1 228] 
#[0 0 38 0 4 0 6 0 124 1 228] 
#[0 0 0 1 229] 
#[0 0 42 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 3 149 0 200 3 149 0 203 3 149 0 204 3 149 0 205 3 149 0 213 3 149 0 227 3 149 0 228 3 149 0 229 3 149 0 230 3 149 0 231 3 149 0 232 3 149 0 233 3 149 0 234 3 149 0 237 3 149 0 238 3 149 0 240 3 149 0 241 3 149 0 242 3 149 0 247 3 149 0 249 3 149 0 250 3 149 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 0 46 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 3 161 0 141 3 165 0 211 3 169 0 212 3 173 0 216 3 173 0 217 3 173 0 218 3 169 1 152 3 169 1 153 3 193 1 228] 
#[0 0 50 1 229] 
#[0 0 54 1 229] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 37 0 73 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 7 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 3 197 0 207 0 57 0 208 3 197 0 209 0 65 0 210 3 197 1 49 3 197 1 51 3 197 1 61 0 11 1 228 0 58 1 229] 
#[0 0 62 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 0 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 0 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 201 0 73] 
#[1 0 97 0 2 0 74 0 3 0 23 0 4 3 205 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 3 209 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 3 213 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 3 217 0 196 3 217 0 197 3 217 0 199 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 3 237 0 255 3 241 1 0 3 245 1 1 3 249 1 2 3 253 1 3 0 253 1 5 3 217 1 8 1 125 1 9 1 129 1 10 1 133 1 13 3 217 1 14 0 253 1 19 3 217 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 1 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 4 5 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 9 0 120 4 13 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 4 17 0 147 4 21 0 148 4 25 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 29 0 196 4 29 0 197 0 253 1 5 4 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 29 1 14 0 253 1 19 4 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 49 0 179 4 49 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 49 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 57 0 179 4 57 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 57 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 61 0 179 4 61 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 61 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 65 0 179 4 65 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 65 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 69 0 179 4 69 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 69 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 73 0 179 4 73 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 73 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 77 0 2 4 81 0 79 0 189 0 124 4 85 0 141 4 89 1 9 1 129 1 10 1 133 1 13 4 93 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 97 0 179 4 97 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 97 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 101 0 4 4 105 0 74 0 189 0 124 4 109 0 141 4 113 1 34 4 117 1 35 4 121 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 125 0 179 4 125 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 125 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 4 129 0 2 4 133 0 26 0 189 0 124 4 137 0 141] 
#[1 4 141 0 2 4 145 0 22] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 149 0 22 4 37 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 4 153 0 141 4 153 0 143 4 153 0 144 4 153 0 145 4 153 0 146 4 153 0 150 0 241 0 151 4 153 0 159 0 249 0 160 4 153 0 163 4 153 0 164 4 153 0 165 4 153 0 166 4 153 0 167 4 157 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 161 0 178 4 153 1 5 4 153 1 19 4 153 1 24 4 153 1 28 4 153 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 4 153 1 71 4 153 1 72 4 153 1 73 1 197 1 74 4 153 1 76 1 205 1 94 4 165 1 228] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 4 169 0 2 4 173 0 6 4 177 0 22 4 181 0 172 4 185 1 228] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 189 0 179 4 189 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 189 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 4 193 0 179 4 193 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 4 193 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 0 97 0 2 0 94 0 3 0 14 0 4 0 94 0 5 0 101 0 6 0 94 0 7 0 94 0 8 4 197 0 26 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 94 0 121 0 94 0 122 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 94 0 134 0 94 0 135 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 201 0 196 4 201 0 197 0 253 1 5 4 201 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 201 1 14 0 253 1 19 4 201 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228 0 94 1 229] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 74 0 78 0 83 0 85 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 102 0 83] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 64 0 78 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 132 0 133 0 134 0 135 0 137 1 227 1 228 1 229] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 64 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 122 0 14 4 205 1 95] 
#[1 0 126 0 2 0 126 0 3 0 126 0 5 0 126 0 6 0 126 0 7 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 126 0 96 0 126 0 121 0 126 0 122 0 126 0 132 0 126 0 133 0 126 0 134 0 126 0 135 0 126 1 227 0 126 1 228 0 126 1 229] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 4 209 0 4] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 4 213 0 133] 
#[1 4 169 0 2 0 158 0 3 0 158 0 4 0 158 0 5 4 217 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 20 0 158 0 21 4 221 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 4 225 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 53 0 158 0 54 0 158 0 83 0 158 0 86 0 158 0 96 0 158 0 121 0 158 0 122 0 209 0 132 0 18 0 133 0 158 0 134 0 158 0 135 4 229 0 159 0 249 0 160 4 233 0 172 4 237 0 175 0 158 1 227 0 27 1 228 0 158 1 229] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 178 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 134 0 135 1 227 1 228 1 229] 
#[1 4 169 0 2 0 182 0 3 0 182 0 4 0 182 0 5 4 241 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 20 0 182 0 21 4 245 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 182 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 40 0 182 0 41 0 182 0 42 0 182 0 43 4 225 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 182 0 48 0 182 0 49 0 182 0 50 0 182 0 51 0 182 0 53 0 182 0 54 0 182 0 83 0 182 0 86 0 182 0 96 0 182 0 121 0 182 0 122 0 209 0 132 0 18 0 133 0 182 0 134 0 182 0 135 4 249 0 159 0 249 0 160 4 253 0 172 5 1 0 175 0 182 1 227 0 31 1 228 0 182 1 229] 
#[0 0 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 20 0 194 0 21 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 4 225 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 48 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 53 0 194 0 54 0 194 0 83 0 194 0 86 0 194 0 96 0 194 0 121 0 194 0 122 0 194 0 134 0 194 0 135 5 5 0 175 0 194 1 227 0 194 1 228 0 194 1 229] 
#[1 0 198 0 3 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 5 77 0 10 0 198 0 11 0 198 0 12 5 77 0 13 0 198 0 14 0 198 0 15 5 77 0 16 5 77 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 77 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 5 77 0 28 5 77 0 29 5 77 0 30 5 77 0 31 5 77 0 32 5 77 0 33 5 77 0 34 0 198 0 35 5 57 0 36 0 198 0 37 5 61 0 38 0 198 0 40 0 198 0 41 5 77 0 42 0 198 0 43 0 198 0 45 5 77 0 46 0 198 0 47 0 198 0 48 0 198 0 49 5 77 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 83 0 198 0 86 0 198 0 121 0 198 0 122 0 198 0 134 0 198 0 135 5 77 0 198 5 77 1 227 5 85 1 228 0 198 1 229] 
#[0 0 202 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 0 206 0 3 0 206 0 5 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 11 0 206 0 12 0 206 0 14 0 206 0 15 0 206 0 18 0 206 0 20 0 206 0 21 0 206 0 24 0 206 0 25 0 206 0 26 5 89 0 27 0 206 0 35 0 206 0 37 0 206 0 40 0 206 0 41 0 206 0 43 0 206 0 45 0 206 0 47 0 206 0 48 0 206 0 49 0 206 0 51 0 206 0 53 0 206 0 54 0 206 0 83 0 206 0 86 0 206 0 121 0 206 0 122 0 206 0 134 0 206 0 135 0 206 1 229] 
#[0 0 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 0 214 0 3 0 214 0 5 0 214 0 7 0 214 0 8 5 105 0 9 0 214 0 11 0 214 0 12 0 214 0 14 0 214 0 15 0 214 0 18 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 25 5 105 0 26 0 214 0 35 0 214 0 37 0 214 0 40 0 214 0 41 0 214 0 43 0 214 0 45 5 105 0 47 0 214 0 48 0 214 0 49 0 214 0 51 0 214 0 53 0 214 0 54 0 214 0 83 0 214 0 86 0 214 0 121 0 214 0 122 0 214 0 134 0 214 0 135 5 105 0 183 0 214 1 229] 
#[1 0 218 0 3 0 218 0 5 0 218 0 7 0 218 0 8 0 218 0 11 0 218 0 12 0 218 0 14 0 218 0 15 0 218 0 18 0 218 0 20 0 218 0 21 0 218 0 24 0 218 0 25 5 109 0 35 5 113 0 37 0 218 0 40 0 218 0 41 0 218 0 43 0 218 0 45 0 218 0 48 0 218 0 49 0 218 0 51 0 218 0 53 0 218 0 54 0 218 0 83 0 218 0 86 0 218 0 121 0 218 0 122 0 218 0 134 0 218 0 135 0 218 1 229] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 11 5 117 0 12 0 222 0 14 5 121 0 15 5 125 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 48 0 222 0 49 0 222 0 51 0 222 0 53 0 222 0 54 0 222 0 83 0 222 0 86 0 222 0 121 0 222 0 122 0 222 0 134 0 222 0 135 0 222 1 229] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 0 226 0 24 0 226 0 25 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 48 0 226 0 49 0 226 0 51 0 226 0 53 0 226 0 54 5 145 0 83 5 149 0 86 0 226 0 121 0 226 0 122 0 226 0 134 0 226 0 135 0 226 1 229] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 5 153 0 24 5 157 0 25 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 48 0 230 0 49 0 230 0 51 5 161 0 53 5 165 0 54 0 230 0 121 0 230 0 122 0 230 0 134 0 230 0 135 0 230 1 229] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 5 169 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 48 0 234 0 49 0 234 0 51 0 234 0 121 0 234 0 122 0 234 0 134 0 234 0 135 0 234 1 229] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 48 0 238 0 49 5 173 0 51 0 238 0 121 0 238 0 122 0 238 0 134 0 238 0 135 0 238 1 229] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 0 246 0 45 5 177 0 48 0 242 0 49 0 242 0 121 0 242 0 122 0 242 0 134 0 242 0 135 0 242 1 229] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 5 181 0 41 0 250 0 43 0 250 0 49 0 250 0 121 0 250 0 122 0 250 0 134 0 250 0 135 0 250 1 229] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 0 254 0 43 5 185 0 49 0 254 0 121 0 254 0 122 0 254 0 134 0 254 0 135 0 254 1 229] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 43 1 6 0 45 1 2 0 121 1 2 0 122 1 2 0 134 1 2 0 135 1 2 1 229] 
#[0 5 189 0 45] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 5 193 0 43 1 10 0 121 1 10 0 122 1 10 0 134 1 10 0 135 1 10 1 229] 
#[0 1 14 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 1 18 0 3 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[1 5 197 0 121 0 0 1 229] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 26 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 5 201 0 19] 
#[0 1 30 0 19] 
#[0 1 34 0 19] 
#[0 1 38 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 1 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 46 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 58 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 1 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 205 0 83] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 227 1 228 1 229] 
#[1 1 94 0 4 1 94 0 136 1 94 0 138 5 209 1 96] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 213 0 136] 
#[1 1 102 0 3 1 102 0 5 1 102 0 7 1 102 0 8 1 102 0 9 1 102 0 11 1 102 0 12 1 102 0 14 1 102 0 15 1 102 0 18 1 102 0 20 1 102 0 21 1 102 0 24 1 102 0 25 1 102 0 26 1 102 0 27 1 102 0 35 1 102 0 37 1 102 0 40 1 102 0 41 1 102 0 43 1 102 0 45 1 102 0 47 1 102 0 48 1 102 0 49 1 102 0 51 1 102 0 53 1 102 0 54 1 102 0 83 1 102 0 86 1 102 0 121 1 102 0 122 1 102 0 134 1 102 0 135 5 217 1 228 1 102 1 229] 
#[1 5 221 0 2 5 225 0 11 5 229 0 79 5 233 1 100 5 237 1 145] 
#[1 0 6 0 2 0 6 0 4 5 241 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 5 245 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 0 6 1 228] 
#[0 1 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 1 110 0 8 1 110 0 124 5 249 0 239] 
#[1 1 110 0 8 1 110 0 124 5 253 0 239] 
#[0 6 1 0 8] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 6 5 0 200 6 5 0 203 6 5 0 204 6 5 0 205 6 5 0 213 6 5 0 227 6 5 0 228 6 5 0 229 6 5 0 230 6 5 0 231 6 5 0 232 6 5 0 233 6 5 0 234 6 5 0 237 6 5 0 238 6 5 0 240 6 5 0 241 6 5 0 242 6 5 0 247 6 5 0 249 6 5 0 250 6 5 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 6 9 0 2 6 13 0 57] 
#[0 6 17 0 2] 
#[1 1 110 0 2 1 110 0 4 1 110 0 6 1 110 0 8 1 110 0 35 1 110 0 36 1 110 0 37 1 110 0 38 1 110 0 39 1 110 0 52 1 110 0 56 1 110 0 57 1 110 0 61 1 110 0 69 1 110 0 75 1 110 0 79 1 110 0 82 1 110 0 93 1 110 0 94 1 110 0 106 1 110 0 109 1 110 0 111 1 110 0 114 1 110 0 116 1 110 0 119 1 110 0 124 1 110 0 126 1 110 0 128 1 110 0 129 1 110 0 130 1 110 0 132 1 110 0 133 1 110 0 136 6 21 0 239 1 110 1 228] 
#[0 6 25 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 6 29 0 196 6 29 0 197 6 29 0 199 0 253 1 5 6 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 6 29 1 14 0 253 1 19 6 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 1 217 0 4 6 33 0 205] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 6 37 0 141 6 41 0 214 6 45 0 215 6 49 0 216 6 49 0 217 6 49 0 218 6 53 1 228] 
#[0 6 57 0 2] 
#[0 6 61 0 2] 
#[1 0 98 0 2 0 98 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 98 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 38 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 47 0 98 0 48 0 98 0 49 0 98 0 50 0 98 0 51 0 98 0 53 0 98 0 54 0 98 0 83 0 98 0 86 0 98 0 121 6 65 0 122 0 98 0 132 0 98 0 133 0 98 1 227 0 98 1 228] 
#[1 6 69 0 8 5 197 0 121] 
#[0 0 0 1 229] 
#[0 1 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 1 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 73 0 207 0 57 0 208 6 73 0 209 0 65 0 210 0 6 1 228 1 198 1 229] 
#[0 1 202 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 0 0 1 229] 
#[0 1 206 1 229] 
#[0 0 0 1 229] 
#[0 0 0 1 229] 
#[1 1 210 0 1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 6 77 0 61 3 45 0 62 6 81 0 63 1 229 0 65 1 233 0 66 6 85 0 67 0 141 0 69 1 237 0 70 6 89 0 72 0 35 0 73 1 173 0 75 1 241 0 77 6 97 0 79 1 245 0 81 6 101 0 82 6 105 0 87 0 65 0 89 6 109 0 92 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 6 113 0 113 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 6 165 0 200 6 165 0 203 6 165 0 204 6 165 0 205 6 165 0 209 0 65 0 210 6 165 0 213 6 165 0 227 6 165 0 228 6 165 0 229 6 165 0 230 6 165 0 231 6 165 0 232 6 165 0 233 6 165 0 234 6 165 0 237 6 165 0 238 6 165 0 240 6 165 0 241 6 165 0 242 6 165 0 247 6 165 0 249 6 165 0 250 6 165 0 254 6 165 1 4 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 6 165 1 18 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 6 165 1 32 0 253 1 33 6 165 1 51 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 6 141 1 137 6 165 1 144 1 209 1 149 6 165 1 154 6 165 1 169 6 165 1 174 6 165 1 180 6 165 1 184 6 165 1 190 6 165 1 201 6 165 1 202 6 165 1 203 6 165 1 204 6 165 1 205 6 165 1 206 6 165 1 207 6 165 1 208 6 165 1 224 6 209 1 228 1 214 1 229] 
#[1 2 145 0 2 0 74 0 3 6 213 0 4 6 217 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 3 209 0 120 0 189 0 124 2 189 0 128 2 193 0 129 6 221 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 6 225 1 0 3 245 1 1 3 249 1 2 3 253 1 3 2 189 1 69 2 193 1 70 2 197 1 100 6 229 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 6 229 1 129 6 229 1 130 2 217 1 131 2 217 1 133 6 233 1 228] 
#[1 6 237 0 2 6 241 0 5 6 245 0 6 2 157 0 11 6 249 0 93 6 253 0 101 7 1 0 125 7 21 0 128 7 25 0 129 7 9 0 142 7 9 0 154 7 9 0 155 7 9 0 156 7 21 1 69 7 25 1 70 7 29 1 100 7 33 1 120 7 37 1 121 7 41 1 122 7 41 1 134 7 41 1 136 7 41 1 141 7 41 1 142 7 41 1 143] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 7 65 0 7 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 7 69 0 121 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 7 81 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 7 77 1 125 7 81 1 126 2 205 1 127 2 209 1 128 7 81 1 129 7 81 1 130 2 217 1 131 2 217 1 133] 
#[1 0 189 0 124 7 85 0 141 7 89 1 101 7 93 1 102] 
#[1 7 97 0 2 2 149 0 4 2 153 0 6 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 7 101 1 111 7 101 1 112 7 101 1 113 7 101 1 114 7 101 1 115 7 101 1 116 2 241 1 117 2 245 1 118 7 101 1 119 7 101 1 123 7 101 1 124 7 101 1 131 7 101 1 133] 
#[1 7 97 0 2 2 149 0 4 2 153 0 6 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 7 105 1 111 7 105 1 112 7 105 1 113 7 105 1 114 7 105 1 115 7 105 1 116 2 241 1 117 2 245 1 118 7 105 1 119 7 105 1 123 7 105 1 124 7 105 1 131 7 105 1 133] 
#[1 7 109 0 2 2 157 0 11 7 113 1 100] 
#[0 1 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 0 189 0 124 7 117 0 141 7 121 1 132] 
#[0 1 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 1 226 0 3 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 1 226 0 8 1 226 0 9 1 226 0 11 1 226 0 12 1 226 0 14 1 226 0 15 1 226 0 18 1 226 0 19 1 226 0 20 1 226 0 21 1 230 0 22 1 226 0 23 1 226 0 24 1 226 0 25 1 226 0 26 1 226 0 27 1 226 0 35 1 226 0 37 1 226 0 40 1 226 0 41 1 226 0 43 1 226 0 45 1 226 0 47 1 226 0 48 1 226 0 49 1 226 0 51 1 226 0 53 1 226 0 54 1 226 0 64 1 226 0 83 1 226 0 85 1 226 0 86 1 226 0 97 1 226 0 98 1 226 0 99 1 226 0 100 1 226 0 104 1 226 0 121 1 226 0 122 1 226 0 125 1 226 0 128 1 226 0 129 1 226 0 134 1 226 0 135 1 226 1 228 1 226 1 229] 
#[0 1 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 1 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 7 125 0 2] 
#[0 0 0 1 229] 
#[1 1 242 0 3 1 242 0 4 1 242 0 5 1 242 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 11 1 242 0 12 1 242 0 14 1 242 0 15 1 242 0 18 1 242 0 19 1 242 0 20 1 242 0 21 1 242 0 23 1 242 0 24 1 242 0 25 1 242 0 26 1 242 0 27 1 242 0 35 1 242 0 37 1 242 0 40 1 242 0 41 1 242 0 43 1 242 0 45 1 242 0 47 0 39 0 48 1 242 0 49 1 242 0 51 1 242 0 53 1 242 0 54 1 242 0 64 1 242 0 83 1 242 0 86 1 242 0 97 1 242 0 98 1 242 0 99 1 242 0 100 1 242 0 104 1 242 0 121 1 242 0 122 1 242 0 125 1 242 0 128 1 242 0 129 1 242 0 134 1 242 0 135 1 242 1 228 1 242 1 229] 
#[1 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 14 1 246 0 15 1 246 0 18 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 23 1 246 0 24 1 246 0 25 1 246 0 26 1 246 0 27 1 246 0 35 1 246 0 37 0 43 0 40 1 246 0 41 1 246 0 43 1 246 0 45 1 246 0 47 1 246 0 48 1 246 0 49 1 246 0 51 1 246 0 53 1 246 0 54 1 246 0 64 1 246 0 83 1 246 0 86 1 246 0 97 1 246 0 98 1 246 0 99 1 246 0 100 1 246 0 104 1 246 0 121 1 246 0 122 1 246 0 125 1 246 0 128 1 246 0 129 1 246 0 134 1 246 0 135 1 246 1 228 1 246 1 229] 
#[0 1 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 1 254 0 3 1 254 0 4 1 254 0 5 0 47 0 6 1 254 0 7 1 254 0 8 1 254 0 9 1 254 0 11 1 254 0 12 1 254 0 14 1 254 0 15 1 254 0 18 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 23 1 254 0 24 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 35 1 254 0 37 1 254 0 40 1 254 0 41 1 254 0 43 1 254 0 45 1 254 0 47 1 254 0 48 1 254 0 49 1 254 0 51 1 254 0 53 1 254 0 54 1 254 0 64 1 254 0 83 1 254 0 86 1 254 0 97 1 254 0 98 1 254 0 99 1 254 0 100 1 254 0 104 1 254 0 121 1 254 0 122 1 254 0 125 1 254 0 128 1 254 0 129 1 254 0 134 1 254 0 135 7 137 0 239 1 254 1 228 1 254 1 229] 
#[0 2 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 10 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 1 110 0 3 1 110 0 4 1 110 0 5 1 110 0 6 1 110 0 7 1 110 0 8 1 110 0 9 1 110 0 11 1 110 0 12 1 110 0 14 1 110 0 15 1 110 0 18 1 110 0 19 1 110 0 20 1 110 0 21 1 110 0 23 1 110 0 24 1 110 0 25 1 110 0 26 1 110 0 27 1 110 0 35 1 110 0 37 1 110 0 40 1 110 0 41 1 110 0 43 1 110 0 45 1 110 0 47 1 110 0 48 1 110 0 49 1 110 0 51 1 110 0 53 1 110 0 54 1 110 0 64 1 110 0 83 1 110 0 85 1 110 0 86 1 110 0 97 1 110 0 98 1 110 0 99 1 110 0 100 1 110 0 104 1 110 0 121 1 110 0 122 1 110 0 125 1 110 0 128 1 110 0 129 1 110 0 134 1 110 0 135 7 141 0 239 1 110 1 228 1 110 1 229] 
#[0 7 145 0 22] 
#[0 2 22 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 2 54 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 7 149 0 5 7 157 0 125 7 157 0 128 7 157 1 50 7 161 1 64 7 165 1 65 7 157 1 69] 
#[1 7 173 0 55 2 58 0 78] 
#[0 7 177 0 79] 
#[1 4 101 0 4 4 105 0 74 0 189 0 124 7 181 0 141 7 185 1 34 4 117 1 35 4 121 1 228] 
#[0 7 189 0 61] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 7 193 0 196 7 193 0 197 0 253 1 5 7 193 1 8 1 125 1 9 1 129 1 10 1 133 1 13 7 193 1 14 0 253 1 19 7 193 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 7 197 0 2 7 201 0 26 0 189 0 124 7 205 0 141] 
#[0 2 62 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 70 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 74 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 78 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 82 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 86 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 90 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 2 94 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 7 209 0 78 7 213 1 56] 
#[1 7 217 0 8 2 98 0 78] 
#[1 0 51 0 1 1 210 0 61 1 210 0 62 7 225 0 63 6 89 0 72 7 229 0 79 6 105 0 87 6 113 0 113 7 233 1 137 7 237 1 144 7 241 1 154 7 245 1 169 7 249 1 225] 
#[1 7 253 0 5 0 189 0 124 8 1 0 125 8 1 0 128 8 13 0 141 8 1 1 50 8 5 1 57 8 9 1 58 8 13 1 60 8 1 1 69 8 17 1 228] 
#[0 8 21 0 55] 
#[0 2 102 0 5 0 78 0 121] 
#[1 7 209 0 78 8 25 1 56] 
#[1 2 106 0 78 8 29 0 121] 
#[0 2 110 0 78] 
#[0 2 114 0 78] 
#[0 8 33 0 8] 
#[0 2 118 0 78 0 121] 
#[0 2 122 0 8] 
#[0 8 37 0 113] 
#[0 2 126 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 8 41 0 5 8 45 0 6 8 49 0 120 0 189 0 124 7 1 0 125 7 21 0 128 7 25 0 129 8 53 0 141 8 57 0 142 8 57 0 154 8 57 0 155 8 57 0 156 8 61 0 219 8 65 0 220 8 69 0 223 8 69 0 225 7 21 1 69 7 25 1 70 8 77 1 228] 
#[1 3 153 0 4 3 157 0 6 8 81 0 7 3 209 0 120 4 13 0 121 0 189 0 124 8 53 0 141 8 85 0 148 3 221 0 216 3 221 0 217 3 221 0 218 8 89 0 221 8 93 0 222 8 97 0 224 8 97 0 225 8 101 0 226 6 233 1 228] 
#[1 2 130 0 8 8 105 0 23 2 130 0 121 8 109 0 158] 
#[1 8 113 0 8 8 117 0 121] 
#[0 2 134 0 8 0 121] 
#[1 8 105 0 23 8 121 0 158] 
#[0 2 138 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 2 142 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 2 146 0 8 0 121] 
#[0 2 150 0 8 0 121] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 8 125 0 141 8 129 0 216 8 129 0 217 8 129 0 218] 
#[0 2 154 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 133 0 113] 
#[1 0 97 0 2 0 23 0 4 3 205 0 6 8 137 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 8 141 0 120 4 13 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 3 213 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 4 17 0 147 8 145 0 148 4 25 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 4 29 0 196 4 29 0 197 3 221 0 216 3 221 0 217 3 221 0 218 8 89 0 221 8 93 0 222 8 97 0 224 8 97 0 225 8 101 0 226 0 253 1 5 4 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 4 29 1 14 0 253 1 19 4 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 1 1 228] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 8 149 0 141 8 153 0 216 8 153 0 217 8 153 0 218] 
#[1 0 126 0 2 0 55 0 3 0 126 0 6 0 55 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 59 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 55 0 121 0 126 0 132 0 126 0 133 8 157 0 158 0 126 1 227 0 126 1 228] 
#[1 8 161 0 3 5 197 0 121] 
#[1 2 162 0 3 2 162 0 5 2 162 0 7 8 105 0 23 2 162 0 121 8 165 0 158] 
#[0 2 166 0 3 0 121] 
#[0 2 170 0 3 0 5 0 7 0 121] 
#[0 2 174 0 3] 
#[0 8 169 0 3] 
#[0 2 178 0 3] 
#[1 2 182 0 3 8 173 0 121] 
#[0 2 186 0 3] 
#[0 2 190 0 3 0 121] 
#[1 1 210 0 1 5 221 0 2 1 210 0 4 1 210 0 6 5 225 0 11 1 210 0 43 5 229 0 79 0 63 0 97 0 67 0 98 0 71 0 99 0 75 0 100 1 210 0 109 1 210 0 122 0 79 0 124 8 193 0 141 5 233 1 100 8 197 1 137 8 201 1 139 5 237 1 145] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 205 0 196 8 205 0 197 0 253 1 5 8 205 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 205 1 14 0 253 1 19 8 205 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 2 198 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 120 0 121 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[1 8 209 0 7 4 13 0 121 8 213 0 148] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 8 217 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 9 0 120 8 221 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 8 225 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 229 0 196 8 229 0 197 0 253 1 5 8 229 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 229 1 14 0 253 1 19 8 229 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 2 202 0 7 0 121] 
#[0 2 206 0 7 0 121] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 3 217 0 196 3 217 0 197 3 217 0 199 0 253 1 5 3 217 1 8 1 125 1 9 1 129 1 10 1 133 1 13 3 217 1 14 0 253 1 19 3 217 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 4 81 0 79] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 198 0 3 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 11 0 198 0 12 0 198 0 14 0 198 0 15 0 198 0 18 0 198 0 20 0 198 0 21 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 35 5 57 0 36 0 198 0 37 5 61 0 38 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 45 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 51 0 198 0 53 0 198 0 54 0 198 0 83 0 198 0 86 0 198 0 121 0 198 0 122 0 198 0 134 0 198 0 135 5 85 1 228 0 198 1 229] 
#[0 2 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 8 233 0 11 5 229 0 79] 
#[0 2 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 2 218 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 2 222 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 2 226 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 2 230 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 3 237 0 255 3 241 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 8 237 0 2 8 241 0 26 0 189 0 124 8 245 0 141] 
#[0 0 130 0 19] 
#[0 8 249 0 19] 
#[1 5 221 0 2 2 157 0 11 5 233 1 100 5 237 1 145] 
#[0 2 234 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 8 253 0 5 9 1 0 8 9 5 0 26 9 9 0 56 9 13 0 80 9 17 0 103 9 21 0 104 9 25 0 124 9 29 0 126 9 57 1 16 9 57 1 20 9 57 1 25 9 57 1 29 9 49 1 36 9 53 1 37 9 57 1 38 9 61 1 39 9 65 1 40 9 57 1 41 9 57 1 146 9 57 1 147 9 81 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 37 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 9 85 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 9 85 0 178 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 165 1 228] 
#[1 4 101 0 4 4 105 0 74 9 89 1 34 4 117 1 35 4 121 1 228] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 9 93 0 4] 
#[1 9 97 0 74 9 101 0 85 9 105 1 158 9 109 1 160] 
#[0 2 242 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 9 113 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 9 117 0 2 0 189 0 124 9 121 0 141] 
#[0 9 125 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 129 0 196 9 129 0 197 0 253 1 5 9 129 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 129 1 14 0 253 1 19 9 129 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 9 133 0 90] 
#[0 9 137 0 108] 
#[1 4 169 0 2 0 158 0 3 0 158 0 4 0 158 0 5 4 217 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 20 0 158 0 21 4 221 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 4 225 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 53 0 158 0 54 0 158 0 83 0 158 0 86 0 158 0 96 0 158 0 121 0 158 0 122 0 209 0 132 0 18 0 133 0 158 0 134 0 158 0 135 4 229 0 159 0 249 0 160 9 141 0 172 4 237 0 175 0 158 1 227 0 27 1 228 0 158 1 229] 
#[1 2 246 0 3 2 246 0 4 2 246 0 5 2 246 0 7 2 246 0 8 2 246 0 9 2 246 0 10 2 246 0 11 2 246 0 12 2 246 0 13 2 246 0 14 2 246 0 15 2 246 0 16 2 246 0 17 2 246 0 18 2 246 0 20 2 246 0 21 2 246 0 23 2 246 0 24 2 246 0 25 2 246 0 26 2 246 0 27 2 246 0 28 2 246 0 29 2 246 0 30 2 246 0 31 2 246 0 32 2 246 0 33 2 246 0 34 2 246 0 35 2 246 0 36 2 246 0 37 2 246 0 38 2 246 0 40 2 246 0 41 2 246 0 42 2 246 0 43 2 246 0 45 2 246 0 46 2 246 0 47 2 246 0 48 2 246 0 49 2 246 0 50 2 246 0 51 2 246 0 53 2 246 0 54 2 246 0 83 2 246 0 86 2 246 0 96 2 246 0 121 2 246 0 122 2 246 0 134 2 246 0 135 2 246 1 227 0 83 1 228 2 246 1 229] 
#[0 9 145 1 228] 
#[0 5 229 0 79] 
#[1 0 97 0 2 9 149 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 9 153 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 9 157 0 173 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 161 0 196 9 161 0 197 0 253 1 5 9 161 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 161 1 14 0 253 1 19 9 161 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 165 0 196 9 165 0 197 9 165 0 199 0 253 1 5 9 165 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 165 1 14 0 253 1 19 9 165 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 9 169 0 125] 
#[0 2 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 9 173 0 11 9 177 1 104] 
#[0 2 254 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 3 2 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 181 0 196 9 181 0 197 0 253 1 5 9 181 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 181 1 14 0 253 1 19 9 181 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 3 6 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 9 185 0 14] 
#[1 9 189 0 5 8 45 0 6 9 5 0 26 9 9 0 56 9 13 0 80 9 17 0 103 9 193 0 120 9 197 0 124 7 1 0 125 9 29 0 126 7 21 0 128 7 25 0 129 9 201 0 141 9 213 0 142 9 205 0 152 9 209 0 153 9 213 0 154 9 213 0 155 9 213 0 156 9 209 0 157 9 209 1 16 9 209 1 20 9 209 1 25 9 209 1 29 9 225 1 40 7 21 1 69 7 25 1 70 9 209 1 146 9 209 1 147 9 229 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 233 0 196 9 233 0 197 9 233 0 199 0 253 1 5 9 233 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 233 1 14 0 253 1 19 9 233 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 237 0 196 9 237 0 197 9 237 0 199 0 253 1 5 9 237 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 237 1 14 0 253 1 19 9 237 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 9 241 0 125 9 245 0 126] 
#[1 4 169 0 2 9 249 0 6 9 253 0 125 10 1 0 126 0 209 0 132 0 18 0 133 10 5 0 159 0 249 0 160 10 9 0 172 10 13 0 177 4 185 1 228] 
#[0 3 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 3 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 4 169 0 2 3 18 0 3 3 18 0 4 3 18 0 5 10 17 0 6 3 18 0 7 3 18 0 8 3 18 0 9 3 18 0 10 3 18 0 11 3 18 0 12 3 18 0 13 3 18 0 14 3 18 0 15 3 18 0 16 3 18 0 17 3 18 0 18 3 18 0 20 3 18 0 21 10 21 0 22 3 18 0 23 3 18 0 24 3 18 0 25 3 18 0 26 3 18 0 27 3 18 0 28 3 18 0 29 3 18 0 30 3 18 0 31 3 18 0 32 3 18 0 33 3 18 0 34 3 18 0 35 3 18 0 36 3 18 0 37 3 18 0 38 3 18 0 40 3 18 0 41 3 18 0 42 3 18 0 43 3 18 0 44 3 18 0 45 3 18 0 46 3 18 0 47 3 18 0 48 3 18 0 49 3 18 0 50 3 18 0 51 3 18 0 53 3 18 0 54 3 18 0 83 3 18 0 86 3 18 0 96 3 18 0 121 3 18 0 122 0 209 0 132 0 18 0 133 3 18 0 134 3 18 0 135 10 25 0 159 0 249 0 160 10 29 0 172 10 33 0 176 3 18 1 227 0 87 1 228 3 18 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 37 0 196 10 37 0 197 10 37 0 199 0 253 1 5 10 37 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 37 1 14 0 253 1 19 10 37 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 10 41 0 125 10 45 0 126] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 4 169 0 2 3 30 0 3 3 30 0 4 3 30 0 5 10 17 0 6 3 30 0 7 3 30 0 8 3 30 0 9 3 30 0 10 3 30 0 11 3 30 0 12 3 30 0 13 3 30 0 14 3 30 0 15 3 30 0 16 3 30 0 17 3 30 0 18 3 30 0 20 3 30 0 21 10 21 0 22 3 30 0 23 3 30 0 24 3 30 0 25 3 30 0 26 3 30 0 27 3 30 0 28 3 30 0 29 3 30 0 30 3 30 0 31 3 30 0 32 3 30 0 33 3 30 0 34 3 30 0 35 3 30 0 36 3 30 0 37 3 30 0 38 3 30 0 40 3 30 0 41 3 30 0 42 3 30 0 43 3 30 0 44 3 30 0 45 3 30 0 46 3 30 0 47 3 30 0 48 3 30 0 49 3 30 0 50 3 30 0 51 3 30 0 53 3 30 0 54 3 30 0 83 3 30 0 86 3 30 0 96 3 30 0 121 3 30 0 122 0 209 0 132 0 18 0 133 3 30 0 134 3 30 0 135 10 25 0 159 0 249 0 160 10 29 0 172 10 33 0 176 3 30 1 227 0 91 1 228 3 30 1 229] 
#[1 4 169 0 2 3 34 0 3 3 34 0 4 3 34 0 5 10 17 0 6 3 34 0 7 3 34 0 8 3 34 0 9 3 34 0 10 3 34 0 11 3 34 0 12 3 34 0 13 3 34 0 14 3 34 0 15 3 34 0 16 3 34 0 17 3 34 0 18 3 34 0 20 3 34 0 21 10 21 0 22 3 34 0 23 3 34 0 24 3 34 0 25 3 34 0 26 3 34 0 27 3 34 0 28 3 34 0 29 3 34 0 30 3 34 0 31 3 34 0 32 3 34 0 33 3 34 0 34 3 34 0 35 3 34 0 36 3 34 0 37 3 34 0 38 3 34 0 40 3 34 0 41 3 34 0 42 3 34 0 43 3 34 0 44 3 34 0 45 3 34 0 46 3 34 0 47 3 34 0 48 3 34 0 49 3 34 0 50 3 34 0 51 3 34 0 53 3 34 0 54 3 34 0 83 3 34 0 86 3 34 0 96 3 34 0 121 3 34 0 122 0 209 0 132 0 18 0 133 3 34 0 134 3 34 0 135 10 25 0 159 0 249 0 160 10 29 0 172 10 33 0 176 3 34 1 227 0 95 1 228 3 34 1 229] 
#[0 3 38 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 42 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 46 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 50 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 54 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 58 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 62 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 66 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 70 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 74 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 78 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 82 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 86 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 3 90 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 3 94 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 98 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 102 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 49 0 196 10 49 0 197 0 253 1 5 10 49 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 49 1 14 0 253 1 19 10 49 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 3 106 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[1 10 53 0 52 10 57 0 55] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 10 61 0 181 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[0 3 110 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 114 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 3 118 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 124 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 10 65 0 181 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 10 69 0 181 10 69 0 182 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 10 73 0 181 10 73 0 182 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 10 77 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 10 81 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 10 85 0 184 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 89 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 93 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 97 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 101 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 105 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 109 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 113 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 117 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 121 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 10 125 0 186 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 10 129 0 187 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 10 133 0 188 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 10 137 0 189 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 10 141 0 190 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 10 145 0 190 10 149 0 191 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 10 153 0 190 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 157 0 196 10 157 0 197 0 253 1 5 10 157 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 157 1 14 0 253 1 19 10 157 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 161 0 196 10 161 0 197 0 253 1 5 10 161 1 8 1 125 1 9 1 129 1 10 1 133 1 13 10 161 1 14 0 253 1 19 10 161 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 99 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 10 177 0 196 10 177 0 197 0 253 1 5 10 177 1 8 1 125 1 9 1 129 1 10 10 173 1 11 10 177 1 12 1 133 1 13 10 177 1 14 0 253 1 19 10 177 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 10 181 0 185 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[1 3 122 0 4 3 122 0 136 3 122 0 138 10 185 1 90 10 189 1 91] 
#[1 0 122 0 14 10 193 0 137 10 197 1 77 10 197 1 78 10 197 1 79 10 209 1 80 10 213 1 81 10 217 1 95] 
#[0 10 221 0 55] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 10 225 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 10 229 0 141 2 189 1 69 2 193 1 70 2 197 1 100 7 89 1 101 7 93 1 102 10 233 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 10 233 1 129 10 233 1 130 2 217 1 131 2 217 1 133] 
#[1 5 221 0 2 2 157 0 11 0 189 0 124 10 237 0 141 5 233 1 100 10 241 1 145] 
#[0 10 245 0 2] 
#[0 3 126 0 19] 
#[0 3 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 10 249 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 73 0 207 0 57 0 208 6 73 0 209 0 65 0 210 0 6 1 228] 
#[1 10 253 0 8 0 189 0 124 11 1 0 141] 
#[1 11 5 0 8 0 189 0 124 11 9 0 141] 
#[0 3 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 11 13 0 117] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 11 17 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 11 37 0 63 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 11 37 0 89 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 11 21 0 115 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 11 25 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 11 25 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 29 0 196 11 29 0 197 11 29 0 199 11 33 0 209 11 37 0 210 11 41 0 235 0 253 1 5 11 29 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 29 1 14 0 253 1 19 11 29 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 11 45 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 49 0 196 11 49 0 197 11 49 0 199 0 253 1 5 11 49 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 49 1 14 0 253 1 19 11 49 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 11 53 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 57 0 196 11 57 0 197 11 57 0 199 0 253 1 5 11 57 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 57 1 14 0 253 1 19 11 57 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 61 0 196 11 61 0 197 11 61 0 199 0 253 1 5 11 61 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 61 1 14 0 253 1 19 11 61 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 11 65 0 8 5 197 0 121] 
#[1 11 69 0 60 11 73 0 76 11 77 0 251 11 81 0 252] 
#[1 3 138 0 8 8 105 0 23 3 138 0 121 11 85 0 158] 
#[1 11 89 0 8 11 93 0 121] 
#[0 3 142 0 8 0 121] 
#[1 8 105 0 23 11 97 0 158] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 11 101 0 141 11 105 0 216 11 105 0 217 11 105 0 218 11 109 1 150 11 113 1 151] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 117 0 196 11 117 0 197 11 117 0 199 0 253 1 5 11 117 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 117 1 14 0 253 1 19 11 117 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 11 121 0 196 11 121 0 197 11 121 0 199 0 253 1 5 11 121 1 8 1 125 1 9 1 129 1 10 1 133 1 13 11 121 1 14 0 253 1 19 11 121 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 11 129 0 200 11 129 0 203 11 129 0 204 11 129 0 205 11 129 0 213 11 129 0 227 11 129 0 228 11 129 0 229 11 129 0 230 11 129 0 231 11 129 0 232 11 129 0 233 11 129 0 234 11 129 0 237 11 129 0 238 11 129 0 240 11 129 0 241 11 129 0 242 11 129 0 247 11 129 0 248 11 129 0 249 11 129 0 250 11 129 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 3 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 150 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 63 0 65 0 66 0 68 0 69 0 70 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 101 0 4 4 105 0 74 0 189 0 124 11 133 0 141 11 137 1 34 4 117 1 35 4 121 1 228] 
#[1 0 34 0 4 0 34 0 6 11 141 0 72 0 34 0 124 0 34 1 228] 
#[1 11 145 0 61 11 149 0 63 6 89 0 72 11 153 0 79 11 157 0 89 11 161 0 91 11 165 0 92 11 169 0 115 11 189 1 169 11 177 1 209 11 181 1 212 11 185 1 213 11 189 1 219 11 193 1 220] 
#[1 0 189 0 124 11 197 0 141] 
#[1 3 29 0 4 11 201 0 23 11 205 0 26 11 209 1 63 11 213 1 228] 
#[1 11 217 0 2 11 221 0 26 0 189 0 124 11 225 0 141] 
#[1 4 141 0 2 3 105 0 4 4 145 0 22 3 109 0 26 0 189 0 124 3 133 0 128 11 229 0 141 3 117 1 52 3 121 1 53 3 125 1 54 3 129 1 55 3 133 1 59 3 121 1 60 3 133 1 69 3 145 1 228] 
#[1 0 189 0 124 11 233 0 141] 
#[1 0 189 0 124 11 237 0 141 11 241 1 175] 
#[1 0 189 0 124 11 245 0 141] 
#[0 3 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 166 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 170 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 174 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 7 221 0 1 11 249 0 73 11 253 1 225] 
#[0 3 178 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 190 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 194 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 198 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 202 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 206 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 214 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 218 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 222 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 226 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 230 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 234 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 3 238 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 51 0 1 5 221 0 2 5 225 0 11 1 210 0 61 1 210 0 62 12 1 0 79 5 233 1 100 7 233 1 137 5 237 1 145 7 249 1 225] 
#[1 6 237 0 2 12 5 0 5 6 245 0 6 2 157 0 11 6 249 0 93 6 253 0 101 8 49 0 120 0 189 0 124 7 1 0 125 7 21 0 128 7 25 0 129 8 53 0 141 12 9 0 142 12 9 0 154 12 9 0 155 12 9 0 156 8 61 0 219 8 65 0 220 8 69 0 223 8 69 0 225 7 21 1 69 7 25 1 70 7 29 1 100 7 33 1 120 7 37 1 121 7 41 1 122 7 41 1 134 7 41 1 136 7 41 1 141 7 41 1 142 7 41 1 143 8 77 1 228] 
#[1 2 145 0 2 6 213 0 4 6 217 0 6 12 13 0 7 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 3 209 0 120 12 17 0 121 0 189 0 124 2 189 0 128 2 193 0 129 6 221 0 141 8 85 0 148 3 221 0 216 3 221 0 217 3 221 0 218 8 89 0 221 8 93 0 222 8 97 0 224 8 97 0 225 8 101 0 226 2 189 1 69 2 193 1 70 2 197 1 100 7 81 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 7 77 1 125 7 81 1 126 2 205 1 127 2 209 1 128 7 81 1 129 7 81 1 130 2 217 1 131 2 217 1 133 6 233 1 228] 
#[1 0 103 0 3 0 103 0 5 1 226 0 6 0 103 0 7 1 226 0 8 1 226 0 11 1 230 0 22 8 105 0 23 1 226 0 40 1 226 0 48 0 103 0 121 8 157 0 158] 
#[0 12 21 0 3] 
#[0 12 25 0 3] 
#[1 1 210 0 1 1 210 0 4 1 210 0 6 1 210 0 43 0 63 0 97 0 67 0 98 0 71 0 99 0 75 0 100 1 210 0 109 1 210 0 122 0 79 0 124 8 193 0 141 8 197 1 137 8 201 1 139] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 12 29 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 125 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 12 33 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 37 0 196 12 37 0 197 0 253 1 5 12 37 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 37 1 14 0 253 1 19 12 37 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 12 41 0 2 2 157 0 11 12 45 1 100] 
#[1 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 12 49 0 142 12 49 0 154 12 49 0 155 12 49 0 156 7 21 1 69 7 25 1 70] 
#[0 3 246 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 3 250 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[1 6 237 0 2 3 254 0 5 3 254 0 8 2 157 0 11 12 53 0 43 3 254 0 121 12 57 0 122 7 29 1 100 12 61 1 135 12 65 1 136] 
#[0 4 2 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 6 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 10 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 4 14 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 12 69 0 2] 
#[0 12 73 0 5] 
#[1 4 18 0 5 12 77 0 8 12 81 0 121] 
#[0 4 22 0 5 0 8 0 121] 
#[0 4 26 0 5 0 8 0 121] 
#[0 4 30 0 5 0 8 0 121] 
#[0 4 34 0 5 0 8 0 121] 
#[0 4 38 0 5 0 8 0 121] 
#[0 4 42 0 5 0 8 0 121] 
#[0 4 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 12 85 0 7] 
#[0 4 50 0 7 0 121] 
#[1 12 89 0 7 12 93 0 121] 
#[0 4 54 0 7 0 121] 
#[1 4 58 0 14 12 97 0 74 4 58 0 121 12 101 1 103] 
#[1 12 105 0 14 12 109 0 121] 
#[0 4 62 0 14 0 121] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 6 229 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 6 229 1 129 6 229 1 130 2 217 1 131 2 217 1 133] 
#[1 4 66 0 3 4 66 0 4 4 66 0 5 0 107 0 6 4 66 0 7 4 66 0 8 4 66 0 9 4 66 0 11 4 66 0 12 4 66 0 14 4 66 0 15 4 66 0 18 4 66 0 19 4 66 0 20 4 66 0 21 4 66 0 23 4 66 0 24 4 66 0 25 4 66 0 26 4 66 0 27 4 66 0 35 4 66 0 37 4 66 0 40 4 66 0 41 4 66 0 43 4 66 0 45 4 66 0 47 4 66 0 48 4 66 0 49 4 66 0 51 4 66 0 53 4 66 0 54 4 66 0 64 4 66 0 83 4 66 0 86 4 66 0 97 4 66 0 98 4 66 0 99 4 66 0 100 4 66 0 104 4 66 0 121 4 66 0 122 4 66 0 125 4 66 0 128 4 66 0 129 4 66 0 134 4 66 0 135 7 137 0 239 4 66 1 228 4 66 1 229] 
#[1 4 70 0 3 4 70 0 4 4 70 0 5 0 111 0 6 4 70 0 7 4 70 0 8 4 70 0 9 4 70 0 11 4 70 0 12 4 70 0 14 4 70 0 15 4 70 0 18 4 70 0 19 4 70 0 20 4 70 0 21 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 35 4 70 0 37 4 70 0 40 4 70 0 41 4 70 0 43 4 70 0 45 4 70 0 47 4 70 0 48 4 70 0 49 4 70 0 51 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 83 4 70 0 86 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 100 4 70 0 104 4 70 0 121 4 70 0 122 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 134 4 70 0 135 7 137 0 239 4 70 1 228 4 70 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 12 113 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 12 117 0 2] 
#[0 4 74 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 4 78 0 3 4 78 0 4 4 78 0 5 4 78 0 6 4 78 0 7 4 78 0 8 4 78 0 9 4 78 0 11 4 78 0 12 4 78 0 14 4 78 0 15 4 78 0 18 4 78 0 19 4 78 0 20 4 78 0 21 12 121 0 22 4 78 0 23 4 78 0 24 4 78 0 25 4 78 0 26 4 78 0 27 4 78 0 35 4 78 0 37 4 78 0 40 4 78 0 41 4 78 0 43 4 78 0 45 4 78 0 47 4 78 0 48 4 78 0 49 4 78 0 51 4 78 0 53 4 78 0 54 4 78 0 64 4 78 0 83 4 78 0 86 4 78 0 97 4 78 0 98 4 78 0 99 4 78 0 100 4 78 0 104 4 78 0 121 4 78 0 122 4 78 0 125 4 78 0 128 4 78 0 129 4 78 0 134 4 78 0 135 4 78 1 228 4 78 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 12 125 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 7 97 0 2 2 149 0 4 2 153 0 6 2 161 0 84 2 165 0 88 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 12 129 1 109 12 129 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 12 129 1 128 2 217 1 131 2 217 1 133] 
#[1 7 97 0 2 2 149 0 4 2 153 0 6 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 12 133 1 111 12 133 1 112 12 133 1 113 12 133 1 114 12 133 1 115 12 133 1 116 2 241 1 117 2 245 1 118 12 133 1 119 12 133 1 123 12 133 1 124 12 133 1 131 12 133 1 133] 
#[0 12 137 0 6] 
#[1 4 82 0 3 4 82 0 4 4 82 0 5 4 82 0 6 4 82 0 7 4 82 0 8 4 82 0 9 0 115 0 11 4 82 0 12 4 82 0 14 4 82 0 15 4 82 0 18 4 82 0 19 4 82 0 20 4 82 0 21 4 82 0 23 4 82 0 24 4 82 0 25 4 82 0 26 4 82 0 27 4 82 0 35 4 82 0 37 4 82 0 40 4 82 0 41 4 82 0 43 4 82 0 45 4 82 0 47 4 82 0 48 4 82 0 49 4 82 0 51 4 82 0 53 4 82 0 54 4 82 0 64 4 82 0 83 4 82 0 85 4 82 0 86 4 82 0 97 4 82 0 98 4 82 0 99 4 82 0 100 4 82 0 104 4 82 0 121 4 82 0 122 4 82 0 125 4 82 0 128 4 82 0 129 4 82 0 134 4 82 0 135 12 141 1 104 4 82 1 228 4 82 1 229] 
#[1 0 189 0 124 12 145 0 141] 
#[0 4 86 0 8 0 78] 
#[0 4 90 0 5 0 55 0 78 0 121] 
#[1 4 94 0 5 12 149 0 55 4 94 0 121] 
#[1 12 153 0 5 12 157 0 121] 
#[0 4 98 0 5 0 121] 
#[0 4 102 0 5 0 55 0 78 0 121] 
#[0 12 161 0 125 0 128 1 50 1 69] 
#[1 12 165 0 2 12 169 0 26 0 189 0 124 12 173 0 141] 
#[1 4 101 0 4 4 105 0 74 12 177 1 34 4 117 1 35 4 121 1 228] 
#[0 4 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 101 0 4 4 105 0 74 0 189 0 124 12 181 0 141 12 185 1 34 4 117 1 35 4 121 1 228] 
#[0 12 189 0 8] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 12 193 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 12 197 0 2 0 189 0 124 12 201 0 141] 
#[0 12 205 0 2] 
#[0 12 209 0 128 1 59 1 69] 
#[0 12 213 0 8] 
#[0 4 110 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 37 0 56 0 137 0 61 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 12 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 161 0 168 12 221 0 169 12 221 0 170 12 221 0 171 1 33 0 174 4 161 0 178 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 165 1 228] 
#[0 11 141 0 72] 
#[1 12 225 0 2 2 157 0 11 0 189 0 124 12 229 0 141 12 233 1 100 12 237 1 136 12 241 1 145] 
#[1 7 221 0 1 12 245 0 61 12 249 0 62 11 253 1 225] 
#[0 4 114 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 4 118 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 4 122 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 1 210 0 1 1 210 0 61 1 210 0 62 12 253 1 137] 
#[0 4 126 0 78] 
#[0 13 1 0 55] 
#[1 13 5 0 5 13 9 0 121] 
#[0 4 130 0 5 0 121] 
#[0 4 134 0 5 0 121] 
#[0 13 13 0 113] 
#[1 0 189 0 124 13 17 0 141 13 17 1 60] 
#[0 13 21 0 8] 
#[1 3 105 0 4 3 109 0 26 13 25 1 54 13 29 1 55] 
#[0 4 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 3 105 0 4 0 189 0 124 13 33 0 141 13 33 1 53 13 37 1 55 13 33 1 60] 
#[0 4 142 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 12 37 0 196 12 37 0 197 0 253 1 5 12 37 1 8 1 125 1 9 1 129 1 10 1 133 1 13 12 37 1 14 0 253 1 19 12 37 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 189 0 124 13 41 0 141] 
#[1 2 158 0 3 2 158 0 5 2 158 0 7 8 105 0 23 2 158 0 121 8 157 0 158] 
#[0 13 45 0 122] 
#[0 13 49 0 5] 
#[1 13 53 0 5 13 57 0 121] 
#[0 4 146 0 5 0 121] 
#[0 4 150 0 5 0 121] 
#[1 8 201 0 97 8 201 0 98 8 201 0 99 8 201 0 100 0 189 0 124 8 193 0 141 8 201 1 139] 
#[0 4 154 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 3 153 0 4 3 157 0 6 13 61 0 7 3 209 0 120 8 221 0 121 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 13 65 0 224 13 65 0 225 13 69 0 226 6 233 1 228] 
#[1 13 73 0 7 13 77 0 121] 
#[0 4 158 0 7 0 121] 
#[0 4 162 0 7 0 121] 
#[0 13 81 0 7] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 85 0 196 13 85 0 197 0 253 1 5 13 85 1 8 1 125 1 9 1 129 1 10 1 133 1 13 13 85 1 14 0 253 1 19 13 85 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 4 166 0 8 0 121] 
#[0 4 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 3 161 0 141 13 89 0 212 3 173 0 216 3 173 0 217 3 173 0 218 13 89 1 152 13 89 1 153 3 193 1 228] 
#[0 4 174 0 8 0 121] 
#[1 12 57 0 122 13 93 1 135] 
#[1 12 57 0 122 13 97 1 135] 
#[1 3 29 0 4 3 33 0 26 13 101 1 62 13 105 1 63] 
#[1 2 194 0 2 0 119 0 3 2 194 0 6 0 119 0 7 2 194 0 9 2 194 0 10 2 194 0 11 2 194 0 12 2 194 0 13 2 194 0 14 2 194 0 15 2 194 0 16 2 194 0 17 2 194 0 18 2 194 0 20 2 194 0 21 2 194 0 22 0 119 0 23 2 194 0 24 2 194 0 25 2 194 0 26 2 194 0 27 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 47 2 194 0 48 2 194 0 49 2 194 0 50 2 194 0 51 2 194 0 53 2 194 0 54 2 194 0 83 2 194 0 86 0 119 0 121 2 194 0 132 2 194 0 133 2 194 1 227 2 194 1 228] 
#[1 0 97 0 2 0 23 0 4 3 205 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 13 109 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 205 0 196 8 205 0 197 8 153 0 216 8 153 0 217 8 153 0 218 0 253 1 5 8 205 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 205 1 14 0 253 1 19 8 205 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 23 0 4 3 205 0 6 13 113 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 8 141 0 120 8 221 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 3 213 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 8 225 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 8 229 0 196 8 229 0 197 3 221 0 216 3 221 0 217 3 221 0 218 13 65 0 224 13 65 0 225 13 69 0 226 0 253 1 5 8 229 1 8 1 125 1 9 1 129 1 10 1 133 1 13 8 229 1 14 0 253 1 19 8 229 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 1 1 228] 
#[1 4 178 0 3 4 178 0 7 12 57 0 122 13 117 1 135] 
#[0 4 182 0 3 0 7] 
#[0 4 186 0 3 0 5 0 7 0 121] 
#[0 4 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 4 194 0 3 0 5 0 7 0 121] 
#[0 4 198 0 19] 
#[1 4 202 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 13 125 0 224 13 125 0 225 13 121 0 226 13 121 1 2 13 125 1 3 6 233 1 228] 
#[0 4 206 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 228] 
#[0 4 210 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 228] 
#[0 4 214 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 228] 
#[0 4 218 0 3 0 4 0 5 0 6 0 7 0 23 0 43 0 64 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 1 228] 
#[1 13 129 0 43 12 57 0 122 13 133 1 135] 
#[1 7 221 0 1 3 153 0 4 3 157 0 6 4 222 0 43 13 153 0 97 13 153 0 98 13 153 0 99 13 153 0 100 13 137 0 109 4 222 0 122 0 189 0 124 13 149 0 141 13 149 0 216 13 149 0 217 13 149 0 218 13 149 1 138 13 153 1 139 11 253 1 225] 
#[1 0 189 0 124 13 157 0 141] 
#[0 4 226 0 5 0 7 0 121] 
#[0 4 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 13 161 0 7 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 9 0 120 8 221 0 121 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 13 165 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 169 0 196 13 169 0 197 0 253 1 5 13 169 1 8 1 125 1 9 1 129 1 10 1 133 1 13 13 169 1 14 0 253 1 19 13 169 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 4 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 4 238 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 61 0 69 0 75 0 79 0 82 0 93 0 94 0 106 0 109 0 111 0 114 0 116 0 119 0 120 0 121 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 4 242 0 7 0 121] 
#[0 4 246 0 7 0 121] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 10 233 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 10 233 1 129 10 233 1 130 2 217 1 131 2 217 1 133] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 13 173 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 13 177 0 2 0 189 0 124 13 181 0 141] 
#[0 13 185 0 2] 
#[1 0 97 0 2 0 123 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 13 193 0 196 13 193 0 197 0 253 1 5 13 193 1 8 1 125 1 9 1 129 1 10 13 193 1 12 1 133 1 13 13 193 1 14 13 197 1 15 0 253 1 19 13 193 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 4 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 227 1 228 1 229] 
#[0 4 254 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 9 25 0 124 9 29 0 126 13 201 1 40] 
#[1 13 205 0 26 9 25 0 124 9 29 0 126 13 209 1 40] 
#[1 9 25 0 124 9 29 0 126 13 213 1 40] 
#[1 9 25 0 124 9 29 0 126 13 217 1 40] 
#[1 13 221 0 4 9 5 0 26 9 9 0 56 9 13 0 80 9 17 0 103 9 25 0 124 9 29 0 126 13 225 1 16 13 225 1 20 13 225 1 25 13 225 1 29 13 229 1 39 9 65 1 40 13 225 1 146 13 225 1 147 9 229 1 228] 
#[0 5 2 0 2 0 8 0 23] 
#[0 5 6 0 2 0 8 0 23] 
#[0 5 10 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 5 14 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 5 18 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 5 22 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 13 233 0 5] 
#[1 5 26 0 5 9 1 0 8 9 5 0 26 9 9 0 56 9 13 0 80 9 17 0 103 9 21 0 104 9 25 0 124 9 29 0 126 13 237 1 16 13 237 1 20 13 237 1 25 13 237 1 29 13 237 1 38 9 61 1 39 9 65 1 40 13 237 1 41 13 237 1 146 13 237 1 147 9 81 1 228] 
#[0 5 30 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 241 0 8] 
#[1 13 245 0 2 5 34 0 8 8 105 0 23 13 249 0 158] 
#[0 5 38 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 5 42 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 5 46 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[1 1 210 0 1 0 127 0 6 1 210 0 64 13 253 0 80 1 210 0 97 1 210 0 98 1 210 0 99 1 210 0 100 14 1 0 103 1 210 0 104 0 131 0 125 0 135 0 128 0 139 0 129 14 5 0 142 14 5 0 154 14 5 0 155 14 5 0 156 7 21 1 69 7 25 1 70 14 9 1 137 14 13 1 142 14 17 1 161 14 21 1 163 14 21 1 164 14 21 1 166 14 21 1 167 14 37 1 168 1 210 1 228] 
#[1 5 50 0 4 9 145 1 228] 
#[0 5 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 14 41 0 5 9 1 0 8 9 5 0 26 9 9 0 56 9 13 0 80 9 17 0 103 9 21 0 104 9 25 0 124 9 29 0 126 9 57 1 16 9 57 1 20 9 57 1 25 9 57 1 29 14 45 1 36 9 53 1 37 9 57 1 38 9 61 1 39 9 65 1 40 9 57 1 41 9 57 1 146 9 57 1 147 9 81 1 228] 
#[1 0 189 0 124 2 185 0 141 14 53 1 116 2 241 1 117 2 245 1 118 14 53 1 159] 
#[1 0 189 0 124 2 185 0 141 14 65 1 116 2 241 1 117 2 245 1 118 14 61 1 156 14 65 1 157] 
#[1 5 58 0 4 9 101 0 85 14 69 1 160] 
#[0 5 62 0 4] 
#[0 14 73 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 14 77 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 14 81 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 14 85 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 14 89 0 3] 
#[0 5 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 143 0 2 5 74 0 3 5 74 0 4 5 74 0 5 0 143 0 6 5 74 0 7 5 74 0 8 5 74 0 9 5 74 0 10 5 74 0 11 5 74 0 12 5 74 0 13 5 74 0 14 5 74 0 15 5 74 0 16 5 74 0 17 5 74 0 18 5 74 0 20 5 74 0 21 0 143 0 22 5 74 0 23 5 74 0 24 5 74 0 25 5 74 0 26 5 74 0 27 5 74 0 28 5 74 0 29 5 74 0 30 5 74 0 31 5 74 0 32 5 74 0 33 5 74 0 34 5 74 0 35 5 74 0 36 5 74 0 37 5 74 0 38 5 74 0 40 5 74 0 41 5 74 0 42 5 74 0 43 0 143 0 44 5 74 0 45 5 74 0 46 5 74 0 47 5 74 0 48 5 74 0 49 5 74 0 50 5 74 0 51 5 74 0 53 5 74 0 54 5 74 0 83 5 74 0 86 5 74 0 96 5 74 0 121 5 74 0 122 0 143 0 132 0 143 0 133 5 74 0 134 5 74 0 135 5 74 1 227 0 143 1 228 5 74 1 229] 
#[0 10 53 0 52] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 93 0 196 14 93 0 197 0 253 1 5 14 93 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 93 1 14 0 253 1 19 14 93 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 14 97 0 3 14 101 0 121] 
#[0 5 82 0 3 0 121] 
#[1 14 105 0 7 5 197 0 121] 
#[0 5 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 14 109 1 105 14 113 1 106 14 113 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 14 113 1 129 14 113 1 130 2 217 1 131 2 217 1 133] 
#[0 14 121 0 2] 
#[0 5 90 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[1 1 94 0 4 1 94 0 136 1 94 0 138 14 125 1 96] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 129 0 196 14 129 0 197 0 253 1 5 14 129 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 129 1 14 0 253 1 19 14 129 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 5 2 0 2 0 98 0 5 0 98 0 23 0 98 0 121] 
#[1 5 98 0 5 8 105 0 23 5 98 0 121 14 133 0 158] 
#[1 14 137 0 5 14 141 0 121] 
#[0 5 102 0 5 0 121] 
#[0 14 145 0 122] 
#[0 5 106 0 5 0 121] 
#[0 5 110 0 5 0 121] 
#[0 13 245 0 2] 
#[1 8 45 0 6 13 253 0 80 14 1 0 103 7 1 0 125 7 21 0 128 7 25 0 129 14 5 0 142 14 5 0 154 14 5 0 155 14 5 0 156 7 21 1 69 7 25 1 70] 
#[1 5 197 0 121 14 149 0 134 14 153 0 135 14 157 0 161 14 161 0 162] 
#[1 14 165 0 7 5 197 0 121] 
#[0 5 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 169 0 196 14 169 0 197 14 169 0 199 0 253 1 5 14 169 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 169 1 14 0 253 1 19 14 169 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 5 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 14 173 0 196 14 173 0 197 14 173 0 199 0 253 1 5 14 173 1 8 1 125 1 9 1 129 1 10 1 133 1 13 14 173 1 14 0 253 1 19 14 173 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 14 177 0 125 14 181 0 126] 
#[0 5 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 14 185 0 7 5 197 0 121] 
#[0 5 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 5 162 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 5 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 14 189 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 14 189 1 129 14 189 1 130 2 217 1 131 2 217 1 133] 
#[0 5 170 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[0 5 174 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 5 178 0 3 5 178 0 5 5 178 0 7 5 178 0 8 5 105 0 9 5 178 0 11 5 178 0 12 5 178 0 14 5 178 0 15 5 178 0 18 5 178 0 20 5 178 0 21 5 178 0 24 5 178 0 25 5 105 0 26 5 178 0 35 5 178 0 37 5 178 0 40 5 178 0 41 5 178 0 43 5 178 0 45 5 105 0 47 5 178 0 48 5 178 0 49 5 178 0 51 5 178 0 53 5 178 0 54 5 178 0 83 5 178 0 86 5 178 0 121 5 178 0 122 5 178 0 134 5 178 0 135 5 105 0 183 5 178 1 229] 
#[1 5 182 0 3 5 182 0 5 5 182 0 7 5 182 0 8 5 105 0 9 5 182 0 11 5 182 0 12 5 182 0 14 5 182 0 15 5 182 0 18 5 182 0 20 5 182 0 21 5 182 0 24 5 182 0 25 5 105 0 26 5 182 0 35 5 182 0 37 5 182 0 40 5 182 0 41 5 182 0 43 5 182 0 45 5 105 0 47 5 182 0 48 5 182 0 49 5 182 0 51 5 182 0 53 5 182 0 54 5 182 0 83 5 182 0 86 5 182 0 121 5 182 0 122 5 182 0 134 5 182 0 135 5 105 0 183 5 182 1 229] 
#[1 5 186 0 3 5 186 0 5 5 186 0 7 5 186 0 8 5 186 0 11 5 186 0 12 5 186 0 14 5 186 0 15 5 186 0 18 5 186 0 20 5 186 0 21 5 186 0 24 5 186 0 25 5 109 0 35 5 113 0 37 5 186 0 40 5 186 0 41 5 186 0 43 5 186 0 45 5 186 0 48 5 186 0 49 5 186 0 51 5 186 0 53 5 186 0 54 5 186 0 83 5 186 0 86 5 186 0 121 5 186 0 122 5 186 0 134 5 186 0 135 5 186 1 229] 
#[1 5 190 0 3 5 190 0 5 5 190 0 7 5 190 0 8 5 190 0 11 5 190 0 12 5 190 0 14 5 190 0 15 5 190 0 18 5 190 0 20 5 190 0 21 5 190 0 24 5 190 0 25 5 109 0 35 5 113 0 37 5 190 0 40 5 190 0 41 5 190 0 43 5 190 0 45 5 190 0 48 5 190 0 49 5 190 0 51 5 190 0 53 5 190 0 54 5 190 0 83 5 190 0 86 5 190 0 121 5 190 0 122 5 190 0 134 5 190 0 135 5 190 1 229] 
#[1 5 194 0 3 5 194 0 5 5 194 0 7 5 194 0 8 5 194 0 11 5 194 0 12 5 194 0 14 5 194 0 15 5 194 0 18 5 194 0 20 5 194 0 21 5 194 0 24 5 194 0 25 5 109 0 35 5 113 0 37 5 194 0 40 5 194 0 41 5 194 0 43 5 194 0 45 5 194 0 48 5 194 0 49 5 194 0 51 5 194 0 53 5 194 0 54 5 194 0 83 5 194 0 86 5 194 0 121 5 194 0 122 5 194 0 134 5 194 0 135 5 194 1 229] 
#[1 5 198 0 3 5 198 0 5 5 198 0 7 5 198 0 8 5 198 0 11 5 117 0 12 5 198 0 14 5 121 0 15 5 125 0 18 5 198 0 20 5 198 0 21 5 198 0 24 5 198 0 25 5 198 0 40 5 198 0 41 5 198 0 43 5 198 0 45 5 198 0 48 5 198 0 49 5 198 0 51 5 198 0 53 5 198 0 54 5 198 0 83 5 198 0 86 5 198 0 121 5 198 0 122 5 198 0 134 5 198 0 135 5 198 1 229] 
#[1 5 202 0 3 5 202 0 5 5 202 0 7 5 202 0 8 5 202 0 11 5 117 0 12 5 202 0 14 5 121 0 15 5 125 0 18 5 202 0 20 5 202 0 21 5 202 0 24 5 202 0 25 5 202 0 40 5 202 0 41 5 202 0 43 5 202 0 45 5 202 0 48 5 202 0 49 5 202 0 51 5 202 0 53 5 202 0 54 5 202 0 83 5 202 0 86 5 202 0 121 5 202 0 122 5 202 0 134 5 202 0 135 5 202 1 229] 
#[1 5 206 0 3 5 206 0 5 5 206 0 7 5 206 0 8 5 206 0 11 5 117 0 12 5 206 0 14 5 121 0 15 5 125 0 18 5 206 0 20 5 206 0 21 5 206 0 24 5 206 0 25 5 206 0 40 5 206 0 41 5 206 0 43 5 206 0 45 5 206 0 48 5 206 0 49 5 206 0 51 5 206 0 53 5 206 0 54 5 206 0 83 5 206 0 86 5 206 0 121 5 206 0 122 5 206 0 134 5 206 0 135 5 206 1 229] 
#[1 5 210 0 3 5 210 0 5 5 210 0 7 5 210 0 8 5 210 0 11 5 117 0 12 5 210 0 14 5 121 0 15 5 125 0 18 5 210 0 20 5 210 0 21 5 210 0 24 5 210 0 25 5 210 0 40 5 210 0 41 5 210 0 43 5 210 0 45 5 210 0 48 5 210 0 49 5 210 0 51 5 210 0 53 5 210 0 54 5 210 0 83 5 210 0 86 5 210 0 121 5 210 0 122 5 210 0 134 5 210 0 135 5 210 1 229] 
#[1 5 214 0 3 5 214 0 5 5 214 0 7 5 214 0 8 5 214 0 11 5 117 0 12 5 214 0 14 5 121 0 15 5 125 0 18 5 214 0 20 5 214 0 21 5 214 0 24 5 214 0 25 5 214 0 40 5 214 0 41 5 214 0 43 5 214 0 45 5 214 0 48 5 214 0 49 5 214 0 51 5 214 0 53 5 214 0 54 5 214 0 83 5 214 0 86 5 214 0 121 5 214 0 122 5 214 0 134 5 214 0 135 5 214 1 229] 
#[1 5 218 0 3 5 218 0 5 5 218 0 7 5 218 0 8 5 218 0 11 5 117 0 12 5 218 0 14 5 121 0 15 5 125 0 18 5 218 0 20 5 218 0 21 5 218 0 24 5 218 0 25 5 218 0 40 5 218 0 41 5 218 0 43 5 218 0 45 5 218 0 48 5 218 0 49 5 218 0 51 5 218 0 53 5 218 0 54 5 218 0 83 5 218 0 86 5 218 0 121 5 218 0 122 5 218 0 134 5 218 0 135 5 218 1 229] 
#[1 5 222 0 3 5 222 0 5 5 222 0 7 5 222 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 222 0 24 5 222 0 25 5 222 0 40 5 222 0 41 5 222 0 43 5 222 0 45 5 222 0 48 5 222 0 49 5 222 0 51 5 222 0 53 5 222 0 54 5 145 0 83 5 149 0 86 5 222 0 121 5 222 0 122 5 222 0 134 5 222 0 135 5 222 1 229] 
#[1 5 226 0 3 5 226 0 5 5 226 0 7 5 226 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 226 0 24 5 226 0 25 5 226 0 40 5 226 0 41 5 226 0 43 5 226 0 45 5 226 0 48 5 226 0 49 5 226 0 51 5 226 0 53 5 226 0 54 5 145 0 83 5 149 0 86 5 226 0 121 5 226 0 122 5 226 0 134 5 226 0 135 5 226 1 229] 
#[1 5 230 0 3 5 230 0 5 5 230 0 7 5 230 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 230 0 24 5 230 0 25 5 230 0 40 5 230 0 41 5 230 0 43 5 230 0 45 5 230 0 48 5 230 0 49 5 230 0 51 5 230 0 53 5 230 0 54 5 145 0 83 5 149 0 86 5 230 0 121 5 230 0 122 5 230 0 134 5 230 0 135 5 230 1 229] 
#[1 5 234 0 3 5 234 0 5 5 234 0 7 5 234 0 8 5 129 0 11 5 133 0 14 5 137 0 20 5 141 0 21 5 234 0 24 5 234 0 25 5 234 0 40 5 234 0 41 5 234 0 43 5 234 0 45 5 234 0 48 5 234 0 49 5 234 0 51 5 234 0 53 5 234 0 54 5 145 0 83 5 149 0 86 5 234 0 121 5 234 0 122 5 234 0 134 5 234 0 135 5 234 1 229] 
#[1 5 238 0 3 5 238 0 5 5 238 0 7 5 238 0 8 5 153 0 24 5 157 0 25 5 238 0 40 5 238 0 41 5 238 0 43 5 238 0 45 5 238 0 48 5 238 0 49 5 238 0 51 5 161 0 53 5 165 0 54 5 238 0 121 5 238 0 122 5 238 0 134 5 238 0 135 5 238 1 229] 
#[1 5 242 0 3 5 242 0 5 5 242 0 7 5 242 0 8 5 169 0 40 5 242 0 41 5 242 0 43 5 242 0 45 5 242 0 48 5 242 0 49 5 242 0 51 5 242 0 121 5 242 0 122 5 242 0 134 5 242 0 135 5 242 1 229] 
#[1 5 246 0 3 5 246 0 5 5 246 0 7 5 246 0 8 5 246 0 41 5 246 0 43 5 246 0 45 5 246 0 48 5 246 0 49 5 173 0 51 5 246 0 121 5 246 0 122 5 246 0 134 5 246 0 135 5 246 1 229] 
#[1 5 250 0 3 5 250 0 5 5 250 0 7 5 250 0 8 5 250 0 41 5 250 0 43 5 177 0 48 5 250 0 49 5 250 0 121 5 250 0 122 5 250 0 134 5 250 0 135 5 250 1 229] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 43 5 177 0 48 0 242 0 49 0 242 0 121 0 242 0 122 0 242 0 134 0 242 0 135 0 242 1 229] 
#[1 5 254 0 3 5 254 0 5 5 254 0 7 5 254 0 8 5 181 0 41 5 254 0 43 5 254 0 49 5 254 0 121 5 254 0 122 5 254 0 134 5 254 0 135 5 254 1 229] 
#[1 6 2 0 3 6 2 0 5 6 2 0 7 6 2 0 8 6 2 0 43 6 2 0 45 5 177 0 48 6 2 0 121 6 2 0 122 6 2 0 134 6 2 0 135 6 2 1 229] 
#[0 14 193 0 122] 
#[0 6 6 0 3 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 14 201 1 6 14 205 1 7 0 6 1 228] 
#[0 6 14 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 6 18 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 6 22 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[1 6 26 0 3 6 26 0 5 6 26 0 7 6 26 0 8 6 26 0 11 5 117 0 12 6 26 0 14 5 121 0 15 5 125 0 18 6 26 0 20 6 26 0 21 6 26 0 24 6 26 0 25 6 26 0 40 6 26 0 41 6 26 0 43 6 26 0 45 6 26 0 48 6 26 0 49 6 26 0 51 6 26 0 53 6 26 0 54 6 26 0 83 6 26 0 86 6 26 0 121 6 26 0 122 6 26 0 134 6 26 0 135 6 26 1 229] 
#[1 0 22 0 136 14 209 1 75 14 213 1 94] 
#[1 6 30 0 4 0 147 0 136 14 217 0 138 14 225 1 72 14 225 1 73 1 197 1 74 14 225 1 92 1 205 1 94 14 229 1 99] 
#[1 6 38 0 4 6 38 0 9 6 38 0 14 14 233 0 22 14 237 0 122 6 38 0 137] 
#[1 6 30 0 4 14 241 0 9 0 122 0 14 14 245 0 137 15 17 1 78 14 253 1 82 15 1 1 83 15 5 1 84 15 1 1 85 15 1 1 86 15 17 1 87 15 21 1 95 15 25 1 99] 
#[0 6 42 0 4 0 9 0 14 0 137] 
#[0 6 46 0 4 0 9 0 14 0 137] 
#[0 6 50 0 137] 
#[1 15 29 0 137 15 33 1 80] 
#[0 15 37 0 14] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 15 41 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 15 41 1 129 15 41 1 130 2 217 1 131 2 217 1 133] 
#[0 15 45 0 3] 
#[1 1 226 0 6 1 226 0 11 0 151 0 14 1 230 0 22 1 226 0 40 1 226 0 48 12 97 0 74 4 58 0 121 12 101 1 103] 
#[0 15 49 0 14] 
#[1 5 221 0 2 2 157 0 11 5 233 1 100 15 53 1 145] 
#[0 15 57 0 4] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 15 61 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 6 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 15 65 0 8] 
#[0 6 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 15 69 0 8] 
#[0 15 73 0 2] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 77 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 81 0 196 15 81 0 197 15 81 0 199 0 253 1 5 15 81 1 8 1 125 1 9 1 129 1 10 1 133 1 13 15 81 1 14 0 253 1 19 15 81 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 15 85 0 141 15 89 0 214 6 45 0 215 15 93 0 216 15 93 0 217 15 93 0 218 15 97 0 236 6 53 1 228] 
#[1 0 198 0 8 0 198 0 9 5 77 0 10 0 198 0 11 0 198 0 12 5 77 0 13 0 198 0 14 0 198 0 15 5 77 0 16 5 77 0 17 0 198 0 18 0 198 0 20 0 198 0 21 5 77 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 5 77 0 28 5 77 0 29 5 77 0 30 5 77 0 31 5 77 0 32 5 77 0 33 5 77 0 34 0 198 0 35 5 57 0 36 0 198 0 37 5 61 0 38 0 198 0 40 0 198 0 41 5 77 0 42 0 198 0 43 0 198 0 45 5 77 0 46 0 198 0 47 0 198 0 48 0 198 0 49 5 77 0 50 0 198 0 51 0 198 0 53 0 198 0 54 0 155 0 83 0 198 0 86 15 105 0 96 0 198 0 121 5 77 0 198 5 77 1 227 5 85 1 228] 
#[1 15 109 0 8 5 197 0 121] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 15 113 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 15 117 0 196 15 117 0 197 15 117 0 199 0 253 1 5 15 117 1 8 1 125 1 9 1 129 1 10 1 133 1 13 15 117 1 14 0 253 1 19 15 117 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 15 121 0 141 3 165 0 211 3 169 0 212 15 125 0 216 15 125 0 217 15 125 0 218 15 129 0 236 3 169 1 152 3 169 1 153 3 193 1 228] 
#[1 15 133 0 83 15 137 0 96] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 4 37 0 56 0 137 0 61 15 149 0 63 1 173 0 75 0 149 0 79 0 153 0 82 15 149 0 89 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 15 141 0 115 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 15 145 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 15 145 0 178 15 149 0 210 15 153 0 235 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 4 165 1 228] 
#[1 15 157 0 3 5 197 0 121] 
#[0 6 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 15 161 0 8 5 197 0 121] 
#[1 15 165 0 3 5 197 0 121] 
#[0 6 70 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 15 169 0 2 1 217 0 4 15 173 0 205] 
#[1 1 217 0 4 15 177 0 205] 
#[1 6 74 0 1 6 74 0 2 6 74 0 4 6 74 0 5 6 74 0 6 6 74 0 8 6 74 0 35 6 74 0 36 6 74 0 37 6 74 0 38 6 74 0 39 6 74 0 52 6 74 0 56 6 74 0 57 6 74 0 58 6 74 0 59 6 74 0 61 6 74 0 62 6 74 0 63 6 74 0 65 6 74 0 66 6 74 0 67 6 74 0 68 6 74 0 69 6 74 0 70 6 74 0 71 6 74 0 72 6 74 0 73 6 74 0 75 11 73 0 76 6 74 0 77 6 74 0 79 6 74 0 81 6 74 0 82 6 74 0 87 6 74 0 89 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 102 6 74 0 106 6 74 0 107 6 74 0 109 6 74 0 110 6 74 0 111 6 74 0 112 6 74 0 113 6 74 0 114 6 74 0 115 6 74 0 116 6 74 0 117 6 74 0 118 6 74 0 119 6 74 0 124 6 74 0 126 6 74 0 128 6 74 0 129 6 74 0 130 6 74 0 132 6 74 0 133 6 74 0 136 15 181 0 252 6 74 1 228 6 74 1 229] 
#[0 6 78 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 82 0 8 0 121] 
#[0 6 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 6 37 0 141 15 185 0 215 6 49 0 216 6 49 0 217 6 49 0 218 6 53 1 228] 
#[0 6 90 0 8 0 121] 
#[1 12 57 0 122 15 189 1 135] 
#[1 12 57 0 122 15 193 1 135] 
#[0 6 94 0 8 0 121] 
#[0 6 98 0 8 0 121] 
#[1 15 197 0 3 5 197 0 121] 
#[1 15 201 0 3 5 197 0 121] 
#[0 6 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 101 0 4 4 105 0 74 15 205 1 34 4 117 1 35 4 121 1 228] 
#[1 4 106 0 1 0 159 0 2 4 106 0 4 4 106 0 5 0 159 0 6 0 159 0 8 2 238 0 9 2 238 0 10 2 238 0 11 2 238 0 12 2 238 0 13 2 238 0 14 2 238 0 15 2 238 0 16 2 238 0 17 2 238 0 18 2 238 0 20 2 238 0 21 2 238 0 22 2 238 0 23 2 238 0 24 2 238 0 25 2 238 0 26 2 238 0 27 2 238 0 28 2 238 0 29 2 238 0 30 2 238 0 31 2 238 0 32 2 238 0 33 2 238 0 34 0 159 0 35 0 159 0 36 0 159 0 37 0 159 0 38 4 106 0 39 2 238 0 40 2 238 0 41 2 238 0 42 2 238 0 43 2 238 0 44 2 238 0 45 2 238 0 46 2 238 0 47 2 238 0 48 2 238 0 49 2 238 0 50 2 238 0 51 4 106 0 52 2 238 0 53 2 238 0 54 4 106 0 56 4 106 0 57 4 106 0 58 4 106 0 61 4 106 0 62 4 106 0 63 4 106 0 65 4 106 0 66 4 106 0 67 4 106 0 69 4 106 0 70 4 106 0 72 4 106 0 73 4 106 0 75 4 106 0 77 4 106 0 79 4 106 0 81 4 106 0 82 2 238 0 83 2 238 0 86 4 106 0 87 4 106 0 89 4 106 0 92 4 106 0 93 4 106 0 94 4 106 0 102 4 106 0 106 4 106 0 107 4 106 0 109 4 106 0 110 4 106 0 111 4 106 0 112 4 106 0 113 4 106 0 114 4 106 0 115 4 106 0 116 4 106 0 117 4 106 0 118 4 106 0 119 2 238 0 121 4 106 0 124 4 106 0 126 4 106 0 128 4 106 0 129 4 106 0 130 0 159 0 132 0 159 0 133 4 106 0 136 2 238 1 227 0 159 1 228 4 106 1 229] 
#[1 0 189 0 124 15 209 0 141] 
#[1 0 189 0 124 15 213 0 141] 
#[1 11 141 0 72 0 189 0 124 15 217 0 141 15 221 1 210 15 225 1 211] 
#[1 0 189 0 124 15 229 0 141] 
#[1 0 189 0 124 15 217 0 141 15 233 1 210 15 225 1 211] 
#[0 15 237 0 128 1 69] 
#[1 0 189 0 124 11 237 0 141 15 241 1 175] 
#[1 0 189 0 124 15 217 0 141 15 245 1 210 15 225 1 211] 
#[0 6 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 15 249 0 4] 
#[1 0 189 0 124 15 253 0 141] 
#[1 7 209 0 78 16 1 1 56] 
#[1 16 5 0 8 7 209 0 78 16 9 1 56] 
#[0 16 13 0 113] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 16 17 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 16 21 0 2 0 189 0 124 16 25 0 141] 
#[0 16 29 0 2] 
#[1 16 33 0 23 2 102 0 78 2 102 0 121] 
#[1 2 149 0 4 2 157 0 11 16 37 0 74 16 41 1 100 16 45 1 119 16 49 1 155] 
#[0 6 134 0 4 0 22] 
#[1 16 53 0 4 16 57 0 22] 
#[1 2 157 0 11 16 61 0 23 16 65 1 100] 
#[1 3 37 0 56 3 41 0 61 3 45 0 62 6 81 0 63 16 69 0 67 16 73 0 68 6 89 0 72 3 53 0 79 16 77 0 82 6 105 0 87 0 65 0 89 6 109 0 92 6 113 0 113 2 9 0 115 16 81 0 202 16 85 0 209 0 65 0 210 16 89 0 213 16 81 1 4 16 81 1 18 16 81 1 23 16 81 1 27 16 93 1 32 16 97 1 51 16 101 1 144 16 105 1 154 16 109 1 169 16 113 1 174 16 117 1 180 16 121 1 208 16 125 1 228] 
#[0 6 138 0 1 0 4 0 6 0 43 0 61 0 62 0 64 0 73 0 97 0 98 0 99 0 100 0 104 0 109 0 122 0 124 0 125 0 128 0 129 1 228] 
#[1 12 225 0 2 2 157 0 11 0 189 0 124 16 129 0 141 12 233 1 100 12 237 1 136 16 133 1 145] 
#[1 0 163 0 3 0 163 0 5 3 242 0 6 0 163 0 7 3 242 0 8 4 142 0 23 3 242 0 40 3 242 0 48 0 163 0 121] 
#[1 6 237 0 2 3 254 0 5 3 254 0 8 2 157 0 11 12 53 0 43 3 254 0 121 16 137 0 122 7 29 1 100 12 61 1 135 12 65 1 136] 
#[1 0 167 0 3 0 167 0 5 4 46 0 6 0 167 0 7 4 46 0 8 4 154 0 23 4 46 0 40 4 46 0 48 0 167 0 121] 
#[1 2 198 0 4 2 198 0 6 0 171 0 7 2 198 0 120 2 198 0 121 2 198 0 124 2 198 1 228] 
#[0 16 141 0 19] 
#[0 6 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 16 145 0 3] 
#[1 0 126 0 2 0 126 0 6 0 126 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 16 149 0 122 0 126 0 132 0 126 0 133 0 126 1 227 0 126 1 228] 
#[0 16 153 0 7] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 16 157 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 16 161 0 2] 
#[1 6 146 0 5 6 146 0 8 16 165 0 43 6 146 0 121 12 57 0 122 16 169 1 135] 
#[1 6 237 0 2 6 150 0 5 6 150 0 8 2 157 0 11 6 150 0 121 12 57 0 122 7 29 1 100 16 173 1 135 16 177 1 136] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 16 181 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 16 181 1 129 16 181 1 130 2 217 1 131 2 217 1 133] 
#[0 6 154 0 5 0 8 0 121] 
#[0 6 158 0 5 0 8 0 121] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 16 185 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 6 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 97 0 98 0 99 0 100 0 102 0 104 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 125 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 228 1 229] 
#[1 6 237 0 2 6 166 0 5 6 245 0 6 2 157 0 11 6 249 0 93 6 253 0 101 7 1 0 125 7 21 0 128 7 25 0 129 7 9 0 142 7 9 0 154 7 9 0 155 7 9 0 156 7 21 1 69 7 25 1 70 7 29 1 100 16 189 1 122 16 189 1 134 16 189 1 136 16 189 1 141 16 189 1 142 16 189 1 143] 
#[1 6 237 0 2 6 170 0 5 6 245 0 6 2 157 0 11 6 249 0 93 6 253 0 101 7 1 0 125 7 21 0 128 7 25 0 129 7 9 0 142 7 9 0 154 7 9 0 155 7 9 0 156 7 21 1 69 7 25 1 70 7 29 1 100 16 193 1 122 16 193 1 134 16 193 1 136 16 193 1 141 16 193 1 142 16 193 1 143] 
#[0 6 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 6 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 16 197 0 7 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 16 201 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 16 201 1 126 2 205 1 127 2 209 1 128 16 201 1 129 16 201 1 130 2 217 1 131 2 217 1 133] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 16 205 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 16 205 1 129 16 205 1 130 2 217 1 131 2 217 1 133] 
#[0 6 182 0 14 0 121] 
#[0 6 186 0 2 0 4 0 23 0 74 1 228] 
#[1 0 189 0 124 7 85 0 141 16 209 1 102] 
#[0 16 213 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 16 217 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 0 189 0 124 16 221 0 141] 
#[0 16 225 0 3] 
#[1 6 190 0 3 6 190 0 4 6 190 0 5 6 190 0 6 6 190 0 7 6 190 0 8 6 190 0 9 6 190 0 11 6 190 0 12 6 190 0 14 6 190 0 15 6 190 0 18 6 190 0 19 6 190 0 20 6 190 0 21 6 190 0 23 6 190 0 24 6 190 0 25 6 190 0 26 6 190 0 27 6 190 0 35 6 190 0 37 0 175 0 40 6 190 0 41 6 190 0 43 6 190 0 45 6 190 0 47 6 190 0 48 6 190 0 49 6 190 0 51 6 190 0 53 6 190 0 54 6 190 0 64 6 190 0 83 6 190 0 86 6 190 0 97 6 190 0 98 6 190 0 99 6 190 0 100 6 190 0 104 6 190 0 121 6 190 0 122 6 190 0 125 6 190 0 128 6 190 0 129 6 190 0 134 6 190 0 135 6 190 1 228 6 190 1 229] 
#[1 6 194 0 3 6 194 0 4 6 194 0 5 0 179 0 6 6 194 0 7 6 194 0 8 6 194 0 9 6 194 0 11 6 194 0 12 6 194 0 14 6 194 0 15 6 194 0 18 6 194 0 19 6 194 0 20 6 194 0 21 6 194 0 23 6 194 0 24 6 194 0 25 6 194 0 26 6 194 0 27 6 194 0 35 6 194 0 37 6 194 0 40 6 194 0 41 6 194 0 43 6 194 0 45 6 194 0 47 6 194 0 48 6 194 0 49 6 194 0 51 6 194 0 53 6 194 0 54 6 194 0 64 6 194 0 83 6 194 0 86 6 194 0 97 6 194 0 98 6 194 0 99 6 194 0 100 6 194 0 104 6 194 0 121 6 194 0 122 6 194 0 125 6 194 0 128 6 194 0 129 6 194 0 134 6 194 0 135 7 137 0 239 6 194 1 228 6 194 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 16 229 0 7 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 16 233 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 16 233 1 129 16 233 1 130 2 217 1 131 2 217 1 133] 
#[0 6 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 6 202 0 3 6 202 0 4 6 202 0 5 6 202 0 6 6 202 0 7 6 202 0 8 6 202 0 9 6 202 0 11 6 202 0 12 6 202 0 14 6 202 0 15 6 202 0 18 6 202 0 19 6 202 0 20 6 202 0 21 6 206 0 22 6 202 0 23 6 202 0 24 6 202 0 25 6 202 0 26 6 202 0 27 6 202 0 35 6 202 0 37 6 202 0 40 6 202 0 41 6 202 0 43 6 202 0 45 6 202 0 47 6 202 0 48 6 202 0 49 6 202 0 51 6 202 0 53 6 202 0 54 6 202 0 64 6 202 0 83 6 202 0 85 6 202 0 86 6 202 0 97 6 202 0 98 6 202 0 99 6 202 0 100 6 202 0 104 6 202 0 121 6 202 0 122 6 202 0 125 6 202 0 128 6 202 0 129 6 202 0 134 6 202 0 135 6 202 1 228 6 202 1 229] 
#[0 16 237 0 125 0 128 1 50 1 69] 
#[0 6 210 0 8 0 78] 
#[1 16 241 0 5 7 157 0 125 7 157 0 128 7 157 1 50 16 245 1 65 7 157 1 69] 
#[0 6 214 0 78] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 16 249 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 16 253 0 2 0 189 0 124 17 1 0 141] 
#[0 17 5 0 2] 
#[0 6 218 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 101 0 4 4 105 0 74 17 9 1 34 4 117 1 35 4 121 1 228] 
#[0 6 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 6 226 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 17 13 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 17 17 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 17 21 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 17 25 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 6 230 0 8] 
#[0 6 234 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 6 238 0 1 0 126 0 2 6 238 0 4 0 183 0 6 0 126 0 22 6 238 0 43 0 126 0 44 6 238 0 61 6 238 0 62 6 238 0 64 6 238 0 73 6 238 0 97 6 238 0 98 6 238 0 99 6 238 0 100 6 238 0 104 6 238 0 109 6 238 0 122 6 238 0 124 6 238 0 125 6 238 0 128 6 238 0 129 0 126 0 132 0 126 0 133 0 183 1 228] 
#[1 6 242 0 1 4 169 0 2 6 242 0 4 0 187 0 6 4 245 0 22 6 242 0 43 4 225 0 44 6 242 0 61 6 242 0 62 6 242 0 64 6 242 0 73 6 242 0 97 6 242 0 98 6 242 0 99 6 242 0 100 6 242 0 104 6 242 0 109 6 242 0 122 6 242 0 124 6 242 0 125 6 242 0 128 6 242 0 129 0 209 0 132 0 18 0 133 4 249 0 159 0 249 0 160 4 253 0 172 5 1 0 175 0 191 1 228] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 17 29 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 12 225 0 2 2 157 0 11 12 233 1 100 17 33 1 136 17 37 1 145] 
#[0 17 41 0 2] 
#[0 17 45 0 8] 
#[0 17 49 0 4] 
#[1 2 157 0 11 0 189 0 124 17 53 0 141 17 57 1 100] 
#[0 17 61 0 61] 
#[1 7 221 0 1 17 65 0 61 17 69 0 62 11 253 1 225] 
#[1 0 189 0 124 17 73 0 141 17 73 1 60] 
#[0 6 246 0 78] 
#[1 17 77 0 5 0 189 0 124 8 1 0 125 8 1 0 128 8 13 0 141 8 1 1 50 17 81 1 58 8 13 1 60 8 1 1 69 8 17 1 228] 
#[1 0 189 0 124 17 85 0 125 17 85 0 128 17 89 0 141 17 85 1 50 17 89 1 60 17 85 1 69] 
#[0 6 250 0 78] 
#[0 6 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 7 2 0 78] 
#[0 7 6 0 78] 
#[0 7 10 0 78] 
#[0 7 14 0 78] 
#[0 7 18 0 5] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 17 93 0 224 17 93 0 225 6 233 1 228] 
#[0 7 22 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 26 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 17 97 0 5 8 45 0 6 8 49 0 120 0 189 0 124 7 1 0 125 7 21 0 128 7 25 0 129 8 53 0 141 8 57 0 142 8 57 0 154 8 57 0 155 8 57 0 156 17 101 0 219 17 105 0 223 17 105 0 225 7 21 1 69 7 25 1 70 8 77 1 228] 
#[0 7 30 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 34 0 7 0 121] 
#[0 17 109 0 7] 
#[0 7 38 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 3 153 0 4 3 157 0 6 17 113 0 7 3 209 0 120 4 13 0 121 0 189 0 124 8 53 0 141 17 117 0 148 3 221 0 216 3 221 0 217 3 221 0 218 17 121 0 222 8 97 0 224 8 97 0 225 17 125 0 226 6 233 1 228] 
#[0 7 42 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 7 46 0 3 0 5 0 7 0 8 0 121] 
#[0 7 50 0 8 0 121] 
#[1 7 54 0 8 8 105 0 23 7 54 0 121 17 129 0 158] 
#[1 7 58 0 8 8 105 0 23 7 58 0 121 17 133 0 158] 
#[1 7 209 0 78 17 137 1 56] 
#[0 2 98 0 78] 
#[1 0 126 0 2 0 126 0 6 0 195 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 126 0 121 12 57 0 122 0 126 0 132 0 126 0 133 13 117 1 135 0 126 1 227 0 126 1 228] 
#[1 4 234 0 2 0 199 0 3 4 234 0 6 0 199 0 7 4 234 0 9 4 234 0 10 4 234 0 11 4 234 0 12 4 234 0 13 4 234 0 14 4 234 0 15 4 234 0 16 4 234 0 17 4 234 0 18 4 234 0 20 4 234 0 21 4 234 0 22 0 199 0 23 4 234 0 24 4 234 0 25 4 234 0 26 4 234 0 27 4 234 0 28 4 234 0 29 4 234 0 30 4 234 0 31 4 234 0 32 4 234 0 33 4 234 0 34 4 234 0 35 4 234 0 36 4 234 0 37 4 234 0 38 4 234 0 40 4 234 0 41 4 234 0 42 4 234 0 43 4 234 0 44 4 234 0 45 4 234 0 46 4 234 0 47 4 234 0 48 4 234 0 49 4 234 0 50 4 234 0 51 4 234 0 53 4 234 0 54 4 234 0 83 4 234 0 86 0 199 0 121 4 234 0 132 4 234 0 133 4 234 1 227 4 234 1 228] 
#[0 7 62 0 3 0 7] 
#[0 7 66 0 3] 
#[0 7 70 0 3 0 121] 
#[0 7 74 0 3 0 5 0 7 0 121] 
#[1 7 78 0 3 7 78 0 5 7 78 0 7 8 105 0 23 7 78 0 121 17 141 0 158] 
#[0 7 82 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[0 7 86 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[0 7 90 0 3 0 5 0 7 0 23 0 43 0 121 0 122] 
#[1 17 145 0 43 12 57 0 122 17 149 1 135] 
#[1 4 222 0 3 3 153 0 4 4 222 0 5 3 157 0 6 4 222 0 7 4 222 0 23 4 222 0 43 13 137 0 109 4 222 0 121 4 222 0 122 0 189 0 124 17 153 0 141 17 153 0 216 17 153 0 217 17 153 0 218 17 153 1 138] 
#[1 7 94 0 3 7 94 0 5 7 94 0 7 8 105 0 23 17 157 0 43 7 94 0 121 12 57 0 122 17 161 0 158 17 165 1 135] 
#[0 7 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 7 102 0 7 0 121] 
#[0 7 106 0 7 0 121] 
#[0 17 169 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 17 173 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 17 177 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 17 181 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 17 189 1 30 0 6 1 228] 
#[0 7 110 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 7 114 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 17 193 0 2] 
#[1 9 25 0 124 9 29 0 126 17 197 1 40] 
#[0 17 201 0 2] 
#[0 17 205 0 2] 
#[0 17 209 0 2] 
#[1 0 6 0 2 0 6 0 4 7 118 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 17 213 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 217 1 42 17 221 1 43 0 6 1 228] 
#[0 7 122 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 17 225 0 8] 
#[0 7 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 227 1 228 1 229] 
#[0 7 130 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 7 134 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 17 229 0 255 3 241 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 7 138 0 8] 
#[1 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 17 233 0 142 17 233 0 154 17 233 0 155 17 233 0 156 7 21 1 69 7 25 1 70] 
#[1 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 17 237 0 142 17 237 0 154 17 237 0 155 17 237 0 156 7 21 1 69 7 25 1 70] 
#[1 5 221 0 2 2 157 0 11 17 241 0 43 5 233 1 100 17 245 1 145] 
#[1 7 221 0 1 8 45 0 6 17 249 0 64 18 5 0 97 18 5 0 98 18 5 0 99 18 5 0 100 17 253 0 104 7 1 0 125 7 21 0 128 7 25 0 129 18 1 0 142 18 1 0 154 18 1 0 155 18 1 0 156 7 21 1 69 7 25 1 70 18 5 1 139 18 9 1 146 18 13 1 147 11 253 1 225 18 17 1 228] 
#[0 18 21 0 8] 
#[0 7 142 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 7 146 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 7 150 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 7 154 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 7 158 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 7 162 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 7 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 227 1 228 1 229] 
#[0 18 25 0 5] 
#[0 7 170 0 4 0 85] 
#[0 7 174 0 4 0 85] 
#[0 7 178 0 4 0 121] 
#[1 7 182 0 4 18 29 0 121] 
#[0 7 186 0 4 0 121] 
#[0 7 190 0 4] 
#[0 18 33 0 4] 
#[0 18 37 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 18 41 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 18 45 0 3] 
#[0 7 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 7 198 0 3 0 121] 
#[0 7 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 18 49 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 18 53 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 57 0 196 18 57 0 197 0 253 1 5 18 57 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 57 1 14 0 253 1 19 18 57 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 7 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 18 61 0 14 18 65 0 121] 
#[0 7 210 0 14 0 121] 
#[0 7 214 0 14 0 121] 
#[1 0 97 0 2 18 69 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 9 153 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 18 73 0 173 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 9 161 0 196 9 161 0 197 0 253 1 5 9 161 1 8 1 125 1 9 1 129 1 10 1 133 1 13 9 161 1 14 0 253 1 19 9 161 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 3 122 0 4 3 122 0 136 3 122 0 138 18 77 1 90 10 189 1 91] 
#[0 7 218 0 5 0 121] 
#[0 7 222 0 5 0 121] 
#[0 7 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 18 81 0 5 8 45 0 6 9 5 0 26 9 9 0 56 9 13 0 80 9 17 0 103 9 193 0 120 9 197 0 124 7 1 0 125 9 29 0 126 7 21 0 128 7 25 0 129 9 201 0 141 9 213 0 142 18 85 0 153 9 213 0 154 9 213 0 155 9 213 0 156 18 85 0 157 18 85 1 16 18 85 1 20 18 85 1 25 18 85 1 29 9 225 1 40 7 21 1 69 7 25 1 70 18 85 1 146 18 85 1 147 9 229 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 89 0 196 18 89 0 197 0 253 1 5 18 89 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 89 1 14 0 253 1 19 18 89 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 93 0 196 18 93 0 197 18 93 0 199 0 253 1 5 18 93 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 93 1 14 0 253 1 19 18 93 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 7 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 18 97 0 134 18 101 0 135] 
#[0 7 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 18 105 0 7 5 197 0 121] 
#[1 18 109 0 7 5 197 0 121] 
#[0 7 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 7 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 7 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 7 254 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 113 0 196 18 113 0 197 0 253 1 5 18 113 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 113 1 14 0 253 1 19 18 113 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 6 0 2 0 6 0 4 8 2 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 73 0 207 0 57 0 208 6 73 0 209 0 65 0 210 0 6 1 228] 
#[0 18 117 0 5] 
#[0 8 6 0 5] 
#[0 8 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 227 1 228 1 229] 
#[0 18 121 0 136] 
#[0 8 14 0 4 0 136 0 138] 
#[0 8 18 0 4 0 136 0 138] 
#[0 8 22 0 4 0 136 0 138] 
#[0 18 125 0 4] 
#[0 8 26 0 137] 
#[0 18 129 0 137] 
#[1 8 30 0 14 18 133 1 97] 
#[1 8 34 0 4 8 34 0 9 8 34 0 14 8 34 0 23 14 237 0 122 8 34 0 137] 
#[0 8 38 0 4 0 9 0 14 0 23 0 137] 
#[1 18 137 0 9 0 122 0 14 18 141 1 95] 
#[0 8 42 0 4 0 9 0 14 0 137] 
#[1 6 30 0 4 8 46 0 9 8 46 0 14 14 245 0 137 15 17 1 78 18 145 1 83 18 145 1 85 18 145 1 86 15 17 1 87 15 25 1 99] 
#[0 8 50 0 4 0 9 0 14 0 137] 
#[0 8 54 0 4 0 9 0 14 0 137] 
#[1 8 58 0 4 8 58 0 9 8 58 0 14 18 149 0 23 8 58 0 137 18 153 1 88] 
#[0 18 157 0 14] 
#[0 18 161 0 4] 
#[1 8 62 0 4 8 62 0 9 8 62 0 14 14 233 0 22 8 62 0 137] 
#[0 8 66 0 137] 
#[0 8 70 0 4 0 136 0 138] 
#[0 8 74 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 228 1 229] 
#[1 8 78 0 4 8 78 0 8 8 78 0 19 12 57 0 122 18 165 1 135] 
#[1 4 33 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 4 37 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 189 0 124 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 253 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 4 45 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 4 45 0 178 18 169 0 179 18 169 0 180 0 253 1 5 0 253 1 19 0 253 1 24 0 253 1 28 18 169 1 31 0 253 1 33 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 4 53 1 228] 
#[0 18 173 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 18 177 1 6 14 205 1 7 0 6 1 228] 
#[0 18 181 0 3] 
#[0 8 82 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 185 0 196 18 185 0 197 18 185 0 199 0 253 1 5 18 185 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 185 1 14 0 253 1 19 18 185 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 18 189 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 193 0 196 18 193 0 197 18 193 0 199 0 253 1 5 18 193 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 193 1 14 0 253 1 19 18 193 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 18 197 0 8 5 197 0 121] 
#[1 3 138 0 8 8 105 0 23 8 90 0 83 8 90 0 96 3 138 0 121 11 85 0 158] 
#[1 18 201 0 8 11 93 0 121] 
#[1 8 105 0 23 8 94 0 83 8 94 0 96 11 97 0 158] 
#[1 18 205 0 83 18 209 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 213 0 196 18 213 0 197 18 213 0 199 0 253 1 5 18 213 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 213 1 14 0 253 1 19 18 213 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 217 0 196 18 217 0 197 0 253 1 5 18 217 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 217 1 14 0 253 1 19 18 217 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 18 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 225 0 196 18 225 0 197 18 225 0 199 0 253 1 5 18 225 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 225 1 14 0 253 1 19 18 225 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 18 229 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 233 0 196 18 233 0 197 18 233 0 199 0 253 1 5 18 233 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 233 1 14 0 253 1 19 18 233 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 18 237 0 8 5 197 0 121] 
#[1 2 130 0 8 8 105 0 23 8 90 0 83 8 90 0 96 2 130 0 121 8 109 0 158] 
#[1 8 105 0 23 8 94 0 83 8 94 0 96 8 121 0 158] 
#[0 8 98 0 83 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 241 0 196 18 241 0 197 18 241 0 199 0 253 1 5 18 241 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 241 1 14 0 253 1 19 18 241 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 245 0 196 18 245 0 197 0 253 1 5 18 245 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 245 1 14 0 253 1 19 18 245 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 19 1 0 141 19 1 0 216 19 1 0 217 19 1 0 218 19 1 0 236] 
#[1 19 5 0 96 9 145 1 228] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 15 129 0 141 15 129 0 216 15 129 0 217 15 129 0 218 15 129 0 236] 
#[0 19 9 0 96] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 19 13 0 200 19 13 0 203 19 13 0 204 19 13 0 205 19 13 0 213 19 13 0 227 19 13 0 228 19 13 0 229 19 13 0 230 19 13 0 231 19 13 0 232 19 13 0 233 19 13 0 234 19 13 0 237 19 13 0 238 19 13 0 240 19 13 0 241 19 13 0 242 19 13 0 247 19 13 0 249 19 13 0 250 19 13 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 8 102 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 19 17 0 4 19 21 0 243] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 19 25 0 141 19 33 0 216 19 33 0 217 19 33 0 218 19 33 0 253] 
#[0 8 106 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 110 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 114 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 118 0 8 0 121] 
#[1 8 122 0 8 8 105 0 23 8 122 0 121 19 37 0 158] 
#[1 8 105 0 23 19 41 0 158] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 19 45 0 200 19 45 0 203 19 45 0 204 19 45 0 205 19 45 0 213 19 45 0 227 19 45 0 228 19 45 0 229 19 45 0 230 19 45 0 231 19 45 0 232 19 45 0 233 19 45 0 234 19 45 0 237 19 45 0 238 19 45 0 240 19 45 0 241 19 45 0 242 19 45 0 247 19 45 0 249 19 45 0 250 19 45 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 19 49 0 200 19 49 0 203 19 49 0 204 19 49 0 205 19 49 0 213 19 49 0 227 19 49 0 228 19 49 0 229 19 49 0 230 19 49 0 231 19 49 0 232 19 49 0 233 19 49 0 234 19 49 0 237 19 49 0 238 19 49 0 240 19 49 0 241 19 49 0 242 19 49 0 247 19 49 0 249 19 49 0 250 19 49 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 6 218 0 1 0 203 0 2 6 218 0 4 6 218 0 5 0 203 0 6 0 203 0 8 5 54 0 9 5 54 0 10 5 54 0 11 5 54 0 12 5 54 0 13 5 54 0 14 5 54 0 15 5 54 0 16 5 54 0 17 5 54 0 18 5 54 0 20 5 54 0 21 5 54 0 22 5 54 0 23 5 54 0 24 5 54 0 25 5 54 0 26 5 54 0 27 5 54 0 28 5 54 0 29 5 54 0 30 5 54 0 31 5 54 0 32 5 54 0 33 5 54 0 34 0 203 0 35 0 203 0 36 0 203 0 37 0 203 0 38 6 218 0 39 5 54 0 40 5 54 0 41 5 54 0 42 5 54 0 43 5 54 0 44 5 54 0 45 5 54 0 46 5 54 0 47 5 54 0 48 5 54 0 49 5 54 0 50 5 54 0 51 6 218 0 52 5 54 0 53 5 54 0 54 6 218 0 56 6 218 0 57 6 218 0 58 6 218 0 61 6 218 0 62 6 218 0 63 6 218 0 65 6 218 0 66 6 218 0 67 6 218 0 69 6 218 0 70 6 218 0 72 6 218 0 73 6 218 0 75 6 218 0 77 6 218 0 79 6 218 0 81 6 218 0 82 5 54 0 83 5 54 0 86 6 218 0 87 6 218 0 89 6 218 0 92 6 218 0 93 6 218 0 94 6 218 0 102 6 218 0 106 6 218 0 107 6 218 0 109 6 218 0 110 6 218 0 111 6 218 0 112 6 218 0 113 6 218 0 114 6 218 0 115 6 218 0 116 6 218 0 117 6 218 0 118 6 218 0 119 5 54 0 121 6 218 0 124 6 218 0 126 6 218 0 128 6 218 0 129 6 218 0 130 0 203 0 132 0 203 0 133 6 218 0 136 5 54 1 227 0 203 1 228 6 218 1 229] 
#[0 19 53 0 4] 
#[1 2 157 0 11 4 105 0 74 19 57 1 35 19 61 1 100 4 121 1 228] 
#[1 8 126 0 8 8 126 0 121 12 57 0 122 19 65 1 135] 
#[1 19 69 0 8 19 73 0 121] 
#[0 8 130 0 8 0 121] 
#[1 6 237 0 2 2 157 0 11 7 29 1 100 19 77 1 136] 
#[1 19 81 0 8 19 73 0 121] 
#[0 19 85 0 4] 
#[1 19 89 0 4 16 57 0 22] 
#[1 19 93 0 8 19 73 0 121] 
#[1 19 97 0 5 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 19 101 0 142 19 101 0 154 19 101 0 155 19 101 0 156 7 21 1 69 7 25 1 70 19 105 1 170 19 109 1 171 19 113 1 172] 
#[0 19 117 0 8] 
#[0 19 121 0 8] 
#[0 8 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 19 125 0 8] 
#[1 3 29 0 4 19 129 0 26 19 133 1 63] 
#[0 19 137 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 19 141 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 19 145 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 19 149 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 0 189 0 124 19 153 0 141 19 157 1 118 19 161 1 181 19 165 1 226] 
#[1 0 189 0 124 2 185 0 141 19 169 1 116 2 241 1 117 2 245 1 118 19 169 1 157] 
#[1 2 149 0 4 16 37 0 74 19 173 1 119 19 177 1 155] 
#[0 8 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 2 149 0 4 19 181 1 119] 
#[1 0 97 0 2 0 19 0 4 8 142 0 5 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 6 77 0 61 3 45 0 62 6 81 0 63 1 229 0 65 1 233 0 66 16 69 0 67 0 141 0 69 1 237 0 70 6 89 0 72 19 185 0 73 1 173 0 75 1 241 0 77 6 97 0 79 1 245 0 81 19 189 0 82 6 105 0 87 0 65 0 89 6 109 0 92 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 6 113 0 113 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 19 237 0 200 19 237 0 203 19 237 0 204 19 237 0 205 19 237 0 209 0 65 0 210 19 237 0 213 19 237 0 227 19 237 0 228 19 237 0 229 19 237 0 230 19 237 0 231 19 237 0 232 19 237 0 233 19 237 0 234 19 237 0 237 19 237 0 238 19 237 0 240 19 237 0 241 19 237 0 242 19 237 0 247 19 237 0 249 19 237 0 250 19 237 0 254 19 237 1 4 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 19 237 1 18 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 19 237 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 19 237 1 144 1 209 1 149 19 237 1 154 19 237 1 169 19 237 1 174 19 229 1 176 19 233 1 177 19 237 1 178 19 237 1 179 19 237 1 180 19 237 1 208 6 209 1 228] 
#[1 0 189 0 124 19 253 0 141] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 20 1 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 20 1 1 129 20 1 1 130 2 217 1 131 2 217 1 133] 
#[0 20 5 0 23] 
#[1 11 145 0 61 11 149 0 63 6 89 0 72 11 153 0 79 11 157 0 89 11 165 0 92 11 169 0 115 11 189 1 169 11 177 1 209 11 181 1 212 11 185 1 213 11 189 1 219 11 193 1 220] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 20 9 0 61 3 45 0 62 0 141 0 69 1 173 0 75 20 13 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 20 17 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 20 21 0 196 20 21 0 197 20 25 1 4 0 253 1 5 20 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 20 21 1 14 20 29 1 18 0 253 1 19 20 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 20 33 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 20 37 1 212 20 41 1 213 6 209 1 228] 
#[1 3 105 0 4 3 109 0 26 0 189 0 124 3 133 0 128 20 45 0 141 3 117 1 52 3 121 1 53 3 125 1 54 3 129 1 55 3 133 1 59 3 121 1 60 3 133 1 69 3 145 1 228] 
#[0 8 146 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 150 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 162 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 0 207 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 0 211 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 182 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 186 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 8 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 0 215 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 51 0 1 1 210 0 61 1 210 0 62 7 229 0 79 7 233 1 137 7 249 1 225] 
#[1 12 225 0 2 2 157 0 11 12 233 1 100 17 33 1 136 20 49 1 145] 
#[0 20 53 0 4] 
#[1 2 145 0 2 6 213 0 4 6 217 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 6 221 0 141 3 221 0 216 3 221 0 217 3 221 0 218 17 93 0 224 17 93 0 225 2 189 1 69 2 193 1 70 2 197 1 100 16 181 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 16 181 1 129 16 181 1 130 2 217 1 131 2 217 1 133 6 233 1 228] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 20 57 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 20 57 1 129 20 57 1 130 2 217 1 131 2 217 1 133] 
#[1 8 202 0 4 8 202 0 5 8 202 0 8 8 202 0 121 12 57 0 122 20 61 1 135] 
#[1 20 65 0 95 20 69 0 105] 
#[0 8 206 0 2 0 5 0 8 0 11 0 23 0 43 0 121 0 122] 
#[0 20 73 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 20 77 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 8 210 0 5 8 210 0 8 8 210 0 121 12 57 0 122 20 81 1 135] 
#[0 8 214 0 5 0 8 0 121] 
#[0 8 218 0 5 0 8 0 121] 
#[0 8 222 0 5 0 8 0 121] 
#[0 8 226 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 20 85 0 3] 
#[0 8 230 0 5 0 8 0 121] 
#[0 8 234 0 5 0 8 0 121] 
#[0 8 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 8 242 0 7 0 121] 
#[0 8 246 0 14 0 121] 
#[0 8 250 0 14 0 121] 
#[0 20 89 0 19] 
#[0 20 93 0 3] 
#[0 8 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 20 97 0 19] 
#[0 9 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 20 101 0 7] 
#[0 9 6 0 5 0 121] 
#[0 9 10 0 8 0 78] 
#[0 9 14 0 5 0 121] 
#[0 20 105 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 20 109 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 20 113 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 20 117 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 9 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 20 121 0 4] 
#[0 20 125 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 20 129 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 20 133 0 3] 
#[0 20 137 0 3] 
#[0 20 141 0 8] 
#[0 20 145 0 4] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 20 149 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 9 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 20 153 1 6 14 205 1 7 0 6 1 228] 
#[1 2 157 0 11 20 157 1 100] 
#[1 4 101 0 4 4 105 0 74 20 161 1 34 4 117 1 35 4 121 1 228] 
#[1 2 157 0 11 0 189 0 124 20 165 0 141 20 169 1 100] 
#[1 4 101 0 4 4 105 0 74 0 189 0 124 20 173 0 141 20 177 1 34 4 117 1 35 4 121 1 228] 
#[0 20 181 0 61] 
#[0 9 26 0 5 0 121] 
#[0 9 30 0 78] 
#[0 9 34 0 5 0 121] 
#[0 20 185 0 55] 
#[0 9 38 0 5 0 121] 
#[0 9 42 0 5 0 121] 
#[0 9 46 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 20 189 0 5] 
#[0 9 50 0 5 0 121] 
#[0 9 54 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 9 58 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[1 3 153 0 4 3 157 0 6 20 193 0 7 3 209 0 120 8 221 0 121 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 13 65 0 224 13 65 0 225 20 197 0 226 6 233 1 228] 
#[0 9 62 0 7 0 121] 
#[0 20 201 0 7] 
#[0 9 66 0 8 0 121] 
#[0 9 70 0 8 0 121] 
#[0 20 205 0 8] 
#[0 9 74 0 3 0 5 0 7 0 121] 
#[1 9 78 0 3 9 78 0 5 9 78 0 7 9 78 0 121 12 57 0 122 20 209 1 135] 
#[1 9 82 0 3 9 82 0 5 9 82 0 7 8 105 0 23 9 82 0 121 20 213 0 158] 
#[1 9 86 0 3 9 86 0 5 9 86 0 7 8 105 0 23 20 217 0 43 9 86 0 121 12 57 0 122 20 221 0 158 20 225 1 135] 
#[0 9 90 0 3 0 5 0 7 0 121] 
#[0 9 94 0 3 0 5 0 7 0 121] 
#[1 9 98 0 3 9 98 0 5 9 98 0 7 8 105 0 23 9 98 0 121 20 229 0 158] 
#[1 20 233 0 4 20 237 1 228] 
#[0 20 241 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 20 245 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 20 249 0 3] 
#[0 9 102 0 5] 
#[0 20 253 0 5] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 21 1 0 255 3 241 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 21 5 0 2] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 21 9 0 255 3 241 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 21 13 0 3] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 21 21 0 224 21 21 0 225 21 21 1 3 21 21 1 17 6 233 1 228] 
#[1 0 6 0 2 0 6 0 4 9 106 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 73 0 207 0 57 0 208 6 73 0 209 0 65 0 210 0 6 1 228] 
#[0 21 25 0 5] 
#[0 9 110 0 5] 
#[0 9 114 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 21 29 0 3] 
#[0 21 33 0 2] 
#[0 21 37 0 2] 
#[1 5 221 0 2 2 157 0 11 5 233 1 100 21 41 1 145] 
#[0 21 45 0 4] 
#[1 21 49 0 2 21 53 1 162] 
#[1 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 21 57 0 142 21 57 0 154 21 57 0 155 21 57 0 156 7 21 1 69 7 25 1 70 21 61 1 146 21 65 1 147 18 17 1 228] 
#[1 6 237 0 2 9 118 0 8 2 157 0 11 8 105 0 23 21 69 0 43 12 57 0 122 21 73 0 158 7 29 1 100 21 77 1 135 21 81 1 136 21 85 1 165] 
#[1 8 45 0 6 21 89 0 64 21 93 0 104 7 1 0 125 7 21 0 128 7 25 0 129 21 97 0 142 21 97 0 154 21 97 0 155 21 97 0 156 7 21 1 69 7 25 1 70 21 101 1 146 21 105 1 147 18 17 1 228] 
#[0 9 122 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 9 126 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 13 253 0 80 14 1 0 103] 
#[0 9 130 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 9 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 83 0 86 0 87 0 89 0 92 0 93 0 94 0 96 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 121 0 122 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 1 227 1 228 1 229] 
#[1 0 189 0 124 2 185 0 141 21 109 1 116 2 241 1 117 2 245 1 118 21 109 1 157] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 21 113 1 6 14 205 1 7 0 6 1 228] 
#[0 21 117 0 4] 
#[0 21 121 0 3] 
#[0 21 125 0 4] 
#[0 9 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 129 0 196 21 129 0 197 0 253 1 5 21 129 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 129 1 14 0 253 1 19 21 129 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 9 142 0 3 0 121] 
#[0 9 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 85 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 21 133 1 106 21 133 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 21 133 1 129 21 133 1 130 2 217 1 131 2 217 1 133] 
#[0 9 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 21 137 0 3 21 141 0 121] 
#[0 21 145 0 136] 
#[0 9 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 9 158 0 5 0 121] 
#[0 9 162 0 5 0 121] 
#[1 5 197 0 121 9 166 0 134 9 166 0 135] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 149 0 196 21 149 0 197 21 149 0 199 0 253 1 5 21 149 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 149 1 14 0 253 1 19 21 149 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 9 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 9 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 9 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 9 182 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 9 186 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 21 153 0 9] 
#[1 0 97 0 2 0 14 0 4 0 122 0 5 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 4 9 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 21 165 0 149 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 165 0 196 21 165 0 197 0 253 1 5 21 165 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 165 1 14 0 253 1 19 21 165 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 21 165 1 93 1 205 1 94 21 169 1 95 1 209 1 149 1 213 1 228] 
#[0 9 190 0 4 0 9 0 14 0 23 0 137] 
#[0 21 173 0 14] 
#[1 8 30 0 14 21 177 1 97] 
#[0 21 181 0 14] 
#[0 9 194 0 4 0 9 0 14 0 137] 
#[1 6 30 0 4 21 185 0 128 0 15 0 136 21 185 1 69 21 197 1 72 21 197 1 73 1 197 1 74 21 197 1 76 21 197 1 89 1 205 1 94 21 201 1 99] 
#[0 9 198 0 4 0 9 0 14 0 137] 
#[0 9 202 0 4 0 136 0 138] 
#[1 4 9 0 120 21 205 0 149] 
#[0 9 206 0 4 0 8 0 19] 
#[0 9 210 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 83 0 86 0 121 0 122 0 134 0 135 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 21 209 1 6 14 205 1 7 0 6 1 228] 
#[0 21 213 0 5] 
#[1 9 214 0 4 9 214 0 8 9 214 0 19 12 57 0 122 21 217 1 135] 
#[1 21 221 0 3 5 197 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 21 225 0 200 21 225 0 203 21 225 0 204 21 225 0 205 21 225 0 213 21 225 0 227 21 225 0 228 21 225 0 229 21 225 0 230 21 225 0 231 21 225 0 232 21 225 0 233 21 225 0 234 21 225 0 237 21 225 0 238 21 225 0 240 21 225 0 241 21 225 0 242 21 225 0 247 21 225 0 249 21 225 0 250 21 225 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 21 229 0 3 5 197 0 121] 
#[1 0 97 0 2 21 233 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 237 0 196 21 237 0 197 21 237 0 199 0 253 1 5 21 237 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 237 1 14 0 253 1 19 21 237 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 21 241 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 245 0 196 21 245 0 197 21 245 0 199 0 253 1 5 21 245 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 245 1 14 0 253 1 19 21 245 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 249 0 196 21 249 0 197 21 249 0 199 0 253 1 5 21 249 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 249 1 14 0 253 1 19 21 249 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 21 253 0 196 21 253 0 197 0 253 1 5 21 253 1 8 1 125 1 9 1 129 1 10 1 133 1 13 21 253 1 14 0 253 1 19 21 253 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 22 1 0 3 5 197 0 121] 
#[0 22 5 0 3] 
#[1 0 97 0 2 22 9 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 22 13 0 196 22 13 0 197 22 13 0 199 0 253 1 5 22 13 1 8 1 125 1 9 1 129 1 10 1 133 1 13 22 13 1 14 0 253 1 19 22 13 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 22 17 0 8 5 197 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 22 21 0 200 22 21 0 203 22 21 0 204 22 21 0 205 22 21 0 213 22 21 0 227 22 21 0 228 22 21 0 229 22 21 0 230 22 21 0 231 22 21 0 232 22 21 0 233 22 21 0 234 22 21 0 237 22 21 0 238 22 21 0 240 22 21 0 241 22 21 0 242 22 21 0 247 22 21 0 249 22 21 0 250 22 21 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 22 25 0 3 5 197 0 121] 
#[1 0 97 0 2 22 29 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 22 33 0 196 22 33 0 197 22 33 0 199 0 253 1 5 22 33 1 8 1 125 1 9 1 129 1 10 1 133 1 13 22 33 1 14 0 253 1 19 22 33 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 22 37 0 3 5 197 0 121] 
#[0 22 41 0 3] 
#[0 8 90 0 96] 
#[0 8 94 0 96] 
#[0 22 45 0 96] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 22 49 0 196 22 49 0 197 0 253 1 5 22 49 1 8 1 125 1 9 1 129 1 10 1 133 1 13 22 49 1 14 0 253 1 19 22 49 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 22 53 0 196 22 53 0 197 0 253 1 5 22 53 1 8 1 125 1 9 1 129 1 10 1 133 1 13 22 53 1 14 0 253 1 19 22 53 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 9 218 0 1 9 218 0 2 9 218 0 4 9 218 0 5 9 218 0 6 9 218 0 8 9 218 0 35 9 218 0 36 9 218 0 37 9 218 0 38 9 218 0 39 9 218 0 52 9 218 0 56 9 218 0 57 9 218 0 58 9 218 0 59 9 218 0 61 9 218 0 62 9 218 0 63 9 218 0 65 9 218 0 66 9 218 0 67 9 218 0 68 9 218 0 69 9 218 0 70 22 57 0 71 9 218 0 72 9 218 0 73 9 218 0 75 9 218 0 77 9 218 0 79 9 218 0 81 9 218 0 82 9 218 0 87 9 218 0 89 9 218 0 92 9 218 0 93 9 218 0 94 9 218 0 102 9 218 0 106 9 218 0 107 9 218 0 109 9 218 0 110 9 218 0 111 9 218 0 112 9 218 0 113 9 218 0 114 9 218 0 115 9 218 0 116 9 218 0 117 9 218 0 118 9 218 0 119 9 218 0 124 9 218 0 126 9 218 0 128 9 218 0 129 9 218 0 130 9 218 0 132 9 218 0 133 9 218 0 136 9 218 1 228 9 218 1 229] 
#[1 22 61 0 5 22 65 0 59 22 69 0 68 22 73 0 244 22 77 0 245 22 81 0 246] 
#[0 9 222 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 9 226 0 3 22 85 1 228] 
#[0 9 230 0 3] 
#[0 22 89 0 3] 
#[0 9 234 0 8 0 121] 
#[0 9 238 0 8 0 121] 
#[0 9 242 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 9 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 22 93 0 5 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 19 101 0 142 19 101 0 154 19 101 0 155 19 101 0 156 7 21 1 69 7 25 1 70 22 97 1 170 19 109 1 171 19 113 1 172] 
#[0 22 101 0 4] 
#[1 4 105 0 74 22 105 1 35 4 121 1 228] 
#[0 9 250 0 8 0 121] 
#[0 9 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 189 0 124 15 217 0 141 22 109 1 211] 
#[0 22 113 0 8] 
#[0 10 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 1 210 0 1 10 6 0 5 16 69 0 67 0 35 0 73 16 77 0 82 6 105 0 87 6 109 0 92 6 113 0 113 22 153 1 51 22 121 1 137 22 153 1 144 22 153 1 154 22 153 1 174 22 153 1 180 22 153 1 194 22 145 1 198 22 149 1 199 22 153 1 200 22 153 1 203 22 153 1 205 22 153 1 206 22 153 1 207 22 153 1 208] 
#[1 10 10 0 5 11 145 0 61 22 177 0 63 6 89 0 72 22 181 0 73 11 153 0 79 22 185 0 82 6 105 0 87 22 189 0 89 11 165 0 92 11 169 0 115 22 193 0 209 0 65 0 210 22 197 1 154 22 217 1 169 22 201 1 180 22 205 1 209 22 209 1 212 22 213 1 213 22 217 1 219 22 221 1 220 22 225 1 221 22 229 1 222 22 233 1 223] 
#[0 10 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 10 22 0 5 22 237 0 23 10 22 0 121] 
#[0 22 241 0 5] 
#[1 10 26 0 5 22 245 0 121] 
#[0 10 30 0 5 0 121] 
#[0 10 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 7 209 0 78 22 249 1 56] 
#[1 22 253 0 8 7 209 0 78 23 1 1 56] 
#[0 23 5 0 4] 
#[0 23 9 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 23 13 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 23 17 0 3] 
#[0 1 230 0 8 0 22] 
#[1 10 46 0 8 23 21 0 22] 
#[0 23 25 0 8] 
#[0 23 29 0 2] 
#[0 10 50 0 4] 
#[0 10 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 2 149 0 4 23 33 1 119] 
#[0 10 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 3 41 0 61 3 45 0 62 6 81 0 63 16 69 0 67 6 89 0 72 3 53 0 79 22 185 0 82 6 105 0 87 0 65 0 89 6 109 0 92 6 113 0 113 2 9 0 115 23 37 0 209 0 65 0 210 23 41 0 213 23 45 1 4 23 49 1 18 23 53 1 32 23 57 1 144 23 61 1 154 23 65 1 169 23 69 1 174 23 73 1 180 23 77 1 208 16 125 1 228] 
#[1 4 141 0 2 4 145 0 22 0 189 0 124 23 81 0 141] 
#[0 10 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 66 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 70 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 78 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 82 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 86 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 90 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 94 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 23 85 0 5] 
#[1 0 97 0 2 0 19 0 4 10 98 0 5 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 6 77 0 61 3 45 0 62 6 81 0 63 1 229 0 65 1 233 0 66 16 69 0 67 0 141 0 69 1 237 0 70 6 89 0 72 19 185 0 73 1 173 0 75 1 241 0 77 6 97 0 79 1 245 0 81 19 189 0 82 6 105 0 87 0 65 0 89 6 109 0 92 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 6 113 0 113 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 23 89 0 200 23 89 0 203 23 89 0 204 23 89 0 205 23 89 0 209 0 65 0 210 23 89 0 213 23 89 0 227 23 89 0 228 23 89 0 229 23 89 0 230 23 89 0 231 23 89 0 232 23 89 0 233 23 89 0 234 23 89 0 237 23 89 0 238 23 89 0 240 23 89 0 241 23 89 0 242 23 89 0 247 23 89 0 249 23 89 0 250 23 89 0 254 23 89 1 4 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 23 89 1 18 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 23 89 1 32 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 23 89 1 144 1 209 1 149 23 89 1 154 23 89 1 169 23 89 1 174 23 89 1 178 23 89 1 179 23 89 1 180 23 89 1 208 6 209 1 228] 
#[0 10 102 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 106 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 110 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 10 118 0 4 0 22] 
#[0 23 93 0 8] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 23 97 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 23 97 1 129 23 97 1 130 2 217 1 131 2 217 1 133] 
#[1 4 101 0 4 4 105 0 74 0 189 0 124 23 101 0 141 11 137 1 34 4 117 1 35 4 121 1 228] 
#[1 11 217 0 2 11 221 0 26 0 189 0 124 23 105 0 141] 
#[1 0 126 0 2 0 126 0 6 0 219 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 130 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 40 0 126 0 41 0 126 0 42 0 126 0 43 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 53 0 126 0 54 0 126 0 83 0 126 0 86 0 126 0 132 0 126 0 133 0 126 1 227 0 126 1 228] 
#[0 23 113 0 8] 
#[0 10 122 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 126 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 130 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 23 117 0 23 2 102 0 78 2 102 0 121] 
#[0 23 121 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 23 125 1 6 14 205 1 7 0 6 1 228] 
#[0 10 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 10 146 0 4 0 5 0 8 0 121] 
#[0 23 129 0 7] 
#[0 23 133 0 7] 
#[1 10 150 0 5 10 150 0 8 10 150 0 121 12 57 0 122 23 137 1 135] 
#[0 23 141 0 3] 
#[0 10 154 0 5 0 8 0 121] 
#[1 10 158 0 4 10 158 0 5 10 158 0 8 10 158 0 121 12 57 0 122 23 145 1 135] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 23 149 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 23 149 1 129 23 149 1 130 2 217 1 131 2 217 1 133] 
#[0 23 153 0 19] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 23 157 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 23 157 1 129 23 157 1 130 2 217 1 131 2 217 1 133] 
#[0 10 162 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 23 161 0 4 23 165 1 228] 
#[0 23 169 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 23 173 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 23 177 0 3] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 23 181 1 6 14 205 1 7 0 6 1 228] 
#[0 23 185 0 4] 
#[0 23 189 0 3] 
#[0 23 193 0 4] 
#[1 8 78 0 4 8 202 0 8 12 57 0 122 23 197 1 135] 
#[0 10 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 23 201 1 6 14 205 1 7 0 6 1 228] 
#[0 23 205 0 3] 
#[0 23 209 0 5] 
#[1 4 101 0 4 4 105 0 74 23 213 1 34 4 117 1 35 4 121 1 228] 
#[0 10 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 2 157 0 11 23 217 1 100] 
#[1 4 101 0 4 4 105 0 74 23 221 1 34 4 117 1 35 4 121 1 228] 
#[1 4 101 0 4 4 105 0 74 23 225 1 34 4 117 1 35 4 121 1 228] 
#[0 10 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 101 0 4 4 105 0 74 0 189 0 124 23 229 0 141 23 233 1 34 4 117 1 35 4 121 1 228] 
#[1 0 189 0 124 23 237 0 141 23 237 1 60] 
#[0 10 178 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 10 182 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 23 241 0 7] 
#[0 10 186 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 10 190 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 63 0 65 0 66 0 69 0 70 0 73 0 75 0 77 0 79 0 81 0 82 0 89 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 10 194 0 3 0 5 0 7 0 121] 
#[0 10 198 0 3 0 5 0 7 0 121] 
#[1 10 202 0 3 10 202 0 5 10 202 0 7 10 202 0 121 12 57 0 122 23 245 1 135] 
#[0 10 206 0 3 0 5 0 7 0 121] 
#[1 10 210 0 3 10 210 0 5 10 210 0 7 8 105 0 23 10 210 0 121 23 249 0 158] 
#[0 10 214 0 3 0 5 0 7 0 121] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 23 253 1 30 0 6 1 228] 
#[1 12 57 0 122 24 1 1 135] 
#[0 24 5 0 4] 
#[0 24 9 0 3] 
#[1 24 13 0 4 24 17 1 228] 
#[0 10 218 0 3 0 5 0 7 0 8 0 121 0 122 0 134 0 135 1 229] 
#[0 24 21 0 3] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 24 25 0 255 3 241 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 24 29 0 3] 
#[0 24 33 0 4] 
#[0 10 222 0 3] 
#[0 24 37 0 3] 
#[0 10 226 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 24 41 0 4] 
#[0 24 45 0 3] 
#[1 3 153 0 4 3 157 0 6 0 189 0 124 24 49 0 141 24 53 0 216 24 53 0 217 24 53 0 218 24 57 0 224 24 57 0 225 24 57 1 3 24 57 1 17 24 61 1 140 24 65 1 148 6 233 1 228] 
#[1 24 69 0 4 24 73 0 8] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 77 1 6 14 205 1 7 0 6 1 228] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 24 81 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 24 85 0 4 24 89 0 8] 
#[1 6 237 0 2 9 118 0 8 2 157 0 11 8 105 0 23 24 93 0 43 12 57 0 122 21 73 0 158 7 29 1 100 24 97 1 135 24 101 1 136 24 105 1 165] 
#[0 10 230 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 10 234 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 9 118 0 8 8 105 0 23 12 57 0 122 21 73 0 158 24 109 1 135 24 113 1 165] 
#[0 10 238 0 8] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 24 117 1 165] 
#[1 24 121 0 4 24 125 0 8] 
#[0 24 129 0 8] 
#[1 21 49 0 2 24 133 1 162] 
#[1 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 24 137 0 142 24 137 0 154 24 137 0 155 24 137 0 156 7 21 1 69 7 25 1 70 24 141 1 146 24 145 1 147 18 17 1 228] 
#[1 6 237 0 2 9 118 0 8 2 157 0 11 8 105 0 23 24 149 0 43 12 57 0 122 21 73 0 158 7 29 1 100 24 153 1 135 24 157 1 136 24 161 1 165] 
#[0 10 242 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 10 246 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 10 250 0 4 0 121] 
#[0 24 165 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 169 1 6 14 205 1 7 24 173 1 21 0 6 1 228] 
#[0 24 177 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 181 1 6 14 205 1 7 0 6 1 228] 
#[0 10 254 0 3 0 121] 
#[0 11 2 0 14 0 121] 
#[0 11 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 61 0 62 0 64 0 73 0 83 0 86 0 96 0 97 0 98 0 99 0 100 0 104 0 109 0 121 0 122 0 124 0 125 0 128 0 129 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 18 53 0 120 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 18 57 0 196 18 57 0 197 0 253 1 5 18 57 1 8 1 125 1 9 1 129 1 10 1 133 1 13 18 57 1 14 0 253 1 19 18 57 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 24 185 0 9] 
#[1 5 197 0 121 11 10 0 134 11 10 0 135] 
#[1 11 14 0 14 10 193 0 137 24 189 1 77 24 189 1 78 24 189 1 79 10 209 1 80 10 213 1 81 24 193 1 98] 
#[0 11 18 0 5] 
#[0 11 22 0 5] 
#[1 0 122 0 5 24 197 1 95] 
#[0 24 201 0 5] 
#[0 11 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 227 1 228 1 229] 
#[0 24 205 0 14] 
#[0 11 30 0 4 0 136 0 138] 
#[0 11 34 0 4 0 9 0 14 0 137] 
#[0 11 38 0 4 0 9 0 14 0 137] 
#[0 11 42 0 4 0 9 0 14 0 137] 
#[0 11 46 0 4 0 9 0 14 0 137] 
#[0 24 209 0 4] 
#[1 0 22 0 5 24 213 1 94] 
#[0 24 217 0 5] 
#[0 11 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 11 54 0 4 0 8 0 19] 
#[0 24 221 0 8] 
#[0 11 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 24 225 0 200 24 225 0 203 24 225 0 204 24 225 0 205 24 225 0 213 24 225 0 227 24 225 0 228 24 225 0 229 24 225 0 230 24 225 0 231 24 225 0 232 24 225 0 233 24 225 0 234 24 225 0 237 24 225 0 238 24 225 0 240 24 225 0 241 24 225 0 242 24 225 0 247 24 225 0 249 24 225 0 250 24 225 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 24 229 0 200 24 229 0 203 24 229 0 204 24 229 0 205 24 229 0 213 24 229 0 227 24 229 0 228 24 229 0 229 24 229 0 230 24 229 0 231 24 229 0 232 24 229 0 233 24 229 0 234 24 229 0 237 24 229 0 238 24 229 0 240 24 229 0 241 24 229 0 242 24 229 0 247 24 229 0 249 24 229 0 250 24 229 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 24 233 0 3 5 197 0 121] 
#[1 0 97 0 2 24 237 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 24 241 0 196 24 241 0 197 24 241 0 199 0 253 1 5 24 241 1 8 1 125 1 9 1 129 1 10 1 133 1 13 24 241 1 14 0 253 1 19 24 241 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 24 245 0 8 5 197 0 121] 
#[1 24 249 0 3 5 197 0 121] 
#[0 24 253 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 1 0 200 25 1 0 203 25 1 0 204 25 1 0 205 25 1 0 213 25 1 0 227 25 1 0 228 25 1 0 229 25 1 0 230 25 1 0 231 25 1 0 232 25 1 0 233 25 1 0 234 25 1 0 237 25 1 0 238 25 1 0 240 25 1 0 241 25 1 0 242 25 1 0 247 25 1 0 249 25 1 0 250 25 1 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 5 0 200 25 5 0 203 25 5 0 204 25 5 0 205 25 5 0 213 25 5 0 227 25 5 0 228 25 5 0 229 25 5 0 230 25 5 0 231 25 5 0 232 25 5 0 233 25 5 0 234 25 5 0 237 25 5 0 238 25 5 0 240 25 5 0 241 25 5 0 242 25 5 0 247 25 5 0 249 25 5 0 250 25 5 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 9 0 200 25 9 0 203 25 9 0 204 25 9 0 205 25 9 0 213 25 9 0 227 25 9 0 228 25 9 0 229 25 9 0 230 25 9 0 231 25 9 0 232 25 9 0 233 25 9 0 234 25 9 0 237 25 9 0 238 25 9 0 240 25 9 0 241 25 9 0 242 25 9 0 247 25 9 0 249 25 9 0 250 25 9 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 25 13 0 3 5 197 0 121] 
#[1 0 97 0 2 25 17 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 25 21 0 196 25 21 0 197 25 21 0 199 0 253 1 5 25 21 1 8 1 125 1 9 1 129 1 10 1 133 1 13 25 21 1 14 0 253 1 19 25 21 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 11 62 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 25 0 200 25 25 0 203 25 25 0 204 25 25 0 205 25 25 0 213 25 25 0 227 25 25 0 228 25 25 0 229 25 25 0 230 25 25 0 231 25 25 0 232 25 25 0 233 25 25 0 234 25 25 0 237 25 25 0 238 25 25 0 240 25 25 0 241 25 25 0 242 25 25 0 247 25 25 0 249 25 25 0 250 25 25 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 29 0 200 25 29 0 203 25 29 0 204 25 29 0 205 25 29 0 213 25 29 0 227 25 29 0 228 25 29 0 229 25 29 0 230 25 29 0 231 25 29 0 232 25 29 0 233 25 29 0 234 25 29 0 237 25 29 0 238 25 29 0 240 25 29 0 241 25 29 0 242 25 29 0 247 25 29 0 249 25 29 0 250 25 29 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 25 33 0 3 5 197 0 121] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 37 0 200 25 37 0 203 25 37 0 204 25 37 0 205 25 37 0 213 25 37 0 227 25 37 0 228 25 37 0 229 25 37 0 230 25 37 0 231 25 37 0 232 25 37 0 233 25 37 0 234 25 37 0 237 25 37 0 238 25 37 0 240 25 37 0 241 25 37 0 242 25 37 0 247 25 37 0 249 25 37 0 250 25 37 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 41 0 200 25 41 0 203 25 41 0 204 25 41 0 205 25 41 0 213 25 41 0 227 25 41 0 228 25 41 0 229 25 41 0 230 25 41 0 231 25 41 0 232 25 41 0 233 25 41 0 234 25 41 0 237 25 41 0 238 25 41 0 240 25 41 0 241 25 41 0 242 25 41 0 247 25 41 0 249 25 41 0 250 25 41 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 25 45 0 196 25 45 0 197 0 253 1 5 25 45 1 8 1 125 1 9 1 129 1 10 1 133 1 13 25 45 1 14 0 253 1 19 25 45 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 25 49 0 3] 
#[0 25 53 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 25 57 0 200 25 57 0 203 25 57 0 204 25 57 0 205 25 57 0 213 25 57 0 227 25 57 0 228 25 57 0 229 25 57 0 230 25 57 0 231 25 57 0 232 25 57 0 233 25 57 0 234 25 57 0 237 25 57 0 238 25 57 0 240 25 57 0 241 25 57 0 242 25 57 0 247 25 57 0 249 25 57 0 250 25 57 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 11 66 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 25 61 0 196 25 61 0 197 25 61 0 199 0 253 1 5 25 61 1 8 1 125 1 9 1 129 1 10 1 133 1 13 25 61 1 14 0 253 1 19 25 61 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 25 65 0 122] 
#[1 25 69 0 5 22 65 0 59 22 69 0 68 25 73 0 245 25 77 0 246] 
#[0 11 70 0 5 0 59 0 68] 
#[1 25 81 0 5 22 65 0 59 25 85 0 244 22 77 0 245] 
#[1 12 57 0 122 25 89 1 135] 
#[1 1 217 0 4 25 93 0 205] 
#[0 11 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 25 97 0 5] 
#[1 11 78 0 5 6 245 0 6 25 101 0 64 25 113 0 97 25 113 0 98 25 113 0 99 25 113 0 100 25 105 0 104 7 1 0 125 7 21 0 128 7 25 0 129 25 109 0 142 25 109 0 154 25 109 0 155 25 109 0 156 7 21 1 69 7 25 1 70 25 113 1 139 25 129 1 142 25 121 1 214 25 125 1 215 25 129 1 216 25 129 1 217 25 129 1 218] 
#[0 25 141 0 4] 
#[0 11 82 0 8 0 121] 
#[0 11 86 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 11 90 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[1 7 221 0 1 25 145 0 73 11 253 1 225] 
#[0 11 94 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 98 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 102 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 106 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 110 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 25 149 0 5] 
#[1 1 210 0 1 11 114 0 5 16 69 0 67 0 35 0 73 16 77 0 82 6 105 0 87 6 109 0 92 6 113 0 113 25 153 1 51 22 121 1 137 25 153 1 144 25 153 1 154 25 153 1 174 25 153 1 180 25 153 1 194 25 153 1 200 25 153 1 203 25 153 1 205 25 153 1 206 25 153 1 207 25 153 1 208] 
#[0 11 118 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 122 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 126 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 130 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 134 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 11 138 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[1 0 34 0 4 0 34 0 6 11 141 0 72 0 223 0 124 15 217 0 141 15 221 1 210 15 225 1 211 0 34 1 228] 
#[1 11 145 0 61 22 177 0 63 6 89 0 72 11 153 0 79 22 185 0 82 6 105 0 87 22 189 0 89 11 165 0 92 11 169 0 115 25 157 0 209 0 65 0 210 25 161 1 154 25 181 1 169 25 165 1 180 25 169 1 209 25 173 1 212 25 177 1 213 25 181 1 219 25 185 1 220] 
#[1 0 189 0 124 23 81 0 141] 
#[1 0 38 0 4 0 38 0 6 0 227 0 124 15 217 0 141 15 233 1 210 15 225 1 211 0 38 1 228] 
#[0 11 142 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 146 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 150 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 154 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 158 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 162 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 166 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 11 170 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 25 189 0 5] 
#[1 11 174 0 5 11 145 0 61 22 177 0 63 6 89 0 72 22 181 0 73 11 153 0 79 22 185 0 82 6 105 0 87 22 189 0 89 11 165 0 92 11 169 0 115 22 193 0 209 0 65 0 210 22 197 1 154 22 217 1 169 22 201 1 180 22 205 1 209 22 209 1 212 22 213 1 213 22 217 1 219 22 221 1 220 25 193 1 223] 
#[0 11 178 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 25 201 0 196 25 201 0 197 0 253 1 5 25 201 1 8 1 125 1 9 1 129 1 10 1 133 1 13 25 201 1 14 0 253 1 19 25 201 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 25 201 1 173 1 213 1 228] 
#[0 11 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 11 186 0 5 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 19 101 0 142 19 101 0 154 19 101 0 155 19 101 0 156 7 21 1 69 7 25 1 70 25 205 1 172] 
#[0 25 209 0 8] 
#[0 11 190 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 25 213 0 8] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 25 217 1 6 14 205 1 7 0 6 1 228] 
#[0 25 221 0 4] 
#[0 25 225 0 3] 
#[0 25 229 0 4] 
#[1 0 189 0 124 25 233 0 141] 
#[0 11 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 25 237 0 128 1 69] 
#[0 11 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 11 202 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 206 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 210 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 214 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 218 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 222 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 226 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 230 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 234 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 238 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 242 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 23 117 0 23] 
#[0 11 246 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 11 250 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228] 
#[0 11 254 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 25 241 0 8] 
#[1 4 101 0 4 2 157 0 11 4 105 0 74 15 205 1 34 25 245 1 35 19 61 1 100 4 121 1 228] 
#[1 25 249 0 2 2 157 0 11 7 29 1 100 19 77 1 136] 
#[0 12 2 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 6 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 189 0 124 19 153 0 141 19 157 1 118 19 161 1 181] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 25 253 1 6 14 205 1 7 0 6 1 228] 
#[0 26 1 0 5] 
#[1 12 57 0 122 26 5 1 135] 
#[1 12 57 0 122 26 9 1 135] 
#[0 12 10 0 5 0 8 0 121] 
#[1 12 14 0 5 12 14 0 8 12 14 0 121 12 57 0 122 26 13 1 135] 
#[0 12 18 0 4 0 5 0 8 0 121] 
#[0 12 22 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 2 145 0 2 2 149 0 4 2 153 0 6 2 157 0 11 2 161 0 84 2 165 0 88 2 169 0 93 2 173 0 109 2 177 0 114 2 181 0 116 0 189 0 124 2 189 0 128 2 193 0 129 2 185 0 141 2 189 1 69 2 193 1 70 2 197 1 100 26 17 1 107 2 205 1 108 2 209 1 109 2 209 1 110 2 217 1 111 2 217 1 112 2 217 1 113 2 217 1 114 2 217 1 115 2 217 1 116 2 241 1 117 2 245 1 118 2 217 1 119 2 217 1 123 2 217 1 124 2 205 1 127 2 209 1 128 26 17 1 129 26 17 1 130 2 217 1 131 2 217 1 133] 
#[0 12 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 26 21 1 30 0 6 1 228] 
#[1 12 57 0 122 26 25 1 135] 
#[0 26 29 0 4] 
#[0 26 33 0 3] 
#[1 26 37 0 4 26 41 1 228] 
#[0 26 45 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 169 1 6 14 205 1 7 26 49 1 21 0 6 1 228] 
#[0 26 53 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 57 1 6 14 205 1 7 0 6 1 228] 
#[1 9 206 0 4 10 146 0 8] 
#[0 26 61 0 5] 
#[1 9 214 0 4 10 158 0 8 12 57 0 122 26 65 1 135] 
#[0 12 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 34 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 101 0 4 4 105 0 74 26 69 1 34 4 117 1 35 4 121 1 228] 
#[0 12 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 4 101 0 4 4 105 0 74 26 73 1 34 4 117 1 35 4 121 1 228] 
#[0 12 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 50 0 5 0 121] 
#[0 12 54 0 3 0 5 0 7 0 23 0 43 0 83 0 96 0 121 0 122] 
#[0 12 58 0 3 0 5 0 7 0 121] 
#[0 12 62 0 3 0 5 0 7 0 121] 
#[0 26 77 0 5] 
#[0 26 81 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 85 1 6 14 205 1 7 26 89 1 26 0 6 1 228] 
#[0 26 93 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 26 97 1 30 0 6 1 228] 
#[1 12 57 0 122 26 101 1 135] 
#[0 26 105 0 4] 
#[0 26 109 0 3] 
#[1 26 113 0 4 26 117 1 228] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 121 1 6 14 205 1 7 0 6 1 228] 
#[0 26 125 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 129 1 6 14 205 1 7 0 6 1 228] 
#[1 12 57 0 122 26 133 1 135] 
#[1 2 158 0 3 8 105 0 23 12 66 0 122 8 157 0 158] 
#[1 2 162 0 3 8 105 0 23 12 70 0 122 8 165 0 158] 
#[0 26 137 0 3] 
#[1 12 57 0 122 26 141 1 135] 
#[0 26 145 0 3] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 149 1 6 14 205 1 7 0 6 1 228] 
#[0 12 74 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 26 153 0 5] 
#[0 26 157 0 3] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 161 1 6 14 205 1 7 0 6 1 228] 
#[0 12 78 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 9 118 0 8 8 105 0 23 12 57 0 122 21 73 0 158 26 165 1 135 26 169 1 165] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 26 173 1 165] 
#[1 26 177 0 4 26 181 0 8] 
#[0 26 185 0 8] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 26 189 1 165] 
#[0 26 193 0 8] 
#[0 26 197 0 8] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 201 1 6 14 205 1 7 0 6 1 228] 
#[0 12 82 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 12 86 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 26 205 0 4 26 209 0 8] 
#[1 6 237 0 2 9 118 0 8 2 157 0 11 8 105 0 23 26 213 0 43 12 57 0 122 21 73 0 158 7 29 1 100 26 217 1 135 26 221 1 136 26 225 1 165] 
#[0 12 90 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 12 94 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 9 118 0 8 8 105 0 23 12 57 0 122 21 73 0 158 26 229 1 135 26 233 1 165] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 26 237 1 165] 
#[1 26 241 0 4 26 245 0 8] 
#[0 26 249 0 8] 
#[0 12 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 12 102 0 5] 
#[0 26 253 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 169 1 6 14 205 1 7 27 1 1 21 0 6 1 228] 
#[0 27 5 0 5] 
#[1 11 14 0 14 27 9 1 98] 
#[1 11 14 0 14 27 13 1 98] 
#[0 27 17 0 14] 
#[0 27 21 0 5] 
#[0 12 106 0 4 0 136 0 138] 
#[0 12 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 227 1 228 1 229] 
#[1 0 97 0 2 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 27 25 0 196 27 25 0 197 0 253 1 5 27 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 27 25 1 14 0 253 1 19 27 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 27 29 0 5] 
#[0 12 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 12 118 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 122 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 33 0 200 27 33 0 203 27 33 0 204 27 33 0 205 27 33 0 213 27 33 0 227 27 33 0 228 27 33 0 229 27 33 0 230 27 33 0 231 27 33 0 232 27 33 0 233 27 33 0 234 27 33 0 237 27 33 0 238 27 33 0 240 27 33 0 241 27 33 0 242 27 33 0 247 27 33 0 249 27 33 0 250 27 33 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 37 0 200 27 37 0 203 27 37 0 204 27 37 0 205 27 37 0 213 27 37 0 227 27 37 0 228 27 37 0 229 27 37 0 230 27 37 0 231 27 37 0 232 27 37 0 233 27 37 0 234 27 37 0 237 27 37 0 238 27 37 0 240 27 37 0 241 27 37 0 242 27 37 0 247 27 37 0 249 27 37 0 250 27 37 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 27 41 0 3 5 197 0 121] 
#[1 0 97 0 2 27 45 0 3 0 14 0 4 0 101 0 6 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 0 137 0 61 0 141 0 69 1 173 0 75 0 149 0 79 0 153 0 82 0 157 0 93 1 169 0 94 0 165 0 106 0 169 0 109 1 173 0 111 0 177 0 114 0 181 0 116 0 185 0 119 0 189 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 27 49 0 196 27 49 0 197 27 49 0 199 0 253 1 5 27 49 1 8 1 125 1 9 1 129 1 10 1 133 1 13 27 49 1 14 0 253 1 19 27 49 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 53 0 200 27 53 0 203 27 53 0 204 27 53 0 205 27 53 0 213 27 53 0 227 27 53 0 228 27 53 0 229 27 53 0 230 27 53 0 231 27 53 0 232 27 53 0 233 27 53 0 234 27 53 0 237 27 53 0 238 27 53 0 240 27 53 0 241 27 53 0 242 27 53 0 247 27 53 0 249 27 53 0 250 27 53 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 57 0 200 27 57 0 203 27 57 0 204 27 57 0 205 27 57 0 213 27 57 0 227 27 57 0 228 27 57 0 229 27 57 0 230 27 57 0 231 27 57 0 232 27 57 0 233 27 57 0 234 27 57 0 237 27 57 0 238 27 57 0 240 27 57 0 241 27 57 0 242 27 57 0 247 27 57 0 249 27 57 0 250 27 57 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 12 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 61 0 200 27 61 0 203 27 61 0 204 27 61 0 205 27 61 0 213 27 61 0 227 27 61 0 228 27 61 0 229 27 61 0 230 27 61 0 231 27 61 0 232 27 61 0 233 27 61 0 234 27 61 0 237 27 61 0 238 27 61 0 240 27 61 0 241 27 61 0 242 27 61 0 247 27 61 0 249 27 61 0 250 27 61 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 65 0 200 27 65 0 203 27 65 0 204 27 65 0 205 27 65 0 213 27 65 0 227 27 65 0 228 27 65 0 229 27 65 0 230 27 65 0 231 27 65 0 232 27 65 0 233 27 65 0 234 27 65 0 237 27 65 0 238 27 65 0 240 27 65 0 241 27 65 0 242 27 65 0 247 27 65 0 249 27 65 0 250 27 65 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 27 69 0 3 5 197 0 121] 
#[0 12 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 73 0 200 27 73 0 203 27 73 0 204 27 73 0 205 27 73 0 213 27 73 0 227 27 73 0 228 27 73 0 229 27 73 0 230 27 73 0 231 27 73 0 232 27 73 0 233 27 73 0 234 27 73 0 237 27 73 0 238 27 73 0 240 27 73 0 241 27 73 0 242 27 73 0 247 27 73 0 249 27 73 0 250 27 73 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 12 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 27 77 0 3] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 81 0 200 27 81 0 203 27 81 0 204 27 81 0 205 27 81 0 213 27 81 0 227 27 81 0 228 27 81 0 229 27 81 0 230 27 81 0 231 27 81 0 232 27 81 0 233 27 81 0 234 27 81 0 237 27 81 0 238 27 81 0 240 27 81 0 241 27 81 0 242 27 81 0 247 27 81 0 249 27 81 0 250 27 81 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 27 85 0 200 27 85 0 203 27 85 0 204 27 85 0 205 27 85 0 213 27 85 0 227 27 85 0 228 27 85 0 229 27 85 0 230 27 85 0 231 27 85 0 232 27 85 0 233 27 85 0 234 27 85 0 237 27 85 0 238 27 85 0 240 27 85 0 241 27 85 0 242 27 85 0 247 27 85 0 249 27 85 0 250 27 85 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 12 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 5 197 0 121 27 89 0 122] 
#[1 0 6 0 2 0 6 0 4 12 162 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 12 162 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 27 93 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 0 6 1 228] 
#[0 12 166 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 170 0 5 0 59 0 68] 
#[1 27 97 0 5 22 65 0 59 27 101 0 244 22 77 0 245] 
#[0 12 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 27 105 0 5 22 65 0 59 25 73 0 245] 
#[0 12 178 0 3] 
#[0 12 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 186 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 27 109 0 2] 
#[1 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 27 113 0 142 27 113 0 154 27 113 0 155 27 113 0 156 7 21 1 69 7 25 1 70] 
#[1 6 237 0 2 27 117 0 8 2 157 0 11 12 57 0 122 7 29 1 100 27 121 1 135 27 125 1 136] 
#[1 8 45 0 6 27 129 0 64 27 133 0 104 7 1 0 125 7 21 0 128 7 25 0 129 27 137 0 142 27 137 0 154 27 137 0 155 27 137 0 156 7 21 1 69 7 25 1 70] 
#[0 12 190 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 27 141 0 5] 
#[1 12 194 0 5 6 245 0 6 25 101 0 64 25 113 0 97 25 113 0 98 25 113 0 99 25 113 0 100 25 105 0 104 7 1 0 125 7 21 0 128 7 25 0 129 25 109 0 142 25 109 0 154 25 109 0 155 25 109 0 156 7 21 1 69 7 25 1 70 25 113 1 139 27 145 1 142 27 145 1 216 27 145 1 217 27 145 1 218] 
#[0 12 198 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 12 202 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 12 206 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 11 78 0 5 6 245 0 6 25 101 0 64 25 113 0 97 25 113 0 98 25 113 0 99 25 113 0 100 25 105 0 104 7 1 0 125 7 21 0 128 7 25 0 129 25 109 0 142 25 109 0 154 25 109 0 155 25 109 0 156 7 21 1 69 7 25 1 70 25 113 1 139 25 129 1 142 27 149 1 214 25 125 1 215 25 129 1 216 25 129 1 217 25 129 1 218] 
#[1 16 69 0 67 27 153 0 68 22 185 0 82 6 105 0 87 6 113 0 113 27 157 1 144 27 161 1 154 16 117 1 180 27 165 1 208] 
#[0 12 210 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 214 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 12 218 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 222 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 226 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 230 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 234 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 238 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 242 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 246 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 12 250 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 12 254 0 5 0 61 0 63 0 72 0 73 0 79 0 82 0 87 0 89 0 92 0 115] 
#[0 13 2 0 5 0 121] 
#[0 13 6 0 5 0 121] 
#[0 13 10 0 5 0 121] 
#[0 13 14 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 27 169 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 169 1 6 14 205 1 7 27 173 1 21 0 6 1 228] 
#[0 27 177 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 27 181 1 6 14 205 1 7 0 6 1 228] 
#[0 6 206 0 8 0 22] 
#[0 27 185 0 3] 
#[0 13 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 27 189 0 4] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 27 193 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[0 27 197 0 5] 
#[1 12 30 0 1 0 231 0 2 12 30 0 4 12 30 0 5 0 231 0 6 0 231 0 8 11 50 0 9 11 50 0 10 11 50 0 11 11 50 0 12 11 50 0 13 11 50 0 14 11 50 0 15 11 50 0 16 11 50 0 17 11 50 0 18 11 50 0 20 11 50 0 21 11 50 0 22 11 50 0 23 11 50 0 24 11 50 0 25 11 50 0 26 11 50 0 27 11 50 0 28 11 50 0 29 11 50 0 30 11 50 0 31 11 50 0 32 11 50 0 33 11 50 0 34 0 231 0 35 0 231 0 36 0 231 0 37 0 231 0 38 12 30 0 39 11 50 0 40 11 50 0 41 11 50 0 42 11 50 0 43 11 50 0 44 11 50 0 45 11 50 0 46 11 50 0 47 11 50 0 48 11 50 0 49 11 50 0 50 11 50 0 51 12 30 0 52 11 50 0 53 11 50 0 54 12 30 0 56 12 30 0 57 12 30 0 58 12 30 0 61 12 30 0 62 12 30 0 63 12 30 0 65 12 30 0 66 12 30 0 67 12 30 0 69 12 30 0 70 12 30 0 72 12 30 0 73 12 30 0 75 12 30 0 77 12 30 0 79 12 30 0 81 12 30 0 82 11 50 0 83 11 50 0 86 12 30 0 87 12 30 0 89 12 30 0 92 12 30 0 93 12 30 0 94 12 30 0 102 12 30 0 106 12 30 0 107 12 30 0 109 12 30 0 110 12 30 0 111 12 30 0 112 12 30 0 113 12 30 0 114 12 30 0 115 12 30 0 116 12 30 0 117 12 30 0 118 12 30 0 119 11 50 0 121 12 30 0 124 12 30 0 126 12 30 0 128 12 30 0 129 12 30 0 130 0 231 0 132 0 231 0 133 12 30 0 136 11 50 1 227 0 231 1 228 12 30 1 229] 
#[0 13 26 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 13 30 0 5 0 6 0 8 0 64 0 97 0 98 0 99 0 100 0 104 0 121 0 125 0 128 0 129] 
#[0 13 34 0 5 0 8 0 121] 
#[0 13 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 43 0 45 0 47 0 48 0 49 0 51 0 53 0 54 0 64 0 83 0 86 0 97 0 98 0 99 0 100 0 104 0 121 0 122 0 125 0 128 0 129 0 134 0 135 1 228 1 229] 
#[0 27 201 0 5] 
#[0 27 205 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 85 1 6 14 205 1 7 27 209 1 26 0 6 1 228] 
#[0 27 213 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 27 217 1 30 0 6 1 228] 
#[1 12 57 0 122 27 221 1 135] 
#[0 13 42 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 27 225 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 169 1 6 14 205 1 7 27 229 1 21 0 6 1 228] 
#[0 27 233 0 5] 
#[0 13 46 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 11 54 0 4 12 18 0 8] 
#[0 13 50 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 54 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 27 237 1 30 0 6 1 228] 
#[0 13 62 0 5] 
#[0 27 241 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 85 1 6 14 205 1 7 27 245 1 26 0 6 1 228] 
#[0 27 249 0 5] 
#[0 27 253 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 169 1 6 14 205 1 7 28 1 1 21 0 6 1 228] 
#[0 28 5 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 28 9 1 30 0 6 1 228] 
#[1 12 57 0 122 28 13 1 135] 
#[0 28 17 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 28 21 1 6 14 205 1 7 0 6 1 228] 
#[0 28 25 0 5] 
#[0 28 29 0 4] 
#[1 12 57 0 122 28 33 1 135] 
#[0 13 66 0 3] 
#[1 28 37 0 4 12 57 0 122 28 41 1 135] 
#[0 28 45 0 5] 
#[0 13 70 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[1 13 74 0 4 13 74 0 8 12 57 0 122 28 49 1 135] 
#[0 28 53 0 5] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 28 57 1 165] 
#[0 28 61 0 8] 
#[0 28 65 0 8] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 28 69 1 6 14 205 1 7 0 6 1 228] 
#[0 13 78 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 82 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 28 73 0 8] 
#[0 13 86 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 90 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 28 77 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 28 81 1 6 14 205 1 7 0 6 1 228] 
#[0 13 94 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[1 9 118 0 8 8 105 0 23 12 57 0 122 21 73 0 158 28 85 1 135 28 89 1 165] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 28 93 1 165] 
#[1 28 97 0 4 28 101 0 8] 
#[0 28 105 0 8] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 28 109 1 165] 
#[0 28 113 0 8] 
#[0 28 117 0 8] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 28 121 1 6 14 205 1 7 0 6 1 228] 
#[0 13 98 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 102 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 28 125 0 5] 
#[0 13 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 28 129 0 14] 
#[0 28 133 0 14] 
#[0 13 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 227 1 228 1 229] 
#[0 13 118 0 4 0 136 0 138] 
#[1 0 22 0 5 28 137 1 94] 
#[0 13 122 0 4 0 9 0 14 0 137] 
#[0 13 126 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 28 141 0 200 28 141 0 203 28 141 0 204 28 141 0 205 28 141 0 213 28 141 0 227 28 141 0 228 28 141 0 229 28 141 0 230 28 141 0 231 28 141 0 232 28 141 0 233 28 141 0 234 28 141 0 237 28 141 0 238 28 141 0 240 28 141 0 241 28 141 0 242 28 141 0 247 28 141 0 249 28 141 0 250 28 141 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 28 145 0 200 28 145 0 203 28 145 0 204 28 145 0 205 28 145 0 213 28 145 0 227 28 145 0 228 28 145 0 229 28 145 0 230 28 145 0 231 28 145 0 232 28 145 0 233 28 145 0 234 28 145 0 237 28 145 0 238 28 145 0 240 28 145 0 241 28 145 0 242 28 145 0 247 28 145 0 249 28 145 0 250 28 145 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[1 28 149 0 3 5 197 0 121] 
#[0 13 134 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 138 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 142 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 146 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 28 153 0 200 28 153 0 203 28 153 0 204 28 153 0 205 28 153 0 213 28 153 0 227 28 153 0 228 28 153 0 229 28 153 0 230 28 153 0 231 28 153 0 232 28 153 0 233 28 153 0 234 28 153 0 237 28 153 0 238 28 153 0 240 28 153 0 241 28 153 0 242 28 153 0 247 28 153 0 249 28 153 0 250 28 153 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 13 150 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 28 157 0 200 28 157 0 203 28 157 0 204 28 157 0 205 28 157 0 213 28 157 0 227 28 157 0 228 28 157 0 229 28 157 0 230 28 157 0 231 28 157 0 232 28 157 0 233 28 157 0 234 28 157 0 237 28 157 0 238 28 157 0 240 28 157 0 241 28 157 0 242 28 157 0 247 28 157 0 249 28 157 0 250 28 157 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 13 154 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 158 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 13 162 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 162 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 13 162 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 28 161 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 0 6 1 228] 
#[1 0 6 0 2 0 6 0 4 13 166 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 13 166 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 73 0 207 0 57 0 208 6 73 0 209 0 65 0 210 0 6 1 228] 
#[0 13 170 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 28 165 0 5 22 65 0 59 25 73 0 245] 
#[0 13 174 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 28 169 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 6 237 0 2 28 173 0 8 2 157 0 11 12 57 0 122 7 29 1 100 28 177 1 135 28 181 1 136] 
#[0 13 178 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 28 185 0 8] 
#[0 28 189 0 8] 
#[0 28 193 0 2] 
#[1 8 45 0 6 7 1 0 125 7 21 0 128 7 25 0 129 28 197 0 142 28 197 0 154 28 197 0 155 28 197 0 156 7 21 1 69 7 25 1 70] 
#[1 6 237 0 2 28 201 0 8 2 157 0 11 12 57 0 122 7 29 1 100 28 205 1 135 28 209 1 136] 
#[0 13 182 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 13 186 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 28 213 0 5] 
#[1 11 145 0 61 11 153 0 79 0 189 0 124 28 217 0 141 20 37 1 212 20 41 1 213] 
#[0 8 166 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 8 178 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[0 8 198 0 1 0 5 0 67 0 73 0 82 0 87 0 92 0 113] 
#[1 13 42 0 1 0 235 0 2 13 42 0 4 13 42 0 5 0 235 0 6 0 235 0 8 12 98 0 9 12 98 0 10 12 98 0 11 12 98 0 12 12 98 0 13 12 98 0 14 12 98 0 15 12 98 0 16 12 98 0 17 12 98 0 18 12 98 0 20 12 98 0 21 12 98 0 22 12 98 0 23 12 98 0 24 12 98 0 25 12 98 0 26 12 98 0 27 12 98 0 28 12 98 0 29 12 98 0 30 12 98 0 31 12 98 0 32 12 98 0 33 12 98 0 34 0 235 0 35 0 235 0 36 0 235 0 37 0 235 0 38 13 42 0 39 12 98 0 40 12 98 0 41 12 98 0 42 12 98 0 43 12 98 0 44 12 98 0 45 12 98 0 46 12 98 0 47 12 98 0 48 12 98 0 49 12 98 0 50 12 98 0 51 13 42 0 52 12 98 0 53 12 98 0 54 13 42 0 56 13 42 0 57 13 42 0 58 13 42 0 61 13 42 0 62 13 42 0 63 13 42 0 65 13 42 0 66 13 42 0 67 13 42 0 69 13 42 0 70 13 42 0 72 13 42 0 73 13 42 0 75 13 42 0 77 13 42 0 79 13 42 0 81 13 42 0 82 12 98 0 83 12 98 0 86 13 42 0 87 13 42 0 89 13 42 0 92 13 42 0 93 13 42 0 94 13 42 0 102 13 42 0 106 13 42 0 107 13 42 0 109 13 42 0 110 13 42 0 111 13 42 0 112 13 42 0 113 13 42 0 114 13 42 0 115 13 42 0 116 13 42 0 117 13 42 0 118 13 42 0 119 12 98 0 121 13 42 0 124 13 42 0 126 13 42 0 128 13 42 0 129 13 42 0 130 0 235 0 132 0 235 0 133 13 42 0 136 12 98 1 227 0 235 1 228 13 42 1 229] 
#[0 28 221 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 24 169 1 6 14 205 1 7 28 225 1 21 0 6 1 228] 
#[0 28 229 0 5] 
#[0 28 233 0 8] 
#[1 0 239 0 5 6 245 0 6 9 1 0 8 9 5 0 26 9 9 0 56 25 101 0 64 9 13 0 80 25 113 0 97 25 113 0 98 25 113 0 99 25 113 0 100 9 17 0 103 28 237 0 104 9 25 0 124 7 1 0 125 9 29 0 126 7 21 0 128 7 25 0 129 25 109 0 142 25 109 0 154 25 109 0 155 25 109 0 156 9 57 1 16 9 57 1 20 9 57 1 25 9 57 1 29 14 45 1 36 9 53 1 37 9 57 1 38 9 61 1 39 9 65 1 40 9 57 1 41 7 21 1 69 7 25 1 70 25 113 1 139 25 129 1 142 9 57 1 146 9 57 1 147 25 121 1 214 25 125 1 215 25 129 1 216 25 129 1 217 25 129 1 218 9 81 1 228] 
#[0 28 241 0 3] 
#[1 13 46 0 1 0 243 0 2 13 46 0 4 13 46 0 5 0 243 0 6 0 243 0 8 12 114 0 9 12 114 0 10 12 114 0 11 12 114 0 12 12 114 0 13 12 114 0 14 12 114 0 15 12 114 0 16 12 114 0 17 12 114 0 18 12 114 0 20 12 114 0 21 12 114 0 22 12 114 0 23 12 114 0 24 12 114 0 25 12 114 0 26 12 114 0 27 12 114 0 28 12 114 0 29 12 114 0 30 12 114 0 31 12 114 0 32 12 114 0 33 12 114 0 34 0 243 0 35 0 243 0 36 0 243 0 37 0 243 0 38 13 46 0 39 12 114 0 40 12 114 0 41 12 114 0 42 12 114 0 43 12 114 0 44 12 114 0 45 12 114 0 46 12 114 0 47 12 114 0 48 12 114 0 49 12 114 0 50 12 114 0 51 13 46 0 52 12 114 0 53 12 114 0 54 13 46 0 56 13 46 0 57 13 46 0 58 13 46 0 61 13 46 0 62 13 46 0 63 13 46 0 65 13 46 0 66 13 46 0 67 13 46 0 69 13 46 0 70 13 46 0 72 13 46 0 73 13 46 0 75 13 46 0 77 13 46 0 79 13 46 0 81 13 46 0 82 12 114 0 83 12 114 0 86 13 46 0 87 13 46 0 89 13 46 0 92 13 46 0 93 13 46 0 94 13 46 0 102 13 46 0 106 13 46 0 107 13 46 0 109 13 46 0 110 13 46 0 111 13 46 0 112 13 46 0 113 13 46 0 114 13 46 0 115 13 46 0 116 13 46 0 117 13 46 0 118 13 46 0 119 12 114 0 121 13 46 0 124 13 46 0 126 13 46 0 128 13 46 0 129 13 46 0 130 0 243 0 132 0 243 0 133 13 46 0 136 12 114 1 227 0 243 1 228 13 46 1 229] 
#[0 13 190 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 28 245 1 30 0 6 1 228] 
#[0 28 249 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 85 1 6 14 205 1 7 28 253 1 26 0 6 1 228] 
#[0 29 1 0 5] 
#[0 29 5 0 4] 
#[0 13 194 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 29 9 0 5] 
#[0 13 198 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 29 13 0 5] 
#[0 13 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 29 17 0 5] 
#[0 13 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 29 21 1 30 0 6 1 228] 
#[0 29 25 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 26 85 1 6 14 205 1 7 29 29 1 26 0 6 1 228] 
#[0 29 33 0 5] 
#[0 29 37 0 4] 
#[0 13 210 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 29 41 0 5] 
#[0 13 214 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 29 45 1 6 14 205 1 7 0 6 1 228] 
#[0 29 49 0 4] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 29 53 1 6 14 205 1 7 0 6 1 228] 
#[0 29 57 0 4] 
#[0 13 218 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 13 222 0 4 0 8] 
#[0 13 226 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 29 61 0 8] 
#[0 13 230 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 234 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 29 65 0 5] 
#[0 13 238 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 242 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 29 69 0 5] 
#[1 9 118 0 8 8 105 0 23 21 73 0 158 29 73 1 165] 
#[0 29 77 0 8] 
#[0 29 81 0 8] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 29 85 1 6 14 205 1 7 0 6 1 228] 
#[0 13 246 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 13 250 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 29 89 0 8] 
#[0 13 254 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 2 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 29 93 0 5] 
#[0 14 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 14 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 137 1 227 1 228 1 229] 
#[0 14 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 227 1 228 1 229] 
#[0 29 97 0 5] 
#[0 14 18 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 14 22 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 97 0 2 0 19 0 4 0 101 0 6 1 221 0 8 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 52 0 129 0 56 0 133 0 57 1 225 0 58 0 137 0 61 1 229 0 65 1 233 0 66 0 141 0 69 1 237 0 70 1 173 0 75 1 241 0 77 0 149 0 79 1 245 0 81 0 153 0 82 0 157 0 93 1 169 0 94 1 249 0 102 0 165 0 106 1 253 0 107 0 169 0 109 2 1 0 110 1 173 0 111 2 5 0 112 0 177 0 114 2 9 0 115 0 181 0 116 2 13 0 117 2 17 0 118 0 185 0 119 2 21 0 124 0 193 0 126 1 177 0 128 1 181 0 129 0 205 0 130 0 209 0 132 0 18 0 133 0 15 0 136 0 217 0 141 0 253 0 143 0 253 0 144 0 253 0 145 0 253 0 146 0 253 0 150 0 241 0 151 0 253 0 159 0 249 0 160 0 253 0 163 0 253 0 164 0 253 0 165 0 253 0 166 0 253 0 167 1 37 0 168 1 21 0 169 1 21 0 170 1 21 0 171 1 33 0 174 1 37 0 178 1 45 0 179 1 45 0 180 1 53 0 181 1 53 0 182 1 57 0 184 1 61 0 185 1 65 0 186 1 69 0 187 1 73 0 188 1 77 0 189 1 81 0 190 1 85 0 191 1 89 0 192 1 93 0 193 1 97 0 194 1 101 0 195 2 25 0 196 2 25 0 197 2 25 0 199 29 101 0 200 29 101 0 203 29 101 0 204 29 101 0 205 29 101 0 213 29 101 0 227 29 101 0 228 29 101 0 229 29 101 0 230 29 101 0 231 29 101 0 232 29 101 0 233 29 101 0 234 29 101 0 237 29 101 0 238 29 101 0 240 29 101 0 241 29 101 0 242 29 101 0 247 29 101 0 249 29 101 0 250 29 101 0 254 0 253 1 5 2 25 1 8 1 125 1 9 1 129 1 10 1 133 1 13 2 25 1 14 0 253 1 19 2 25 1 22 0 253 1 24 0 253 1 28 1 45 1 31 0 253 1 33 1 165 1 66 1 169 1 67 1 173 1 68 1 177 1 69 1 181 1 70 0 253 1 71 0 253 1 72 0 253 1 73 1 197 1 74 0 253 1 76 1 205 1 94 1 209 1 149 1 213 1 228] 
#[0 14 26 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 14 30 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 14 34 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 14 34 0 59 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 14 34 0 68 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 6 73 0 207 0 57 0 208 6 73 0 209 0 65 0 210 0 6 1 228] 
#[0 14 38 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 29 105 0 3] 
#[0 14 42 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 109 0 8] 
#[0 29 113 0 8] 
#[0 14 46 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 50 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 0 74 0 3 3 153 0 4 3 157 0 6 3 209 0 120 0 189 0 124 8 53 0 141 3 221 0 216 3 221 0 217 3 221 0 218 3 253 0 224 3 253 0 225 3 249 0 226 29 117 1 0 3 245 1 1 3 249 1 2 3 253 1 3 6 233 1 228] 
#[1 6 237 0 2 29 121 0 8 2 157 0 11 12 57 0 122 7 29 1 100 29 125 1 135 29 129 1 136] 
#[0 14 54 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 133 0 8] 
#[0 29 137 0 8] 
#[0 14 58 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 23 109 0 8] 
#[1 13 194 0 1 0 247 0 2 13 194 0 4 13 194 0 5 0 247 0 6 0 247 0 8 13 106 0 9 13 106 0 10 13 106 0 11 13 106 0 12 13 106 0 13 13 106 0 14 13 106 0 15 13 106 0 16 13 106 0 17 13 106 0 18 13 106 0 20 13 106 0 21 13 106 0 22 13 106 0 23 13 106 0 24 13 106 0 25 13 106 0 26 13 106 0 27 13 106 0 28 13 106 0 29 13 106 0 30 13 106 0 31 13 106 0 32 13 106 0 33 13 106 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 13 194 0 39 13 106 0 40 13 106 0 41 13 106 0 42 13 106 0 43 13 106 0 44 13 106 0 45 13 106 0 46 13 106 0 47 13 106 0 48 13 106 0 49 13 106 0 50 13 106 0 51 13 194 0 52 13 106 0 53 13 106 0 54 13 194 0 56 13 194 0 57 13 194 0 58 13 194 0 61 13 194 0 62 13 194 0 63 13 194 0 65 13 194 0 66 13 194 0 67 13 194 0 69 13 194 0 70 13 194 0 72 13 194 0 73 13 194 0 75 13 194 0 77 13 194 0 79 13 194 0 81 13 194 0 82 13 106 0 83 13 106 0 86 13 194 0 87 13 194 0 89 13 194 0 92 13 194 0 93 13 194 0 94 13 194 0 102 13 194 0 106 13 194 0 107 13 194 0 109 13 194 0 110 13 194 0 111 13 194 0 112 13 194 0 113 13 194 0 114 13 194 0 115 13 194 0 116 13 194 0 117 13 194 0 118 13 194 0 119 13 106 0 121 13 194 0 124 13 194 0 126 13 194 0 128 13 194 0 129 13 194 0 130 0 247 0 132 0 247 0 133 13 194 0 136 13 106 1 227 0 247 1 228 13 194 1 229] 
#[0 29 141 0 5] 
#[1 13 198 0 1 0 251 0 2 13 198 0 4 13 198 0 5 0 251 0 6 0 251 0 8 13 110 0 9 13 110 0 10 13 110 0 11 13 110 0 12 13 110 0 13 13 110 0 14 13 110 0 15 13 110 0 16 13 110 0 17 13 110 0 18 13 110 0 20 13 110 0 21 13 110 0 22 13 110 0 23 13 110 0 24 13 110 0 25 13 110 0 26 13 110 0 27 13 110 0 28 13 110 0 29 13 110 0 30 13 110 0 31 13 110 0 32 13 110 0 33 13 110 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 13 198 0 39 13 110 0 40 13 110 0 41 13 110 0 42 13 110 0 43 13 110 0 44 13 110 0 45 13 110 0 46 13 110 0 47 13 110 0 48 13 110 0 49 13 110 0 50 13 110 0 51 13 198 0 52 13 110 0 53 13 110 0 54 13 198 0 56 13 198 0 57 13 198 0 58 13 198 0 61 13 198 0 62 13 198 0 63 13 198 0 65 13 198 0 66 13 198 0 67 13 198 0 69 13 198 0 70 13 198 0 72 13 198 0 73 13 198 0 75 13 198 0 77 13 198 0 79 13 198 0 81 13 198 0 82 13 110 0 83 13 110 0 86 13 198 0 87 13 198 0 89 13 198 0 92 13 198 0 93 13 198 0 94 13 198 0 102 13 198 0 106 13 198 0 107 13 198 0 109 13 198 0 110 13 198 0 111 13 198 0 112 13 198 0 113 13 198 0 114 13 198 0 115 13 198 0 116 13 198 0 117 13 198 0 118 13 198 0 119 13 110 0 121 13 198 0 124 13 198 0 126 13 198 0 128 13 198 0 129 13 198 0 130 0 251 0 132 0 251 0 133 13 198 0 136 13 110 1 227 0 251 1 228 13 198 1 229] 
#[0 14 62 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 13 221 0 4 8 45 0 6 9 5 0 26 9 9 0 56 9 13 0 80 9 17 0 103 9 25 0 124 7 1 0 125 9 29 0 126 7 21 0 128 7 25 0 129 27 113 0 142 27 113 0 154 27 113 0 155 27 113 0 156 13 225 1 16 13 225 1 20 13 225 1 25 13 225 1 29 13 229 1 39 9 65 1 40 7 21 1 69 7 25 1 70 13 225 1 146 13 225 1 147 9 229 1 228] 
#[1 25 229 0 4 8 202 0 8 12 57 0 122 20 61 1 135] 
#[0 29 145 0 5] 
#[0 14 66 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 29 149 0 5] 
#[0 14 70 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 29 153 1 30 0 6 1 228] 
#[0 14 74 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 14 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 14 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 29 157 0 5] 
#[0 14 86 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 29 161 0 5] 
#[0 14 90 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 17 185 1 6 14 205 1 7 29 165 1 30 0 6 1 228] 
#[0 14 94 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 29 169 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 29 173 1 6 14 205 1 7 0 6 1 228] 
#[0 29 177 0 5] 
#[1 0 6 0 2 0 6 0 4 6 10 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 52 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 61 0 65 0 63 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 70 0 6 0 75 0 6 0 77 0 6 0 79 0 6 0 81 0 6 0 82 0 65 0 89 0 6 0 93 0 6 0 94 0 6 0 102 0 6 0 106 0 6 0 107 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 114 0 6 0 115 0 6 0 116 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 124 0 6 0 126 0 6 0 128 0 6 0 129 0 6 0 130 0 6 0 132 0 6 0 133 0 6 0 136 14 197 0 206 2 121 0 207 0 57 0 208 2 121 0 209 0 65 0 210 29 181 1 6 14 205 1 7 0 6 1 228] 
#[0 14 98 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 102 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 106 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 29 185 0 8] 
#[0 14 110 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 114 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 29 189 0 5] 
#[0 14 118 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 122 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 126 0 4 0 9 0 14 0 137] 
#[0 14 130 0 1 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 63 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 29 193 0 8] 
#[0 14 134 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 138 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 197 0 3] 
#[0 14 142 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 201 0 8] 
#[0 29 205 0 8] 
#[0 14 146 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 150 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[1 14 74 0 1 0 255 0 2 14 74 0 4 14 74 0 5 0 255 0 6 0 255 0 8 14 6 0 9 14 6 0 10 14 6 0 11 14 6 0 12 14 6 0 13 14 6 0 14 14 6 0 15 14 6 0 16 14 6 0 17 14 6 0 18 14 6 0 20 14 6 0 21 14 6 0 22 14 6 0 23 14 6 0 24 14 6 0 25 14 6 0 26 14 6 0 27 14 6 0 28 14 6 0 29 14 6 0 30 14 6 0 31 14 6 0 32 14 6 0 33 14 6 0 34 0 255 0 35 0 255 0 36 0 255 0 37 0 255 0 38 14 74 0 39 14 6 0 40 14 6 0 41 14 6 0 42 14 6 0 43 14 6 0 44 14 6 0 45 14 6 0 46 14 6 0 47 14 6 0 48 14 6 0 49 14 6 0 50 14 6 0 51 14 74 0 52 14 6 0 53 14 6 0 54 14 74 0 56 14 74 0 57 14 74 0 58 14 74 0 61 14 74 0 62 14 74 0 63 14 74 0 65 14 74 0 66 14 74 0 67 14 74 0 69 14 74 0 70 14 74 0 72 14 74 0 73 14 74 0 75 14 74 0 77 14 74 0 79 14 74 0 81 14 74 0 82 14 6 0 83 14 6 0 86 14 74 0 87 14 74 0 89 14 74 0 92 14 74 0 93 14 74 0 94 14 74 0 102 14 74 0 106 14 74 0 107 14 74 0 109 14 74 0 110 14 74 0 111 14 74 0 112 14 74 0 113 14 74 0 114 14 74 0 115 14 74 0 116 14 74 0 117 14 74 0 118 14 74 0 119 14 6 0 121 14 74 0 124 14 74 0 126 14 74 0 128 14 74 0 129 14 74 0 130 0 255 0 132 0 255 0 133 14 74 0 136 14 6 1 227 0 255 1 228 14 74 1 229] 
#[0 14 154 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 14 158 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 29 209 0 5] 
#[0 14 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 83 0 86 0 96 0 121 0 122 0 132 0 133 0 134 0 135 1 227 1 228 1 229] 
#[0 14 166 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 29 213 0 5] 
#[0 14 170 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 29 217 0 5] 
#[0 14 174 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 29 221 0 5] 
#[0 14 178 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 182 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 124 0 126 1 228] 
#[0 14 186 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 29 225 0 8] 
#[0 14 190 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 194 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129] 
#[0 14 198 0 1 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 52 0 56 0 57 0 58 0 61 0 62 0 63 0 65 0 66 0 67 0 69 0 70 0 72 0 73 0 75 0 77 0 79 0 81 0 82 0 87 0 89 0 92 0 93 0 94 0 102 0 106 0 107 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 124 0 126 0 128 0 129 0 130 0 132 0 133 0 136 1 228 1 229] 
#[0 14 202 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 14 206 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 14 210 0 5 0 8 0 26 0 56 0 80 0 103 0 104 0 121 0 124 0 126 1 228] 
#[0 14 214 0 5 0 6 0 64 0 97 0 98 0 99 0 100 0 104 0 125 0 128 0 129]
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
