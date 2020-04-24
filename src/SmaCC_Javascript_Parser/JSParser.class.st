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
#[ 0 14 4 33] 
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
#[ 2 154 8 145] 
#[ 2 158 8 149] 
#[ 1 110 2 166] 
#[ 0 134 3 66] 
#[ 0 134 9 93] 
#[ 0 14 11 105] 
#[ 3 150 4 54] 
#[ 4 106 4 110] 
#[ 4 114 4 118] 
#[ 4 134 4 138] 
#[ 2 138 3 66] 
#[ 1 110 4 238] 
#[ 1 110 4 242] 
#[ 4 254 10 137] 
#[ 3 106 5 58] 
#[ 5 126 14 81] 
#[ 5 126 13 65] 
#[ 0 14 14 133] 
#[ 0 22 6 154] 
#[ 2 138 4 230] 
#[ 0 202 16 45] 
#[ 5 202 6 230] 
#[ 0 134 16 229] 
#[ 4 162 5 46] 
#[ 7 62 8 149] 
#[ 1 110 7 66] 
#[ 0 134 5 82] 
#[ 5 142 7 134] 
#[ 5 126 7 194] 
#[ 5 126 9 93] 
#[ 5 126 18 101] 
#[ 0 46 0 185] 
#[ 0 50 0 185] 
#[ 10 130 14 245] 
#[ 10 82 11 6] 
#[ 10 90 11 14] 
#[ 11 130 11 238] 
#[ 12 50 12 150] 
#[ 12 70 12 154] 
#[ 11 134 11 250] 
#[ 12 218 13 50] 
#[ 12 222 13 54] 
#[ 3 86 17 153] 
#[ 13 98 13 154]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-04-23T14:42:25.009005-05:00'
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
|	BindingPattern 'variable' Initializer? {{VariableDeclaration}}
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
:	<class> 'classToken' Identifier 'name'? ClassTail {{ClassExpression}}	##
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
:	<ts> BindingPattern 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}
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
:	AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}   ## changed ParameterList
|	AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <semicolon> 'semicolon' {{}}   ## changed ParameterList
;
PropertyMemberDeclaration
:	MemberVariableDeclaration
|	MemberFunctionDeclaration
|	MemberAccessorDeclaration
;
MemberVariableDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' TypeAnnotation? Initializer? <semicolon> 'semicolon' {{}}
;
MemberFunctionDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{}}
;
MemberAccessorDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? GetAccessor 'accessor' {{}}
|	AccessibilityModifier 'modifier'? <static> 'staticToken'? SetAccessor 'accessor' {{}}
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
	#(198 0 #reduceActionForStartStatementListItem1: 23174145 true ) 
	#(283 0 #reduceActionForModule1: 36398081 false ) 
	#(142 0 #reduceActionForValidationNotArrowFunction1: 11295745 true ) 
	#(151 0 #reduceActionForStartTemplateLiteral1: 12511233 true ) 
	#(329 0 #reduceActionForSwitchToJSX1: 41664513 true ) 
	#(281 0 #reduceActionForScript1: 36339713 false ) 
	#(419 0 #reduceActionForDeclarationScript1: 57054209 false ) 
	#(423 0 #reduceActionForDeclarationScript1: 57451521 false ) 
	#(426 0 #reduceActionForDeclarationScript1: 57892865 false ) 
	#(415 0 #reduceActionForDeclarationScript1: 56511489 false ) 
	#(200 1 #liftFirstValue: 23346178 false ) 
	#(200 1 #liftFirstValue: 23346177 false ) 
	#(286 1 #liftFirstValue: 36531203 false ) 
	#(197 1 #liftFirstValue: 23076866 false ) 
	#(131 1 #liftFirstValue: 8632321 false ) 
	#(283 1 #reduceActionForModule2: 36398082 false ) 
	#(284 1 #reduceActionForModuleBody1: 36426753 false ) 
	#(285 1 #reduceActionForModuleItemList1: 36457473 false ) 
	#(286 1 #liftFirstValue: 36531201 false ) 
	#(286 1 #liftFirstValue: 36531202 false ) 
	#(244 0 #reduceActionForFormalParameters1: 31328257 false ) 
	#(303 1 #liftFirstValue: 39003138 false ) 
	#(302 1 #liftFirstValue: 38979585 false ) 
	#(134 1 #reduceActionForPrimaryExpression1: 9039873 false ) 
	#(303 1 #liftFirstValue: 39003137 false ) 
	#(264 1 #reduceActionForYieldExpression1: 33916929 false ) 
	#(132 1 #reduceActionForIdentifier1: 8744961 false ) 
	#(304 1 #liftFirstValue: 39040001 false ) 
	#(305 1 #liftFirstValue: 39075841 false ) 
	#(306 1 #reduceActionForRegularExpressionLiteral1: 39113729 false ) 
	#(150 1 #reduceActionForTemplateLiteral1: 12355585 false ) 
	#(330 0 #reduceActionForSwitchToJSXText1: 41705473 true ) 
	#(134 1 #liftFirstValue: 9039874 false ) 
	#(252 1 #reduceActionForArrowParameterDeclaration1: 31974401 false ) 
	#(154 1 #liftFirstValue: 12781569 false ) 
	#(134 1 #liftFirstValue: 9039885 false ) 
	#(134 1 #liftFirstValue: 9039875 false ) 
	#(134 1 #liftFirstValue: 9039876 false ) 
	#(134 1 #liftFirstValue: 9039877 false ) 
	#(134 1 #liftFirstValue: 9039884 false ) 
	#(158 1 #liftFirstValue: 13679617 false ) 
	#(154 1 #liftFirstValue: 12781573 false ) 
	#(154 1 #liftFirstValue: 12781574 false ) 
	#(156 1 #liftFirstValue: 13548545 false ) 
	#(168 1 #liftFirstValue: 15771649 false ) 
	#(168 1 #liftFirstValue: 15771650 false ) 
	#(159 1 #liftFirstValue: 13769730 false ) 
	#(159 1 #liftFirstValue: 13769731 false ) 
	#(168 1 #liftFirstValue: 15771651 false ) 
	#(169 1 #liftFirstValue: 15853569 false ) 
	#(170 1 #liftFirstValue: 16222209 false ) 
	#(171 1 #liftFirstValue: 16674817 false ) 
	#(172 1 #liftFirstValue: 16844801 false ) 
	#(174 1 #liftFirstValue: 17104897 false ) 
	#(175 1 #liftFirstValue: 17402881 false ) 
	#(176 1 #liftFirstValue: 17787905 false ) 
	#(177 1 #liftFirstValue: 18526209 false ) 
	#(178 1 #liftFirstValue: 19056641 false ) 
	#(179 1 #liftFirstValue: 19220481 false ) 
	#(180 1 #liftFirstValue: 19388417 false ) 
	#(181 1 #liftFirstValue: 19555329 false ) 
	#(184 1 #liftFirstValue: 20052994 false ) 
	#(182 1 #liftFirstValue: 19725313 false ) 
	#(185 1 #liftFirstValue: 20126721 false ) 
	#(185 1 #liftFirstValue: 20126722 false ) 
	#(184 1 #liftFirstValue: 20052993 false ) 
	#(186 1 #liftFirstValue: 20200449 false ) 
	#(187 1 #liftFirstValue: 20427777 false ) 
	#(189 1 #liftFirstValue: 22155265 false ) 
	#(134 1 #liftFirstValue: 9039878 false ) 
	#(187 1 #liftFirstValue: 20427779 false ) 
	#(251 1 #reduceActionForArrowParameters1: 31884289 false ) 
	#(251 1 #reduceActionForArrowParameters2: 31884290 false ) 
	#(187 1 #liftFirstValue: 20427780 false ) 
	#(134 1 #liftFirstValue: 9039880 false ) 
	#(187 1 #liftFirstValue: 20427778 false ) 
	#(134 1 #liftFirstValue: 9039882 false ) 
	#(134 1 #liftFirstValue: 9039881 false ) 
	#(170 1 #liftFirstValue: 16222217 false ) 
	#(134 1 #liftFirstValue: 9039879 false ) 
	#(136 1 #reduceActionForLiteral1: 10140673 false ) 
	#(136 1 #reduceActionForLiteral2: 10140674 false ) 
	#(136 1 #reduceActionForLiteral4: 10140676 false ) 
	#(136 1 #reduceActionForLiteral3: 10140675 false ) 
	#(134 1 #liftFirstValue: 9039883 false ) 
	#(134 1 #liftFirstValue: 9039886 false ) 
	#(307 1 #liftFirstValue: 39365633 false ) 
	#(331 0 #reduceActionForStartJSXText1: 41754625 true ) 
	#(134 1 #liftFirstValue: 9039887 false ) 
	#(217 1 #reduceActionForEmptyStatement1: 25687041 false ) 
	#(225 0 #reduceActionForCheckEOL1: 29175809 true ) 
	#(190 1 #liftFirstValue: 22306822 false ) 
	#(190 1 #liftFirstValue: 22306817 false ) 
	#(194 1 #liftFirstValue: 22856705 false ) 
	#(190 1 #liftFirstValue: 22306818 false ) 
	#(190 1 #liftFirstValue: 22306819 false ) 
	#(190 1 #liftFirstValue: 22306820 false ) 
	#(190 1 #liftFirstValue: 22306821 false ) 
	#(193 1 #liftFirstValue: 22794241 false ) 
	#(190 1 #liftFirstValue: 22306823 false ) 
	#(190 1 #liftFirstValue: 22306824 false ) 
	#(190 1 #liftFirstValue: 22306825 false ) 
	#(190 1 #liftFirstValue: 22306826 false ) 
	#(193 1 #liftFirstValue: 22794242 false ) 
	#(190 1 #liftFirstValue: 22306827 false ) 
	#(190 1 #liftFirstValue: 22306828 false ) 
	#(190 1 #liftFirstValue: 22306829 false ) 
	#(190 1 #liftFirstValue: 22306830 false ) 
	#(282 1 #reduceActionForModuleBody1: 36368385 false ) 
	#(196 1 #reduceActionForModuleItemList1: 22979585 false ) 
	#(281 1 #reduceActionForScript2: 36339714 false ) 
	#(418 1 #liftFirstValue: 56794113 false ) 
	#(418 1 #liftFirstValue: 56794114 false ) 
	#(418 1 #liftFirstValue: 56794115 false ) 
	#(418 1 #liftFirstValue: 56794116 false ) 
	#(418 1 #liftFirstValue: 56794117 false ) 
	#(425 1 #liftFirstValue: 57651202 false ) 
	#(428 1 #liftFirstValue: 58074114 false ) 
	#(418 1 #liftFirstValue: 56794119 false ) 
	#(422 1 #liftFirstValue: 57312258 false ) 
	#(418 1 #liftFirstValue: 56794118 false ) 
	#(422 1 #liftFirstValue: 57312257 false ) 
	#(418 1 #liftFirstValue: 56794120 false ) 
	#(418 1 #liftFirstValue: 56794121 false ) 
	#(422 1 #liftFirstValue: 57312259 false ) 
	#(418 1 #liftFirstValue: 56794123 false ) 
	#(425 1 #liftFirstValue: 57651203 false ) 
	#(422 1 #liftFirstValue: 57312261 false ) 
	#(412 1 #reduceActionForSourceFile1: 56270849 false ) 
	#(412 1 #reduceActionForSourceFile1: 56270850 false ) 
	#(413 1 #reduceActionForModuleBody1: 56371201 false ) 
	#(415 1 #reduceActionForModuleBody1: 56511490 false ) 
	#(416 1 #reduceActionForModuleItemList1: 56567809 false ) 
	#(425 1 #liftFirstValue: 57651201 false ) 
	#(417 1 #liftFirstValue: 56711169 false ) 
	#(414 1 #reduceActionForModuleBody1: 56445953 false ) 
	#(419 1 #reduceActionForModuleBody1: 57054210 false ) 
	#(420 1 #reduceActionForModuleItemList1: 57104385 false ) 
	#(428 1 #liftFirstValue: 58074113 false ) 
	#(421 1 #liftFirstValue: 57235457 false ) 
	#(413 1 #reduceActionForModuleBody1: 56371202 false ) 
	#(423 1 #reduceActionForModuleBody1: 57451522 false ) 
	#(424 1 #reduceActionForModuleItemList1: 57507841 false ) 
	#(414 1 #reduceActionForModuleBody1: 56445954 false ) 
	#(426 1 #reduceActionForModuleBody1: 57892866 false ) 
	#(427 1 #reduceActionForModuleItemList1: 57943041 false ) 
	#(425 1 #liftFirstValue: 57651204 false ) 
	#(425 1 #liftFirstValue: 57651205 false ) 
	#(428 1 #liftFirstValue: 58074115 false ) 
	#(425 1 #liftFirstValue: 57651206 false ) 
	#(428 1 #liftFirstValue: 58074116 false ) 
	#(425 1 #liftFirstValue: 57651207 false ) 
	#(428 1 #liftFirstValue: 58074117 false ) 
	#(425 1 #liftFirstValue: 57651208 false ) 
	#(428 1 #liftFirstValue: 58074118 false ) 
	#(418 1 #liftFirstValue: 56794122 false ) 
	#(422 1 #liftFirstValue: 57312260 false ) 
	#(417 1 #liftFirstValue: 56711170 false ) 
	#(421 1 #liftFirstValue: 57235458 false ) 
	#(367 1 #reduceActionForThisType1: 45236225 false ) 
	#(349 1 #reduceActionForPredefinedType1: 43275265 false ) 
	#(351 1 #reduceActionForTypeName1: 43421697 false ) 
	#(352 1 #reduceActionForNamespaceName1: 43528193 false ) 
	#(347 1 #reduceActionForLiteralType1: 43112449 false ) 
	#(347 1 #reduceActionForLiteralType1: 43112450 false ) 
	#(342 1 #liftFirstValue: 42576897 false ) 
	#(343 1 #liftFirstValue: 42653698 false ) 
	#(344 1 #liftFirstValue: 42730498 false ) 
	#(345 1 #liftFirstValue: 42791937 false ) 
	#(346 1 #liftFirstValue: 42935305 false ) 
	#(346 1 #liftFirstValue: 42935297 false ) 
	#(346 1 #liftFirstValue: 42935298 false ) 
	#(346 1 #liftFirstValue: 42935299 false ) 
	#(346 1 #liftFirstValue: 42935300 false ) 
	#(346 1 #liftFirstValue: 42935301 false ) 
	#(346 1 #liftFirstValue: 42935302 false ) 
	#(343 1 #liftFirstValue: 42653697 false ) 
	#(344 1 #liftFirstValue: 42730497 false ) 
	#(342 1 #liftFirstValue: 42576898 false ) 
	#(342 1 #liftFirstValue: 42576899 false ) 
	#(346 1 #liftFirstValue: 42935303 false ) 
	#(346 1 #liftFirstValue: 42935304 false ) 
	#(298 1 #reduceActionForExportFromClause1: 38429697 false ) 
	#(297 2 #reduceActionForExportDeclaration4: 37745668 false ) 
	#(191 1 #liftFirstValue: 22589441 false ) 
	#(191 1 #liftFirstValue: 22589443 false ) 
	#(297 2 #reduceActionForExportDeclaration3: 37745667 false ) 
	#(192 1 #liftFirstValue: 22668289 false ) 
	#(192 1 #liftFirstValue: 22668290 false ) 
	#(192 1 #liftFirstValue: 22668292 false ) 
	#(192 1 #liftFirstValue: 22668291 false ) 
	#(191 1 #liftFirstValue: 22589442 false ) 
	#(298 1 #reduceActionForExportFromClause3: 38429699 false ) 
	#(296 1 #liftFirstValue: 37710849 false ) 
	#(288 1 #reduceActionForImportClause1: 36777985 false ) 
	#(288 1 #reduceActionForImportClause1: 36777986 false ) 
	#(288 1 #reduceActionForImportClause1: 36777987 false ) 
	#(289 1 #liftFirstValue: 37030913 false ) 
	#(295 1 #liftFirstValue: 37668865 false ) 
	#(197 2 #liftSecondValue: 23076865 false ) 
	#(202 1 #reduceActionForArrowParameterDeclaration1: 23476225 false ) 
	#(201 1 #reduceActionForNamespaceName1: 23377921 false ) 
	#(206 1 #liftFirstValue: 24023041 false ) 
	#(206 1 #liftFirstValue: 24023042 false ) 
	#(202 1 #liftFirstValue: 23476228 false ) 
	#(202 1 #liftFirstValue: 23476229 false ) 
	#(285 2 #reduceActionForModuleItemList2: 36457474 false ) 
	#(215 1 #reduceActionForArrowParameterDeclaration1: 25418753 false ) 
	#(214 1 #reduceActionForArrowParameterDeclaration1: 25314306 false ) 
	#(247 1 #liftFirstValue: 31697921 false ) 
	#(214 1 #liftFirstValue: 25314305 false ) 
	#(246 1 #liftFirstValue: 31651841 false ) 
	#(243 1 #reduceActionForModuleBody1: 31283201 false ) 
	#(244 1 #reduceActionForFormalParameters3: 31328259 false ) 
	#(244 1 #reduceActionForFormalParameters2: 31328258 false ) 
	#(245 1 #reduceActionForNamespaceName1: 31529985 false ) 
	#(371 0 #nil 46118916 false ) 
	#(137 2 #reduceActionForArrayLiteral1: 10322945 false ) 
	#(139 1 #reduceActionForModuleItemList1: 10802177 false ) 
	#(138 1 #reduceActionForNamespaceName1: 10584067 false ) 
	#(138 1 #reduceActionForNamespaceName1: 10584065 false ) 
	#(170 2 #reduceActionForUnaryExpression5: 16222213 false ) 
	#(169 2 #reduceActionForUpdateExpression4: 15853572 false ) 
	#(170 2 #reduceActionForUnaryExpression5: 16222214 false ) 
	#(169 2 #reduceActionForUpdateExpression4: 15853573 false ) 
	#(170 2 #reduceActionForUnaryExpression5: 16222215 false ) 
	#(170 2 #reduceActionForUnaryExpression5: 16222216 false ) 
	#(273 2 #reduceActionForAwaitExpression1: 35643393 false ) 
	#(275 2 #reduceActionForClassExpression1: 35816449 false ) 
	#(170 2 #reduceActionForUnaryExpression5: 16222210 false ) 
	#(158 2 #reduceActionForNewExpression2: 13679618 false ) 
	#(160 2 #reduceActionForSuperCall1: 14253057 false ) 
	#(170 2 #reduceActionForUnaryExpression5: 16222212 false ) 
	#(170 2 #reduceActionForUnaryExpression5: 16222211 false ) 
	#(264 2 #reduceActionForYieldExpression2: 33916930 false ) 
	#(154 2 #reduceActionForMemberExpression4: 12781572 false ) 
	#(159 2 #reduceActionForCallExpression1: 13769729 false ) 
	#(164 2 #reduceActionForOptionalExpression1: 14917633 false ) 
	#(159 2 #reduceActionForMemberExpression4: 13769735 false ) 
	#(159 2 #reduceActionForCallExpression1: 13769732 false ) 
	#(164 2 #reduceActionForOptionalExpression1: 14917634 false ) 
	#(164 2 #reduceActionForOptionalExpression1: 14917635 false ) 
	#(188 1 #liftFirstValue: 20632579 false ) 
	#(188 1 #liftFirstValue: 20632583 false ) 
	#(188 1 #liftFirstValue: 20632584 false ) 
	#(188 1 #liftFirstValue: 20632585 false ) 
	#(188 1 #liftFirstValue: 20632577 false ) 
	#(188 1 #liftFirstValue: 20632578 false ) 
	#(188 1 #liftFirstValue: 20632580 false ) 
	#(188 1 #liftFirstValue: 20632586 false ) 
	#(188 1 #liftFirstValue: 20632587 false ) 
	#(188 1 #liftFirstValue: 20632588 false ) 
	#(188 1 #liftFirstValue: 20632582 false ) 
	#(188 1 #liftFirstValue: 20632581 false ) 
	#(169 2 #reduceActionForUpdateExpression2: 15853570 false ) 
	#(169 2 #reduceActionForUpdateExpression2: 15853571 false ) 
	#(188 1 #liftFirstValue: 20632589 false ) 
	#(173 1 #liftFirstValue: 17047554 false ) 
	#(173 1 #liftFirstValue: 17047553 false ) 
	#(173 1 #liftFirstValue: 17047555 false ) 
	#(326 0 #reduceActionForDeclarationScript1: 41350145 false ) 
	#(255 2 #reduceActionForArrowFormalParameters2: 32225282 false ) 
	#(195 2 #reduceActionForBlock1: 22882305 false ) 
	#(240 2 #reduceActionForDebuggerStatement1: 30774273 false ) 
	#(205 1 #reduceActionForArrowParameterDeclaration1: 23862273 false ) 
	#(204 1 #reduceActionForNamespaceName1: 23726081 false ) 
	#(218 2 #reduceActionForExpressionStatement1: 25737217 false ) 
	#(196 2 #reduceActionForModuleItemList2: 22979586 false ) 
	#(274 2 #reduceActionForClassExpression1: 35720193 false ) 
	#(447 1 #liftFirstValue: 62783489 false ) 
	#(436 2 #reduceActionForAmbientDeclaration1: 60711937 false ) 
	#(436 2 #reduceActionForAmbientDeclaration1: 60711938 false ) 
	#(436 2 #reduceActionForAmbientDeclaration1: 60711939 false ) 
	#(436 2 #reduceActionForAmbientDeclaration1: 60711940 false ) 
	#(436 2 #reduceActionForAmbientDeclaration1: 60711941 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528770 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528769 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528771 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528772 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528773 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528779 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528775 false ) 
	#(431 2 #reduceActionForExportDeclarationElement2: 59271170 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528774 false ) 
	#(431 2 #reduceActionForExportDeclarationElement2: 59271169 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528776 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528777 false ) 
	#(431 2 #reduceActionForExportDeclarationElement2: 59271172 false ) 
	#(430 2 #reduceActionForExportImplementationElement2: 58528778 false ) 
	#(431 2 #reduceActionForExportDeclarationElement2: 59271171 false ) 
	#(405 1 #reduceActionForNamespaceName1: 54757377 false ) 
	#(416 2 #reduceActionForModuleItemList2: 56567810 false ) 
	#(420 2 #reduceActionForModuleItemList2: 57104386 false ) 
	#(424 2 #reduceActionForModuleItemList2: 57507842 false ) 
	#(427 2 #reduceActionForModuleItemList2: 57943042 false ) 
	#(353 2 #reduceActionForObjectType1: 43632641 false ) 
	#(133 1 #reduceActionForIdentifier1: 8938497 false ) 
	#(146 1 #liftFirstValue: 11960321 false ) 
	#(368 1 #reduceActionForPropertySignature1: 45274113 false ) 
	#(145 1 #liftFirstValue: 11897857 false ) 
	#(145 1 #liftFirstValue: 11897858 false ) 
	#(146 1 #reduceActionForIdentifier1: 11960322 false ) 
	#(146 1 #reduceActionForIdentifier1: 11960323 false ) 
	#(354 1 #reduceActionForModuleBody1: 43714561 false ) 
	#(355 1 #reduceActionForNamespaceName1: 43810817 false ) 
	#(356 1 #liftFirstValue: 43965441 false ) 
	#(356 1 #liftFirstValue: 43965442 false ) 
	#(356 1 #liftFirstValue: 43965443 false ) 
	#(356 1 #liftFirstValue: 43965444 false ) 
	#(356 1 #liftFirstValue: 43965445 false ) 
	#(360 1 #liftFirstValue: 44403713 false ) 
	#(359 1 #reduceActionForNamespaceName1: 44295169 false ) 
	#(337 1 #reduceActionForTypeParameter1: 42262529 false ) 
	#(336 1 #reduceActionForNamespaceName1: 42149889 false ) 
	#(345 2 #reduceActionForPrefixType3: 42791939 false ) 
	#(345 2 #reduceActionForPrefixType2: 42791938 false ) 
	#(366 1 #reduceActionForTypeQueryExpression1: 45112321 false ) 
	#(365 2 #reduceActionForTypeQuery1: 45038593 false ) 
	#(350 2 #reduceActionForTypeReference1: 43327489 false ) 
	#(299 2 #reduceActionForNamedExports1: 38537217 false ) 
	#(301 1 #reduceActionForExportSpecifier1: 38857729 false ) 
	#(300 1 #reduceActionForNamespaceName1: 38753281 false ) 
	#(297 3 #reduceActionForExportDeclaration2: 37745666 false ) 
	#(191 2 #liftSecondValue: 22589445 false ) 
	#(191 2 #liftSecondValue: 22589444 false ) 
	#(191 2 #liftSecondValue: 22589446 false ) 
	#(291 2 #reduceActionForNamedImports1: 37155841 false ) 
	#(293 1 #reduceActionForNamespaceName1: 37438465 false ) 
	#(294 1 #reduceActionForImportSpecifier1: 37542913 false ) 
	#(287 3 #reduceActionForImportDeclaration2: 36605954 false ) 
	#(207 2 #reduceActionForObjectBindingPattern1: 24086529 false ) 
	#(210 1 #reduceActionForNamespaceName1: 24911873 false ) 
	#(213 1 #liftFirstValue: 25200641 false ) 
	#(208 2 #reduceActionForArrayBindingPattern1: 24474625 false ) 
	#(211 1 #reduceActionForBindingElementList1: 25030657 false ) 
	#(212 1 #reduceActionForBindingElisionElement1: 25139201 false ) 
	#(202 2 #reduceActionForLexicalBinding2: 23476226 false ) 
	#(199 3 #reduceActionForLexicalDeclaration1: 23257089 false ) 
	#(202 2 #reduceActionForLexicalBinding3: 23476227 false ) 
	#(216 2 #reduceActionForBindingRestElement1: 25504769 false ) 
	#(216 2 #reduceActionForBindingRestElement1: 25504770 false ) 
	#(215 2 #reduceActionForLexicalBinding2: 25418754 false ) 
	#(135 3 #reduceActionForParenthesizedExpression1: 9405441 false ) 
	#(214 2 #reduceActionForLexicalBinding2: 25314307 false ) 
	#(255 3 #reduceActionForArrowFormalParameters1: 32225281 false ) 
	#(244 2 #reduceActionForFormalParameters4: 31328260 false ) 
	#(372 1 #liftFirstValue: 47462402 false ) 
	#(372 1 #liftFirstValue: 47462403 false ) 
	#(372 1 #liftFirstValue: 47462401 false ) 
	#(371 1 #reduceActionForIdentifier1: 46118914 false ) 
	#(371 1 #liftFirstValue: 46118913 false ) 
	#(371 1 #liftFirstValue: 46118915 false ) 
	#(140 2 #reduceActionForSpreadElement1: 10857473 false ) 
	#(137 3 #reduceActionForArrayLiteral3: 10322947 false ) 
	#(137 3 #reduceActionForArrayLiteral2: 10322946 false ) 
	#(139 2 #reduceActionForModuleItemList2: 10802178 false ) 
	#(138 2 #reduceActionForElementList4: 10584068 false ) 
	#(138 2 #reduceActionForElementList4: 10584066 false ) 
	#(276 2 #reduceActionForClassTail1: 35896321 false ) 
	#(280 1 #reduceActionForEmptyStatement1: 36189187 false ) 
	#(280 1 #liftFirstValue: 36189185 false ) 
	#(258 1 #liftFirstValue: 32540674 false ) 
	#(258 1 #liftFirstValue: 32540676 false ) 
	#(258 1 #liftFirstValue: 32540675 false ) 
	#(278 1 #reduceActionForModuleBody1: 36069377 false ) 
	#(279 1 #reduceActionForModuleItemList1: 36101121 false ) 
	#(258 1 #liftFirstValue: 32540680 false ) 
	#(258 1 #liftFirstValue: 32540681 false ) 
	#(277 2 #reduceActionForClassHeritage1: 35988481 false ) 
	#(275 3 #reduceActionForClassExpression2: 35816450 false ) 
	#(277 2 #reduceActionForClassHeritage2: 35988482 false ) 
	#(157 3 #reduceActionForNewTarget1: 13576193 false ) 
	#(154 3 #reduceActionForMemberExpression7: 12781575 false ) 
	#(162 2 #reduceActionForArguments1: 14464001 false ) 
	#(163 1 #reduceActionForArgumentList1: 14649345 false ) 
	#(155 3 #reduceActionForSuperProperty2: 13283330 false ) 
	#(264 3 #reduceActionForYieldExpression3: 33916931 false ) 
	#(141 3 #reduceActionForObjectLiteral1: 10955777 false ) 
	#(144 1 #liftFirstValue: 11649025 false ) 
	#(143 1 #reduceActionForNamespaceName1: 11513857 false ) 
	#(144 1 #liftFirstValue: 11649026 false ) 
	#(144 1 #liftFirstValue: 11649028 false ) 
	#(154 3 #reduceActionForMemberExpression3: 12781571 false ) 
	#(167 1 #reduceActionForOptionalFirst3: 15506435 false ) 
	#(167 1 #reduceActionForOptionalFirst4: 15506436 false ) 
	#(167 1 #reduceActionForOptionalFirst1: 15506433 false ) 
	#(165 2 #reduceActionForOptionalChain1: 15095809 false ) 
	#(166 1 #reduceActionForOptionalFirst4: 15218692 false ) 
	#(166 1 #reduceActionForOptionalFirst1: 15218689 false ) 
	#(165 2 #reduceActionForOptionalChain2: 15095810 false ) 
	#(159 3 #reduceActionForMemberExpression3: 13769734 false ) 
	#(187 3 #reduceActionForAssignmentExpression5: 20427781 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16674818 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 16844802 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 17104898 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 17104899 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17402882 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17402883 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17402884 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17787906 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17787907 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17787908 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17787909 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17787911 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17787910 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 18526210 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 18526212 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 18526211 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 18526213 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 19056642 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 19220482 false ) 
	#(180 3 #reduceActionForExponentiationExpression2: 19388418 false ) 
	#(181 3 #reduceActionForExponentiationExpression2: 19555330 false ) 
	#(182 3 #reduceActionForExponentiationExpression2: 19725314 false ) 
	#(183 3 #reduceActionForExponentiationExpression2: 19895297 false ) 
	#(189 3 #reduceActionForExpression2: 22155266 false ) 
	#(249 0 #reduceActionForDeclarationScript1: 31774721 false ) 
	#(254 1 #liftFirstValue: 32184321 false ) 
	#(250 3 #reduceActionForArrowFunction1: 31816705 false ) 
	#(253 1 #reduceActionForConciseBody1: 32069633 false ) 
	#(334 0 #reduceActionForSwitchToDefault1: 41916417 true ) 
	#(325 1 #reduceActionForModuleBody1: 41335809 false ) 
	#(312 1 #reduceActionForJSXElementName1: 40192001 false ) 
	#(312 1 #liftFirstValue: 40192002 false ) 
	#(312 1 #liftFirstValue: 40192003 false ) 
	#(316 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 40518657 false ) 
	#(195 3 #reduceActionForBlock2: 22882306 false ) 
	#(224 3 #reduceActionForBreakStatement1: 29068289 false ) 
	#(223 3 #reduceActionForContinueStatement1: 28953601 false ) 
	#(226 3 #reduceActionForReturnStatement1: 29210625 false ) 
	#(235 3 #reduceActionForThrowStatement1: 30227457 false ) 
	#(236 3 #reduceActionForTryStatement1: 30323713 false ) 
	#(236 3 #reduceActionForTryStatement2: 30323714 false ) 
	#(205 2 #reduceActionForLexicalBinding2: 23862274 false ) 
	#(203 3 #reduceActionForVariableStatement1: 23630849 false ) 
	#(205 2 #reduceActionForLexicalBinding3: 23862275 false ) 
	#(205 2 #liftSecondValue: 23862276 false ) 
	#(205 2 #liftSecondValue: 23862277 false ) 
	#(234 1 #liftFirstValue: 30133249 false ) 
	#(233 3 #reduceActionForLabelledStatement1: 30033921 false ) 
	#(274 3 #reduceActionForClassExpression2: 35720194 false ) 
	#(439 1 #reduceActionForArrowParameterDeclaration1: 61509633 false ) 
	#(438 1 #reduceActionForNamespaceName1: 61396993 false ) 
	#(432 3 #reduceActionForExportDefaultImplementationElement1: 59565057 false ) 
	#(432 3 #reduceActionForExportDefaultImplementationElement1: 59565058 false ) 
	#(432 3 #reduceActionForExportDefaultImplementationElement1: 59565059 false ) 
	#(433 3 #reduceActionForExportDefaultDeclarationElement1: 59991041 false ) 
	#(433 3 #reduceActionForExportDefaultDeclarationElement1: 59991042 false ) 
	#(434 3 #reduceActionForExportListDeclaration3: 60325891 false ) 
	#(386 3 #reduceActionForInterfaceDeclaration1: 51888129 false ) 
	#(406 0 #reduceActionForDeclarationScript1: 54862849 false ) 
	#(274 3 #reduceActionForClassDeclaration3: 35720195 false ) 
	#(348 3 #reduceActionForParenthesizedExpression1: 43187201 false ) 
	#(368 2 #reduceActionForPropertySignature3: 45274115 false ) 
	#(368 2 #reduceActionForPropertySignature2: 45274114 false ) 
	#(376 2 #reduceActionForMethodSignature1: 48697345 false ) 
	#(353 3 #reduceActionForObjectType2: 43632642 false ) 
	#(354 2 #reduceActionForOptionalChain2: 43714562 false ) 
	#(354 2 #reduceActionForOptionalChain2: 43714564 false ) 
	#(358 3 #reduceActionForTupleType1: 44180481 false ) 
	#(337 2 #reduceActionForTypeParameter2: 42262530 false ) 
	#(335 3 #reduceActionForTypeParameters1: 42071041 false ) 
	#(361 3 #reduceActionForUnionType1: 44430337 false ) 
	#(362 3 #reduceActionForIntersectionType1: 44551169 false ) 
	#(350 3 #reduceActionForTypeReference2: 43327490 false ) 
	#(351 3 #reduceActionForTypeName2: 43421698 false ) 
	#(352 3 #reduceActionForNamespaceName2: 43528194 false ) 
	#(299 3 #reduceActionForNamedExports2: 38537218 false ) 
	#(298 3 #reduceActionForExportFromClause2: 38429698 false ) 
	#(297 4 #reduceActionForExportDeclaration5: 37745669 false ) 
	#(292 2 #reduceActionForFromClause1: 37387265 false ) 
	#(297 4 #reduceActionForExportDeclaration1: 37745665 false ) 
	#(291 3 #reduceActionForNamedImports2: 37155842 false ) 
	#(290 3 #reduceActionForNameSpaceImport1: 37074945 false ) 
	#(287 4 #reduceActionForImportDeclaration1: 36605953 false ) 
	#(288 3 #reduceActionForImportClause4: 36777988 false ) 
	#(288 3 #reduceActionForImportClause4: 36777989 false ) 
	#(209 2 #reduceActionForBindingRestProperty1: 24840193 false ) 
	#(207 3 #reduceActionForObjectBindingPattern2: 24086530 false ) 
	#(207 3 #reduceActionForObjectBindingPattern3: 24086531 false ) 
	#(208 3 #reduceActionForArrayBindingPattern3: 24474627 false ) 
	#(212 2 #reduceActionForBindingElisionElement2: 25139202 false ) 
	#(208 3 #reduceActionForArrayBindingPattern5: 24474629 false ) 
	#(208 3 #reduceActionForArrayBindingPattern2: 24474626 false ) 
	#(149 2 #reduceActionForFromClause1: 12291073 false ) 
	#(201 3 #reduceActionForNamespaceName2: 23377922 false ) 
	#(384 3 #reduceActionForSimpleLexicalBinding1: 51351553 false ) 
	#(385 3 #reduceActionForSimpleLexicalBinding1: 51461121 false ) 
	#(216 3 #reduceActionForBindingRestElement3: 25504771 false ) 
	#(244 3 #reduceActionForFormalParameters5: 31328261 false ) 
	#(245 3 #reduceActionForNamespaceName2: 31529986 false ) 
	#(215 3 #reduceActionForSingleNameBinding9: 25418761 false ) 
	#(215 3 #reduceActionForSimpleLexicalBinding1: 25418755 false ) 
	#(214 3 #reduceActionForSingleNameBinding9: 25314314 false ) 
	#(214 3 #reduceActionForSimpleLexicalBinding1: 25314308 false ) 
	#(215 3 #reduceActionForSingleNameBinding7: 25418759 false ) 
	#(214 3 #reduceActionForSingleNameBinding7: 25314312 false ) 
	#(137 4 #reduceActionForArrayLiteral4: 10322948 false ) 
	#(138 3 #reduceActionForElementList6: 10584070 false ) 
	#(138 3 #reduceActionForElementList6: 10584069 false ) 
	#(257 1 #reduceActionForConciseBody1: 32419841 false ) 
	#(256 4 #reduceActionForAsyncArrowFunction1: 32317441 false ) 
	#(280 2 #reduceActionForClassElement2: 36189186 false ) 
	#(276 3 #reduceActionForClassTail2: 35896322 false ) 
	#(279 2 #reduceActionForModuleItemList2: 36101122 false ) 
	#(397 1 #reduceActionForMemberAccessorDeclaration1: 53882881 false ) 
	#(397 1 #reduceActionForMemberAccessorDeclaration1: 53882885 false ) 
	#(280 2 #liftSecondValue: 36189188 false ) 
	#(280 2 #liftSecondValue: 36189189 false ) 
	#(394 1 #liftFirstValue: 53253121 false ) 
	#(394 1 #liftFirstValue: 53253122 false ) 
	#(394 1 #liftFirstValue: 53253123 false ) 
	#(280 2 #liftSecondValue: 36189190 false ) 
	#(276 3 #reduceActionForClassTail3: 35896323 false ) 
	#(391 1 #liftFirstValue: 52544513 false ) 
	#(390 2 #reduceActionForFromClause1: 52485121 false ) 
	#(389 1 #liftFirstValue: 52259841 false ) 
	#(392 2 #reduceActionForImplementsClause1: 52586497 false ) 
	#(388 1 #reduceActionForNamespaceName1: 52128769 false ) 
	#(277 3 #reduceActionForClassHeritage3: 35988483 false ) 
	#(161 4 #reduceActionForImportCall1: 14323713 false ) 
	#(163 2 #reduceActionForArgumentList2: 14649346 false ) 
	#(162 3 #reduceActionForArguments2: 14464002 false ) 
	#(155 4 #reduceActionForSuperProperty1: 13283329 false ) 
	#(340 1 #reduceActionForNamespaceName1: 42447873 false ) 
	#(341 1 #liftFirstValue: 42554369 false ) 
	#(144 2 #reduceActionForPropertyDefinition5: 11649029 false ) 
	#(148 2 #reduceActionForCoverInitializedName1: 12208129 false ) 
	#(141 4 #reduceActionForObjectLiteral2: 10955778 false ) 
	#(152 1 #reduceActionForNamespaceName1: 12549121 false ) 
	#(150 4 #reduceActionForTemplateLiteral2: 12355586 false ) 
	#(154 4 #reduceActionForMemberExpression2: 12781570 false ) 
	#(166 2 #reduceActionForOptionalRest3: 15218691 false ) 
	#(159 4 #reduceActionForCallExpression5: 13769733 false ) 
	#(170 4 #reduceActionForUnaryExpression11: 16222219 false ) 
	#(249 1 #reduceActionForModuleBody1: 31774722 false ) 
	#(248 1 #reduceActionForModuleBody1: 31733761 false ) 
	#(307 4 #reduceActionForJSXElement2: 39365634 false ) 
	#(327 1 #reduceActionForJSXChild1: 41370625 false ) 
	#(327 1 #liftFirstValue: 41370626 false ) 
	#(326 2 #reduceActionForModuleItemList2: 41350146 false ) 
	#(315 2 #reduceActionForFromClause1: 40518657 false ) 
	#(332 0 #reduceActionForSwitchToJSXTextOrDefault11: 41783297 true ) 
	#(322 1 #reduceActionForJSXElementName1: 40942593 false ) 
	#(322 1 #liftFirstValue: 40942594 false ) 
	#(319 1 #reduceActionForModuleItemList1: 40645633 false ) 
	#(317 1 #reduceActionForModuleBody1: 40629249 false ) 
	#(318 1 #liftFirstValue: 40645633 false ) 
	#(318 1 #liftFirstValue: 40645634 false ) 
	#(321 1 #reduceActionForJSXAttribute1: 40859649 false ) 
	#(314 2 #reduceActionForJSXMemberExpression1: 40496129 false ) 
	#(316 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 40518658 false ) 
	#(224 4 #reduceActionForBreakStatement2: 29068290 false ) 
	#(223 4 #reduceActionForContinueStatement2: 28953602 false ) 
	#(222 1 #liftFirstValue: 28906497 false ) 
	#(222 1 #liftFirstValue: 28906498 false ) 
	#(221 2 #reduceActionForFromClause1: 28841985 false ) 
	#(226 4 #reduceActionForReturnStatement2: 29210626 false ) 
	#(237 2 #reduceActionForCatch2: 30494722 false ) 
	#(238 2 #reduceActionForFromClause1: 30662657 false ) 
	#(236 4 #reduceActionForTryStatement3: 30323715 false ) 
	#(204 3 #reduceActionForNamespaceName2: 23726082 false ) 
	#(382 2 #reduceActionForSimpleVariableDeclaration1: 51051521 false ) 
	#(439 2 #reduceActionForAmbientBinding2: 61509634 false ) 
	#(437 3 #reduceActionForLexicalDeclaration1: 61101059 false ) 
	#(437 3 #reduceActionForLexicalDeclaration1: 61101058 false ) 
	#(449 0 #reduceActionForDeclarationScript1: 63003649 false ) 
	#(437 3 #reduceActionForLexicalDeclaration1: 61101057 false ) 
	#(399 4 #reduceActionForEnumDeclaration1: 54182913 false ) 
	#(402 1 #reduceActionForEnumMember1: 54468609 false ) 
	#(400 1 #reduceActionForModuleBody1: 54330369 false ) 
	#(401 1 #reduceActionForNamespaceName1: 54376449 false ) 
	#(435 4 #reduceActionForExportAssignment1: 60579841 false ) 
	#(434 4 #reduceActionForExportListDeclaration1: 60325889 false ) 
	#(433 4 #reduceActionForExportDefaultDeclarationElement3: 59991043 false ) 
	#(432 4 #reduceActionForExportDefaultImplementationElement4: 59565060 false ) 
	#(434 4 #reduceActionForExportListDeclaration2: 60325890 false ) 
	#(411 1 #liftFirstValue: 56159233 false ) 
	#(387 2 #reduceActionForFromClause1: 52043777 false ) 
	#(386 4 #reduceActionForInterfaceDeclaration3: 51888131 false ) 
	#(386 4 #reduceActionForInterfaceDeclaration2: 51888130 false ) 
	#(408 1 #liftFirstValue: 54999041 false ) 
	#(408 1 #liftFirstValue: 54999042 false ) 
	#(408 1 #liftFirstValue: 54999043 false ) 
	#(408 1 #liftFirstValue: 54999044 false ) 
	#(408 1 #liftFirstValue: 54999045 false ) 
	#(408 1 #liftFirstValue: 54999047 false ) 
	#(408 1 #liftFirstValue: 54999046 false ) 
	#(408 1 #liftFirstValue: 54999048 false ) 
	#(408 1 #liftFirstValue: 54999049 false ) 
	#(406 1 #reduceActionForModuleBody1: 54862850 false ) 
	#(407 1 #reduceActionForModuleItemList1: 54900737 false ) 
	#(408 1 #liftFirstValue: 54999052 false ) 
	#(408 1 #liftFirstValue: 54999051 false ) 
	#(408 1 #liftFirstValue: 54999050 false ) 
	#(405 3 #reduceActionForNamespaceName2: 54757378 false ) 
	#(241 4 #reduceActionForFunctionDeclaration5: 30860293 false ) 
	#(274 4 #reduceActionForClassDeclaration4: 35720196 false ) 
	#(370 3 #reduceActionForCallSignature1: 45496321 false ) 
	#(147 3 #reduceActionForComputedPropertyName1: 12087297 false ) 
	#(368 3 #reduceActionForPropertySignature4: 45274116 false ) 
	#(376 3 #reduceActionForMethodSignature2: 48697346 false ) 
	#(369 2 #reduceActionForFromClause1: 45443073 false ) 
	#(355 3 #reduceActionForNamespaceName2: 43810818 false ) 
	#(355 3 #reduceActionForNamespaceName2: 43810819 false ) 
	#(358 4 #reduceActionForTupleType2: 44180482 false ) 
	#(359 3 #reduceActionForNamespaceName2: 44295170 false ) 
	#(338 2 #reduceActionForFromClause1: 42316801 false ) 
	#(336 3 #reduceActionForNamespaceName2: 42149890 false ) 
	#(366 3 #reduceActionForTypeQueryExpression2: 45112322 false ) 
	#(357 4 #reduceActionForArrayType1: 44072961 false ) 
	#(301 3 #reduceActionForExportSpecifier2: 38857730 false ) 
	#(299 4 #reduceActionForNamedExports3: 38537219 false ) 
	#(300 3 #reduceActionForNamespaceName2: 38753282 false ) 
	#(294 3 #reduceActionForImportSpecifier2: 37542914 false ) 
	#(291 4 #reduceActionForNamedImports3: 37155843 false ) 
	#(293 3 #reduceActionForNamespaceName2: 37438466 false ) 
	#(213 3 #reduceActionForBindingProperty2: 25200642 false ) 
	#(207 4 #reduceActionForObjectBindingPattern4: 24086532 false ) 
	#(210 3 #reduceActionForNamespaceName2: 24911874 false ) 
	#(208 4 #reduceActionForArrayBindingPattern4: 24474628 false ) 
	#(208 4 #reduceActionForArrayBindingPattern6: 24474630 false ) 
	#(211 3 #reduceActionForBindingElementList2: 25030658 false ) 
	#(384 4 #reduceActionForSimpleLexicalBinding2: 51351554 false ) 
	#(385 4 #reduceActionForSimpleLexicalBinding2: 51461122 false ) 
	#(215 4 #reduceActionForSimpleLexicalBinding2: 25418756 false ) 
	#(214 4 #reduceActionForBindingElement11: 25314315 false ) 
	#(214 4 #reduceActionForSimpleLexicalBinding2: 25314309 false ) 
	#(215 4 #reduceActionForSingleNameBinding10: 25418762 false ) 
	#(215 4 #reduceActionForSingleNameBinding8: 25418760 false ) 
	#(215 4 #reduceActionForSingleNameBinding5: 25418757 false ) 
	#(214 4 #reduceActionForSingleNameBinding10: 25314316 false ) 
	#(214 4 #reduceActionForSingleNameBinding8: 25314313 false ) 
	#(214 4 #reduceActionForSingleNameBinding5: 25314310 false ) 
	#(272 1 #reduceActionForModuleBody1: 35607553 false ) 
	#(397 2 #reduceActionForMemberAccessorDeclaration2: 53882882 false ) 
	#(397 2 #reduceActionForMemberAccessorDeclaration2: 53882886 false ) 
	#(395 2 #reduceActionForMemberVariableDeclaration1: 53367809 false ) 
	#(397 2 #reduceActionForMemberAccessorDeclaration3: 53882883 false ) 
	#(397 2 #reduceActionForMemberAccessorDeclaration3: 53882887 false ) 
	#(398 2 #reduceActionForIndexMemberDeclaration1: 54091777 false ) 
	#(276 4 #reduceActionForClassTail4: 35896324 false ) 
	#(162 4 #reduceActionForArguments3: 14464003 false ) 
	#(163 3 #reduceActionForArgumentList3: 14649347 false ) 
	#(339 3 #reduceActionForTypeArguments1: 42370049 false ) 
	#(162 4 #reduceActionForArguments4: 14464004 false ) 
	#(141 5 #reduceActionForObjectLiteral3: 10955779 false ) 
	#(143 3 #reduceActionForNamespaceName2: 11513858 false ) 
	#(144 3 #reduceActionForPropertyDefinition3: 11649027 false ) 
	#(153 2 #reduceActionForTemplateMiddleList1: 12636161 false ) 
	#(152 2 #reduceActionForTemplateSpans2: 12549122 false ) 
	#(167 3 #reduceActionForOptionalFirst2: 15506434 false ) 
	#(166 3 #reduceActionForOptionalFirst2: 15218690 false ) 
	#(186 5 #reduceActionForConditionalExpression2: 20200450 false ) 
	#(253 3 #reduceActionForConciseBody2: 32069634 false ) 
	#(313 3 #reduceActionForJSXNamespacedName1: 40372225 false ) 
	#(319 2 #reduceActionForModuleItemList2: 40645634 false ) 
	#(321 2 #reduceActionForJSXAttribute2: 40859650 false ) 
	#(309 5 #reduceActionForJSXOpeningElement1: 39699457 false ) 
	#(378 4 #reduceActionForTypeCallSignature1: 49140737 false ) 
	#(170 5 #reduceActionForUnaryExpression10: 16222218 false ) 
	#(378 4 #reduceActionForTypeCallSignature3: 49140739 false ) 
	#(219 5 #reduceActionForIfStatement2: 25817090 false ) 
	#(228 5 #reduceActionForSwitchStatement1: 29456385 false ) 
	#(239 1 #liftFirstValue: 30723073 false ) 
	#(239 1 #liftFirstValue: 30723074 false ) 
	#(382 3 #reduceActionForSimpleVariableDeclaration2: 51051522 false ) 
	#(383 3 #reduceActionForDestructuringVariableDeclaration1: 51156993 false ) 
	#(220 5 #reduceActionForIterationStatement2: 26107906 false ) 
	#(227 5 #reduceActionForWithStatement1: 29324289 false ) 
	#(399 5 #reduceActionForEnumDeclaration3: 54182915 false ) 
	#(442 0 #reduceActionForDeclarationScript1: 61945857 false ) 
	#(438 3 #reduceActionForNamespaceName2: 61396994 false ) 
	#(440 4 #reduceActionForAmbientFunctionDeclaration1: 61592577 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182851 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182857 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182863 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182849 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182853 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182855 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182859 false ) 
	#(451 1 #reduceActionForAmbientNamespaceElement3: 63182861 false ) 
	#(449 1 #reduceActionForModuleBody1: 63003650 false ) 
	#(450 1 #reduceActionForModuleItemList1: 63055873 false ) 
	#(399 5 #reduceActionForEnumDeclaration2: 54182914 false ) 
	#(400 2 #reduceActionForOptionalChain2: 54330370 false ) 
	#(410 5 #reduceActionForImportAliasDeclaration1: 56022017 false ) 
	#(386 5 #reduceActionForInterfaceDeclaration4: 51888132 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279618 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279617 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279619 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279620 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279621 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279623 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279622 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279624 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279625 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279627 false ) 
	#(409 2 #reduceActionForExportNamespaceElement2: 55279626 false ) 
	#(404 5 #reduceActionForNamespaceDeclaration1: 54616065 false ) 
	#(407 2 #reduceActionForModuleItemList2: 54900738 false ) 
	#(377 5 #reduceActionForTypeAliasDeclaration1: 48802817 false ) 
	#(241 5 #reduceActionForFunctionDeclaration6: 30860294 false ) 
	#(363 5 #reduceActionForFunctionType1: 44657665 false ) 
	#(370 4 #reduceActionForCallSignature2: 45496322 false ) 
	#(374 4 #reduceActionForConstructSignature1: 48203777 false ) 
	#(370 4 #reduceActionForCallSignature3: 45496323 false ) 
	#(207 5 #reduceActionForObjectBindingPattern5: 24086533 false ) 
	#(208 5 #reduceActionForArrayBindingPattern8: 24474632 false ) 
	#(208 5 #reduceActionForArrayBindingPattern7: 24474631 false ) 
	#(215 5 #reduceActionForSingleNameBinding6: 25418758 false ) 
	#(214 5 #reduceActionForBindingElement13: 25314317 false ) 
	#(214 5 #reduceActionForSingleNameBinding6: 25314311 false ) 
	#(257 3 #reduceActionForConciseBody2: 32419842 false ) 
	#(259 1 #liftFirstValue: 33138689 false ) 
	#(395 3 #reduceActionForMemberVariableDeclaration5: 53367813 false ) 
	#(395 3 #reduceActionForMemberVariableDeclaration2: 53367810 false ) 
	#(395 3 #reduceActionForMemberVariableDeclaration3: 53367811 false ) 
	#(396 3 #reduceActionForMemberFunctionDeclaration5: 53537797 false ) 
	#(397 3 #reduceActionForMemberAccessorDeclaration4: 53882884 false ) 
	#(397 3 #reduceActionForMemberAccessorDeclaration4: 53882888 false ) 
	#(395 3 #reduceActionForMemberVariableDeclaration9: 53367817 false ) 
	#(388 3 #reduceActionForNamespaceName2: 52128770 false ) 
	#(163 4 #reduceActionForArgumentList4: 14649348 false ) 
	#(340 3 #reduceActionForNamespaceName2: 42447874 false ) 
	#(162 5 #reduceActionForArguments5: 14464005 false ) 
	#(153 3 #reduceActionForTemplateMiddleList2: 12636162 false ) 
	#(328 1 #liftFirstValue: 41603074 false ) 
	#(328 1 #liftFirstValue: 41603073 false ) 
	#(308 6 #reduceActionForJSXSelfClosingElement1: 39516161 false ) 
	#(309 6 #reduceActionForJSXOpeningElement2: 39699458 false ) 
	#(324 1 #reduceActionForLiteral4: 41107457 false ) 
	#(324 1 #liftFirstValue: 41107459 false ) 
	#(324 1 #liftFirstValue: 41107460 false ) 
	#(323 2 #reduceActionForFromClause1: 41033729 false ) 
	#(242 6 #reduceActionForFunctionExpression3: 31072259 false ) 
	#(378 5 #reduceActionForTypeCallSignature2: 49140738 false ) 
	#(220 6 #reduceActionForIterationStatement3: 26107907 false ) 
	#(220 6 #reduceActionForIterationStatement15: 26107919 false ) 
	#(229 2 #reduceActionForCaseBlock1: 29582337 false ) 
	#(230 1 #reduceActionForModuleItemList1: 29766657 false ) 
	#(399 6 #reduceActionForEnumDeclaration4: 54182916 false ) 
	#(444 1 #liftFirstValue: 62120963 false ) 
	#(442 1 #reduceActionForModuleBody1: 61945858 false ) 
	#(443 1 #reduceActionForModuleItemList1: 61993985 false ) 
	#(444 1 #liftFirstValue: 62120961 false ) 
	#(444 1 #liftFirstValue: 62120962 false ) 
	#(452 6 #reduceActionForAmbientModuleDeclaration1: 63954945 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182852 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182858 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182864 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182850 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182854 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182856 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182860 false ) 
	#(451 2 #reduceActionForExportNamespaceElement2: 63182862 false ) 
	#(448 5 #reduceActionForNamespaceDeclaration1: 62827521 false ) 
	#(450 2 #reduceActionForModuleItemList2: 63055874 false ) 
	#(403 1 #liftFirstValue: 54574081 false ) 
	#(402 3 #reduceActionForEnumMember2: 54468610 false ) 
	#(401 3 #reduceActionForNamespaceName2: 54376450 false ) 
	#(377 6 #reduceActionForTypeAliasDeclaration2: 48802818 false ) 
	#(241 6 #reduceActionForFunctionExpression3: 30860291 false ) 
	#(374 5 #reduceActionForConstructSignature2: 48203778 false ) 
	#(374 5 #reduceActionForConstructSignature3: 48203779 false ) 
	#(370 5 #reduceActionForCallSignature4: 45496324 false ) 
	#(364 6 #reduceActionForConstructorType1: 44837889 false ) 
	#(363 6 #reduceActionForFunctionType2: 44657666 false ) 
	#(208 6 #reduceActionForArrayBindingPattern9: 24474633 false ) 
	#(373 1 #liftFirstValue: 47524865 false ) 
	#(373 1 #liftFirstValue: 47524866 false ) 
	#(395 4 #reduceActionForMemberVariableDeclaration6: 53367814 false ) 
	#(395 4 #reduceActionForMemberVariableDeclaration7: 53367815 false ) 
	#(396 4 #reduceActionForMemberFunctionDeclaration6: 53537798 false ) 
	#(395 4 #reduceActionForMemberVariableDeclaration4: 53367812 false ) 
	#(395 4 #reduceActionForMemberVariableDeclaration13: 53367821 false ) 
	#(395 4 #reduceActionForMemberVariableDeclaration10: 53367818 false ) 
	#(395 4 #reduceActionForMemberVariableDeclaration11: 53367819 false ) 
	#(396 4 #reduceActionForMemberFunctionDeclaration7: 53537799 false ) 
	#(242 7 #reduceActionForFunctionExpression1: 31072257 false ) 
	#(263 1 #reduceActionForModuleBody1: 33885185 false ) 
	#(333 0 #reduceActionForSwitchToJSXTextOrDefault21: 41849857 true ) 
	#(327 4 #reduceActionForJSXChild3: 41370627 false ) 
	#(308 7 #reduceActionForJSXSelfClosingElement2: 39516162 false ) 
	#(242 7 #reduceActionForFunctionExpression4: 31072260 false ) 
	#(220 7 #reduceActionForIterationStatement1: 26107905 false ) 
	#(220 7 #reduceActionForIterationStatement4: 26107908 false ) 
	#(220 7 #reduceActionForIterationStatement5: 26107909 false ) 
	#(220 7 #reduceActionForIterationStatement19: 26107923 false ) 
	#(220 7 #reduceActionForIterationStatement22: 26107926 false ) 
	#(220 7 #reduceActionForIterationStatement7: 26107911 false ) 
	#(220 7 #reduceActionForIterationStatement16: 26107920 false ) 
	#(220 7 #reduceActionForIterationStatement17: 26107921 false ) 
	#(220 7 #reduceActionForIterationStatement21: 26107925 false ) 
	#(220 7 #reduceActionForIterationStatement24: 26107928 false ) 
	#(219 7 #reduceActionForIfStatement1: 25817089 false ) 
	#(232 2 #reduceActionForDefaultClause1: 29945857 false ) 
	#(229 3 #reduceActionForCaseBlock2: 29582338 false ) 
	#(230 2 #reduceActionForModuleItemList2: 29766658 false ) 
	#(229 3 #reduceActionForCaseBlock3: 29582339 false ) 
	#(237 5 #reduceActionForCatch1: 30494721 false ) 
	#(446 2 #reduceActionForMemberVariableDeclaration1: 62440449 false ) 
	#(441 6 #reduceActionForAmbientClassDeclaration1: 61740033 false ) 
	#(443 2 #reduceActionForModuleItemList2: 61993986 false ) 
	#(241 7 #reduceActionForFunctionExpression1: 30860289 false ) 
	#(241 7 #reduceActionForFunctionExpression4: 30860292 false ) 
	#(375 6 #reduceActionForIndexSignature2: 48396290 false ) 
	#(375 6 #reduceActionForIndexSignature2: 48396289 false ) 
	#(374 6 #reduceActionForConstructSignature4: 48203780 false ) 
	#(364 7 #reduceActionForConstructorType2: 44837890 false ) 
	#(271 8 #reduceActionForAsyncFunctionExpression1: 35357697 false ) 
	#(268 1 #reduceActionForModuleBody1: 34851841 false ) 
	#(393 5 #reduceActionForConstructorDeclaration3: 52794371 false ) 
	#(381 2 #reduceActionForTypedPropertySetParameterList1: 50173953 false ) 
	#(395 5 #reduceActionForMemberVariableDeclaration8: 53367816 false ) 
	#(396 5 #reduceActionForMemberFunctionDeclaration1: 53537793 false ) 
	#(258 6 #reduceActionForMethodDefinition7: 32540679 false ) 
	#(395 5 #reduceActionForMemberVariableDeclaration14: 53367822 false ) 
	#(395 5 #reduceActionForMemberVariableDeclaration15: 53367823 false ) 
	#(396 5 #reduceActionForMemberFunctionDeclaration8: 53537800 false ) 
	#(395 5 #reduceActionForMemberVariableDeclaration12: 53367820 false ) 
	#(262 8 #reduceActionForGeneratorExpression1: 33649665 false ) 
	#(242 8 #reduceActionForFunctionExpression2: 31072258 false ) 
	#(327 5 #reduceActionForJSXChild4: 41370628 false ) 
	#(320 5 #reduceActionForJSXSpreadAttribute1: 40710145 false ) 
	#(220 8 #reduceActionForIterationStatement6: 26107910 false ) 
	#(220 8 #reduceActionForIterationStatement11: 26107915 false ) 
	#(220 8 #reduceActionForIterationStatement23: 26107927 false ) 
	#(220 8 #reduceActionForIterationStatement20: 26107924 false ) 
	#(220 8 #reduceActionForIterationStatement8: 26107912 false ) 
	#(220 8 #reduceActionForIterationStatement9: 26107913 false ) 
	#(220 8 #reduceActionForIterationStatement18: 26107922 false ) 
	#(220 8 #reduceActionForIterationStatement25: 26107929 false ) 
	#(220 8 #reduceActionForIterationStatement27: 26107931 false ) 
	#(231 3 #reduceActionForCaseClause1: 29839361 false ) 
	#(232 3 #reduceActionForDefaultClause2: 29945858 false ) 
	#(229 4 #reduceActionForCaseBlock5: 29582341 false ) 
	#(229 4 #reduceActionForCaseBlock4: 29582340 false ) 
	#(446 3 #reduceActionForMemberVariableDeclaration5: 62440451 false ) 
	#(446 3 #reduceActionForMemberVariableDeclaration3: 62440450 false ) 
	#(446 3 #reduceActionForAmbientPropertyMemberDeclaration9: 62440457 false ) 
	#(446 3 #reduceActionForMemberVariableDeclaration9: 62440453 false ) 
	#(441 7 #reduceActionForAmbientClassDeclaration2: 61740034 false ) 
	#(261 8 #reduceActionForGeneratorExpression1: 33413121 false ) 
	#(241 8 #reduceActionForFunctionExpression2: 30860290 false ) 
	#(429 8 #reduceActionForImportRequireDeclaration1: 58309633 false ) 
	#(270 8 #reduceActionForAsyncFunctionExpression1: 35107841 false ) 
	#(267 9 #reduceActionForAsyncGeneratorExpression1: 34577409 false ) 
	#(271 9 #reduceActionForAsyncFunctionExpression2: 35357698 false ) 
	#(258 7 #reduceActionForMethodDefinition5: 32540677 false ) 
	#(258 7 #reduceActionForMethodDefinition1: 32540673 false ) 
	#(396 6 #reduceActionForMemberFunctionDeclaration2: 53537794 false ) 
	#(393 6 #reduceActionForConstructorDeclaration4: 52794372 false ) 
	#(395 6 #reduceActionForMemberVariableDeclaration16: 53367824 false ) 
	#(396 6 #reduceActionForMemberFunctionDeclaration3: 53537795 false ) 
	#(262 9 #reduceActionForGeneratorExpression2: 33649666 false ) 
	#(311 9 #reduceActionForJSXFragment1: 40003585 false ) 
	#(310 6 #reduceActionForJSXClosingElement1: 39843841 false ) 
	#(220 9 #reduceActionForIterationStatement12: 26107916 false ) 
	#(220 9 #reduceActionForIterationStatement13: 26107917 false ) 
	#(220 9 #reduceActionForIterationStatement10: 26107914 false ) 
	#(220 9 #reduceActionForIterationStatement26: 26107930 false ) 
	#(231 4 #reduceActionForCaseClause2: 29839362 false ) 
	#(229 5 #reduceActionForCaseBlock6: 29582342 false ) 
	#(446 4 #reduceActionForMemberVariableDeclaration7: 62440452 false ) 
	#(446 4 #reduceActionForAmbientPropertyMemberDeclaration10: 62440458 false ) 
	#(446 4 #reduceActionForMemberVariableDeclaration13: 62440455 false ) 
	#(446 4 #reduceActionForMemberVariableDeclaration11: 62440454 false ) 
	#(446 4 #reduceActionForAmbientPropertyMemberDeclaration11: 62440459 false ) 
	#(261 9 #reduceActionForGeneratorExpression2: 33413122 false ) 
	#(266 9 #reduceActionForAsyncGeneratorExpression1: 34301953 false ) 
	#(270 9 #reduceActionForAsyncFunctionExpression2: 35107842 false ) 
	#(267 10 #reduceActionForAsyncGeneratorExpression2: 34577410 false ) 
	#(260 8 #reduceActionForGeneratorMethod1: 33197057 false ) 
	#(269 8 #reduceActionForAsyncMethod1: 34888705 false ) 
	#(258 8 #reduceActionForMethodDefinition6: 32540678 false ) 
	#(393 7 #reduceActionForConstructorDeclaration1: 52794369 false ) 
	#(396 7 #reduceActionForMemberFunctionDeclaration4: 53537796 false ) 
	#(324 5 #reduceActionForJSXChild4: 41107458 false ) 
	#(220 10 #reduceActionForIterationStatement14: 26107918 false ) 
	#(445 5 #reduceActionForAmbientConstructorDeclaration1: 62233601 false ) 
	#(446 5 #reduceActionForMemberVariableDeclaration15: 62440456 false ) 
	#(446 5 #reduceActionForAmbientPropertyMemberDeclaration12: 62440460 false ) 
	#(266 10 #reduceActionForAsyncGeneratorExpression2: 34301954 false ) 
	#(265 9 #reduceActionForAsyncGeneratorMethod1: 34049025 false ) 
	#(379 9 #reduceActionForGetAccessor1: 49503233 false ) 
	#(380 9 #reduceActionForSetAccessor2: 49709058 false ) 
	#(393 8 #reduceActionForConstructorDeclaration2: 52794370 false ) 
	#(380 10 #reduceActionForSetAccessor1: 49709057 false ) 
	#(380 10 #reduceActionForSetAccessor1: 49709059 false )
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
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<questionQuestion>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 0 49 0 131 0 81 0 197 0 57 0 198 0 81 0 199 0 65 0 200 0 49 1 27 0 73 1 28 0 77 1 29 0 81 1 30 0 81 1 31 0 81 1 41 0 6 1 199 0 10 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 1 101 0 186 1 101 0 187 1 101 0 189 0 245 0 242 1 101 0 250 1 113 0 251 1 117 0 252 1 121 0 255 1 101 1 0 0 245 1 6 1 101 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 2 9 0 190 2 9 0 193 2 9 0 194 2 9 0 195 2 9 0 203 2 9 0 217 2 9 0 218 2 9 0 219 2 9 0 220 2 9 0 223 2 9 0 224 2 9 0 226 2 9 0 227 2 9 0 228 2 9 0 233 2 9 0 235 2 9 0 236 2 9 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 2 81 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 2 89 1 25 2 93 1 26 0 6 1 199 0 26 1 200] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 0 81 0 197 0 57 0 198 0 81 0 199 0 65 0 200 2 97 1 27 0 73 1 28 0 77 1 29 0 81 1 30 0 81 1 31 0 81 1 41 0 6 1 199 0 10 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 2 109 0 62 0 137 0 64 1 217 0 65 2 113 0 67 2 117 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 2 125 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 2 209 0 190 2 209 0 193 2 209 0 194 2 209 0 195 2 209 0 199 0 65 0 200 2 209 0 203 2 209 0 217 2 209 0 218 2 209 0 219 2 209 0 220 2 209 0 223 2 209 0 224 2 209 0 226 2 209 0 227 2 209 0 228 2 209 0 233 2 209 0 235 2 209 0 236 2 209 0 240 2 209 0 241 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 2 209 1 5 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 2 209 1 18 0 245 1 19 2 161 1 31 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 2 165 1 121 2 169 1 130 2 209 1 143 2 177 1 148 2 181 1 154 2 185 1 156 2 189 1 157 2 193 1 158 2 197 1 159 2 201 1 160 2 205 1 161 2 209 1 162 2 213 1 163 2 217 1 164 2 221 1 165 2 225 1 166 2 229 1 167 2 233 1 168 2 237 1 169 2 241 1 170 2 245 1 171 2 249 1 172 2 237 1 173 2 237 1 174 2 249 1 175 2 237 1 176 2 249 1 177 3 17 1 178 3 21 1 179 3 25 1 180 3 29 1 196 3 33 1 199 0 19 1 200] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 3 93 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 3 93 1 107 3 93 1 108 3 109 1 109 3 109 1 111] 
#[0 0 46 0 3 0 5 0 116 1 199] 
#[1 3 173 0 3 3 177 0 25 3 181 0 52 3 185 0 57 0 65 0 58 3 189 0 63 3 193 0 74 0 65 0 84 1 245 0 107 3 197 0 191 3 197 0 192 3 197 0 199 0 65 0 200 3 209 0 203 3 197 0 241 3 197 1 5 3 197 1 10 3 197 1 14 3 197 1 18 3 233 1 42 3 237 1 43 3 241 1 199] 
#[1 3 245 0 3 3 249 0 25 0 185 0 116 4 17 0 119 4 5 0 132 4 1 1 32 4 5 1 33 4 9 1 34 4 13 1 35 4 17 1 39 4 5 1 40 4 17 1 48] 
#[0 0 50 0 3 0 5 0 116 1 199] 
#[0 0 0 1 200] 
#[0 0 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 4 29 0 190 4 29 0 193 4 29 0 194 4 29 0 195 4 29 0 203 4 29 0 217 4 29 0 218 4 29 0 219 4 29 0 220 4 29 0 223 4 29 0 224 4 29 0 226 4 29 0 227 4 29 0 228 4 29 0 233 4 29 0 235 4 29 0 236 4 29 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 0 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 4 41 0 132 4 45 0 201 4 49 0 202 4 53 0 206 4 53 0 207 4 53 0 208 4 49 1 128 4 49 1 129 4 73 1 199] 
#[0 0 62 1 200] 
#[0 0 66 1 200] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 77 0 197 0 57 0 198 4 77 0 199 0 65 0 200 4 77 1 30 4 77 1 31 4 77 1 41 0 6 1 199 0 70 1 200] 
#[0 0 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 0 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 0 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 86 0 2 0 23 0 3 4 81 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 4 85 0 112 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 4 89 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 4 93 0 186 4 93 0 187 4 93 0 189 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 0 245 0 242 4 113 0 243 4 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 4 93 0 250 1 113 0 251 1 117 0 252 1 121 0 255 4 93 1 0 0 245 1 6 4 93 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 133 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 4 137 0 6 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 4 141 0 112 4 145 0 113 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 4 149 0 138 4 153 0 139 4 157 0 140 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 4 161 0 186 4 161 0 187 0 245 0 242 4 161 0 250 1 113 0 251 1 117 0 252 1 121 0 255 4 161 1 0 0 245 1 6 4 161 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 4 181 0 169 4 181 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 4 181 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 4 189 0 169 4 189 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 4 189 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 4 193 0 169 4 193 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 4 193 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 4 197 0 169 4 197 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 4 197 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 4 201 0 169 4 201 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 4 201 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 4 205 0 169 4 205 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 4 205 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 209 0 1 4 213 0 74 0 185 0 116 4 217 0 132 4 221 0 251 1 117 0 252 1 121 0 255 4 225 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 4 229 0 169 4 229 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 4 229 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 233 0 3 4 237 0 69 0 185 0 116 4 241 0 132 4 245 1 20 4 249 1 21 4 253 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 5 1 0 169 5 1 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 5 1 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 5 5 0 1 5 9 0 25 0 185 0 116 5 13 0 132] 
#[0 5 17 0 1] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 5 21 0 21 4 169 0 52 0 133 0 57 1 157 0 70 0 145 0 74 0 153 0 87 1 153 0 88 5 25 0 98 0 165 0 101 1 157 0 103 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 5 29 0 132 5 29 0 134 5 29 0 135 5 29 0 136 5 29 0 137 5 29 0 141 0 233 0 142 5 29 0 150 0 241 0 151 5 29 0 154 5 29 0 155 5 29 0 156 5 29 0 157 5 33 0 158 5 29 0 242 5 29 1 6 5 29 1 11 5 29 1 15 5 29 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 5 29 1 50 5 29 1 51 5 29 1 52 1 181 1 53 5 29 1 55 1 189 1 73 5 37 1 199] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 5 41 0 1 5 45 0 5 5 49 0 21 5 53 0 162 5 57 1 199] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 5 61 0 169 5 61 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 5 61 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 5 65 0 169 5 65 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 5 65 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 0 93 0 1 0 106 0 2 0 14 0 3 0 106 0 4 0 97 0 5 0 106 0 6 0 106 0 7 5 69 0 25 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 106 0 90 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 106 0 113 0 106 0 114 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 106 0 125 0 106 0 126 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 5 73 0 186 5 73 0 187 0 245 0 242 5 73 0 250 1 113 0 251 1 117 0 252 1 121 0 255 5 73 1 0 0 245 1 6 5 73 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199 0 106 1 200] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 69 0 73 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 0 128 1 198 1 199 1 200] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 130 0 13 5 77 1 74] 
#[1 0 134 0 1 0 134 0 2 0 134 0 4 0 134 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 78 0 134 0 81 0 134 0 90 0 134 0 113 0 134 0 114 0 134 0 123 0 134 0 124 0 134 0 125 0 134 0 126 0 134 1 198 0 134 1 199 0 134 1 200] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 5 81 0 3] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 5 85 0 124] 
#[1 5 41 0 1 0 166 0 2 0 166 0 3 0 166 0 4 5 89 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 19 0 166 0 20 5 93 0 21 0 166 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 5 97 0 42 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 49 0 166 0 50 0 166 0 51 0 166 0 78 0 166 0 81 0 166 0 90 0 166 0 113 0 166 0 114 0 201 0 123 0 18 0 124 0 166 0 125 0 166 0 126 5 101 0 150 0 241 0 151 5 105 0 162 5 109 0 165 0 166 1 198 5 57 1 199 0 166 1 200] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198 1 200] 
#[1 5 41 0 1 0 186 0 2 0 186 0 3 0 186 0 4 5 113 0 5 0 186 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 19 0 186 0 20 5 117 0 21 0 186 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 39 0 186 0 40 0 186 0 41 5 97 0 42 0 186 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 49 0 186 0 50 0 186 0 51 0 186 0 78 0 186 0 81 0 186 0 90 0 186 0 113 0 186 0 114 0 201 0 123 0 18 0 124 0 186 0 125 0 186 0 126 5 121 0 150 0 241 0 151 5 125 0 162 5 129 0 165 0 186 1 198 5 57 1 199 0 186 1 200] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 6 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 17 0 198 0 19 0 198 0 20 0 198 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 39 0 198 0 40 0 198 0 41 5 97 0 42 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 0 198 0 51 0 198 0 78 0 198 0 81 0 198 0 90 0 198 0 113 0 198 0 114 0 198 0 125 0 198 0 126 5 133 0 165 0 198 1 198 0 198 1 200] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 0 202 0 8 5 197 0 9 0 202 0 10 0 202 0 11 5 197 0 12 0 202 0 13 0 202 0 14 5 197 0 15 5 197 0 16 0 202 0 17 0 202 0 19 0 202 0 20 5 197 0 22 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 5 197 0 27 5 197 0 28 5 197 0 29 5 197 0 30 5 197 0 31 5 197 0 32 5 197 0 33 0 202 0 34 5 185 0 35 0 202 0 36 5 189 0 37 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 49 0 202 0 50 5 193 0 51 0 202 0 78 0 202 0 81 0 202 0 90 0 202 0 113 0 202 0 114 0 202 0 125 0 202 0 126 5 197 0 188 5 197 1 198 0 202 1 200] 
#[0 0 206 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 8 0 210 0 10 0 210 0 11 0 210 0 13 0 210 0 14 0 210 0 17 0 210 0 19 0 210 0 20 0 210 0 23 0 210 0 24 0 210 0 25 5 205 0 26 0 210 0 34 0 210 0 36 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 43 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 49 0 210 0 50 0 210 0 78 0 210 0 81 0 210 0 90 0 210 0 113 0 210 0 114 0 210 0 125 0 210 0 126 0 210 1 200] 
#[0 0 214 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 218 0 2 0 218 0 4 0 218 0 6 0 218 0 7 5 221 0 8 0 218 0 10 0 218 0 11 0 218 0 13 0 218 0 14 0 218 0 17 0 218 0 19 0 218 0 20 0 218 0 23 0 218 0 24 5 221 0 25 0 218 0 34 0 218 0 36 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 43 5 221 0 44 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 49 0 218 0 50 0 218 0 78 0 218 0 81 0 218 0 90 0 218 0 113 0 218 0 114 0 218 0 125 0 218 0 126 5 221 0 173 0 218 1 200] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 0 222 0 10 0 222 0 11 0 222 0 13 0 222 0 14 0 222 0 17 0 222 0 19 0 222 0 20 0 222 0 23 0 222 0 24 5 225 0 34 5 229 0 36 0 222 0 39 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 46 0 222 0 47 0 222 0 49 0 222 0 50 0 222 0 78 0 222 0 81 0 222 0 90 0 222 0 113 0 222 0 114 0 222 0 125 0 222 0 126 0 222 1 200] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 0 226 0 10 5 233 0 11 0 226 0 13 5 237 0 14 5 241 0 17 0 226 0 19 0 226 0 20 0 226 0 23 0 226 0 24 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 46 0 226 0 47 0 226 0 49 0 226 0 50 0 226 0 78 0 226 0 81 0 226 0 90 0 226 0 113 0 226 0 114 0 226 0 125 0 226 0 126 0 226 1 200] 
#[1 0 230 0 2 0 230 0 4 0 230 0 6 0 230 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 0 230 0 23 0 230 0 24 0 230 0 39 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 46 0 230 0 47 0 230 0 49 0 230 0 50 6 5 0 78 6 9 0 81 0 230 0 90 0 230 0 113 0 230 0 114 0 230 0 125 0 230 0 126 0 230 1 200] 
#[1 0 234 0 2 0 234 0 4 0 234 0 6 0 234 0 7 6 13 0 23 6 17 0 24 0 234 0 39 0 234 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 46 0 234 0 47 6 21 0 49 6 25 0 50 0 234 0 90 0 234 0 113 0 234 0 114 0 234 0 125 0 234 0 126 0 234 1 200] 
#[1 0 238 0 2 0 238 0 4 0 238 0 6 0 238 0 7 6 29 0 39 0 238 0 40 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 46 0 238 0 47 0 238 0 90 0 238 0 113 0 238 0 114 0 238 0 125 0 238 0 126 0 238 1 200] 
#[1 0 242 0 2 0 242 0 4 0 242 0 6 0 242 0 7 0 242 0 40 0 242 0 41 0 242 0 43 0 242 0 45 0 242 0 46 6 33 0 47 0 242 0 90 0 242 0 113 0 242 0 114 0 242 0 125 0 242 0 126 0 242 1 200] 
#[1 0 246 0 2 0 246 0 4 0 246 0 6 0 246 0 7 0 246 0 40 0 246 0 41 0 250 0 43 6 37 0 45 0 246 0 46 0 246 0 90 0 246 0 113 0 246 0 114 0 246 0 125 0 246 0 126 0 246 1 200] 
#[1 0 254 0 2 0 254 0 4 0 254 0 6 0 254 0 7 6 41 0 40 0 254 0 41 0 254 0 46 0 254 0 90 0 254 0 113 0 254 0 114 0 254 0 125 0 254 0 126 0 254 1 200] 
#[1 1 2 0 2 1 2 0 4 1 2 0 6 1 2 0 7 1 2 0 41 6 45 0 46 1 2 0 90 1 2 0 113 1 2 0 114 1 2 0 125 1 2 0 126 1 2 1 200] 
#[1 1 6 0 2 1 6 0 4 1 6 0 6 1 6 0 7 1 6 0 41 1 10 0 43 1 6 0 90 1 6 0 113 1 6 0 114 1 6 0 125 1 6 0 126 1 6 1 200] 
#[0 6 49 0 43] 
#[1 1 14 0 2 1 14 0 4 1 14 0 6 1 14 0 7 6 53 0 41 1 14 0 90 1 14 0 113 1 14 0 114 1 14 0 125 1 14 0 126 1 14 1 200] 
#[0 1 18 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 1 22 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 200] 
#[1 6 57 0 113 0 0 1 200] 
#[0 1 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 30 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 6 61 0 18] 
#[0 1 34 0 18] 
#[0 1 38 0 18] 
#[0 1 42 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 50 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 62 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 1 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 198 1 199 1 200] 
#[1 1 98 0 3 1 98 0 127 1 98 0 129 6 65 1 75] 
#[0 1 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 6 69 0 127] 
#[1 6 73 0 1 6 77 0 10 6 81 0 74 6 85 1 79 6 89 1 122] 
#[1 0 6 0 1 0 6 0 3 6 93 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 97 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 0 6 1 199] 
#[0 1 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 1 110 0 7 1 110 0 116 6 101 0 225] 
#[1 1 110 0 7 1 110 0 116 6 105 0 225] 
#[0 6 109 0 7] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 6 113 0 190 6 113 0 193 6 113 0 194 6 113 0 195 6 113 0 203 6 113 0 217 6 113 0 218 6 113 0 219 6 113 0 220 6 113 0 223 6 113 0 224 6 113 0 226 6 113 0 227 6 113 0 228 6 113 0 233 6 113 0 235 6 113 0 236 6 113 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 6 117 0 1 6 121 0 53] 
#[0 6 125 0 1] 
#[1 1 110 0 1 1 110 0 3 1 110 0 5 1 110 0 7 1 110 0 34 1 110 0 35 1 110 0 36 1 110 0 37 1 110 0 38 1 110 0 48 1 110 0 52 1 110 0 53 1 110 0 57 1 110 0 64 1 110 0 70 1 110 0 74 1 110 0 77 1 110 0 87 1 110 0 88 1 110 0 98 1 110 0 101 1 110 0 103 1 110 0 106 1 110 0 108 1 110 0 111 1 110 0 116 1 110 0 119 1 110 0 120 1 110 0 121 1 110 0 123 1 110 0 124 1 110 0 127 6 129 0 225 1 110 1 199] 
#[0 6 133 0 1] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 6 137 0 186 6 137 0 187 6 137 0 189 0 245 0 242 6 137 0 250 1 113 0 251 1 117 0 252 1 121 0 255 6 137 1 0 0 245 1 6 6 137 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 1 197 0 3 6 141 0 195] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 6 145 0 132 6 149 0 204 6 153 0 205 6 157 0 206 6 157 0 207 6 157 0 208 6 161 1 199] 
#[0 6 165 0 1] 
#[0 6 169 0 1] 
#[1 0 110 0 1 0 110 0 5 0 110 0 7 0 110 0 8 0 110 0 9 0 110 0 10 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 16 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 21 0 110 0 22 0 110 0 23 0 110 0 24 0 110 0 25 0 110 0 26 0 110 0 27 0 110 0 28 0 110 0 29 0 110 0 30 0 110 0 31 0 110 0 32 0 110 0 33 0 110 0 34 0 110 0 35 0 110 0 36 0 110 0 37 0 110 0 39 0 110 0 40 0 110 0 41 0 110 0 42 0 110 0 43 0 110 0 44 0 110 0 45 0 110 0 46 0 110 0 47 0 110 0 49 0 110 0 50 0 110 0 51 0 110 0 78 0 110 0 81 0 110 0 113 6 173 0 114 0 110 0 123 0 110 0 124 0 110 1 198 0 110 1 199] 
#[1 6 177 0 7 6 57 0 113] 
#[0 0 0 1 200] 
#[0 1 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 181 0 197 0 57 0 198 6 181 0 199 0 65 0 200 0 6 1 199 1 182 1 200] 
#[0 1 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 0 0 1 200] 
#[0 1 190 1 200] 
#[0 0 0 1 200] 
#[1 4 233 0 3 4 237 0 69 0 185 0 116 6 185 0 132 6 189 1 20 4 249 1 21 4 253 1 199] 
#[1 0 46 0 3 0 46 0 5 6 193 0 67 0 46 0 116 0 46 1 199] 
#[1 6 197 0 57 6 201 0 58 2 113 0 67 6 205 0 74 6 209 0 84 6 213 0 85 6 217 0 86 6 221 0 107 6 241 1 143 6 229 1 181 6 233 1 184 6 237 1 185 6 241 1 191 6 245 1 192] 
#[1 0 185 0 116 6 249 0 132] 
#[1 3 173 0 3 6 253 0 22 7 1 0 25 3 185 0 57 2 105 0 58 7 5 0 62 7 9 0 63 2 113 0 67 3 193 0 74 7 13 0 77 2 129 0 82 0 65 0 84 2 133 0 86 2 137 0 105 1 245 0 107 7 17 0 199 0 65 0 200 7 21 0 203 7 25 0 241 7 29 1 5 7 33 1 18 7 37 1 31 7 41 1 43 7 45 1 121 7 49 1 130 7 53 1 143 7 57 1 148 7 61 1 154 7 65 1 180 7 69 1 199] 
#[1 7 73 0 1 7 77 0 25 0 185 0 116 7 81 0 132] 
#[1 5 17 0 1 3 245 0 3 3 249 0 25 0 185 0 116 4 17 0 119 7 85 0 132 4 1 1 32 4 5 1 33 4 9 1 34 4 13 1 35 4 17 1 39 4 5 1 40 4 17 1 48] 
#[1 0 185 0 116 7 89 0 132] 
#[1 0 185 0 116 7 93 0 132 7 97 1 149] 
#[1 0 185 0 116 7 101 0 132] 
#[0 1 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 210 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 1 214 0 1 1 214 0 3 1 214 0 5 1 214 0 7 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 48 1 214 0 52 1 214 0 53 1 214 0 54 1 214 0 57 1 214 0 58 1 214 0 60 1 214 0 61 0 27 0 62 1 214 0 64 1 214 0 65 1 214 0 67 0 27 0 68 1 214 0 70 1 214 0 72 1 214 0 74 1 214 0 76 0 27 0 77 0 27 0 82 1 214 0 84 0 27 0 86 1 214 0 87 1 214 0 88 1 214 0 94 1 214 0 98 1 214 0 99 1 214 0 101 1 214 0 102 1 214 0 103 1 214 0 104 0 27 0 105 1 214 0 106 1 214 0 107 1 214 0 108 1 214 0 109 1 214 0 110 1 214 0 111 1 214 0 116 1 214 0 119 1 214 0 120 1 214 0 121 1 214 0 123 1 214 0 124 1 214 0 127 1 214 1 199 0 27 1 200] 
#[1 1 222 0 1 1 222 0 3 1 222 0 5 1 222 0 7 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 48 1 222 0 52 1 222 0 53 1 222 0 54 1 222 0 57 1 222 0 58 1 222 0 60 1 222 0 61 0 31 0 62 1 222 0 64 1 222 0 65 1 222 0 67 0 31 0 68 1 222 0 70 1 222 0 72 1 222 0 74 1 222 0 76 0 31 0 77 0 31 0 82 1 222 0 84 0 31 0 86 1 222 0 87 1 222 0 88 1 222 0 94 1 222 0 98 1 222 0 99 1 222 0 101 1 222 0 102 1 222 0 103 1 222 0 104 0 31 0 105 1 222 0 106 1 222 0 107 1 222 0 108 1 222 0 109 1 222 0 110 1 222 0 111 1 222 0 116 1 222 0 119 1 222 0 120 1 222 0 121 1 222 0 123 1 222 0 124 1 222 0 127 1 222 1 199 0 31 1 200] 
#[1 1 230 0 1 1 230 0 3 1 230 0 5 1 230 0 7 1 230 0 34 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 48 1 230 0 52 1 230 0 53 1 230 0 54 1 230 0 57 1 230 0 58 1 230 0 60 1 230 0 61 0 35 0 62 1 230 0 64 1 230 0 65 1 230 0 67 0 35 0 68 1 230 0 70 1 230 0 72 1 230 0 74 1 230 0 76 0 35 0 77 0 35 0 82 1 230 0 84 0 35 0 86 1 230 0 87 1 230 0 88 1 230 0 94 1 230 0 98 1 230 0 99 1 230 0 101 1 230 0 102 1 230 0 103 1 230 0 104 0 35 0 105 1 230 0 106 1 230 0 107 1 230 0 108 1 230 0 109 1 230 0 110 1 230 0 111 1 230 0 116 1 230 0 119 1 230 0 120 1 230 0 121 1 230 0 123 1 230 0 124 1 230 0 127 1 230 1 199 0 35 1 200] 
#[0 1 238 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 1 242 0 1 1 242 0 3 1 242 0 5 1 242 0 7 1 242 0 34 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 38 1 242 0 48 1 242 0 52 1 242 0 53 1 242 0 54 1 242 0 57 1 242 0 58 1 242 0 60 1 242 0 61 0 39 0 62 1 242 0 64 1 242 0 65 1 242 0 67 0 39 0 68 1 242 0 70 1 242 0 72 1 242 0 74 1 242 0 76 0 39 0 77 0 39 0 82 1 242 0 84 0 39 0 86 1 242 0 87 1 242 0 88 1 242 0 94 1 242 0 98 1 242 0 99 1 242 0 101 1 242 0 102 1 242 0 103 1 242 0 104 0 39 0 105 1 242 0 106 1 242 0 107 1 242 0 108 1 242 0 109 1 242 0 110 1 242 0 111 1 242 0 116 1 242 0 119 1 242 0 120 1 242 0 121 1 242 0 123 1 242 0 124 1 242 0 127 1 242 1 199 0 39 1 200] 
#[1 0 43 0 1 0 43 0 3 0 43 0 5 0 43 0 7 0 43 0 34 0 43 0 35 0 43 0 36 0 43 0 37 0 43 0 38 0 43 0 48 0 43 0 52 0 43 0 53 0 43 0 54 0 43 0 57 0 43 0 58 0 43 0 60 0 43 0 61 0 47 0 62 0 43 0 64 0 43 0 65 0 43 0 67 0 47 0 68 0 43 0 70 0 43 0 72 0 43 0 74 0 43 0 76 0 47 0 77 0 47 0 82 0 43 0 84 0 47 0 86 0 43 0 87 0 43 0 88 0 43 0 94 0 43 0 98 0 43 0 99 0 43 0 101 0 43 0 102 0 43 0 103 0 43 0 104 0 47 0 105 0 43 0 106 0 43 0 107 0 43 0 108 0 43 0 109 0 43 0 110 0 43 0 111 0 43 0 116 0 43 0 119 0 43 0 120 0 43 0 121 0 43 0 123 0 43 0 124 0 43 0 127 0 43 1 199 0 47 1 200] 
#[0 0 0 1 200] 
#[0 2 6 1 200] 
#[0 2 10 1 200] 
#[0 2 14 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 2 109 0 62 0 137 0 64 1 217 0 65 2 113 0 67 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 7 105 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 7 125 0 190 7 125 0 193 7 125 0 194 7 125 0 195 7 125 0 199 0 65 0 200 7 125 0 203 7 125 0 217 7 125 0 218 7 125 0 219 7 125 0 220 7 125 0 223 7 125 0 224 7 125 0 226 7 125 0 227 7 125 0 228 7 125 0 233 7 125 0 235 7 125 0 236 7 125 0 240 7 125 0 241 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 7 125 1 5 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 7 125 1 18 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 7 125 1 121 7 125 1 130 7 125 1 143 7 125 1 148 7 125 1 154 7 125 1 161 7 125 1 162 7 125 1 180 7 125 1 196 3 33 1 199 2 18 1 200] 
#[0 2 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 51 0 1 0 51 0 3 0 51 0 5 0 51 0 7 0 51 0 34 0 51 0 35 0 51 0 36 0 51 0 37 0 51 0 38 0 51 0 48 0 51 0 52 0 51 0 53 0 51 0 54 0 51 0 57 0 51 0 58 0 51 0 60 0 51 0 61 0 51 0 62 0 51 0 64 0 51 0 65 0 51 0 67 2 26 0 68 0 51 0 70 0 51 0 72 0 51 0 74 0 51 0 76 0 51 0 77 0 51 0 82 0 51 0 84 0 51 0 86 0 51 0 87 0 51 0 88 0 51 0 94 0 51 0 98 0 51 0 99 0 51 0 101 0 51 0 102 0 51 0 103 0 51 0 104 0 51 0 105 0 51 0 106 0 51 0 107 0 51 0 108 0 51 0 109 0 51 0 110 0 51 0 111 0 51 0 116 0 51 0 119 0 51 0 120 0 51 0 121 0 51 0 123 0 51 0 124 0 51 0 127 0 51 1 199 0 51 1 200] 
#[0 2 34 1 200] 
#[1 2 109 0 62 7 141 0 77 2 129 0 82 2 133 0 86 2 137 0 105 7 161 1 121 7 161 1 130 7 161 1 148 7 161 1 154 7 161 1 165 7 161 1 166 7 161 1 180 7 161 1 196 2 38 1 200] 
#[0 2 42 0 62 0 77 0 82 0 86 0 105 1 200] 
#[1 0 55 0 62 2 46 0 68 0 55 0 77 0 55 0 82 0 55 0 86 0 55 0 105 0 55 1 200] 
#[0 2 54 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 7 5 0 62 0 137 0 64 1 217 0 65 2 113 0 67 7 177 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 2 125 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 7 193 0 190 7 193 0 193 7 193 0 194 7 193 0 195 7 193 0 199 0 65 0 200 7 193 0 203 7 193 0 217 7 193 0 218 7 193 0 219 7 193 0 220 7 193 0 223 7 193 0 224 7 193 0 226 7 193 0 227 7 193 0 228 7 193 0 233 7 193 0 235 7 193 0 236 7 193 0 240 7 193 0 241 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 7 193 1 5 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 7 193 1 18 0 245 1 19 7 193 1 31 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 7 193 1 121 7 193 1 130 7 193 1 143 7 193 1 148 7 185 1 154 7 193 1 162 7 193 1 169 7 193 1 173 7 193 1 174 7 193 1 176 7 193 1 178 7 193 1 179 7 193 1 180 3 33 1 199 2 58 1 200] 
#[0 2 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 66 1 200] 
#[1 2 70 0 4 7 5 0 62 7 205 0 68 7 13 0 77 2 129 0 82 2 133 0 86 2 137 0 105 7 217 1 31 7 217 1 121 7 217 1 130 7 217 1 148 7 217 1 154 7 217 1 166 7 217 1 172 7 217 1 175 7 217 1 177 7 217 1 178 7 217 1 179 7 217 1 180 2 70 1 200] 
#[0 2 74 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 2 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 86 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 2 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 94 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[1 2 98 0 1 2 98 0 3 2 98 0 5 2 98 0 7 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 2 98 0 38 2 98 0 48 2 98 0 52 2 98 0 53 2 98 0 54 2 98 0 57 2 98 0 58 2 98 0 60 2 98 0 61 0 59 0 62 2 98 0 64 2 98 0 65 2 98 0 67 0 59 0 68 2 98 0 70 2 98 0 72 2 98 0 74 2 98 0 76 0 59 0 77 0 59 0 82 2 98 0 84 0 59 0 86 2 98 0 87 2 98 0 88 2 98 0 94 2 98 0 98 2 98 0 99 2 98 0 101 2 98 0 102 2 98 0 103 2 98 0 104 0 59 0 105 2 98 0 106 2 98 0 107 2 98 0 108 2 98 0 109 2 98 0 110 2 98 0 111 2 98 0 116 2 98 0 119 2 98 0 120 2 98 0 121 2 98 0 123 2 98 0 124 2 98 0 127 2 98 1 199 0 59 1 200] 
#[1 2 106 0 1 2 106 0 3 2 106 0 5 2 106 0 7 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 37 2 106 0 38 2 106 0 48 2 106 0 52 2 106 0 53 2 106 0 54 2 106 0 57 2 106 0 58 2 106 0 60 2 106 0 61 0 63 0 62 2 106 0 64 2 106 0 65 2 106 0 67 0 63 0 68 2 106 0 70 2 106 0 72 2 106 0 74 2 106 0 76 0 63 0 77 0 63 0 82 2 106 0 84 0 63 0 86 2 106 0 87 2 106 0 88 2 106 0 94 2 106 0 98 2 106 0 99 2 106 0 101 2 106 0 102 2 106 0 103 2 106 0 104 0 63 0 105 2 106 0 106 2 106 0 107 2 106 0 108 2 106 0 109 2 106 0 110 2 106 0 111 2 106 0 116 2 106 0 119 2 106 0 120 2 106 0 121 2 106 0 123 2 106 0 124 2 106 0 127 2 106 1 199 0 63 1 200] 
#[1 2 114 0 1 2 114 0 3 2 114 0 5 2 114 0 7 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 48 2 114 0 52 2 114 0 53 2 114 0 54 2 114 0 57 2 114 0 58 2 114 0 60 2 114 0 61 0 67 0 62 2 114 0 64 2 114 0 65 2 114 0 67 0 67 0 68 2 114 0 70 2 114 0 72 2 114 0 74 2 114 0 76 0 67 0 77 0 67 0 82 2 114 0 84 0 67 0 86 2 114 0 87 2 114 0 88 2 114 0 94 2 114 0 98 2 114 0 99 2 114 0 101 2 114 0 102 2 114 0 103 2 114 0 104 0 67 0 105 2 114 0 106 2 114 0 107 2 114 0 108 2 114 0 109 2 114 0 110 2 114 0 111 2 114 0 116 2 114 0 119 2 114 0 120 2 114 0 121 2 114 0 123 2 114 0 124 2 114 0 127 2 114 1 199 0 67 1 200] 
#[1 2 122 0 1 2 122 0 3 2 122 0 5 2 122 0 7 2 122 0 34 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 2 122 0 48 2 122 0 52 2 122 0 53 2 122 0 54 2 122 0 57 2 122 0 58 2 122 0 60 2 122 0 61 0 71 0 62 2 122 0 64 2 122 0 65 2 122 0 67 2 122 0 70 2 122 0 72 2 122 0 74 2 122 0 76 0 71 0 77 0 71 0 82 2 122 0 84 0 71 0 86 2 122 0 87 2 122 0 88 2 122 0 94 2 122 0 98 2 122 0 99 2 122 0 101 2 122 0 102 2 122 0 103 2 122 0 104 0 71 0 105 2 122 0 106 2 122 0 107 2 122 0 108 2 122 0 109 2 122 0 110 2 122 0 111 2 122 0 116 2 122 0 119 2 122 0 120 2 122 0 121 2 122 0 123 2 122 0 124 2 122 0 127 2 122 1 199 0 71 1 200] 
#[1 6 73 0 1 6 77 0 10 7 229 0 74 0 185 0 116 7 233 0 132 7 237 1 79 6 89 1 122] 
#[1 3 37 0 1 0 86 0 2 7 241 0 3 7 245 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 4 85 0 112 0 185 0 116 3 81 0 119 3 85 0 120 7 249 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 7 253 0 244 4 121 0 245 4 125 0 246 4 129 0 247 3 81 1 48 3 85 1 49 3 89 1 79 8 1 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 8 1 1 107 8 1 1 108 3 109 1 109 3 109 1 111 8 5 1 199] 
#[1 8 9 0 1 8 13 0 4 8 17 0 5 3 49 0 10 8 21 0 87 8 25 0 117 8 45 0 119 8 49 0 120 8 33 0 133 8 33 0 145 8 33 0 146 8 33 0 147 8 45 1 48 8 49 1 49 8 53 1 79 8 57 1 98 8 61 1 99 8 65 1 100 8 65 1 112 8 65 1 114 8 65 1 118 8 65 1 119 8 65 1 120] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 8 97 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 8 93 1 103 8 97 1 104 3 97 1 105 3 101 1 106 8 97 1 107 8 97 1 108 3 109 1 109 3 109 1 111] 
#[1 0 185 0 116 8 101 0 132 8 105 1 80 8 109 1 81] 
#[1 8 113 0 1 3 41 0 3 3 45 0 5 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 8 117 1 90 8 117 1 91 8 117 1 92 8 117 1 93 8 117 1 94 3 129 1 95 3 133 1 96 8 117 1 97 8 117 1 101 8 117 1 102 8 117 1 109 8 117 1 111] 
#[1 8 113 0 1 3 41 0 3 3 45 0 5 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 8 121 1 90 8 121 1 91 8 121 1 92 8 121 1 93 8 121 1 94 3 129 1 95 3 133 1 96 8 121 1 97 8 121 1 101 8 121 1 102 8 121 1 109 8 121 1 111] 
#[1 8 125 0 1 3 49 0 10 8 129 1 79] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 0 185 0 116 8 133 0 132 8 137 1 110] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 2 138 0 2 2 138 0 3 2 138 0 4 2 138 0 5 2 138 0 6 2 138 0 7 2 138 0 8 2 138 0 10 2 138 0 11 2 138 0 13 2 138 0 14 2 138 0 17 2 138 0 18 2 138 0 19 2 138 0 20 2 142 0 21 2 138 0 22 2 138 0 23 2 138 0 24 2 138 0 25 2 138 0 26 2 138 0 34 2 138 0 36 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 43 2 138 0 44 2 138 0 45 2 138 0 46 2 138 0 47 2 138 0 49 2 138 0 50 2 138 0 59 2 138 0 78 2 138 0 80 2 138 0 81 2 138 0 90 2 138 0 91 2 138 0 92 2 138 0 93 2 138 0 96 2 138 0 113 2 138 0 114 2 138 0 117 2 138 0 119 2 138 0 120 2 138 0 125 2 138 0 126 2 138 1 200] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 8 141 0 1] 
#[0 0 0 1 200] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 5 2 154 0 6 2 154 0 7 2 154 0 8 2 154 0 10 2 154 0 11 2 154 0 13 2 154 0 14 2 154 0 17 2 154 0 18 2 154 0 19 2 154 0 20 2 154 0 22 2 154 0 23 2 154 0 24 2 154 0 25 2 154 0 26 2 154 0 34 2 154 0 36 2 154 0 39 2 154 0 40 2 154 0 41 2 154 0 43 2 154 0 44 0 75 0 45 2 154 0 46 2 154 0 47 2 154 0 49 2 154 0 50 2 154 0 59 2 154 0 78 2 154 0 81 2 154 0 90 2 154 0 91 2 154 0 92 2 154 0 93 2 154 0 96 2 154 0 113 2 154 0 114 2 154 0 117 2 154 0 119 2 154 0 120 2 154 0 125 2 154 0 126 2 154 1 200] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 2 158 0 5 2 158 0 6 2 158 0 7 2 158 0 8 2 158 0 10 2 158 0 11 2 158 0 13 2 158 0 14 2 158 0 17 2 158 0 18 2 158 0 19 2 158 0 20 2 158 0 22 2 158 0 23 2 158 0 24 2 158 0 25 2 158 0 26 2 158 0 34 2 158 0 36 0 79 0 39 2 158 0 40 2 158 0 41 2 158 0 43 2 158 0 44 2 158 0 45 2 158 0 46 2 158 0 47 2 158 0 49 2 158 0 50 2 158 0 59 2 158 0 78 2 158 0 81 2 158 0 90 2 158 0 91 2 158 0 92 2 158 0 93 2 158 0 96 2 158 0 113 2 158 0 114 2 158 0 117 2 158 0 119 2 158 0 120 2 158 0 125 2 158 0 126 2 158 1 200] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 0 83 0 5 2 166 0 6 2 166 0 7 2 166 0 8 2 166 0 10 2 166 0 11 2 166 0 13 2 166 0 14 2 166 0 17 2 166 0 18 2 166 0 19 2 166 0 20 2 166 0 22 2 166 0 23 2 166 0 24 2 166 0 25 2 166 0 26 2 166 0 34 2 166 0 36 2 166 0 39 2 166 0 40 2 166 0 41 2 166 0 43 2 166 0 44 2 166 0 45 2 166 0 46 2 166 0 47 2 166 0 49 2 166 0 50 2 166 0 59 2 166 0 78 2 166 0 81 2 166 0 90 2 166 0 91 2 166 0 92 2 166 0 93 2 166 0 96 2 166 0 113 2 166 0 114 2 166 0 117 2 166 0 119 2 166 0 120 2 166 0 125 2 166 0 126 8 153 0 225 2 166 1 200] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 1 110 0 2 1 110 0 3 1 110 0 4 1 110 0 5 1 110 0 6 1 110 0 7 1 110 0 8 1 110 0 10 1 110 0 11 1 110 0 13 1 110 0 14 1 110 0 17 1 110 0 18 1 110 0 19 1 110 0 20 1 110 0 22 1 110 0 23 1 110 0 24 1 110 0 25 1 110 0 26 1 110 0 34 1 110 0 36 1 110 0 39 1 110 0 40 1 110 0 41 1 110 0 43 1 110 0 44 1 110 0 45 1 110 0 46 1 110 0 47 1 110 0 49 1 110 0 50 1 110 0 59 1 110 0 78 1 110 0 80 1 110 0 81 1 110 0 90 1 110 0 91 1 110 0 92 1 110 0 93 1 110 0 96 1 110 0 113 1 110 0 114 1 110 0 117 1 110 0 119 1 110 0 120 1 110 0 125 1 110 0 126 8 157 0 225 1 110 1 200] 
#[0 8 161 0 21] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 8 165 0 4 8 169 0 117 8 173 1 44 8 177 1 45] 
#[1 8 181 0 51 2 222 0 73] 
#[0 8 185 0 74] 
#[1 4 233 0 3 4 237 0 69 0 185 0 116 8 189 0 132 8 193 1 20 4 249 1 21 4 253 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 8 197 0 186 8 197 0 187 0 245 0 242 8 197 0 250 1 113 0 251 1 117 0 252 1 121 0 255 8 197 1 0 0 245 1 6 8 197 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 8 201 0 1 8 205 0 25 0 185 0 116 8 209 0 132] 
#[0 2 226 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 238 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 3 2 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 8 213 0 73 8 217 1 36] 
#[1 8 221 0 7 3 6 0 73] 
#[1 3 49 0 10 8 225 0 58 2 113 0 67 8 229 0 74 2 129 0 82 2 137 0 105 0 185 0 116 7 233 0 132 8 233 1 79 8 237 1 121 8 241 1 130 8 245 1 143] 
#[1 8 249 0 4 0 185 0 116 8 253 0 117 9 9 0 132 9 1 1 37 9 5 1 38 9 9 1 40] 
#[0 9 13 0 51] 
#[0 3 10 0 4 0 73 0 113] 
#[1 8 213 0 73 9 17 1 36] 
#[1 3 14 0 73 9 21 0 113] 
#[0 3 18 0 73] 
#[0 3 22 0 73] 
#[0 9 25 0 7] 
#[0 3 26 0 73 0 113] 
#[0 3 30 0 7] 
#[0 3 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 9 29 0 4 9 33 0 5 9 37 0 112 0 185 0 116 8 25 0 117 8 45 0 119 8 49 0 120 9 41 0 132 9 45 0 133 9 45 0 145 9 45 0 146 9 45 0 147 9 49 0 209 9 53 0 210 9 57 0 213 9 57 0 215 8 45 1 48 8 49 1 49 9 65 1 199] 
#[1 4 33 0 3 4 37 0 5 9 69 0 6 4 85 0 112 4 145 0 113 0 185 0 116 9 41 0 132 9 73 0 139 4 97 0 206 4 97 0 207 4 97 0 208 9 77 0 211 9 81 0 212 9 85 0 214 9 85 0 215 9 89 0 216 8 5 1 199] 
#[1 3 38 0 7 9 93 0 22 3 38 0 113 9 97 0 149] 
#[1 9 101 0 7 9 105 0 113] 
#[0 3 42 0 7 0 113] 
#[1 9 93 0 22 9 109 0 149] 
#[0 3 46 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 3 50 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 3 54 0 7 0 113] 
#[0 3 58 0 7 0 113] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 9 113 0 132 9 117 0 206 9 117 0 207 9 117 0 208] 
#[0 3 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 23 0 3 4 81 0 5 9 121 0 6 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 9 125 0 112 4 145 0 113 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 4 89 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 4 149 0 138 9 129 0 139 4 157 0 140 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 4 161 0 186 4 161 0 187 4 97 0 206 4 97 0 207 4 97 0 208 9 77 0 211 9 81 0 212 9 85 0 214 9 85 0 215 9 89 0 216 0 245 0 242 4 161 0 250 1 113 0 251 1 117 0 252 1 121 0 255 4 161 1 0 0 245 1 6 4 161 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 133 1 199] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 9 133 0 132 9 137 0 206 9 137 0 207 9 137 0 208] 
#[1 0 134 0 1 0 87 0 2 0 134 0 5 0 87 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 91 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 78 0 134 0 81 0 87 0 113 0 134 0 123 0 134 0 124 9 141 0 149 0 134 1 198 0 134 1 199] 
#[1 9 145 0 2 6 57 0 113] 
#[1 3 70 0 2 3 70 0 4 3 70 0 6 9 93 0 22 3 70 0 113 9 149 0 149] 
#[0 3 74 0 2 0 113] 
#[0 3 78 0 2 0 4 0 6 0 113] 
#[0 3 82 0 2] 
#[0 9 153 0 2] 
#[0 3 86 0 2] 
#[1 3 90 0 2 9 157 0 113] 
#[0 3 94 0 2] 
#[0 3 98 0 2 0 113] 
#[1 6 73 0 1 4 33 0 3 4 37 0 5 6 77 0 10 3 102 0 41 6 81 0 74 9 189 0 91 9 189 0 92 9 189 0 93 9 173 0 101 3 102 0 114 0 185 0 116 9 177 0 132 9 185 0 206 9 185 0 207 9 185 0 208 6 85 1 79 9 185 1 115 9 189 1 116 6 89 1 122] 
#[0 3 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 9 193 0 186 9 193 0 187 0 245 0 242 9 193 0 250 1 113 0 251 1 117 0 252 1 121 0 255 9 193 1 0 0 245 1 6 9 193 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 3 110 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[1 9 197 0 6 4 145 0 113 9 201 0 139] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 9 205 0 6 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 4 141 0 112 9 209 0 113 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 9 213 0 140 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 9 217 0 186 9 217 0 187 0 245 0 242 9 217 0 250 1 113 0 251 1 117 0 252 1 121 0 255 9 217 1 0 0 245 1 6 9 217 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 3 114 0 6 0 113] 
#[0 3 118 0 6 0 113] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 4 93 0 186 4 93 0 187 4 93 0 189 0 245 0 242 4 93 0 250 1 113 0 251 1 117 0 252 1 121 0 255 4 93 1 0 0 245 1 6 4 93 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 4 213 0 74] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 10 0 202 0 11 0 202 0 13 0 202 0 14 0 202 0 17 0 202 0 19 0 202 0 20 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 34 5 185 0 35 0 202 0 36 5 189 0 37 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 49 0 202 0 50 5 193 0 51 0 202 0 78 0 202 0 81 0 202 0 90 0 202 0 113 0 202 0 114 0 202 0 125 0 202 0 126 0 202 1 200] 
#[0 3 122 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 9 221 0 10 6 81 0 74] 
#[0 3 126 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 3 130 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 3 134 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 3 138 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 3 142 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 4 113 0 243 4 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 9 225 0 1 9 229 0 25 0 185 0 116 9 233 0 132] 
#[0 0 138 0 18] 
#[0 9 237 0 18] 
#[1 6 73 0 1 3 49 0 10 6 85 1 79 6 89 1 122] 
#[0 3 146 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 9 241 0 4 9 33 0 5 9 245 0 7 9 249 0 25 9 253 0 52 10 1 0 75 10 5 0 95 10 9 0 96 8 25 0 117 8 45 0 119 8 49 0 120 10 13 0 133 10 13 0 145 10 13 0 146 10 13 0 147 10 41 1 2 10 41 1 4 10 41 1 9 10 41 1 13 10 33 1 22 10 37 1 23 10 41 1 24 8 45 1 48 8 49 1 49 10 41 1 123 10 41 1 124 10 53 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 4 169 0 52 0 133 0 57 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 10 57 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 10 57 0 168 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 5 37 1 199] 
#[1 4 233 0 3 4 237 0 69 10 61 1 20 4 249 1 21 4 253 1 199] 
#[0 3 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 10 65 0 3] 
#[1 10 69 0 69 10 73 0 80 10 77 1 134 10 81 1 136] 
#[0 3 154 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 10 85 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 10 89 0 1 0 185 0 116 10 93 0 132] 
#[0 10 97 0 1] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 101 0 186 10 101 0 187 0 245 0 242 10 101 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 101 1 0 0 245 1 6 10 101 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 10 105 0 100] 
#[1 5 45 0 5 5 49 0 21] 
#[1 5 41 0 1 0 166 0 2 0 166 0 3 0 166 0 4 5 89 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 19 0 166 0 20 5 93 0 21 0 166 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 49 0 166 0 50 0 166 0 51 0 166 0 78 0 166 0 81 0 166 0 90 0 166 0 113 0 166 0 114 0 201 0 123 0 18 0 124 0 166 0 125 0 166 0 126 5 101 0 150 0 241 0 151 10 109 0 162 0 166 1 198 5 57 1 199 0 166 1 200] 
#[0 3 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198 1 200] 
#[0 6 81 0 74] 
#[1 0 93 0 1 10 113 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 10 117 0 112 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 10 121 0 163 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 125 0 186 10 125 0 187 0 245 0 242 10 125 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 125 1 0 0 245 1 6 10 125 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 129 0 186 10 129 0 187 10 129 0 189 0 245 0 242 10 129 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 129 1 0 0 245 1 6 10 129 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 10 133 0 117] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 10 137 0 10 10 141 1 83] 
#[0 3 166 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 3 170 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 145 0 186 10 145 0 187 0 245 0 242 10 145 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 145 1 0 0 245 1 6 10 145 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 3 174 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 10 149 0 13] 
#[1 10 153 0 4 9 33 0 5 9 249 0 25 9 253 0 52 10 1 0 75 10 5 0 95 10 157 0 112 0 185 0 116 8 25 0 117 8 45 0 119 8 49 0 120 10 161 0 132 10 173 0 133 10 165 0 143 10 169 0 144 10 173 0 145 10 173 0 146 10 173 0 147 10 169 0 148 10 169 1 2 10 169 1 4 10 169 1 9 10 169 1 13 8 45 1 48 8 49 1 49 10 169 1 123 10 169 1 124 10 185 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 189 0 186 10 189 0 187 10 189 0 189 0 245 0 242 10 189 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 189 1 0 0 245 1 6 10 189 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 193 0 186 10 193 0 187 10 193 0 189 0 245 0 242 10 193 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 193 1 0 0 245 1 6 10 193 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 10 197 0 117] 
#[1 5 41 0 1 10 201 0 5 10 205 0 117 0 201 0 123 0 18 0 124 10 209 0 150 0 241 0 151 10 213 0 162 10 217 0 167 5 57 1 199] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 5 41 0 1 3 186 0 2 3 186 0 3 3 186 0 4 10 221 0 5 3 186 0 6 3 186 0 7 3 186 0 8 3 186 0 9 3 186 0 10 3 186 0 11 3 186 0 12 3 186 0 13 3 186 0 14 3 186 0 15 3 186 0 16 3 186 0 17 3 186 0 19 3 186 0 20 10 225 0 21 3 186 0 22 3 186 0 23 3 186 0 24 3 186 0 25 3 186 0 26 3 186 0 27 3 186 0 28 3 186 0 29 3 186 0 30 3 186 0 31 3 186 0 32 3 186 0 33 3 186 0 34 3 186 0 35 3 186 0 36 3 186 0 37 3 186 0 39 3 186 0 40 3 186 0 41 3 186 0 42 3 186 0 43 3 186 0 44 3 186 0 45 3 186 0 46 3 186 0 47 3 186 0 49 3 186 0 50 3 186 0 51 3 186 0 78 3 186 0 81 3 186 0 90 3 186 0 113 3 186 0 114 0 201 0 123 0 18 0 124 3 186 0 125 3 186 0 126 10 229 0 150 0 241 0 151 10 233 0 162 10 237 0 166 3 186 1 198 5 57 1 199 3 186 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 241 0 186 10 241 0 187 10 241 0 189 0 245 0 242 10 241 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 241 1 0 0 245 1 6 10 241 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 10 245 0 117] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 5 41 0 1 3 198 0 2 3 198 0 3 3 198 0 4 10 221 0 5 3 198 0 6 3 198 0 7 3 198 0 8 3 198 0 9 3 198 0 10 3 198 0 11 3 198 0 12 3 198 0 13 3 198 0 14 3 198 0 15 3 198 0 16 3 198 0 17 3 198 0 19 3 198 0 20 10 225 0 21 3 198 0 22 3 198 0 23 3 198 0 24 3 198 0 25 3 198 0 26 3 198 0 27 3 198 0 28 3 198 0 29 3 198 0 30 3 198 0 31 3 198 0 32 3 198 0 33 3 198 0 34 3 198 0 35 3 198 0 36 3 198 0 37 3 198 0 39 3 198 0 40 3 198 0 41 3 198 0 42 3 198 0 43 3 198 0 44 3 198 0 45 3 198 0 46 3 198 0 47 3 198 0 49 3 198 0 50 3 198 0 51 3 198 0 78 3 198 0 81 3 198 0 90 3 198 0 113 3 198 0 114 0 201 0 123 0 18 0 124 3 198 0 125 3 198 0 126 10 229 0 150 0 241 0 151 10 233 0 162 10 237 0 166 3 198 1 198 5 57 1 199 3 198 1 200] 
#[1 5 41 0 1 3 202 0 2 3 202 0 3 3 202 0 4 10 221 0 5 3 202 0 6 3 202 0 7 3 202 0 8 3 202 0 9 3 202 0 10 3 202 0 11 3 202 0 12 3 202 0 13 3 202 0 14 3 202 0 15 3 202 0 16 3 202 0 17 3 202 0 19 3 202 0 20 10 225 0 21 3 202 0 22 3 202 0 23 3 202 0 24 3 202 0 25 3 202 0 26 3 202 0 27 3 202 0 28 3 202 0 29 3 202 0 30 3 202 0 31 3 202 0 32 3 202 0 33 3 202 0 34 3 202 0 35 3 202 0 36 3 202 0 37 3 202 0 39 3 202 0 40 3 202 0 41 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 49 3 202 0 50 3 202 0 51 3 202 0 78 3 202 0 81 3 202 0 90 3 202 0 113 3 202 0 114 0 201 0 123 0 18 0 124 3 202 0 125 3 202 0 126 10 229 0 150 0 241 0 151 10 233 0 162 10 237 0 166 3 202 1 198 5 57 1 199 3 202 1 200] 
#[0 3 206 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 210 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 214 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 218 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 222 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 226 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 230 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 234 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 238 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 242 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 246 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 250 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 3 254 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 4 2 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 10 249 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 253 0 186 10 253 0 187 0 245 0 242 10 253 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 253 1 0 0 245 1 6 10 253 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 4 6 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 11 1 0 171 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[0 4 10 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 4 14 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 4 18 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 11 5 0 171 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 11 9 0 171 11 9 0 172 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 11 13 0 171 11 13 0 172 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 11 17 0 174 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 11 21 0 174 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 11 25 0 174 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 11 29 0 175 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 11 33 0 175 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 11 37 0 175 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 11 41 0 175 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 11 45 0 175 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 11 49 0 175 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 11 53 0 176 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 11 57 0 176 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 11 61 0 176 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 11 65 0 176 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 11 69 0 177 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 11 73 0 178 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 11 77 0 179 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 11 81 0 180 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 11 85 0 180 11 89 0 181 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 11 93 0 180 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 11 97 0 186 11 97 0 187 0 245 0 242 11 97 0 250 1 113 0 251 1 117 0 252 1 121 0 255 11 97 1 0 0 245 1 6 11 97 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 11 101 0 186 11 101 0 187 0 245 0 242 11 101 0 250 1 113 0 251 1 117 0 252 1 121 0 255 11 101 1 0 0 245 1 6 11 101 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 95 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 11 117 0 186 11 117 0 187 0 245 0 242 11 117 0 250 1 113 0 251 1 117 0 252 11 113 0 253 11 117 0 254 1 121 0 255 11 117 1 0 0 245 1 6 11 117 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 4 22 0 3 4 22 0 127 4 22 0 129 11 121 1 69 11 125 1 70] 
#[1 11 129 0 128 11 133 1 56 11 133 1 57 11 133 1 58 11 145 1 59 11 149 1 60] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 11 153 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 11 157 0 132 3 81 1 48 3 85 1 49 3 89 1 79 8 105 1 80 8 109 1 81 11 161 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 11 161 1 107 11 161 1 108 3 109 1 109 3 109 1 111] 
#[1 6 73 0 1 3 49 0 10 0 185 0 116 11 165 0 132 6 85 1 79 11 169 1 122] 
#[0 11 173 0 1] 
#[0 4 26 0 18] 
#[0 4 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 6 0 1 0 6 0 3 11 177 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 181 0 197 0 57 0 198 6 181 0 199 0 65 0 200 0 6 1 199] 
#[1 11 181 0 7 0 185 0 116 11 185 0 132] 
#[1 11 189 0 7 0 185 0 116 11 193 0 132] 
#[0 4 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 11 197 0 109] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 11 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 11 221 0 58 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 11 221 0 84 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 11 205 0 107 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 11 209 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 11 209 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 11 213 0 186 11 213 0 187 11 213 0 189 11 217 0 199 11 221 0 200 11 225 0 221 0 245 0 242 11 213 0 250 1 113 0 251 1 117 0 252 1 121 0 255 11 213 1 0 0 245 1 6 11 213 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 11 229 0 1] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 11 233 0 186 11 233 0 187 11 233 0 189 0 245 0 242 11 233 0 250 1 113 0 251 1 117 0 252 1 121 0 255 11 233 1 0 0 245 1 6 11 233 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 11 237 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 11 241 0 186 11 241 0 187 11 241 0 189 0 245 0 242 11 241 0 250 1 113 0 251 1 117 0 252 1 121 0 255 11 241 1 0 0 245 1 6 11 241 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 11 245 0 186 11 245 0 187 11 245 0 189 0 245 0 242 11 245 0 250 1 113 0 251 1 117 0 252 1 121 0 255 11 245 1 0 0 245 1 6 11 245 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 11 249 0 7 6 57 0 113] 
#[1 11 253 0 56 12 1 0 71 12 5 0 237 12 9 0 238] 
#[1 4 38 0 7 9 93 0 22 4 38 0 90 4 38 0 113 12 13 0 149] 
#[1 12 17 0 7 12 21 0 113] 
#[0 4 42 0 7 0 113] 
#[1 9 93 0 22 12 25 0 149] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 12 29 0 132 12 33 0 206 12 33 0 207 12 33 0 208 12 37 1 126 12 41 1 127] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 12 45 0 186 12 45 0 187 12 45 0 189 0 245 0 242 12 45 0 250 1 113 0 251 1 117 0 252 1 121 0 255 12 45 1 0 0 245 1 6 12 45 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 12 49 0 186 12 49 0 187 12 49 0 189 0 245 0 242 12 49 0 250 1 113 0 251 1 117 0 252 1 121 0 255 12 49 1 0 0 245 1 6 12 49 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 12 57 0 190 12 57 0 193 12 57 0 194 12 57 0 195 12 57 0 203 12 57 0 217 12 57 0 218 12 57 0 219 12 57 0 220 12 57 0 223 12 57 0 224 12 57 0 226 12 57 0 227 12 57 0 228 12 57 0 233 12 57 0 234 12 57 0 235 12 57 0 236 12 57 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 4 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 4 233 0 3 4 237 0 69 12 61 1 20 4 249 1 21 4 253 1 199] 
#[1 0 99 0 1 4 54 0 3 4 54 0 4 0 99 0 5 0 99 0 7 3 150 0 8 3 150 0 9 3 150 0 10 3 150 0 11 3 150 0 12 3 150 0 13 3 150 0 14 3 150 0 15 3 150 0 16 3 150 0 17 3 150 0 19 3 150 0 20 3 150 0 21 3 150 0 22 3 150 0 23 3 150 0 24 3 150 0 25 3 150 0 26 3 150 0 27 3 150 0 28 3 150 0 29 3 150 0 30 3 150 0 31 3 150 0 32 3 150 0 33 0 99 0 34 0 99 0 35 0 99 0 36 0 99 0 37 4 54 0 38 3 150 0 39 3 150 0 40 3 150 0 41 3 150 0 42 3 150 0 43 3 150 0 44 3 150 0 45 3 150 0 46 3 150 0 47 4 54 0 48 3 150 0 49 3 150 0 50 3 150 0 51 4 54 0 52 4 54 0 53 4 54 0 54 4 54 0 57 4 54 0 58 4 54 0 60 4 54 0 61 4 54 0 62 4 54 0 64 4 54 0 65 4 54 0 67 4 54 0 68 4 54 0 70 4 54 0 72 4 54 0 74 4 54 0 76 4 54 0 77 3 150 0 78 3 150 0 81 4 54 0 82 4 54 0 84 4 54 0 86 4 54 0 87 4 54 0 88 4 54 0 94 4 54 0 98 4 54 0 99 4 54 0 101 4 54 0 102 4 54 0 103 4 54 0 104 4 54 0 105 4 54 0 106 4 54 0 107 4 54 0 108 4 54 0 109 4 54 0 110 4 54 0 111 3 150 0 113 4 54 0 116 4 54 0 119 4 54 0 120 4 54 0 121 0 99 0 123 0 99 0 124 4 54 0 127 3 150 1 198 0 99 1 199 4 54 1 200] 
#[1 0 185 0 116 12 65 0 132] 
#[1 0 185 0 116 12 69 0 132] 
#[1 6 193 0 67 0 185 0 116 12 73 0 132 12 77 1 182 12 81 1 183] 
#[1 0 185 0 116 12 85 0 132] 
#[1 0 185 0 116 12 73 0 132 12 89 1 182 12 81 1 183] 
#[0 12 93 0 119 1 48] 
#[1 0 185 0 116 7 93 0 132 12 97 1 149] 
#[1 0 185 0 116 12 73 0 132 12 101 1 182 12 81 1 183] 
#[0 4 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 105 0 3] 
#[1 0 185 0 116 12 109 0 132] 
#[1 8 213 0 73 12 113 1 36] 
#[1 6 197 0 57 6 201 0 58 2 113 0 67 6 205 0 74 6 209 0 84 6 217 0 86 6 221 0 107 6 241 1 143 6 229 1 181 6 233 1 184 6 237 1 185 6 241 1 191 6 245 1 192] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 12 117 0 57 0 137 0 64 1 157 0 70 12 121 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 12 125 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 12 129 0 186 12 129 0 187 12 133 0 241 0 245 0 242 12 129 0 250 1 113 0 251 1 117 0 252 1 121 0 255 12 129 1 0 12 137 1 5 0 245 1 6 12 129 1 8 0 245 1 11 0 245 1 15 1 33 1 17 12 141 1 18 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 12 145 1 184 12 149 1 185 3 33 1 199] 
#[1 3 245 0 3 3 249 0 25 0 185 0 116 4 17 0 119 12 153 0 132 4 1 1 32 4 5 1 33 4 9 1 34 4 13 1 35 4 17 1 39 4 5 1 40 4 17 1 48] 
#[0 4 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 102 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 12 157 0 7 8 213 0 73 12 161 1 36] 
#[1 4 106 0 1 4 106 0 3 4 106 0 5 4 106 0 7 4 106 0 34 4 106 0 35 4 106 0 36 4 106 0 37 4 106 0 38 4 106 0 48 4 106 0 52 4 106 0 53 4 106 0 54 4 106 0 57 4 106 0 58 4 106 0 60 4 106 0 61 0 103 0 62 4 106 0 64 4 106 0 65 4 106 0 67 0 103 0 68 4 106 0 70 4 106 0 72 4 106 0 74 4 106 0 76 0 103 0 77 0 103 0 82 4 106 0 84 0 103 0 86 4 106 0 87 4 106 0 88 4 106 0 94 4 106 0 98 4 106 0 99 4 106 0 101 4 106 0 102 4 106 0 103 4 106 0 104 0 103 0 105 4 106 0 106 4 106 0 107 4 106 0 108 4 106 0 109 4 106 0 110 4 106 0 111 4 106 0 116 4 106 0 119 4 106 0 120 4 106 0 121 4 106 0 123 4 106 0 124 4 106 0 127 4 106 1 199 0 103 1 200] 
#[1 4 114 0 1 4 114 0 3 4 114 0 5 4 114 0 7 4 114 0 34 4 114 0 35 4 114 0 36 4 114 0 37 4 114 0 38 4 114 0 48 4 114 0 52 4 114 0 53 4 114 0 54 4 114 0 57 4 114 0 58 4 114 0 60 4 114 0 61 0 107 0 62 4 114 0 64 4 114 0 65 4 114 0 67 0 107 0 68 4 114 0 70 4 114 0 72 4 114 0 74 4 114 0 76 0 107 0 77 0 107 0 82 4 114 0 84 0 107 0 86 4 114 0 87 4 114 0 88 4 114 0 94 4 114 0 98 4 114 0 99 4 114 0 101 4 114 0 102 4 114 0 103 4 114 0 104 0 107 0 105 4 114 0 106 4 114 0 107 4 114 0 108 4 114 0 109 4 114 0 110 4 114 0 111 4 114 0 116 4 114 0 119 4 114 0 120 4 114 0 121 4 114 0 123 4 114 0 124 4 114 0 127 4 114 1 199 0 107 1 200] 
#[0 4 122 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 126 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 130 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[1 4 134 0 1 4 134 0 3 4 134 0 5 4 134 0 7 4 134 0 34 4 134 0 35 4 134 0 36 4 134 0 37 4 134 0 38 4 134 0 48 4 134 0 52 4 134 0 53 4 134 0 54 4 134 0 57 4 134 0 58 4 134 0 60 4 134 0 61 0 111 0 62 4 134 0 64 4 134 0 65 4 134 0 67 0 111 0 68 4 134 0 70 4 134 0 72 4 134 0 74 4 134 0 76 0 111 0 77 0 111 0 82 4 134 0 84 0 111 0 86 4 134 0 87 4 134 0 88 4 134 0 94 4 134 0 98 4 134 0 99 4 134 0 101 4 134 0 102 4 134 0 103 4 134 0 104 0 111 0 105 4 134 0 106 4 134 0 107 4 134 0 108 4 134 0 109 4 134 0 110 4 134 0 111 4 134 0 116 4 134 0 119 4 134 0 120 4 134 0 121 4 134 0 123 4 134 0 124 4 134 0 127 4 134 1 199 0 111 1 200] 
#[1 3 49 0 10 8 229 0 74 0 185 0 116 7 233 0 132 8 233 1 79] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 12 165 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 12 169 0 1 0 185 0 116 12 173 0 132] 
#[0 12 177 0 1] 
#[1 12 181 0 22 3 10 0 73 3 10 0 113] 
#[1 3 41 0 3 3 49 0 10 12 185 0 69 12 189 1 79 12 193 1 97 12 197 1 131] 
#[0 4 142 0 3 0 21] 
#[1 12 201 0 3 12 205 0 21] 
#[1 3 49 0 10 12 209 0 22 12 213 1 79] 
#[1 5 17 0 1 0 185 0 116 12 217 0 132] 
#[0 1 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 1 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 146 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 30 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 122 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 185 0 116 12 217 0 132] 
#[0 1 226 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 1 234 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 1 246 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 2 2 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 4 150 0 62 0 77 0 82 0 86 0 105 1 200] 
#[0 2 50 0 62 0 77 0 82 0 86 0 105 1 200] 
#[0 2 118 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 2 126 0 62 0 77 0 82 0 86 0 105 1 200] 
#[1 3 173 0 3 6 253 0 22 7 1 0 25 3 185 0 57 2 105 0 58 7 5 0 62 12 221 0 63 2 113 0 67 3 193 0 74 0 41 0 77 2 129 0 82 0 65 0 84 2 133 0 86 2 137 0 105 1 245 0 107 7 17 0 199 0 65 0 200 7 21 0 203 7 25 0 241 7 29 1 5 7 33 1 18 7 37 1 31 7 41 1 43 12 225 1 121 12 229 1 130 7 53 1 143 7 57 1 148 12 233 1 180 7 69 1 199] 
#[0 1 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 0 43 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 26 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 154 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 2 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 3 173 0 3 6 253 0 22 7 1 0 25 7 5 0 62 12 237 0 63 7 141 0 77 2 129 0 82 2 137 0 105 7 41 1 43 12 241 1 121 12 245 1 130 7 61 1 154 12 249 1 180] 
#[0 1 218 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 2 46 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 4 158 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 2 102 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 2 110 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[1 12 253 0 1 3 49 0 10 0 185 0 116 13 1 0 132 13 5 1 79 13 9 1 114 13 13 1 122] 
#[1 3 49 0 10 13 17 1 79] 
#[1 11 173 0 1 4 233 0 3 4 237 0 69 13 21 1 20 4 249 1 21 4 253 1 199] 
#[1 8 9 0 1 13 25 0 4 8 17 0 5 3 49 0 10 8 21 0 87 9 37 0 112 0 185 0 116 8 25 0 117 8 45 0 119 8 49 0 120 9 41 0 132 13 29 0 133 13 29 0 145 13 29 0 146 13 29 0 147 9 49 0 209 9 53 0 210 9 57 0 213 9 57 0 215 8 45 1 48 8 49 1 49 8 53 1 79 8 57 1 98 8 61 1 99 8 65 1 100 8 65 1 112 8 65 1 114 8 65 1 118 8 65 1 119 8 65 1 120 9 65 1 199] 
#[1 3 37 0 1 7 241 0 3 7 245 0 5 9 69 0 6 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 4 85 0 112 4 145 0 113 0 185 0 116 3 81 0 119 3 85 0 120 7 249 0 132 9 73 0 139 4 97 0 206 4 97 0 207 4 97 0 208 9 77 0 211 9 81 0 212 9 85 0 214 9 85 0 215 9 89 0 216 3 81 1 48 3 85 1 49 3 89 1 79 8 97 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 8 93 1 103 8 97 1 104 3 97 1 105 3 101 1 106 8 97 1 107 8 97 1 108 3 109 1 109 3 109 1 111 8 5 1 199] 
#[1 0 115 0 2 0 115 0 4 2 138 0 5 0 115 0 6 2 138 0 7 2 138 0 10 2 142 0 21 9 93 0 22 2 138 0 39 2 138 0 45 0 115 0 113 9 141 0 149] 
#[0 13 33 0 2] 
#[0 13 37 0 2] 
#[1 4 33 0 3 4 37 0 5 3 102 0 41 9 189 0 91 9 189 0 92 9 189 0 93 9 173 0 101 3 102 0 114 0 185 0 116 9 177 0 132 9 185 0 206 9 185 0 207 9 185 0 208 9 185 1 115 9 189 1 116] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 13 41 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 4 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 13 45 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 13 49 0 186 13 49 0 187 0 245 0 242 13 49 0 250 1 113 0 251 1 117 0 252 1 121 0 255 13 49 1 0 0 245 1 6 13 49 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 13 53 0 1 3 49 0 10 13 57 1 79] 
#[0 4 166 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 4 170 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 8 9 0 1 4 174 0 4 4 174 0 7 3 49 0 10 13 61 0 41 4 174 0 113 13 65 0 114 8 53 1 79 13 69 1 113 13 73 1 114] 
#[0 4 178 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 4 182 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 4 186 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 4 190 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 13 77 0 1] 
#[0 13 81 0 4] 
#[1 4 194 0 4 13 85 0 7 13 89 0 113] 
#[0 4 198 0 4 0 7 0 113] 
#[0 4 202 0 4 0 7 0 113] 
#[0 4 206 0 4 0 7 0 113] 
#[0 4 210 0 4 0 7 0 113] 
#[0 4 214 0 4 0 7 0 113] 
#[0 4 218 0 4 0 7 0 113] 
#[0 4 222 0 6 0 113] 
#[1 13 93 0 6 13 97 0 113] 
#[0 4 226 0 6 0 113] 
#[1 4 230 0 13 13 101 0 69 4 230 0 113 13 105 1 82] 
#[1 13 109 0 13 13 113 0 113] 
#[0 4 234 0 13 0 113] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 8 1 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 8 1 1 107 8 1 1 108 3 109 1 109 3 109 1 111] 
#[1 4 238 0 2 4 238 0 3 4 238 0 4 0 119 0 5 4 238 0 6 4 238 0 7 4 238 0 8 4 238 0 10 4 238 0 11 4 238 0 13 4 238 0 14 4 238 0 17 4 238 0 18 4 238 0 19 4 238 0 20 4 238 0 22 4 238 0 23 4 238 0 24 4 238 0 25 4 238 0 26 4 238 0 34 4 238 0 36 4 238 0 39 4 238 0 40 4 238 0 41 4 238 0 43 4 238 0 44 4 238 0 45 4 238 0 46 4 238 0 47 4 238 0 49 4 238 0 50 4 238 0 59 4 238 0 78 4 238 0 81 4 238 0 90 4 238 0 91 4 238 0 92 4 238 0 93 4 238 0 96 4 238 0 113 4 238 0 114 4 238 0 117 4 238 0 119 4 238 0 120 4 238 0 125 4 238 0 126 8 153 0 225 4 238 1 200] 
#[1 4 242 0 2 4 242 0 3 4 242 0 4 0 123 0 5 4 242 0 6 4 242 0 7 4 242 0 8 4 242 0 10 4 242 0 11 4 242 0 13 4 242 0 14 4 242 0 17 4 242 0 18 4 242 0 19 4 242 0 20 4 242 0 22 4 242 0 23 4 242 0 24 4 242 0 25 4 242 0 26 4 242 0 34 4 242 0 36 4 242 0 39 4 242 0 40 4 242 0 41 4 242 0 43 4 242 0 44 4 242 0 45 4 242 0 46 4 242 0 47 4 242 0 49 4 242 0 50 4 242 0 59 4 242 0 78 4 242 0 81 4 242 0 90 4 242 0 91 4 242 0 92 4 242 0 93 4 242 0 96 4 242 0 113 4 242 0 114 4 242 0 117 4 242 0 119 4 242 0 120 4 242 0 125 4 242 0 126 8 153 0 225 4 242 1 200] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 13 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 13 121 0 1] 
#[0 4 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 4 250 0 2 4 250 0 3 4 250 0 4 4 250 0 5 4 250 0 6 4 250 0 7 4 250 0 8 4 250 0 10 4 250 0 11 4 250 0 13 4 250 0 14 4 250 0 17 4 250 0 18 4 250 0 19 4 250 0 20 13 125 0 21 4 250 0 22 4 250 0 23 4 250 0 24 4 250 0 25 4 250 0 26 4 250 0 34 4 250 0 36 4 250 0 39 4 250 0 40 4 250 0 41 4 250 0 43 4 250 0 44 4 250 0 45 4 250 0 46 4 250 0 47 4 250 0 49 4 250 0 50 4 250 0 59 4 250 0 78 4 250 0 81 4 250 0 90 4 250 0 91 4 250 0 92 4 250 0 93 4 250 0 96 4 250 0 113 4 250 0 114 4 250 0 117 4 250 0 119 4 250 0 120 4 250 0 125 4 250 0 126 4 250 1 200] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 13 129 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 8 113 0 1 3 41 0 3 3 45 0 5 3 53 0 79 3 57 0 83 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 13 133 1 88 13 133 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 13 133 1 106 3 109 1 109 3 109 1 111] 
#[1 8 113 0 1 3 41 0 3 3 45 0 5 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 13 137 1 90 13 137 1 91 13 137 1 92 13 137 1 93 13 137 1 94 3 129 1 95 3 133 1 96 13 137 1 97 13 137 1 101 13 137 1 102 13 137 1 109 13 137 1 111] 
#[0 13 141 0 5] 
#[1 4 254 0 2 4 254 0 3 4 254 0 4 4 254 0 5 4 254 0 6 4 254 0 7 4 254 0 8 0 127 0 10 4 254 0 11 4 254 0 13 4 254 0 14 4 254 0 17 4 254 0 18 4 254 0 19 4 254 0 20 4 254 0 22 4 254 0 23 4 254 0 24 4 254 0 25 4 254 0 26 4 254 0 34 4 254 0 36 4 254 0 39 4 254 0 40 4 254 0 41 4 254 0 43 4 254 0 44 4 254 0 45 4 254 0 46 4 254 0 47 4 254 0 49 4 254 0 50 4 254 0 59 4 254 0 78 4 254 0 80 4 254 0 81 4 254 0 90 4 254 0 91 4 254 0 92 4 254 0 93 4 254 0 96 4 254 0 113 4 254 0 114 4 254 0 117 4 254 0 119 4 254 0 120 4 254 0 125 4 254 0 126 13 145 1 83 4 254 1 200] 
#[1 0 185 0 116 13 149 0 132] 
#[0 5 2 0 7 0 73] 
#[1 5 6 0 4 13 153 0 51 5 6 0 113] 
#[1 13 157 0 4 13 161 0 113] 
#[0 5 10 0 4 0 113] 
#[0 13 165 0 117] 
#[1 13 169 0 1 13 173 0 25 0 185 0 116 13 177 0 132] 
#[1 4 233 0 3 4 237 0 69 13 181 1 20 4 249 1 21 4 253 1 199] 
#[0 4 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 185 0 7] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 13 189 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 13 193 0 1 0 185 0 116 13 197 0 132] 
#[0 13 201 0 1] 
#[0 13 205 0 119 1 39 1 48] 
#[0 13 209 0 7] 
#[0 5 14 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 6 193 0 67] 
#[1 12 253 0 1 3 49 0 10 0 185 0 116 13 213 0 132 13 5 1 79 13 9 1 114 13 217 1 122] 
#[1 4 233 0 3 4 237 0 69 13 21 1 20 4 249 1 21 4 253 1 199] 
#[0 5 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 5 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 5 26 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 5 30 0 73] 
#[0 13 221 0 51] 
#[1 13 225 0 4 13 229 0 113] 
#[0 5 34 0 4 0 113] 
#[0 5 38 0 4 0 113] 
#[1 0 185 0 116 13 233 0 132 13 233 1 40] 
#[0 13 237 0 7] 
#[1 3 245 0 3 3 249 0 25 13 241 1 34 13 245 1 35] 
#[0 5 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 5 46 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 13 49 0 186 13 49 0 187 0 245 0 242 13 49 0 250 1 113 0 251 1 117 0 252 1 121 0 255 13 49 1 0 0 245 1 6 13 49 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 185 0 116 13 249 0 132] 
#[1 3 66 0 2 3 66 0 4 3 66 0 6 9 93 0 22 3 66 0 113 9 141 0 149] 
#[0 13 253 0 114] 
#[0 14 1 0 4] 
#[1 14 5 0 4 14 9 0 113] 
#[0 5 50 0 4 0 113] 
#[0 5 54 0 4 0 113] 
#[1 14 17 0 91 14 17 0 92 14 17 0 93 0 185 0 116 14 13 0 132 14 17 1 116] 
#[0 5 58 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 33 0 3 4 37 0 5 14 21 0 6 4 85 0 112 9 209 0 113 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 14 25 0 214 14 25 0 215 14 29 0 216 8 5 1 199] 
#[1 14 33 0 6 14 37 0 113] 
#[0 5 62 0 6 0 113] 
#[0 5 66 0 6 0 113] 
#[0 14 41 0 6] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 14 45 0 186 14 45 0 187 0 245 0 242 14 45 0 250 1 113 0 251 1 117 0 252 1 121 0 255 14 45 1 0 0 245 1 6 14 45 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 5 70 0 7 0 113] 
#[0 5 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 4 41 0 132 14 49 0 202 4 53 0 206 4 53 0 207 4 53 0 208 14 49 1 128 14 49 1 129 4 73 1 199] 
#[0 5 78 0 7 0 113] 
#[1 13 65 0 114 14 53 1 113] 
#[1 13 65 0 114 14 57 1 113] 
#[1 3 106 0 1 0 131 0 2 3 106 0 5 0 131 0 6 3 106 0 8 3 106 0 9 3 106 0 10 3 106 0 11 3 106 0 12 3 106 0 13 3 106 0 14 3 106 0 15 3 106 0 16 3 106 0 17 3 106 0 19 3 106 0 20 3 106 0 21 0 131 0 22 3 106 0 23 3 106 0 24 3 106 0 25 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 29 3 106 0 30 3 106 0 31 3 106 0 32 3 106 0 33 3 106 0 34 3 106 0 35 3 106 0 36 3 106 0 37 3 106 0 39 3 106 0 40 3 106 0 41 3 106 0 42 3 106 0 43 3 106 0 44 3 106 0 45 3 106 0 46 3 106 0 47 3 106 0 49 3 106 0 50 3 106 0 51 3 106 0 78 3 106 0 81 0 131 0 113 3 106 0 123 3 106 0 124 3 106 1 198 3 106 1 199] 
#[1 0 93 0 1 0 23 0 3 4 81 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 14 61 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 9 193 0 186 9 193 0 187 9 137 0 206 9 137 0 207 9 137 0 208 0 245 0 242 9 193 0 250 1 113 0 251 1 117 0 252 1 121 0 255 9 193 1 0 0 245 1 6 9 193 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 23 0 3 4 81 0 5 14 65 0 6 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 9 125 0 112 9 209 0 113 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 4 89 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 9 213 0 140 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 9 217 0 186 9 217 0 187 4 97 0 206 4 97 0 207 4 97 0 208 14 25 0 214 14 25 0 215 14 29 0 216 0 245 0 242 9 217 0 250 1 113 0 251 1 117 0 252 1 121 0 255 9 217 1 0 0 245 1 6 9 217 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 133 1 199] 
#[1 5 82 0 2 5 82 0 6 13 65 0 114 14 69 1 113] 
#[0 5 86 0 2 0 6] 
#[0 5 90 0 2 0 4 0 6 0 113] 
#[0 5 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 5 98 0 2 0 4 0 6 0 113] 
#[0 5 102 0 18] 
#[1 5 106 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 14 77 0 214 14 77 0 215 14 73 0 216 14 73 0 246 14 77 0 247 8 5 1 199] 
#[0 5 110 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 199] 
#[0 5 114 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 199] 
#[0 5 118 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 199] 
#[0 5 122 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 0 135 0 41 0 139 0 114 14 85 1 113] 
#[0 5 130 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 14 89 0 41 13 65 0 114 14 93 1 113] 
#[1 3 102 0 2 4 33 0 3 3 102 0 4 4 37 0 5 3 102 0 6 3 102 0 22 3 102 0 41 9 173 0 101 3 102 0 113 3 102 0 114 0 185 0 116 14 97 0 132 14 101 0 206 14 101 0 207 14 101 0 208 14 101 1 115] 
#[0 5 134 0 4 0 6 0 113] 
#[0 5 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 14 105 0 6 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 4 141 0 112 9 209 0 113 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 14 109 0 140 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 14 113 0 186 14 113 0 187 0 245 0 242 14 113 0 250 1 113 0 251 1 117 0 252 1 121 0 255 14 113 1 0 0 245 1 6 14 113 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 5 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 5 146 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 5 150 0 6 0 113] 
#[0 5 154 0 6 0 113] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 11 161 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 11 161 1 107 11 161 1 108 3 109 1 109 3 109 1 111] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 14 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 14 121 0 1 0 185 0 116 14 125 0 132] 
#[0 14 129 0 1] 
#[1 0 93 0 1 0 143 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 14 137 0 186 14 137 0 187 0 245 0 242 14 137 0 250 1 113 0 251 1 117 0 252 14 137 0 254 1 121 0 255 14 137 1 0 14 141 1 1 0 245 1 6 14 137 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 5 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 198 1 199 1 200] 
#[0 5 162 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 14 145 0 133 14 145 0 145 14 145 0 146 14 145 0 147 8 45 1 48 8 49 1 49] 
#[1 9 33 0 5 14 149 0 25 8 25 0 117 8 45 0 119 8 49 0 120 14 153 0 133 14 153 0 145 14 153 0 146 14 153 0 147 8 45 1 48 8 49 1 49] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 14 157 0 133 14 157 0 145 14 157 0 146 14 157 0 147 8 45 1 48 8 49 1 49] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 14 161 0 133 14 161 0 145 14 161 0 146 14 161 0 147 8 45 1 48 8 49 1 49] 
#[1 9 33 0 5 9 249 0 25 9 253 0 52 10 1 0 75 10 5 0 95 8 25 0 117 8 45 0 119 8 49 0 120 10 13 0 133 10 13 0 145 10 13 0 146 10 13 0 147 14 165 1 2 14 165 1 4 14 165 1 9 14 165 1 13 8 45 1 48 8 49 1 49 14 165 1 123 14 165 1 124 10 185 1 199] 
#[0 14 169 0 1] 
#[0 5 166 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 5 170 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 5 174 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 5 178 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 14 173 0 4] 
#[1 5 182 0 4 9 33 0 5 9 245 0 7 9 249 0 25 9 253 0 52 10 1 0 75 10 5 0 95 10 9 0 96 8 25 0 117 8 45 0 119 8 49 0 120 10 13 0 133 10 13 0 145 10 13 0 146 10 13 0 147 14 177 1 2 14 177 1 4 14 177 1 9 14 177 1 13 14 177 1 24 8 45 1 48 8 49 1 49 14 177 1 123 14 177 1 124 10 53 1 199] 
#[0 5 186 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 5 190 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 5 194 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[1 8 17 0 5 14 181 0 59 14 185 0 75 14 201 0 91 14 201 0 92 14 201 0 93 14 189 0 95 14 193 0 96 8 25 0 117 8 45 0 119 8 49 0 120 14 197 0 133 14 197 0 145 14 197 0 146 14 197 0 147 8 45 1 48 8 49 1 49 14 201 1 116 14 205 1 119 14 209 1 123 14 213 1 124 14 217 1 137 14 221 1 138 14 221 1 139 14 221 1 140 14 221 1 141 14 237 1 142 14 241 1 199] 
#[0 5 198 0 3] 
#[0 5 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 14 245 0 4 9 33 0 5 9 245 0 7 9 249 0 25 9 253 0 52 10 1 0 75 10 5 0 95 10 9 0 96 8 25 0 117 8 45 0 119 8 49 0 120 10 13 0 133 10 13 0 145 10 13 0 146 10 13 0 147 10 41 1 2 10 41 1 4 10 41 1 9 10 41 1 13 14 249 1 22 10 37 1 23 10 41 1 24 8 45 1 48 8 49 1 49 10 41 1 123 10 41 1 124 10 53 1 199] 
#[1 0 185 0 116 3 77 0 132 15 1 1 94 3 129 1 95 3 133 1 96 15 1 1 135] 
#[1 0 185 0 116 3 77 0 132 15 13 1 94 3 129 1 95 3 133 1 96 15 9 1 132 15 13 1 133] 
#[1 10 73 0 80 15 17 1 136] 
#[0 5 206 0 3] 
#[0 15 21 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 15 25 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 15 29 0 1] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 15 33 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 15 37 0 2] 
#[0 5 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 5 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 5 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 15 41 0 186 15 41 0 187 0 245 0 242 15 41 0 250 1 113 0 251 1 117 0 252 1 121 0 255 15 41 1 0 0 245 1 6 15 41 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 15 45 0 2 15 49 0 113] 
#[0 5 222 0 2 0 113] 
#[1 15 53 0 6 6 57 0 113] 
#[0 5 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 15 57 1 84 15 61 1 85 15 61 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 15 61 1 107 15 61 1 108 3 109 1 109 3 109 1 111] 
#[0 15 69 0 1] 
#[0 5 230 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 1 98 0 3 1 98 0 127 1 98 0 129 15 73 1 75] 
#[0 5 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 15 77 0 186 15 77 0 187 0 245 0 242 15 77 0 250 1 113 0 251 1 117 0 252 1 121 0 255 15 77 1 0 0 245 1 6 15 77 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 5 238 0 4 9 93 0 22 5 238 0 113 15 81 0 149] 
#[1 15 85 0 4 15 89 0 113] 
#[0 5 242 0 4 0 113] 
#[1 14 169 0 1 15 93 0 114] 
#[0 5 246 0 4 0 113] 
#[0 5 250 0 4 0 113] 
#[1 9 33 0 5 14 185 0 75 14 189 0 95 8 25 0 117 8 45 0 119 8 49 0 120 15 97 0 133 15 97 0 145 15 97 0 146 15 97 0 147 8 45 1 48 8 49 1 49] 
#[1 6 57 0 113 15 101 0 125 15 105 0 126 15 109 0 152 15 113 0 153] 
#[1 15 117 0 6 6 57 0 113] 
#[0 5 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 15 121 0 186 15 121 0 187 15 121 0 189 0 245 0 242 15 121 0 250 1 113 0 251 1 117 0 252 1 121 0 255 15 121 1 0 0 245 1 6 15 121 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 6 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 6 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 6 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 6 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 15 125 0 186 15 125 0 187 15 125 0 189 0 245 0 242 15 125 0 250 1 113 0 251 1 117 0 252 1 121 0 255 15 125 1 0 0 245 1 6 15 125 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 15 129 0 117] 
#[0 6 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 6 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 6 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 15 133 0 6 6 57 0 113] 
#[0 6 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 15 137 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 15 137 1 107 15 137 1 108 3 109 1 109 3 109 1 111] 
#[0 6 34 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 6 38 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 6 42 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 6 46 0 2 6 46 0 4 6 46 0 6 6 46 0 7 5 221 0 8 6 46 0 10 6 46 0 11 6 46 0 13 6 46 0 14 6 46 0 17 6 46 0 19 6 46 0 20 6 46 0 23 6 46 0 24 5 221 0 25 6 46 0 34 6 46 0 36 6 46 0 39 6 46 0 40 6 46 0 41 6 46 0 43 5 221 0 44 6 46 0 45 6 46 0 46 6 46 0 47 6 46 0 49 6 46 0 50 6 46 0 78 6 46 0 81 6 46 0 90 6 46 0 113 6 46 0 114 6 46 0 125 6 46 0 126 5 221 0 173 6 46 1 200] 
#[1 6 50 0 2 6 50 0 4 6 50 0 6 6 50 0 7 5 221 0 8 6 50 0 10 6 50 0 11 6 50 0 13 6 50 0 14 6 50 0 17 6 50 0 19 6 50 0 20 6 50 0 23 6 50 0 24 5 221 0 25 6 50 0 34 6 50 0 36 6 50 0 39 6 50 0 40 6 50 0 41 6 50 0 43 5 221 0 44 6 50 0 45 6 50 0 46 6 50 0 47 6 50 0 49 6 50 0 50 6 50 0 78 6 50 0 81 6 50 0 90 6 50 0 113 6 50 0 114 6 50 0 125 6 50 0 126 5 221 0 173 6 50 1 200] 
#[1 6 54 0 2 6 54 0 4 6 54 0 6 6 54 0 7 6 54 0 10 6 54 0 11 6 54 0 13 6 54 0 14 6 54 0 17 6 54 0 19 6 54 0 20 6 54 0 23 6 54 0 24 5 225 0 34 5 229 0 36 6 54 0 39 6 54 0 40 6 54 0 41 6 54 0 43 6 54 0 45 6 54 0 46 6 54 0 47 6 54 0 49 6 54 0 50 6 54 0 78 6 54 0 81 6 54 0 90 6 54 0 113 6 54 0 114 6 54 0 125 6 54 0 126 6 54 1 200] 
#[1 6 58 0 2 6 58 0 4 6 58 0 6 6 58 0 7 6 58 0 10 6 58 0 11 6 58 0 13 6 58 0 14 6 58 0 17 6 58 0 19 6 58 0 20 6 58 0 23 6 58 0 24 5 225 0 34 5 229 0 36 6 58 0 39 6 58 0 40 6 58 0 41 6 58 0 43 6 58 0 45 6 58 0 46 6 58 0 47 6 58 0 49 6 58 0 50 6 58 0 78 6 58 0 81 6 58 0 90 6 58 0 113 6 58 0 114 6 58 0 125 6 58 0 126 6 58 1 200] 
#[1 6 62 0 2 6 62 0 4 6 62 0 6 6 62 0 7 6 62 0 10 6 62 0 11 6 62 0 13 6 62 0 14 6 62 0 17 6 62 0 19 6 62 0 20 6 62 0 23 6 62 0 24 5 225 0 34 5 229 0 36 6 62 0 39 6 62 0 40 6 62 0 41 6 62 0 43 6 62 0 45 6 62 0 46 6 62 0 47 6 62 0 49 6 62 0 50 6 62 0 78 6 62 0 81 6 62 0 90 6 62 0 113 6 62 0 114 6 62 0 125 6 62 0 126 6 62 1 200] 
#[1 6 66 0 2 6 66 0 4 6 66 0 6 6 66 0 7 6 66 0 10 5 233 0 11 6 66 0 13 5 237 0 14 5 241 0 17 6 66 0 19 6 66 0 20 6 66 0 23 6 66 0 24 6 66 0 39 6 66 0 40 6 66 0 41 6 66 0 43 6 66 0 45 6 66 0 46 6 66 0 47 6 66 0 49 6 66 0 50 6 66 0 78 6 66 0 81 6 66 0 90 6 66 0 113 6 66 0 114 6 66 0 125 6 66 0 126 6 66 1 200] 
#[1 6 70 0 2 6 70 0 4 6 70 0 6 6 70 0 7 6 70 0 10 5 233 0 11 6 70 0 13 5 237 0 14 5 241 0 17 6 70 0 19 6 70 0 20 6 70 0 23 6 70 0 24 6 70 0 39 6 70 0 40 6 70 0 41 6 70 0 43 6 70 0 45 6 70 0 46 6 70 0 47 6 70 0 49 6 70 0 50 6 70 0 78 6 70 0 81 6 70 0 90 6 70 0 113 6 70 0 114 6 70 0 125 6 70 0 126 6 70 1 200] 
#[1 6 74 0 2 6 74 0 4 6 74 0 6 6 74 0 7 6 74 0 10 5 233 0 11 6 74 0 13 5 237 0 14 5 241 0 17 6 74 0 19 6 74 0 20 6 74 0 23 6 74 0 24 6 74 0 39 6 74 0 40 6 74 0 41 6 74 0 43 6 74 0 45 6 74 0 46 6 74 0 47 6 74 0 49 6 74 0 50 6 74 0 78 6 74 0 81 6 74 0 90 6 74 0 113 6 74 0 114 6 74 0 125 6 74 0 126 6 74 1 200] 
#[1 6 78 0 2 6 78 0 4 6 78 0 6 6 78 0 7 6 78 0 10 5 233 0 11 6 78 0 13 5 237 0 14 5 241 0 17 6 78 0 19 6 78 0 20 6 78 0 23 6 78 0 24 6 78 0 39 6 78 0 40 6 78 0 41 6 78 0 43 6 78 0 45 6 78 0 46 6 78 0 47 6 78 0 49 6 78 0 50 6 78 0 78 6 78 0 81 6 78 0 90 6 78 0 113 6 78 0 114 6 78 0 125 6 78 0 126 6 78 1 200] 
#[1 6 82 0 2 6 82 0 4 6 82 0 6 6 82 0 7 6 82 0 10 5 233 0 11 6 82 0 13 5 237 0 14 5 241 0 17 6 82 0 19 6 82 0 20 6 82 0 23 6 82 0 24 6 82 0 39 6 82 0 40 6 82 0 41 6 82 0 43 6 82 0 45 6 82 0 46 6 82 0 47 6 82 0 49 6 82 0 50 6 82 0 78 6 82 0 81 6 82 0 90 6 82 0 113 6 82 0 114 6 82 0 125 6 82 0 126 6 82 1 200] 
#[1 6 86 0 2 6 86 0 4 6 86 0 6 6 86 0 7 6 86 0 10 5 233 0 11 6 86 0 13 5 237 0 14 5 241 0 17 6 86 0 19 6 86 0 20 6 86 0 23 6 86 0 24 6 86 0 39 6 86 0 40 6 86 0 41 6 86 0 43 6 86 0 45 6 86 0 46 6 86 0 47 6 86 0 49 6 86 0 50 6 86 0 78 6 86 0 81 6 86 0 90 6 86 0 113 6 86 0 114 6 86 0 125 6 86 0 126 6 86 1 200] 
#[1 6 90 0 2 6 90 0 4 6 90 0 6 6 90 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 6 90 0 23 6 90 0 24 6 90 0 39 6 90 0 40 6 90 0 41 6 90 0 43 6 90 0 45 6 90 0 46 6 90 0 47 6 90 0 49 6 90 0 50 6 5 0 78 6 9 0 81 6 90 0 90 6 90 0 113 6 90 0 114 6 90 0 125 6 90 0 126 6 90 1 200] 
#[1 6 94 0 2 6 94 0 4 6 94 0 6 6 94 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 6 94 0 23 6 94 0 24 6 94 0 39 6 94 0 40 6 94 0 41 6 94 0 43 6 94 0 45 6 94 0 46 6 94 0 47 6 94 0 49 6 94 0 50 6 5 0 78 6 9 0 81 6 94 0 90 6 94 0 113 6 94 0 114 6 94 0 125 6 94 0 126 6 94 1 200] 
#[1 6 98 0 2 6 98 0 4 6 98 0 6 6 98 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 6 98 0 23 6 98 0 24 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 43 6 98 0 45 6 98 0 46 6 98 0 47 6 98 0 49 6 98 0 50 6 5 0 78 6 9 0 81 6 98 0 90 6 98 0 113 6 98 0 114 6 98 0 125 6 98 0 126 6 98 1 200] 
#[1 6 102 0 2 6 102 0 4 6 102 0 6 6 102 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 6 102 0 23 6 102 0 24 6 102 0 39 6 102 0 40 6 102 0 41 6 102 0 43 6 102 0 45 6 102 0 46 6 102 0 47 6 102 0 49 6 102 0 50 6 5 0 78 6 9 0 81 6 102 0 90 6 102 0 113 6 102 0 114 6 102 0 125 6 102 0 126 6 102 1 200] 
#[1 6 106 0 2 6 106 0 4 6 106 0 6 6 106 0 7 6 13 0 23 6 17 0 24 6 106 0 39 6 106 0 40 6 106 0 41 6 106 0 43 6 106 0 45 6 106 0 46 6 106 0 47 6 21 0 49 6 25 0 50 6 106 0 90 6 106 0 113 6 106 0 114 6 106 0 125 6 106 0 126 6 106 1 200] 
#[1 6 110 0 2 6 110 0 4 6 110 0 6 6 110 0 7 6 29 0 39 6 110 0 40 6 110 0 41 6 110 0 43 6 110 0 45 6 110 0 46 6 110 0 47 6 110 0 90 6 110 0 113 6 110 0 114 6 110 0 125 6 110 0 126 6 110 1 200] 
#[1 6 114 0 2 6 114 0 4 6 114 0 6 6 114 0 7 6 114 0 40 6 114 0 41 6 114 0 43 6 114 0 45 6 114 0 46 6 33 0 47 6 114 0 90 6 114 0 113 6 114 0 114 6 114 0 125 6 114 0 126 6 114 1 200] 
#[1 6 118 0 2 6 118 0 4 6 118 0 6 6 118 0 7 6 118 0 40 6 118 0 41 6 37 0 45 6 118 0 46 6 118 0 90 6 118 0 113 6 118 0 114 6 118 0 125 6 118 0 126 6 118 1 200] 
#[1 0 246 0 2 0 246 0 4 0 246 0 6 0 246 0 7 0 246 0 40 0 246 0 41 6 37 0 45 0 246 0 46 0 246 0 90 0 246 0 113 0 246 0 114 0 246 0 125 0 246 0 126 0 246 1 200] 
#[1 6 122 0 2 6 122 0 4 6 122 0 6 6 122 0 7 6 41 0 40 6 122 0 41 6 122 0 46 6 122 0 90 6 122 0 113 6 122 0 114 6 122 0 125 6 122 0 126 6 122 1 200] 
#[1 6 126 0 2 6 126 0 4 6 126 0 6 6 126 0 7 6 126 0 41 6 126 0 43 6 37 0 45 6 126 0 90 6 126 0 113 6 126 0 114 6 126 0 125 6 126 0 126 6 126 1 200] 
#[0 15 141 0 114] 
#[0 6 130 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 200] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 15 149 0 248 15 153 0 249 0 6 1 199] 
#[0 6 138 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 6 142 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 6 146 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 22 0 127 15 157 1 54 15 161 1 73] 
#[1 6 150 0 3 0 147 0 127 15 165 0 129 15 173 1 51 15 173 1 52 1 181 1 53 15 173 1 71 1 189 1 73 15 177 1 78] 
#[1 6 158 0 3 6 158 0 8 6 158 0 13 15 181 0 21 15 185 0 114 6 158 0 128] 
#[1 6 150 0 3 15 189 0 8 0 130 0 13 15 193 0 128 15 221 1 57 15 201 1 61 15 205 1 62 15 209 1 63 15 205 1 64 15 205 1 65 15 221 1 66 15 225 1 74 15 229 1 78] 
#[0 6 162 0 3 0 8 0 13 0 128] 
#[0 6 166 0 3 0 8 0 13 0 128] 
#[0 6 170 0 128] 
#[1 15 233 0 128 15 237 1 59] 
#[0 15 241 0 2] 
#[1 2 138 0 5 2 138 0 10 0 151 0 13 2 142 0 21 2 138 0 39 2 138 0 45 13 101 0 69 4 230 0 113 13 105 1 82] 
#[0 15 245 0 13] 
#[1 6 73 0 1 3 49 0 10 6 85 1 79 15 249 1 122] 
#[0 15 253 0 3] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 16 1 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 6 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 6 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 16 5 0 7] 
#[0 6 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 16 9 0 7] 
#[0 16 13 0 1] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 16 17 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 16 21 0 186 16 21 0 187 16 21 0 189 0 245 0 242 16 21 0 250 1 113 0 251 1 117 0 252 1 121 0 255 16 21 1 0 0 245 1 6 16 21 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 16 25 0 132 16 29 0 204 16 33 0 205 16 37 0 206 16 37 0 207 16 37 0 208 16 41 0 222 6 161 1 199] 
#[1 0 202 0 7 0 202 0 8 5 197 0 9 0 202 0 10 0 202 0 11 5 197 0 12 0 202 0 13 0 202 0 14 5 197 0 15 5 197 0 16 0 202 0 17 0 202 0 19 0 202 0 20 5 197 0 22 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 5 197 0 27 5 197 0 28 5 197 0 29 5 197 0 30 5 197 0 31 5 197 0 32 5 197 0 33 0 202 0 34 5 185 0 35 0 202 0 36 5 189 0 37 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 49 0 202 0 50 5 193 0 51 0 155 0 78 0 202 0 81 16 49 0 90 0 202 0 113 5 197 0 188 5 197 1 198] 
#[1 16 53 0 7 6 57 0 113] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 16 57 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 16 61 0 186 16 61 0 187 16 61 0 189 0 245 0 242 16 61 0 250 1 113 0 251 1 117 0 252 1 121 0 255 16 61 1 0 0 245 1 6 16 61 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 16 65 0 132 4 45 0 201 4 49 0 202 16 69 0 206 16 69 0 207 16 69 0 208 16 73 0 222 4 49 1 128 4 49 1 129 4 73 1 199] 
#[1 16 77 0 78 16 81 0 90] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 4 169 0 52 0 133 0 57 16 93 0 58 1 157 0 70 0 145 0 74 0 149 0 77 16 93 0 84 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 16 85 0 107 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 16 89 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 16 89 0 168 16 93 0 200 16 97 0 221 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 5 37 1 199] 
#[1 16 101 0 2 6 57 0 113] 
#[0 6 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 16 105 0 7 6 57 0 113] 
#[1 16 109 0 2 6 57 0 113] 
#[0 6 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 16 113 0 1 1 197 0 3 16 117 0 195] 
#[1 1 197 0 3 16 121 0 195] 
#[1 6 194 0 1 6 194 0 3 6 194 0 4 6 194 0 5 6 194 0 7 6 194 0 34 6 194 0 35 6 194 0 36 6 194 0 37 6 194 0 38 6 194 0 48 6 194 0 52 6 194 0 53 6 194 0 54 6 194 0 55 6 194 0 57 6 194 0 58 6 194 0 60 6 194 0 61 6 194 0 62 6 194 0 63 6 194 0 64 6 194 0 65 6 194 0 66 6 194 0 67 6 194 0 68 6 194 0 70 12 1 0 71 6 194 0 72 6 194 0 74 6 194 0 76 6 194 0 77 6 194 0 82 6 194 0 84 6 194 0 86 6 194 0 87 6 194 0 88 6 194 0 94 6 194 0 98 6 194 0 99 6 194 0 101 6 194 0 102 6 194 0 103 6 194 0 104 6 194 0 105 6 194 0 106 6 194 0 107 6 194 0 108 6 194 0 109 6 194 0 110 6 194 0 111 6 194 0 116 6 194 0 119 6 194 0 120 6 194 0 121 6 194 0 123 6 194 0 124 6 194 0 127 16 125 0 238 6 194 1 199 6 194 1 200] 
#[0 6 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 6 202 0 7 0 90 0 113] 
#[0 6 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 6 145 0 132 16 129 0 205 6 157 0 206 6 157 0 207 6 157 0 208 6 161 1 199] 
#[0 6 210 0 7 0 90 0 113] 
#[1 13 65 0 114 16 133 1 113] 
#[1 13 65 0 114 16 137 1 113] 
#[0 6 214 0 7 0 90 0 113] 
#[0 6 218 0 7 0 90 0 113] 
#[1 16 141 0 2 6 57 0 113] 
#[1 16 145 0 2 6 57 0 113] 
#[0 6 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 6 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 159 0 1 6 230 0 3 6 230 0 4 0 159 0 5 0 159 0 7 5 202 0 8 5 202 0 9 5 202 0 10 5 202 0 11 5 202 0 12 5 202 0 13 5 202 0 14 5 202 0 15 5 202 0 16 5 202 0 17 5 202 0 19 5 202 0 20 5 202 0 21 5 202 0 22 5 202 0 23 5 202 0 24 5 202 0 25 5 202 0 26 5 202 0 27 5 202 0 28 5 202 0 29 5 202 0 30 5 202 0 31 5 202 0 32 5 202 0 33 0 159 0 34 0 159 0 35 0 159 0 36 0 159 0 37 6 230 0 38 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 42 5 202 0 43 5 202 0 44 5 202 0 45 5 202 0 46 5 202 0 47 6 230 0 48 5 202 0 49 5 202 0 50 5 202 0 51 6 230 0 52 6 230 0 53 6 230 0 54 6 230 0 57 6 230 0 58 6 230 0 60 6 230 0 61 6 230 0 62 6 230 0 64 6 230 0 65 6 230 0 67 6 230 0 68 6 230 0 70 6 230 0 72 6 230 0 74 6 230 0 76 6 230 0 77 5 202 0 78 5 202 0 81 6 230 0 82 6 230 0 84 6 230 0 86 6 230 0 87 6 230 0 88 6 230 0 94 6 230 0 98 6 230 0 99 6 230 0 101 6 230 0 102 6 230 0 103 6 230 0 104 6 230 0 105 6 230 0 106 6 230 0 107 6 230 0 108 6 230 0 109 6 230 0 110 6 230 0 111 5 202 0 113 6 230 0 116 6 230 0 119 6 230 0 120 6 230 0 121 0 159 0 123 0 159 0 124 6 230 0 127 5 202 1 198 0 159 1 199 6 230 1 200] 
#[0 16 149 0 3] 
#[1 3 49 0 10 4 237 0 69 16 153 1 21 16 157 1 79 4 253 1 199] 
#[1 6 234 0 7 6 234 0 113 13 65 0 114 16 161 1 113] 
#[1 16 165 0 7 16 169 0 113] 
#[0 6 238 0 7 0 113] 
#[1 8 9 0 1 3 49 0 10 8 53 1 79 16 173 1 114] 
#[1 16 177 0 7 16 169 0 113] 
#[0 16 181 0 3] 
#[1 16 185 0 3 12 205 0 21] 
#[1 16 189 0 7 16 169 0 113] 
#[1 16 193 0 4 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 16 197 0 133 16 197 0 145 16 197 0 146 16 197 0 147 8 45 1 48 8 49 1 49 16 201 1 144 16 205 1 145 16 209 1 146] 
#[0 16 213 0 7] 
#[0 16 217 0 7] 
#[1 4 233 0 3 4 237 0 69 0 185 0 116 16 221 0 132 6 189 1 20 4 249 1 21 4 253 1 199] 
#[1 7 73 0 1 7 77 0 25 0 185 0 116 16 225 0 132] 
#[1 0 134 0 1 0 134 0 5 0 163 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 78 0 134 0 81 0 134 0 123 0 134 0 124 0 134 1 198 0 134 1 199] 
#[0 16 233 0 7] 
#[0 6 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 6 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 6 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 6 254 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 7 2 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[1 16 237 0 22 3 10 0 73 3 10 0 113] 
#[0 7 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 16 241 0 7] 
#[0 16 245 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 16 249 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 16 253 0 1] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 17 1 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 0 185 0 116 17 5 0 132 17 9 1 96 17 13 1 155 17 17 1 197] 
#[1 0 185 0 116 3 77 0 132 17 21 1 94 3 129 1 95 3 133 1 96 17 21 1 133] 
#[1 3 41 0 3 12 185 0 69 17 25 1 97 17 29 1 131] 
#[0 7 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 3 41 0 3 17 33 1 97] 
#[1 0 93 0 1 0 15 0 3 7 14 0 4 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 7 5 0 62 0 137 0 64 1 217 0 65 2 113 0 67 17 37 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 7 105 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 17 85 0 190 17 85 0 193 17 85 0 194 17 85 0 195 17 85 0 199 0 65 0 200 17 85 0 203 17 85 0 217 17 85 0 218 17 85 0 219 17 85 0 220 17 85 0 223 17 85 0 224 17 85 0 226 17 85 0 227 17 85 0 228 17 85 0 233 17 85 0 235 17 85 0 236 17 85 0 240 17 85 0 241 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 17 85 1 5 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 17 85 1 18 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 17 85 1 121 17 85 1 130 17 85 1 143 17 85 1 148 17 77 1 150 17 81 1 151 17 85 1 152 17 85 1 153 17 85 1 154 17 85 1 180 3 33 1 199] 
#[1 0 185 0 116 17 101 0 132] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 17 105 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 17 105 1 107 17 105 1 108 3 109 1 109 3 109 1 111] 
#[0 17 109 0 22] 
#[0 16 237 0 22] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 2 101 0 57 0 137 0 64 1 157 0 70 2 121 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 12 129 0 186 12 129 0 187 12 133 0 241 0 245 0 242 12 129 0 250 1 113 0 251 1 117 0 252 1 121 0 255 12 129 1 0 12 137 1 5 0 245 1 6 12 129 1 8 0 245 1 11 0 245 1 15 1 33 1 17 12 141 1 18 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 3 33 1 199] 
#[0 4 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 4 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 6 197 0 57 6 205 0 74 0 185 0 116 17 113 0 132 12 145 1 184 12 149 1 185] 
#[0 4 110 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 4 118 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 4 138 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 17 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 12 253 0 1 3 49 0 10 13 5 1 79 17 121 1 114 17 125 1 122] 
#[0 17 129 0 1] 
#[0 17 133 0 7] 
#[0 17 137 0 3] 
#[1 4 233 0 3 4 237 0 69 17 141 1 20 4 249 1 21 4 253 1 199] 
#[0 7 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 167 0 2 0 167 0 4 4 162 0 5 0 167 0 6 4 162 0 7 5 46 0 22 4 162 0 39 4 162 0 45 0 167 0 113] 
#[1 8 9 0 1 4 174 0 4 4 174 0 7 3 49 0 10 13 61 0 41 4 174 0 113 17 145 0 114 8 53 1 79 13 69 1 113 13 73 1 114] 
#[0 17 149 0 18] 
#[0 7 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 17 153 0 2] 
#[1 0 134 0 1 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 78 0 134 0 81 17 157 0 114 0 134 0 123 0 134 0 124 0 134 1 198 0 134 1 199] 
#[0 17 161 0 6] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 17 165 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 17 169 0 1] 
#[1 8 9 0 1 7 26 0 4 7 26 0 7 3 49 0 10 7 26 0 113 13 65 0 114 8 53 1 79 17 173 1 113 17 177 1 114] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 17 181 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 17 181 1 107 17 181 1 108 3 109 1 109 3 109 1 111] 
#[0 7 30 0 4 0 7 0 113] 
#[0 7 34 0 4 0 7 0 113] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 17 185 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 7 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 199 1 200] 
#[1 8 9 0 1 7 42 0 4 8 17 0 5 3 49 0 10 8 21 0 87 8 25 0 117 8 45 0 119 8 49 0 120 8 33 0 133 8 33 0 145 8 33 0 146 8 33 0 147 8 45 1 48 8 49 1 49 8 53 1 79 17 189 1 100 17 189 1 112 17 189 1 114 17 189 1 118 17 189 1 119 17 189 1 120] 
#[1 8 9 0 1 7 46 0 4 8 17 0 5 3 49 0 10 8 21 0 87 8 25 0 117 8 45 0 119 8 49 0 120 8 33 0 133 8 33 0 145 8 33 0 146 8 33 0 147 8 45 1 48 8 49 1 49 8 53 1 79 17 193 1 100 17 193 1 112 17 193 1 114 17 193 1 118 17 193 1 119 17 193 1 120] 
#[0 7 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 17 197 0 6 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 17 201 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 17 201 1 104 3 97 1 105 3 101 1 106 17 201 1 107 17 201 1 108 3 109 1 109 3 109 1 111] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 17 205 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 17 205 1 107 17 205 1 108 3 109 1 109 3 109 1 111] 
#[0 7 54 0 13 0 113] 
#[0 7 58 0 1 0 3 0 22 0 69 1 199] 
#[1 0 185 0 116 8 101 0 132 17 209 1 81] 
#[0 17 213 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 17 217 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 0 185 0 116 17 221 0 132] 
#[0 17 225 0 2] 
#[1 7 62 0 2 7 62 0 3 7 62 0 4 7 62 0 5 7 62 0 6 7 62 0 7 7 62 0 8 7 62 0 10 7 62 0 11 7 62 0 13 7 62 0 14 7 62 0 17 7 62 0 18 7 62 0 19 7 62 0 20 7 62 0 22 7 62 0 23 7 62 0 24 7 62 0 25 7 62 0 26 7 62 0 34 7 62 0 36 0 171 0 39 7 62 0 40 7 62 0 41 7 62 0 43 7 62 0 44 7 62 0 45 7 62 0 46 7 62 0 47 7 62 0 49 7 62 0 50 7 62 0 59 7 62 0 78 7 62 0 81 7 62 0 90 7 62 0 91 7 62 0 92 7 62 0 93 7 62 0 96 7 62 0 113 7 62 0 114 7 62 0 117 7 62 0 119 7 62 0 120 7 62 0 125 7 62 0 126 7 62 1 200] 
#[1 7 66 0 2 7 66 0 3 7 66 0 4 0 175 0 5 7 66 0 6 7 66 0 7 7 66 0 8 7 66 0 10 7 66 0 11 7 66 0 13 7 66 0 14 7 66 0 17 7 66 0 18 7 66 0 19 7 66 0 20 7 66 0 22 7 66 0 23 7 66 0 24 7 66 0 25 7 66 0 26 7 66 0 34 7 66 0 36 7 66 0 39 7 66 0 40 7 66 0 41 7 66 0 43 7 66 0 44 7 66 0 45 7 66 0 46 7 66 0 47 7 66 0 49 7 66 0 50 7 66 0 59 7 66 0 78 7 66 0 81 7 66 0 90 7 66 0 91 7 66 0 92 7 66 0 93 7 66 0 96 7 66 0 113 7 66 0 114 7 66 0 117 7 66 0 119 7 66 0 120 7 66 0 125 7 66 0 126 8 153 0 225 7 66 1 200] 
#[0 17 229 0 6] 
#[0 7 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 7 74 0 2 7 74 0 3 7 74 0 4 7 74 0 5 7 74 0 6 7 74 0 7 7 74 0 8 7 74 0 10 7 74 0 11 7 74 0 13 7 74 0 14 7 74 0 17 7 74 0 18 7 74 0 19 7 74 0 20 7 78 0 21 7 74 0 22 7 74 0 23 7 74 0 24 7 74 0 25 7 74 0 26 7 74 0 34 7 74 0 36 7 74 0 39 7 74 0 40 7 74 0 41 7 74 0 43 7 74 0 44 7 74 0 45 7 74 0 46 7 74 0 47 7 74 0 49 7 74 0 50 7 74 0 59 7 74 0 78 7 74 0 80 7 74 0 81 7 74 0 90 7 74 0 91 7 74 0 92 7 74 0 93 7 74 0 96 7 74 0 113 7 74 0 114 7 74 0 117 7 74 0 119 7 74 0 120 7 74 0 125 7 74 0 126 7 74 1 200] 
#[0 17 233 0 117] 
#[0 7 82 0 7 0 73] 
#[1 17 237 0 4 8 169 0 117 17 241 1 45] 
#[0 7 86 0 73] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 17 245 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 17 249 0 1 0 185 0 116 17 253 0 132] 
#[0 18 1 0 1] 
#[0 6 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 7 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 18 5 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 18 9 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 18 13 0 1] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 18 17 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 7 94 0 7] 
#[0 7 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 12 253 0 1 3 49 0 10 13 5 1 79 17 121 1 114 18 21 1 122] 
#[0 18 25 0 3] 
#[1 0 185 0 116 18 29 0 132 18 29 1 40] 
#[0 7 102 0 73] 
#[1 18 33 0 4 0 185 0 116 8 253 0 117 9 9 0 132 18 37 1 38 9 9 1 40] 
#[0 7 106 0 73] 
#[0 7 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 7 114 0 73] 
#[0 7 118 0 73] 
#[0 7 122 0 4] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 18 41 0 214 18 41 0 215 8 5 1 199] 
#[0 7 126 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 130 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 18 45 0 4 9 33 0 5 9 37 0 112 0 185 0 116 8 25 0 117 8 45 0 119 8 49 0 120 9 41 0 132 9 45 0 133 9 45 0 145 9 45 0 146 9 45 0 147 18 49 0 209 18 53 0 213 18 53 0 215 8 45 1 48 8 49 1 49 9 65 1 199] 
#[1 14 81 0 41 13 65 0 114 14 85 1 113] 
#[1 0 185 0 116 18 57 0 132] 
#[0 7 134 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 138 0 6 0 113] 
#[0 18 61 0 6] 
#[0 7 142 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 33 0 3 4 37 0 5 18 65 0 6 4 85 0 112 4 145 0 113 0 185 0 116 9 41 0 132 18 69 0 139 4 97 0 206 4 97 0 207 4 97 0 208 18 73 0 212 9 85 0 214 9 85 0 215 18 77 0 216 8 5 1 199] 
#[0 7 146 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 150 0 2 0 4 0 6 0 7 0 90 0 113] 
#[0 7 154 0 7 0 113] 
#[1 7 158 0 7 9 93 0 22 7 158 0 113 18 81 0 149] 
#[1 7 162 0 7 9 93 0 22 7 162 0 113 18 85 0 149] 
#[1 0 134 0 1 0 134 0 5 0 179 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 78 0 134 0 81 0 134 0 113 13 65 0 114 0 134 0 123 0 134 0 124 14 69 1 113 0 134 1 198 0 134 1 199] 
#[1 5 142 0 1 0 183 0 2 5 142 0 5 0 183 0 6 5 142 0 8 5 142 0 9 5 142 0 10 5 142 0 11 5 142 0 12 5 142 0 13 5 142 0 14 5 142 0 15 5 142 0 16 5 142 0 17 5 142 0 19 5 142 0 20 5 142 0 21 0 183 0 22 5 142 0 23 5 142 0 24 5 142 0 25 5 142 0 26 5 142 0 27 5 142 0 28 5 142 0 29 5 142 0 30 5 142 0 31 5 142 0 32 5 142 0 33 5 142 0 34 5 142 0 35 5 142 0 36 5 142 0 37 5 142 0 39 5 142 0 40 5 142 0 41 5 142 0 42 5 142 0 43 5 142 0 44 5 142 0 45 5 142 0 46 5 142 0 47 5 142 0 49 5 142 0 50 5 142 0 51 5 142 0 78 5 142 0 81 0 183 0 113 5 142 0 123 5 142 0 124 5 142 1 198 5 142 1 199] 
#[0 7 166 0 2 0 6] 
#[0 7 170 0 2] 
#[0 7 174 0 2 0 113] 
#[0 7 178 0 2 0 4 0 6 0 113] 
#[1 7 182 0 2 7 182 0 4 7 182 0 6 9 93 0 22 7 182 0 113 18 89 0 149] 
#[1 7 186 0 2 7 186 0 4 7 186 0 6 7 186 0 113 13 65 0 114 18 93 1 113] 
#[1 7 190 0 2 7 190 0 4 7 190 0 6 9 93 0 22 7 190 0 113 18 97 0 149] 
#[1 0 187 0 2 0 187 0 4 0 187 0 6 0 191 0 22 0 195 0 41 0 187 0 113 0 139 0 114 18 105 0 149 18 109 1 113] 
#[1 7 198 0 2 7 198 0 4 7 198 0 6 9 93 0 22 18 113 0 41 7 198 0 113 13 65 0 114 18 117 0 149 18 121 1 113] 
#[0 7 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 7 206 0 6 0 113] 
#[0 7 210 0 6 0 113] 
#[0 18 125 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 18 129 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 18 133 0 1] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 18 137 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 18 141 0 248 15 153 0 249 18 145 1 16 0 6 1 199] 
#[0 7 214 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 7 218 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 18 149 0 1] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 18 153 0 133 18 153 0 145 18 153 0 146 18 153 0 147 8 45 1 48 8 49 1 49] 
#[0 18 157 0 1] 
#[0 18 161 0 1] 
#[0 18 165 0 1] 
#[0 7 222 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 18 169 0 243 4 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 7 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 198 1 199 1 200] 
#[0 7 230 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 18 173 0 1] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 18 177 0 133 18 177 0 145 18 177 0 146 18 177 0 147 8 45 1 48 8 49 1 49] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 18 181 0 133 18 181 0 145 18 181 0 146 18 181 0 147 8 45 1 48 8 49 1 49] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 18 185 0 133 18 185 0 145 18 185 0 146 18 185 0 147 8 45 1 48 8 49 1 49 18 189 1 123 18 193 1 124 14 241 1 199] 
#[1 12 253 0 1 18 197 0 7 3 49 0 10 9 93 0 22 13 65 0 114 18 201 0 149 13 5 1 79 18 205 1 113 18 209 1 114 18 213 1 122] 
#[1 9 33 0 5 18 217 0 59 18 221 0 96 8 25 0 117 8 45 0 119 8 49 0 120 18 225 0 133 18 225 0 145 18 225 0 146 18 225 0 147 8 45 1 48 8 49 1 49 18 229 1 123 18 233 1 124 14 241 1 199] 
#[0 18 237 0 7] 
#[0 7 234 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 7 238 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 7 242 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 7 246 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 7 250 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 7 254 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 8 2 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 8 6 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[1 14 185 0 75 14 189 0 95] 
#[0 8 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 198 1 199 1 200] 
#[0 18 241 0 4] 
#[0 8 14 0 80] 
#[0 8 18 0 80] 
#[0 8 22 0 3 0 113] 
#[1 8 26 0 3 18 245 0 113] 
#[0 8 30 0 3 0 113] 
#[0 8 34 0 3] 
#[0 18 249 0 3] 
#[0 18 253 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 19 1 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 19 5 0 2] 
#[0 8 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 8 42 0 2 0 113] 
#[0 8 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 19 9 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 19 13 0 112 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 17 0 186 19 17 0 187 0 245 0 242 19 17 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 17 1 0 0 245 1 6 19 17 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 8 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 19 21 0 13 19 25 0 113] 
#[0 8 54 0 13 0 113] 
#[0 8 58 0 13 0 113] 
#[1 0 93 0 1 19 29 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 10 117 0 112 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 19 33 0 163 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 10 125 0 186 10 125 0 187 0 245 0 242 10 125 0 250 1 113 0 251 1 117 0 252 1 121 0 255 10 125 1 0 0 245 1 6 10 125 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 4 22 0 3 4 22 0 127 4 22 0 129 19 37 1 69 11 125 1 70] 
#[0 8 62 0 4 0 113] 
#[0 8 66 0 4 0 113] 
#[0 8 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 19 41 0 4 9 33 0 5 9 249 0 25 9 253 0 52 10 1 0 75 10 5 0 95 10 157 0 112 0 185 0 116 8 25 0 117 8 45 0 119 8 49 0 120 10 161 0 132 10 173 0 133 19 45 0 144 10 173 0 145 10 173 0 146 10 173 0 147 19 45 0 148 19 45 1 2 19 45 1 4 19 45 1 9 19 45 1 13 8 45 1 48 8 49 1 49 19 45 1 123 19 45 1 124 10 185 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 49 0 186 19 49 0 187 0 245 0 242 19 49 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 49 1 0 0 245 1 6 19 49 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 6 73 0 1 3 49 0 10 6 85 1 79 18 213 1 122] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 53 0 186 19 53 0 187 19 53 0 189 0 245 0 242 19 53 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 53 1 0 0 245 1 6 19 53 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 8 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 8 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 19 57 0 125 19 61 0 126] 
#[0 8 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 19 65 0 6 6 57 0 113] 
#[1 19 69 0 6 6 57 0 113] 
#[0 8 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 8 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 8 94 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 73 0 186 19 73 0 187 0 245 0 242 19 73 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 73 1 0 0 245 1 6 19 73 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 6 0 1 0 6 0 3 8 98 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 181 0 197 0 57 0 198 6 181 0 199 0 65 0 200 0 6 1 199] 
#[0 19 77 0 4] 
#[0 8 102 0 4] 
#[0 8 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 198 1 199 1 200] 
#[0 19 81 0 127] 
#[0 8 110 0 3 0 127 0 129] 
#[0 8 114 0 3 0 127 0 129] 
#[0 8 118 0 3 0 127 0 129] 
#[0 19 85 0 3] 
#[0 8 122 0 128] 
#[0 19 89 0 128] 
#[1 8 126 0 13 19 93 1 76] 
#[1 8 130 0 3 8 130 0 8 8 130 0 13 8 130 0 22 15 185 0 114 8 130 0 128] 
#[0 8 134 0 3 0 8 0 13 0 22 0 128] 
#[1 19 97 0 8 0 130 0 13 19 101 1 74] 
#[0 8 138 0 3 0 8 0 13 0 128] 
#[1 6 150 0 3 8 142 0 8 8 142 0 13 15 193 0 128 15 221 1 57 19 105 1 62 19 105 1 64 19 105 1 65 15 221 1 66 15 229 1 78] 
#[0 8 146 0 3 0 8 0 13 0 128] 
#[0 8 150 0 3 0 8 0 13 0 128] 
#[1 8 154 0 3 8 154 0 8 8 154 0 13 19 109 0 22 8 154 0 128 19 113 1 67] 
#[0 19 117 0 13] 
#[0 19 121 0 3] 
#[1 8 158 0 3 8 158 0 8 8 158 0 13 15 181 0 21 8 158 0 128] 
#[0 8 162 0 128] 
#[1 13 65 0 114 19 125 1 113] 
#[1 4 165 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 4 169 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 4 177 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 4 177 0 168 19 129 0 169 19 129 0 170 0 245 0 242 0 245 1 6 0 245 1 11 0 245 1 15 19 129 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 4 185 1 199] 
#[0 19 133 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 19 137 0 248 15 153 0 249 0 6 1 199] 
#[0 19 141 0 2] 
#[0 8 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 8 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 145 0 186 19 145 0 187 19 145 0 189 0 245 0 242 19 145 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 145 1 0 0 245 1 6 19 145 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 19 149 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 153 0 186 19 153 0 187 19 153 0 189 0 245 0 242 19 153 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 153 1 0 0 245 1 6 19 153 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 19 157 0 7 6 57 0 113] 
#[1 4 38 0 7 9 93 0 22 8 174 0 78 4 38 0 90 4 38 0 113 12 13 0 149] 
#[1 19 161 0 7 12 21 0 113] 
#[1 4 42 0 7 19 165 0 90 4 42 0 113] 
#[1 9 93 0 22 8 178 0 78 12 25 0 149] 
#[0 19 169 0 78] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 173 0 186 19 173 0 187 19 173 0 189 0 245 0 242 19 173 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 173 1 0 0 245 1 6 19 173 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 177 0 186 19 177 0 187 0 245 0 242 19 177 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 177 1 0 0 245 1 6 19 177 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 19 181 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 185 0 186 19 185 0 187 19 185 0 189 0 245 0 242 19 185 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 185 1 0 0 245 1 6 19 185 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 19 189 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 193 0 186 19 193 0 187 19 193 0 189 0 245 0 242 19 193 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 193 1 0 0 245 1 6 19 193 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 19 197 0 7 6 57 0 113] 
#[1 3 38 0 7 9 93 0 22 8 174 0 78 8 174 0 90 3 38 0 113 9 97 0 149] 
#[1 9 93 0 22 8 178 0 78 8 178 0 90 9 109 0 149] 
#[0 8 182 0 78 0 90] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 201 0 186 19 201 0 187 19 201 0 189 0 245 0 242 19 201 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 201 1 0 0 245 1 6 19 201 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 205 0 186 19 205 0 187 0 245 0 242 19 205 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 205 1 0 0 245 1 6 19 205 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 6 145 0 132 19 209 0 205 6 157 0 206 6 157 0 207 6 157 0 208 6 161 1 199] 
#[0 19 213 0 90] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 16 73 0 132 16 73 0 206 16 73 0 207 16 73 0 208 16 73 0 222] 
#[0 19 225 0 90] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 19 229 0 190 19 229 0 193 19 229 0 194 19 229 0 195 19 229 0 203 19 229 0 217 19 229 0 218 19 229 0 219 19 229 0 220 19 229 0 223 19 229 0 224 19 229 0 226 19 229 0 227 19 229 0 228 19 229 0 233 19 229 0 235 19 229 0 236 19 229 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 8 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 19 233 0 3 19 237 0 229] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 19 249 0 132 19 249 0 206 19 249 0 207 19 249 0 208 19 249 0 239] 
#[0 8 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 8 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 8 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 8 202 0 7 0 113] 
#[1 8 206 0 7 9 93 0 22 8 206 0 90 8 206 0 113 19 253 0 149] 
#[1 9 93 0 22 20 1 0 149] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 20 5 0 190 20 5 0 193 20 5 0 194 20 5 0 195 20 5 0 203 20 5 0 217 20 5 0 218 20 5 0 219 20 5 0 220 20 5 0 223 20 5 0 224 20 5 0 226 20 5 0 227 20 5 0 228 20 5 0 233 20 5 0 235 20 5 0 236 20 5 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 20 9 0 190 20 9 0 193 20 9 0 194 20 9 0 195 20 9 0 203 20 9 0 217 20 9 0 218 20 9 0 219 20 9 0 220 20 9 0 223 20 9 0 224 20 9 0 226 20 9 0 227 20 9 0 228 20 9 0 233 20 9 0 235 20 9 0 236 20 9 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 20 13 0 4 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 16 197 0 133 16 197 0 145 16 197 0 146 16 197 0 147 8 45 1 48 8 49 1 49 20 17 1 144 16 205 1 145 16 209 1 146] 
#[0 20 21 0 3] 
#[1 4 237 0 69 20 25 1 21 4 253 1 199] 
#[0 8 210 0 7 0 113] 
#[0 8 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 185 0 116 12 73 0 132 20 29 1 183] 
#[0 20 33 0 7] 
#[0 8 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 38 0 4 7 5 0 62 7 205 0 68 7 13 0 77 2 129 0 82 2 133 0 86 2 137 0 105 2 249 1 31 2 249 1 121 2 249 1 130 2 249 1 148 2 249 1 154 2 249 1 166 20 37 1 170 2 245 1 171 2 249 1 172 2 249 1 175 2 249 1 177 2 249 1 178 2 249 1 179 2 249 1 180] 
#[1 8 222 0 4 6 197 0 57 20 41 0 58 2 113 0 67 20 45 0 68 6 205 0 74 7 141 0 77 2 129 0 82 20 49 0 84 6 217 0 86 6 221 0 107 20 53 0 199 0 65 0 200 20 57 1 130 20 77 1 143 20 61 1 154 20 65 1 181 20 69 1 184 20 73 1 185 20 77 1 191 20 81 1 192 20 85 1 193 20 89 1 194 20 93 1 195] 
#[0 8 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 8 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 8 234 0 4 20 97 0 22 8 234 0 113] 
#[0 20 101 0 4] 
#[1 8 238 0 4 20 105 0 113] 
#[0 8 242 0 4 0 113] 
#[0 8 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 8 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 4 233 0 3 3 49 0 10 4 237 0 69 12 61 1 20 20 109 1 21 16 157 1 79 4 253 1 199] 
#[1 20 113 0 1 3 49 0 10 8 53 1 79 16 173 1 114] 
#[0 8 254 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 200] 
#[0 9 2 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 185 0 116 17 5 0 132 17 9 1 96 17 13 1 155] 
#[0 9 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 20 117 0 3] 
#[0 20 121 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 20 125 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 20 129 0 2] 
#[0 2 142 0 7 0 21] 
#[1 9 10 0 7 20 133 0 21] 
#[0 20 137 0 7] 
#[0 20 141 0 1] 
#[0 9 14 0 3] 
#[0 9 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 3 41 0 3 20 145 1 97] 
#[0 9 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 3 185 0 57 2 105 0 58 7 5 0 62 2 113 0 67 3 193 0 74 7 141 0 77 2 129 0 82 0 65 0 84 2 133 0 86 2 137 0 105 1 245 0 107 20 149 0 199 0 65 0 200 20 153 0 203 20 157 0 241 20 161 1 5 20 165 1 18 20 169 1 121 20 173 1 130 20 177 1 143 20 181 1 148 20 185 1 154 20 189 1 180 7 69 1 199] 
#[0 9 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 20 193 0 4] 
#[1 0 93 0 1 0 15 0 3 9 62 0 4 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 7 5 0 62 0 137 0 64 1 217 0 65 2 113 0 67 17 37 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 7 105 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 20 197 0 190 20 197 0 193 20 197 0 194 20 197 0 195 20 197 0 199 0 65 0 200 20 197 0 203 20 197 0 217 20 197 0 218 20 197 0 219 20 197 0 220 20 197 0 223 20 197 0 224 20 197 0 226 20 197 0 227 20 197 0 228 20 197 0 233 20 197 0 235 20 197 0 236 20 197 0 240 20 197 0 241 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 20 197 1 5 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 20 197 1 18 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 20 197 1 121 20 197 1 130 20 197 1 143 20 197 1 148 20 197 1 152 20 197 1 153 20 197 1 154 20 197 1 180 3 33 1 199] 
#[0 9 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 9 82 0 3 0 21] 
#[0 20 201 0 7] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 20 205 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 20 205 1 107 20 205 1 108 3 109 1 109 3 109 1 111] 
#[0 16 229 0 7] 
#[0 20 209 0 2] 
#[0 20 213 0 7] 
#[0 20 217 0 3] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 20 221 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 9 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 20 225 0 248 15 153 0 249 0 6 1 199] 
#[0 9 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 3 37 0 1 7 241 0 3 7 245 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 7 249 0 132 4 97 0 206 4 97 0 207 4 97 0 208 18 41 0 214 18 41 0 215 3 81 1 48 3 85 1 49 3 89 1 79 17 181 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 17 181 1 107 17 181 1 108 3 109 1 109 3 109 1 111 8 5 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 20 229 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 20 229 1 107 20 229 1 108 3 109 1 109 3 109 1 111] 
#[1 9 94 0 3 9 94 0 4 9 94 0 7 9 94 0 113 13 65 0 114 20 233 1 113] 
#[1 20 237 0 89 20 241 0 97] 
#[0 9 98 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 20 245 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 20 249 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 9 102 0 4 0 7 0 113] 
#[0 9 106 0 4 0 7 0 113] 
#[0 9 110 0 2 0 3 0 4 0 5 0 6 0 7 0 18 0 22 0 59 0 90 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 20 253 0 2] 
#[0 9 114 0 4 0 7 0 113] 
#[0 9 118 0 4 0 7 0 113] 
#[0 9 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 9 126 0 6 0 113] 
#[0 9 130 0 13 0 113] 
#[0 9 134 0 13 0 113] 
#[0 21 1 0 18] 
#[0 21 5 0 2] 
#[0 9 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 21 9 0 18] 
#[0 9 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 9 146 0 4 0 113] 
#[0 9 150 0 7 0 73] 
#[0 9 154 0 4 0 113] 
#[0 21 13 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 21 17 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 21 21 0 1] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 21 25 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 21 29 0 3] 
#[0 21 33 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 21 37 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 21 41 0 2] 
#[0 21 45 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 21 49 0 248 15 153 0 249 0 6 1 199] 
#[0 9 158 0 4 0 113] 
#[0 9 162 0 73] 
#[0 9 166 0 4 0 113] 
#[0 9 170 0 4 0 113] 
#[0 9 174 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 21 53 0 4] 
#[0 9 178 0 4 0 113] 
#[1 7 194 0 4 9 93 0 22 18 101 0 41 7 194 0 113 13 65 0 114 18 105 0 149 18 109 1 113] 
#[0 9 182 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 9 186 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 33 0 3 4 37 0 5 21 57 0 6 4 85 0 112 9 209 0 113 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 14 25 0 214 14 25 0 215 21 61 0 216 8 5 1 199] 
#[0 9 190 0 6 0 113] 
#[0 21 65 0 6] 
#[0 9 194 0 7 0 113] 
#[0 9 198 0 7 0 113] 
#[0 9 202 0 2 0 4 0 6 0 113] 
#[0 9 206 0 2 0 4 0 6 0 113] 
#[0 9 210 0 2 0 4 0 6 0 113] 
#[0 9 214 0 2 0 4 0 6 0 113] 
#[0 9 218 0 2 0 4 0 6 0 113] 
#[1 9 222 0 2 9 222 0 4 9 222 0 6 9 93 0 22 9 222 0 113 21 69 0 149] 
#[1 9 226 0 2 9 226 0 4 9 226 0 6 9 226 0 113 13 65 0 114 21 73 1 113] 
#[0 9 230 0 2 0 4 0 6 0 113] 
#[1 9 234 0 2 9 234 0 4 9 234 0 6 9 93 0 22 9 234 0 113 21 77 0 149] 
#[0 21 81 0 3] 
#[0 21 85 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 21 89 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 21 93 0 2] 
#[0 9 238 0 4] 
#[0 21 97 0 4] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 21 101 0 243 4 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 21 105 0 1] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 21 109 0 243 4 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 21 113 0 2] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 21 121 0 214 21 121 0 215 21 121 0 247 21 121 1 3 8 5 1 199] 
#[0 21 125 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 21 129 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 21 133 0 1] 
#[0 21 137 0 1] 
#[1 8 9 0 1 21 141 0 7 3 49 0 10 9 93 0 22 13 65 0 114 21 145 0 149 8 53 1 79 21 149 1 113 21 153 1 114] 
#[0 9 242 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 9 246 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 9 250 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 21 157 0 7] 
#[1 21 161 0 7 9 93 0 22 21 165 0 149] 
#[1 21 169 0 3 21 173 0 7] 
#[0 21 177 0 3] 
#[0 21 181 0 1] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 21 185 0 133 21 185 0 145 21 185 0 146 21 185 0 147 8 45 1 48 8 49 1 49 21 189 1 123 21 193 1 124 14 241 1 199] 
#[1 8 9 0 1 21 197 0 7 3 49 0 10 9 93 0 22 13 65 0 114 21 201 0 149 8 53 1 79 21 205 1 113 21 209 1 114] 
#[0 9 254 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 10 2 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 10 6 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 10 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 198 1 199 1 200] 
#[1 0 185 0 116 3 77 0 132 21 213 1 94 3 129 1 95 3 133 1 96 21 213 1 133] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 21 217 0 248 15 153 0 249 0 6 1 199] 
#[0 21 221 0 3] 
#[0 21 225 0 2] 
#[0 21 229 0 3] 
#[0 10 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 21 233 0 186 21 233 0 187 0 245 0 242 21 233 0 250 1 113 0 251 1 117 0 252 1 121 0 255 21 233 1 0 0 245 1 6 21 233 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 10 18 0 2 0 113] 
#[0 10 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 21 237 1 85 21 237 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 21 237 1 107 21 237 1 108 3 109 1 109 3 109 1 111] 
#[0 10 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 21 241 0 2 21 245 0 113] 
#[0 21 249 0 127] 
#[0 10 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 10 34 0 4 0 113] 
#[0 10 38 0 4 0 113] 
#[1 6 57 0 113 10 42 0 125 10 42 0 126] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 21 253 0 186 21 253 0 187 21 253 0 189 0 245 0 242 21 253 0 250 1 113 0 251 1 117 0 252 1 121 0 255 21 253 1 0 0 245 1 6 21 253 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 10 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 10 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 10 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 10 58 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 10 62 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 22 1 0 8] 
#[1 0 93 0 1 0 14 0 3 0 130 0 4 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 4 141 0 112 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 22 13 0 140 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 13 0 186 22 13 0 187 0 245 0 242 22 13 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 13 1 0 0 245 1 6 22 13 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 22 13 1 72 1 189 1 73 22 17 1 74 1 193 1 199] 
#[0 10 66 0 3 0 8 0 13 0 22 0 128] 
#[0 22 21 0 13] 
#[1 8 126 0 13 22 25 1 76] 
#[0 22 29 0 13] 
#[0 10 70 0 3 0 8 0 13 0 128] 
#[1 6 150 0 3 22 33 0 119 0 11 0 127 22 33 1 48 22 45 1 51 22 45 1 52 1 181 1 53 22 45 1 55 22 45 1 68 1 189 1 73 22 49 1 78] 
#[0 10 74 0 3 0 8 0 13 0 128] 
#[0 10 78 0 3 0 127 0 129] 
#[1 4 141 0 112 22 53 0 140] 
#[0 10 82 0 3 0 18] 
#[0 10 86 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 200] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 22 57 0 248 15 153 0 249 0 6 1 199] 
#[0 22 61 0 4] 
#[1 10 90 0 3 10 90 0 18 13 65 0 114 22 65 1 113] 
#[1 22 69 0 2 6 57 0 113] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 22 73 0 190 22 73 0 193 22 73 0 194 22 73 0 195 22 73 0 203 22 73 0 217 22 73 0 218 22 73 0 219 22 73 0 220 22 73 0 223 22 73 0 224 22 73 0 226 22 73 0 227 22 73 0 228 22 73 0 233 22 73 0 235 22 73 0 236 22 73 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 22 77 0 2 6 57 0 113] 
#[1 0 93 0 1 22 81 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 85 0 186 22 85 0 187 22 85 0 189 0 245 0 242 22 85 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 85 1 0 0 245 1 6 22 85 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 22 89 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 93 0 186 22 93 0 187 22 93 0 189 0 245 0 242 22 93 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 93 1 0 0 245 1 6 22 93 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 97 0 186 22 97 0 187 0 245 0 242 22 97 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 97 1 0 0 245 1 6 22 97 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 101 0 186 22 101 0 187 22 101 0 189 0 245 0 242 22 101 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 101 1 0 0 245 1 6 22 101 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 22 105 0 2 6 57 0 113] 
#[0 22 109 0 2] 
#[1 0 93 0 1 22 113 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 117 0 186 22 117 0 187 22 117 0 189 0 245 0 242 22 117 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 117 1 0 0 245 1 6 22 117 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 22 121 0 7 6 57 0 113] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 22 125 0 190 22 125 0 193 22 125 0 194 22 125 0 195 22 125 0 203 22 125 0 217 22 125 0 218 22 125 0 219 22 125 0 220 22 125 0 223 22 125 0 224 22 125 0 226 22 125 0 227 22 125 0 228 22 125 0 233 22 125 0 235 22 125 0 236 22 125 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 22 129 0 2 6 57 0 113] 
#[1 0 93 0 1 22 133 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 137 0 186 22 137 0 187 22 137 0 189 0 245 0 242 22 137 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 137 1 0 0 245 1 6 22 137 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 22 141 0 2 6 57 0 113] 
#[0 22 145 0 2] 
#[0 22 149 0 90] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 153 0 186 22 153 0 187 0 245 0 242 22 153 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 153 1 0 0 245 1 6 22 153 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 8 174 0 90] 
#[0 8 178 0 90] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 22 157 0 186 22 157 0 187 0 245 0 242 22 157 0 250 1 113 0 251 1 117 0 252 1 121 0 255 22 157 1 0 0 245 1 6 22 157 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 10 94 0 1 10 94 0 3 10 94 0 4 10 94 0 5 10 94 0 7 10 94 0 34 10 94 0 35 10 94 0 36 10 94 0 37 10 94 0 38 10 94 0 48 10 94 0 52 10 94 0 53 10 94 0 54 10 94 0 55 10 94 0 57 10 94 0 58 10 94 0 60 10 94 0 61 10 94 0 62 10 94 0 63 10 94 0 64 10 94 0 65 22 161 0 66 10 94 0 67 10 94 0 68 10 94 0 70 10 94 0 72 10 94 0 74 10 94 0 76 10 94 0 77 10 94 0 82 10 94 0 84 10 94 0 86 10 94 0 87 10 94 0 88 10 94 0 94 10 94 0 98 10 94 0 99 10 94 0 101 10 94 0 102 10 94 0 103 10 94 0 104 10 94 0 105 10 94 0 106 10 94 0 107 10 94 0 108 10 94 0 109 10 94 0 110 10 94 0 111 10 94 0 116 10 94 0 119 10 94 0 120 10 94 0 121 10 94 0 123 10 94 0 124 10 94 0 127 10 94 1 199 10 94 1 200] 
#[1 22 165 0 4 22 169 0 55 22 173 0 63 22 177 0 230 22 181 0 231 22 185 0 232] 
#[0 10 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 10 102 0 2] 
#[0 10 106 0 2] 
#[0 22 189 0 2] 
#[0 10 110 0 7 0 90 0 113] 
#[0 10 114 0 7 0 90 0 113] 
#[0 10 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 10 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 10 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 22 193 0 4] 
#[1 10 130 0 4 8 17 0 5 22 197 0 59 22 209 0 91 22 209 0 92 22 209 0 93 22 201 0 96 8 25 0 117 8 45 0 119 8 49 0 120 22 205 0 133 22 205 0 145 22 205 0 146 22 205 0 147 8 45 1 48 8 49 1 49 22 209 1 116 22 225 1 119 22 217 1 186 22 221 1 187 22 225 1 188 22 225 1 189 22 225 1 190] 
#[0 22 237 0 3] 
#[0 10 134 0 7 0 113] 
#[0 10 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 22 241 0 4] 
#[1 0 46 0 3 0 46 0 5 6 193 0 67 0 199 0 116 12 73 0 132 12 77 1 182 12 81 1 183 0 46 1 199] 
#[1 6 197 0 57 20 41 0 58 2 113 0 67 6 205 0 74 7 141 0 77 2 129 0 82 20 49 0 84 6 217 0 86 6 221 0 107 22 245 0 199 0 65 0 200 22 249 1 130 23 13 1 143 22 253 1 154 23 1 1 181 23 5 1 184 23 9 1 185 23 13 1 191 23 17 1 192] 
#[1 0 50 0 3 0 50 0 5 0 203 0 116 12 73 0 132 12 89 1 182 12 81 1 183 0 50 1 199] 
#[0 10 142 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 146 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 150 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 154 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 158 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 162 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 166 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 170 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 23 21 0 4] 
#[1 10 174 0 4 6 197 0 57 20 41 0 58 2 113 0 67 20 45 0 68 6 205 0 74 7 141 0 77 2 129 0 82 20 49 0 84 6 217 0 86 6 221 0 107 20 53 0 199 0 65 0 200 20 57 1 130 20 77 1 143 20 61 1 154 20 65 1 181 20 69 1 184 20 73 1 185 20 77 1 191 20 81 1 192 23 25 1 195] 
#[0 10 178 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 23 33 0 186 23 33 0 187 0 245 0 242 23 33 0 250 1 113 0 251 1 117 0 252 1 121 0 255 23 33 1 0 0 245 1 6 23 33 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 23 33 1 147 1 193 1 199] 
#[0 10 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 10 186 0 4 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 16 197 0 133 16 197 0 145 16 197 0 146 16 197 0 147 8 45 1 48 8 49 1 49 23 37 1 146] 
#[0 23 41 0 3] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 23 45 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 23 49 0 248 15 153 0 249 0 6 1 199] 
#[0 23 53 0 3] 
#[0 23 57 0 2] 
#[0 23 61 0 3] 
#[1 0 185 0 116 23 65 0 132] 
#[0 10 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 23 69 0 119 1 48] 
#[0 10 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 10 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 10 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199] 
#[0 10 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 23 73 0 7] 
#[1 9 94 0 3 9 94 0 7 13 65 0 114 23 77 1 113] 
#[0 10 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 23 81 0 248 15 153 0 249 0 6 1 199] 
#[0 23 85 0 2] 
#[0 23 89 0 4] 
#[0 11 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 11 6 0 3 0 4 0 7 0 113] 
#[0 23 93 0 6] 
#[0 23 97 0 6] 
#[1 11 10 0 4 11 10 0 7 11 10 0 113 13 65 0 114 23 101 1 113] 
#[0 23 105 0 2] 
#[1 11 14 0 3 11 14 0 4 11 14 0 7 11 14 0 113 13 65 0 114 23 109 1 113] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 23 113 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 23 113 1 107 23 113 1 108 3 109 1 109 3 109 1 111] 
#[0 23 117 0 18] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 23 121 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 23 121 1 107 23 121 1 108 3 109 1 109 3 109 1 111] 
#[0 23 125 0 3] 
#[0 23 129 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 23 133 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 23 137 0 2] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 23 141 0 248 15 153 0 249 0 6 1 199] 
#[0 23 145 0 3] 
#[0 23 149 0 2] 
#[0 23 153 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 23 157 0 248 15 153 0 249 0 6 1 199] 
#[0 23 161 0 4] 
#[0 11 18 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 22 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 23 165 0 6] 
#[0 11 26 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 30 0 2 0 4 0 6 0 113] 
#[0 11 34 0 2 0 4 0 6 0 113] 
#[0 11 38 0 2 0 4 0 6 0 113] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 18 141 0 248 15 153 0 249 23 169 1 16 0 6 1 199] 
#[0 23 173 0 3] 
#[0 23 177 0 2] 
#[0 23 181 0 3] 
#[0 11 42 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 200] 
#[0 23 185 0 2] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 23 189 0 243 4 117 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[0 23 193 0 2] 
#[0 23 197 0 3] 
#[0 11 46 0 2] 
#[0 23 201 0 2] 
#[0 23 205 0 3] 
#[0 23 209 0 2] 
#[0 23 213 0 2] 
#[1 4 33 0 3 4 37 0 5 0 185 0 116 23 217 0 132 23 221 0 206 23 221 0 207 23 221 0 208 23 225 0 214 23 225 0 215 23 225 0 247 23 225 1 3 23 229 1 117 23 233 1 125 8 5 1 199] 
#[0 11 50 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 23 237 0 7] 
#[1 23 241 0 7 9 93 0 22 23 245 0 149] 
#[1 23 249 0 3 23 253 0 7] 
#[0 11 54 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 11 58 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 24 1 0 7] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 5 0 248 15 153 0 249 0 6 1 199] 
#[0 11 62 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 9 0 248 15 153 0 249 0 6 1 199] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 24 13 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 8 9 0 1 24 17 0 7 3 49 0 10 9 93 0 22 13 65 0 114 24 21 0 149 8 53 1 79 24 25 1 113 24 29 1 114] 
#[0 11 66 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 11 70 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 11 74 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 24 33 0 7] 
#[1 24 37 0 7 9 93 0 22 24 41 0 149] 
#[1 24 45 0 3 24 49 0 7] 
#[0 11 78 0 3 0 113] 
#[0 24 53 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 57 0 248 15 153 0 249 24 61 1 7 0 6 1 199] 
#[0 24 65 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 69 0 248 15 153 0 249 0 6 1 199] 
#[0 11 82 0 2 0 113] 
#[0 11 86 0 13 0 113] 
#[0 11 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 19 13 0 112 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 19 17 0 186 19 17 0 187 0 245 0 242 19 17 0 250 1 113 0 251 1 117 0 252 1 121 0 255 19 17 1 0 0 245 1 6 19 17 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 24 73 0 8] 
#[1 6 57 0 113 11 94 0 125 11 94 0 126] 
#[1 11 129 0 128 24 77 1 56 24 77 1 57 24 77 1 58 11 145 1 59 11 149 1 60] 
#[0 11 98 0 4] 
#[0 11 102 0 4] 
#[1 0 130 0 4 24 81 1 74] 
#[0 24 85 0 4] 
#[0 11 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 198 1 199 1 200] 
#[0 24 89 0 13] 
#[0 11 110 0 3 0 127 0 129] 
#[0 11 114 0 3 0 8 0 13 0 128] 
#[0 11 118 0 3 0 8 0 13 0 128] 
#[0 11 122 0 3 0 8 0 13 0 128] 
#[0 11 126 0 3 0 8 0 13 0 128] 
#[0 24 93 0 3] 
#[1 0 22 0 4 24 97 1 73] 
#[0 24 101 0 4] 
#[0 11 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 11 134 0 3 0 18] 
#[0 24 105 0 7] 
#[0 11 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 109 0 190 24 109 0 193 24 109 0 194 24 109 0 195 24 109 0 203 24 109 0 217 24 109 0 218 24 109 0 219 24 109 0 220 24 109 0 223 24 109 0 224 24 109 0 226 24 109 0 227 24 109 0 228 24 109 0 233 24 109 0 235 24 109 0 236 24 109 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 113 0 190 24 113 0 193 24 113 0 194 24 113 0 195 24 113 0 203 24 113 0 217 24 113 0 218 24 113 0 219 24 113 0 220 24 113 0 223 24 113 0 224 24 113 0 226 24 113 0 227 24 113 0 228 24 113 0 233 24 113 0 235 24 113 0 236 24 113 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 24 117 0 2 6 57 0 113] 
#[1 0 93 0 1 24 121 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 24 125 0 186 24 125 0 187 24 125 0 189 0 245 0 242 24 125 0 250 1 113 0 251 1 117 0 252 1 121 0 255 24 125 1 0 0 245 1 6 24 125 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 24 129 0 7 6 57 0 113] 
#[0 24 133 0 2] 
#[1 24 137 0 2 6 57 0 113] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 141 0 190 24 141 0 193 24 141 0 194 24 141 0 195 24 141 0 203 24 141 0 217 24 141 0 218 24 141 0 219 24 141 0 220 24 141 0 223 24 141 0 224 24 141 0 226 24 141 0 227 24 141 0 228 24 141 0 233 24 141 0 235 24 141 0 236 24 141 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 145 0 190 24 145 0 193 24 145 0 194 24 145 0 195 24 145 0 203 24 145 0 217 24 145 0 218 24 145 0 219 24 145 0 220 24 145 0 223 24 145 0 224 24 145 0 226 24 145 0 227 24 145 0 228 24 145 0 233 24 145 0 235 24 145 0 236 24 145 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 149 0 190 24 149 0 193 24 149 0 194 24 149 0 195 24 149 0 203 24 149 0 217 24 149 0 218 24 149 0 219 24 149 0 220 24 149 0 223 24 149 0 224 24 149 0 226 24 149 0 227 24 149 0 228 24 149 0 233 24 149 0 235 24 149 0 236 24 149 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 24 153 0 2 6 57 0 113] 
#[1 0 93 0 1 24 157 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 24 161 0 186 24 161 0 187 24 161 0 189 0 245 0 242 24 161 0 250 1 113 0 251 1 117 0 252 1 121 0 255 24 161 1 0 0 245 1 6 24 161 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 11 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 165 0 190 24 165 0 193 24 165 0 194 24 165 0 195 24 165 0 203 24 165 0 217 24 165 0 218 24 165 0 219 24 165 0 220 24 165 0 223 24 165 0 224 24 165 0 226 24 165 0 227 24 165 0 228 24 165 0 233 24 165 0 235 24 165 0 236 24 165 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 169 0 190 24 169 0 193 24 169 0 194 24 169 0 195 24 169 0 203 24 169 0 217 24 169 0 218 24 169 0 219 24 169 0 220 24 169 0 223 24 169 0 224 24 169 0 226 24 169 0 227 24 169 0 228 24 169 0 233 24 169 0 235 24 169 0 236 24 169 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 24 173 0 2 6 57 0 113] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 177 0 190 24 177 0 193 24 177 0 194 24 177 0 195 24 177 0 203 24 177 0 217 24 177 0 218 24 177 0 219 24 177 0 220 24 177 0 223 24 177 0 224 24 177 0 226 24 177 0 227 24 177 0 228 24 177 0 233 24 177 0 235 24 177 0 236 24 177 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 181 0 190 24 181 0 193 24 181 0 194 24 181 0 195 24 181 0 203 24 181 0 217 24 181 0 218 24 181 0 219 24 181 0 220 24 181 0 223 24 181 0 224 24 181 0 226 24 181 0 227 24 181 0 228 24 181 0 233 24 181 0 235 24 181 0 236 24 181 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 24 185 0 186 24 185 0 187 0 245 0 242 24 185 0 250 1 113 0 251 1 117 0 252 1 121 0 255 24 185 1 0 0 245 1 6 24 185 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 24 189 0 2] 
#[0 24 193 0 2] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 24 197 0 190 24 197 0 193 24 197 0 194 24 197 0 195 24 197 0 203 24 197 0 217 24 197 0 218 24 197 0 219 24 197 0 220 24 197 0 223 24 197 0 224 24 197 0 226 24 197 0 227 24 197 0 228 24 197 0 233 24 197 0 235 24 197 0 236 24 197 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 11 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 24 201 0 186 24 201 0 187 24 201 0 189 0 245 0 242 24 201 0 250 1 113 0 251 1 117 0 252 1 121 0 255 24 201 1 0 0 245 1 6 24 201 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 24 205 0 114] 
#[1 24 209 0 4 22 169 0 55 22 173 0 63 24 213 0 231 24 217 0 232] 
#[0 11 150 0 4 0 55 0 63] 
#[1 24 221 0 4 22 169 0 55 24 225 0 230 22 181 0 231] 
#[1 1 197 0 3 24 229 0 195] 
#[0 11 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 24 233 0 1] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 24 237 0 133 24 237 0 145 24 237 0 146 24 237 0 147 8 45 1 48 8 49 1 49] 
#[1 8 9 0 1 24 241 0 7 3 49 0 10 13 65 0 114 8 53 1 79 24 245 1 113 24 249 1 114] 
#[1 9 33 0 5 24 253 0 96 8 25 0 117 8 45 0 119 8 49 0 120 25 1 0 133 25 1 0 145 25 1 0 146 25 1 0 147 8 45 1 48 8 49 1 49] 
#[0 11 158 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 25 5 0 4] 
#[1 11 162 0 4 8 17 0 5 22 197 0 59 22 209 0 91 22 209 0 92 22 209 0 93 22 201 0 96 8 25 0 117 8 45 0 119 8 49 0 120 22 205 0 133 22 205 0 145 22 205 0 146 22 205 0 147 8 45 1 48 8 49 1 49 22 209 1 116 25 9 1 119 25 9 1 188 25 9 1 189 25 9 1 190] 
#[0 11 166 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 170 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 174 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 10 130 0 4 8 17 0 5 22 197 0 59 22 209 0 91 22 209 0 92 22 209 0 93 22 201 0 96 8 25 0 117 8 45 0 119 8 49 0 120 22 205 0 133 22 205 0 145 22 205 0 146 22 205 0 147 8 45 1 48 8 49 1 49 22 209 1 116 22 225 1 119 25 13 1 186 22 221 1 187 22 225 1 188 22 225 1 189 22 225 1 190] 
#[0 11 178 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 11 182 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 186 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 190 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 194 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 198 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 202 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 206 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 210 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 11 218 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 222 0 4 0 113] 
#[0 11 226 0 4 0 113] 
#[0 11 230 0 4 0 113] 
#[1 0 207 0 4 8 17 0 5 9 245 0 7 9 249 0 25 9 253 0 52 22 197 0 59 10 1 0 75 22 209 0 91 22 209 0 92 22 209 0 93 10 5 0 95 25 17 0 96 8 25 0 117 8 45 0 119 8 49 0 120 25 21 0 133 25 21 0 145 25 21 0 146 25 21 0 147 10 41 1 2 10 41 1 4 10 41 1 9 10 41 1 13 14 249 1 22 10 37 1 23 10 41 1 24 8 45 1 48 8 49 1 49 22 209 1 116 22 225 1 119 10 41 1 123 10 41 1 124 22 217 1 186 22 221 1 187 22 225 1 188 22 225 1 189 22 225 1 190 10 53 1 199] 
#[0 25 25 0 2] 
#[0 25 29 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 57 0 248 15 153 0 249 25 33 1 7 0 6 1 199] 
#[0 25 37 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 41 0 248 15 153 0 249 0 6 1 199] 
#[0 7 78 0 7 0 21] 
#[0 25 45 0 2] 
#[0 11 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 211 0 3 11 6 0 7] 
#[0 25 49 0 4] 
#[1 0 215 0 3 11 14 0 7 13 65 0 114 25 53 1 113] 
#[1 0 219 0 1 11 238 0 3 11 238 0 4 0 219 0 5 0 219 0 7 11 130 0 8 11 130 0 9 11 130 0 10 11 130 0 11 11 130 0 12 11 130 0 13 11 130 0 14 11 130 0 15 11 130 0 16 11 130 0 17 11 130 0 19 11 130 0 20 11 130 0 21 11 130 0 22 11 130 0 23 11 130 0 24 11 130 0 25 11 130 0 26 11 130 0 27 11 130 0 28 11 130 0 29 11 130 0 30 11 130 0 31 11 130 0 32 11 130 0 33 0 219 0 34 0 219 0 35 0 219 0 36 0 219 0 37 11 238 0 38 11 130 0 39 11 130 0 40 11 130 0 41 11 130 0 42 11 130 0 43 11 130 0 44 11 130 0 45 11 130 0 46 11 130 0 47 11 238 0 48 11 130 0 49 11 130 0 50 11 130 0 51 11 238 0 52 11 238 0 53 11 238 0 54 11 238 0 57 11 238 0 58 11 238 0 60 11 238 0 61 11 238 0 62 11 238 0 64 11 238 0 65 11 238 0 67 11 238 0 68 11 238 0 70 11 238 0 72 11 238 0 74 11 238 0 76 11 238 0 77 11 130 0 78 11 130 0 81 11 238 0 82 11 238 0 84 11 238 0 86 11 238 0 87 11 238 0 88 11 238 0 94 11 238 0 98 11 238 0 99 11 238 0 101 11 238 0 102 11 238 0 103 11 238 0 104 11 238 0 105 11 238 0 106 11 238 0 107 11 238 0 108 11 238 0 109 11 238 0 110 11 238 0 111 11 130 0 113 11 238 0 116 11 238 0 119 11 238 0 120 11 238 0 121 0 219 0 123 0 219 0 124 11 238 0 127 11 130 1 198 0 219 1 199 11 238 1 200] 
#[1 13 65 0 114 25 57 1 113] 
#[1 13 65 0 114 25 61 1 113] 
#[0 11 242 0 4 0 7 0 113] 
#[1 11 246 0 4 11 246 0 7 11 246 0 113 13 65 0 114 25 65 1 113] 
#[0 11 250 0 3 0 4 0 7 0 113] 
#[0 11 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 185 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 48 3 85 1 49 3 89 1 79 25 69 1 86 3 97 1 87 3 101 1 88 3 101 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 109 1 94 3 129 1 95 3 133 1 96 3 109 1 97 3 109 1 101 3 109 1 102 3 97 1 105 3 101 1 106 25 69 1 107 25 69 1 108 3 109 1 109 3 109 1 111] 
#[0 12 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 18 141 0 248 15 153 0 249 25 73 1 16 0 6 1 199] 
#[0 25 77 0 3] 
#[0 25 81 0 2] 
#[0 25 85 0 3] 
#[0 25 89 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 57 0 248 15 153 0 249 25 93 1 7 0 6 1 199] 
#[0 25 97 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 101 0 248 15 153 0 249 0 6 1 199] 
#[0 25 105 0 4] 
#[0 11 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 6 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 25 109 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 113 0 248 15 153 0 249 25 117 1 12 0 6 1 199] 
#[0 25 121 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 18 141 0 248 15 153 0 249 25 125 1 16 0 6 1 199] 
#[0 25 129 0 3] 
#[0 25 133 0 2] 
#[0 25 137 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 141 0 248 15 153 0 249 0 6 1 199] 
#[0 25 145 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 149 0 248 15 153 0 249 0 6 1 199] 
#[1 25 153 0 3 25 157 0 7] 
#[1 13 65 0 114 25 161 1 113] 
#[1 3 66 0 2 9 93 0 22 12 10 0 114 9 141 0 149] 
#[1 3 70 0 2 9 93 0 22 12 14 0 114 9 149 0 149] 
#[0 25 165 0 2] 
#[1 13 65 0 114 25 169 1 113] 
#[0 25 173 0 2] 
#[0 12 18 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 12 22 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 25 177 0 7] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 181 0 248 15 153 0 249 0 6 1 199] 
#[0 12 26 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 12 30 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 25 185 0 4] 
#[0 25 189 0 4] 
#[0 25 193 0 2] 
#[0 12 34 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 25 197 0 7] 
#[1 25 201 0 7 9 93 0 22 25 205 0 149] 
#[1 25 209 0 3 25 213 0 7] 
#[0 12 38 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 12 42 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 25 217 0 7] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 221 0 248 15 153 0 249 0 6 1 199] 
#[0 12 46 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 12 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 12 54 0 4] 
#[0 25 225 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 57 0 248 15 153 0 249 25 229 1 7 0 6 1 199] 
#[0 25 233 0 4] 
#[1 12 58 0 13 25 237 1 77] 
#[1 12 58 0 13 25 241 1 77] 
#[0 25 245 0 4] 
#[0 12 62 0 3 0 127 0 129] 
#[0 12 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 198 1 199 1 200] 
#[1 0 93 0 1 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 25 249 0 186 25 249 0 187 0 245 0 242 25 249 0 250 1 113 0 251 1 117 0 252 1 121 0 255 25 249 1 0 0 245 1 6 25 249 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 25 253 0 4] 
#[0 12 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 12 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 1 0 190 26 1 0 193 26 1 0 194 26 1 0 195 26 1 0 203 26 1 0 217 26 1 0 218 26 1 0 219 26 1 0 220 26 1 0 223 26 1 0 224 26 1 0 226 26 1 0 227 26 1 0 228 26 1 0 233 26 1 0 235 26 1 0 236 26 1 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 5 0 190 26 5 0 193 26 5 0 194 26 5 0 195 26 5 0 203 26 5 0 217 26 5 0 218 26 5 0 219 26 5 0 220 26 5 0 223 26 5 0 224 26 5 0 226 26 5 0 227 26 5 0 228 26 5 0 233 26 5 0 235 26 5 0 236 26 5 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 26 9 0 2 6 57 0 113] 
#[1 0 93 0 1 26 13 0 2 0 14 0 3 0 97 0 5 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 0 133 0 57 0 137 0 64 1 157 0 70 0 145 0 74 0 149 0 77 0 153 0 87 1 153 0 88 0 161 0 98 0 165 0 101 1 157 0 103 0 173 0 106 0 177 0 108 0 181 0 111 0 185 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 26 17 0 186 26 17 0 187 26 17 0 189 0 245 0 242 26 17 0 250 1 113 0 251 1 117 0 252 1 121 0 255 26 17 1 0 0 245 1 6 26 17 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 21 0 190 26 21 0 193 26 21 0 194 26 21 0 195 26 21 0 203 26 21 0 217 26 21 0 218 26 21 0 219 26 21 0 220 26 21 0 223 26 21 0 224 26 21 0 226 26 21 0 227 26 21 0 228 26 21 0 233 26 21 0 235 26 21 0 236 26 21 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 25 0 190 26 25 0 193 26 25 0 194 26 25 0 195 26 25 0 203 26 25 0 217 26 25 0 218 26 25 0 219 26 25 0 220 26 25 0 223 26 25 0 224 26 25 0 226 26 25 0 227 26 25 0 228 26 25 0 233 26 25 0 235 26 25 0 236 26 25 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 12 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 29 0 190 26 29 0 193 26 29 0 194 26 29 0 195 26 29 0 203 26 29 0 217 26 29 0 218 26 29 0 219 26 29 0 220 26 29 0 223 26 29 0 224 26 29 0 226 26 29 0 227 26 29 0 228 26 29 0 233 26 29 0 235 26 29 0 236 26 29 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 33 0 190 26 33 0 193 26 33 0 194 26 33 0 195 26 33 0 203 26 33 0 217 26 33 0 218 26 33 0 219 26 33 0 220 26 33 0 223 26 33 0 224 26 33 0 226 26 33 0 227 26 33 0 228 26 33 0 233 26 33 0 235 26 33 0 236 26 33 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 26 37 0 2 6 57 0 113] 
#[0 12 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 41 0 190 26 41 0 193 26 41 0 194 26 41 0 195 26 41 0 203 26 41 0 217 26 41 0 218 26 41 0 219 26 41 0 220 26 41 0 223 26 41 0 224 26 41 0 226 26 41 0 227 26 41 0 228 26 41 0 233 26 41 0 235 26 41 0 236 26 41 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 12 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 26 45 0 2] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 49 0 190 26 49 0 193 26 49 0 194 26 49 0 195 26 49 0 203 26 49 0 217 26 49 0 218 26 49 0 219 26 49 0 220 26 49 0 223 26 49 0 224 26 49 0 226 26 49 0 227 26 49 0 228 26 49 0 233 26 49 0 235 26 49 0 236 26 49 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 26 53 0 190 26 53 0 193 26 53 0 194 26 53 0 195 26 53 0 203 26 53 0 217 26 53 0 218 26 53 0 219 26 53 0 220 26 53 0 223 26 53 0 224 26 53 0 226 26 53 0 227 26 53 0 228 26 53 0 233 26 53 0 235 26 53 0 236 26 53 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 12 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 6 57 0 113 26 57 0 114] 
#[1 0 6 0 1 0 6 0 3 12 118 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 12 118 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 26 61 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 0 6 1 199] 
#[0 12 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 126 0 4 0 55 0 63] 
#[1 26 65 0 4 22 169 0 55 26 69 0 230 22 181 0 231] 
#[0 12 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 26 73 0 4 22 169 0 55 24 213 0 231] 
#[0 12 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 26 77 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 8 9 0 1 26 81 0 7 3 49 0 10 13 65 0 114 8 53 1 79 26 85 1 113 26 89 1 114] 
#[0 12 138 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 93 0 7] 
#[0 26 97 0 7] 
#[1 9 33 0 5 8 25 0 117 8 45 0 119 8 49 0 120 26 101 0 133 26 101 0 145 26 101 0 146 26 101 0 147 8 45 1 48 8 49 1 49] 
#[1 8 9 0 1 26 105 0 7 3 49 0 10 13 65 0 114 8 53 1 79 26 109 1 113 26 113 1 114] 
#[0 12 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 146 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 117 0 4] 
#[1 9 33 0 5 9 249 0 25 9 253 0 52 10 1 0 75 10 5 0 95 8 25 0 117 8 45 0 119 8 49 0 120 26 121 0 133 26 121 0 145 26 121 0 146 26 121 0 147 14 165 1 2 14 165 1 4 14 165 1 9 14 165 1 13 8 45 1 48 8 49 1 49 14 165 1 123 14 165 1 124 10 185 1 199] 
#[1 26 125 0 1 24 241 0 7 3 49 0 10 13 65 0 114 8 53 1 79 24 245 1 113 24 249 1 114] 
#[1 23 61 0 3 9 94 0 7 13 65 0 114 20 233 1 113] 
#[1 0 223 0 1 12 150 0 3 12 150 0 4 0 223 0 5 0 223 0 7 12 50 0 8 12 50 0 9 12 50 0 10 12 50 0 11 12 50 0 12 12 50 0 13 12 50 0 14 12 50 0 15 12 50 0 16 12 50 0 17 12 50 0 19 12 50 0 20 12 50 0 21 12 50 0 22 12 50 0 23 12 50 0 24 12 50 0 25 12 50 0 26 12 50 0 27 12 50 0 28 12 50 0 29 12 50 0 30 12 50 0 31 12 50 0 32 12 50 0 33 0 223 0 34 0 223 0 35 0 223 0 36 0 223 0 37 12 150 0 38 12 50 0 39 12 50 0 40 12 50 0 41 12 50 0 42 12 50 0 43 12 50 0 44 12 50 0 45 12 50 0 46 12 50 0 47 12 150 0 48 12 50 0 49 12 50 0 50 12 50 0 51 12 150 0 52 12 150 0 53 12 150 0 54 12 150 0 57 12 150 0 58 12 150 0 60 12 150 0 61 12 150 0 62 12 150 0 64 12 150 0 65 12 150 0 67 12 150 0 68 12 150 0 70 12 150 0 72 12 150 0 74 12 150 0 76 12 150 0 77 12 50 0 78 12 50 0 81 12 150 0 82 12 150 0 84 12 150 0 86 12 150 0 87 12 150 0 88 12 150 0 94 12 150 0 98 12 150 0 99 12 150 0 101 12 150 0 102 12 150 0 103 12 150 0 104 12 150 0 105 12 150 0 106 12 150 0 107 12 150 0 108 12 150 0 109 12 150 0 110 12 150 0 111 12 50 0 113 12 150 0 116 12 150 0 119 12 150 0 120 12 150 0 121 0 223 0 123 0 223 0 124 12 150 0 127 12 50 1 198 0 223 1 199 12 150 1 200] 
#[0 26 129 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 57 0 248 15 153 0 249 26 133 1 7 0 6 1 199] 
#[0 26 137 0 4] 
#[0 26 141 0 7] 
#[1 0 227 0 1 12 154 0 3 12 154 0 4 0 227 0 5 0 227 0 7 12 70 0 8 12 70 0 9 12 70 0 10 12 70 0 11 12 70 0 12 12 70 0 13 12 70 0 14 12 70 0 15 12 70 0 16 12 70 0 17 12 70 0 19 12 70 0 20 12 70 0 21 12 70 0 22 12 70 0 23 12 70 0 24 12 70 0 25 12 70 0 26 12 70 0 27 12 70 0 28 12 70 0 29 12 70 0 30 12 70 0 31 12 70 0 32 12 70 0 33 0 227 0 34 0 227 0 35 0 227 0 36 0 227 0 37 12 154 0 38 12 70 0 39 12 70 0 40 12 70 0 41 12 70 0 42 12 70 0 43 12 70 0 44 12 70 0 45 12 70 0 46 12 70 0 47 12 154 0 48 12 70 0 49 12 70 0 50 12 70 0 51 12 154 0 52 12 154 0 53 12 154 0 54 12 154 0 57 12 154 0 58 12 154 0 60 12 154 0 61 12 154 0 62 12 154 0 64 12 154 0 65 12 154 0 67 12 154 0 68 12 154 0 70 12 154 0 72 12 154 0 74 12 154 0 76 12 154 0 77 12 70 0 78 12 70 0 81 12 154 0 82 12 154 0 84 12 154 0 86 12 154 0 87 12 154 0 88 12 154 0 94 12 154 0 98 12 154 0 99 12 154 0 101 12 154 0 102 12 154 0 103 12 154 0 104 12 154 0 105 12 154 0 106 12 154 0 107 12 154 0 108 12 154 0 109 12 154 0 110 12 154 0 111 12 70 0 113 12 154 0 116 12 154 0 119 12 154 0 120 12 154 0 121 0 227 0 123 0 227 0 124 12 154 0 127 12 70 1 198 0 227 1 199 12 154 1 200] 
#[1 0 231 0 3 11 250 0 7] 
#[0 12 158 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 162 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 166 0 4 0 7 0 113] 
#[0 12 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 200] 
#[0 26 145 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 113 0 248 15 153 0 249 26 149 1 12 0 6 1 199] 
#[0 26 153 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 18 141 0 248 15 153 0 249 26 157 1 16 0 6 1 199] 
#[0 12 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 26 161 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 57 0 248 15 153 0 249 26 165 1 7 0 6 1 199] 
#[0 26 169 0 4] 
#[0 12 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 12 178 0 4] 
#[0 26 173 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 113 0 248 15 153 0 249 26 177 1 12 0 6 1 199] 
#[0 26 181 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 24 57 0 248 15 153 0 249 26 185 1 7 0 6 1 199] 
#[0 26 189 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 18 141 0 248 15 153 0 249 26 193 1 16 0 6 1 199] 
#[0 26 197 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 26 201 0 248 15 153 0 249 0 6 1 199] 
#[0 26 205 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 26 209 0 248 15 153 0 249 0 6 1 199] 
#[0 12 182 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 26 213 0 3] 
#[1 13 65 0 114 26 217 1 113] 
#[0 12 186 0 2] 
#[1 26 221 0 3 13 65 0 114 26 225 1 113] 
#[0 12 190 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 26 229 0 4] 
#[0 12 194 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 12 198 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[1 26 233 0 3 26 237 0 7] 
#[0 12 202 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 12 206 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 26 241 0 7] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 26 245 0 248 15 153 0 249 0 6 1 199] 
#[0 12 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 12 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 26 249 0 4] 
#[0 12 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 26 253 0 4] 
#[0 12 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 27 1 0 13] 
#[0 27 5 0 13] 
#[0 12 226 0 3 0 127 0 129] 
#[1 0 22 0 4 27 9 1 73] 
#[0 12 230 0 3 0 8 0 13 0 128] 
#[0 12 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 27 13 0 190 27 13 0 193 27 13 0 194 27 13 0 195 27 13 0 203 27 13 0 217 27 13 0 218 27 13 0 219 27 13 0 220 27 13 0 223 27 13 0 224 27 13 0 226 27 13 0 227 27 13 0 228 27 13 0 233 27 13 0 235 27 13 0 236 27 13 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 27 17 0 190 27 17 0 193 27 17 0 194 27 17 0 195 27 17 0 203 27 17 0 217 27 17 0 218 27 17 0 219 27 17 0 220 27 17 0 223 27 17 0 224 27 17 0 226 27 17 0 227 27 17 0 228 27 17 0 233 27 17 0 235 27 17 0 236 27 17 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[1 27 21 0 2 6 57 0 113] 
#[0 12 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 12 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 27 25 0 190 27 25 0 193 27 25 0 194 27 25 0 195 27 25 0 203 27 25 0 217 27 25 0 218 27 25 0 219 27 25 0 220 27 25 0 223 27 25 0 224 27 25 0 226 27 25 0 227 27 25 0 228 27 25 0 233 27 25 0 235 27 25 0 236 27 25 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 13 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 27 29 0 190 27 29 0 193 27 29 0 194 27 29 0 195 27 29 0 203 27 29 0 217 27 29 0 218 27 29 0 219 27 29 0 220 27 29 0 223 27 29 0 224 27 29 0 226 27 29 0 227 27 29 0 228 27 29 0 233 27 29 0 235 27 29 0 236 27 29 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 13 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 6 0 1 0 6 0 3 13 14 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 14 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 13 14 0 63 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 27 33 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 0 6 1 199] 
#[1 0 6 0 1 0 6 0 3 13 18 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 18 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 181 0 197 0 57 0 198 6 181 0 199 0 65 0 200 0 6 1 199] 
#[0 13 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 27 37 0 4 22 169 0 55 24 213 0 231] 
#[0 13 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 27 41 0 2] 
#[0 13 30 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 45 0 7] 
#[0 27 49 0 7] 
#[0 13 34 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 38 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 8 9 0 1 27 53 0 7 3 49 0 10 13 65 0 114 8 53 1 79 27 57 1 113 27 61 1 114] 
#[0 13 42 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 65 0 7] 
#[0 27 69 0 7] 
#[0 13 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 26 125 0 1 26 81 0 7 3 49 0 10 13 65 0 114 8 53 1 79 26 85 1 113 26 89 1 114] 
#[1 0 86 0 2 4 33 0 3 4 37 0 5 4 85 0 112 0 185 0 116 9 41 0 132 4 97 0 206 4 97 0 207 4 97 0 208 4 129 0 214 4 129 0 215 4 125 0 216 18 169 0 243 27 73 0 244 4 121 0 245 4 125 0 246 4 129 0 247 8 5 1 199] 
#[1 0 235 0 1 13 50 0 3 13 50 0 4 0 235 0 5 0 235 0 7 12 218 0 8 12 218 0 9 12 218 0 10 12 218 0 11 12 218 0 12 12 218 0 13 12 218 0 14 12 218 0 15 12 218 0 16 12 218 0 17 12 218 0 19 12 218 0 20 12 218 0 21 12 218 0 22 12 218 0 23 12 218 0 24 12 218 0 25 12 218 0 26 12 218 0 27 12 218 0 28 12 218 0 29 12 218 0 30 12 218 0 31 12 218 0 32 12 218 0 33 0 235 0 34 0 235 0 35 0 235 0 36 0 235 0 37 13 50 0 38 12 218 0 39 12 218 0 40 12 218 0 41 12 218 0 42 12 218 0 43 12 218 0 44 12 218 0 45 12 218 0 46 12 218 0 47 13 50 0 48 12 218 0 49 12 218 0 50 12 218 0 51 13 50 0 52 13 50 0 53 13 50 0 54 13 50 0 57 13 50 0 58 13 50 0 60 13 50 0 61 13 50 0 62 13 50 0 64 13 50 0 65 13 50 0 67 13 50 0 68 13 50 0 70 13 50 0 72 13 50 0 74 13 50 0 76 13 50 0 77 12 218 0 78 12 218 0 81 13 50 0 82 13 50 0 84 13 50 0 86 13 50 0 87 13 50 0 88 13 50 0 94 13 50 0 98 13 50 0 99 13 50 0 101 13 50 0 102 13 50 0 103 13 50 0 104 13 50 0 105 13 50 0 106 13 50 0 107 13 50 0 108 13 50 0 109 13 50 0 110 13 50 0 111 12 218 0 113 13 50 0 116 13 50 0 119 13 50 0 120 13 50 0 121 0 235 0 123 0 235 0 124 13 50 0 127 12 218 1 198 0 235 1 199 13 50 1 200] 
#[0 27 77 0 4] 
#[1 0 239 0 1 13 54 0 3 13 54 0 4 0 239 0 5 0 239 0 7 12 222 0 8 12 222 0 9 12 222 0 10 12 222 0 11 12 222 0 12 12 222 0 13 12 222 0 14 12 222 0 15 12 222 0 16 12 222 0 17 12 222 0 19 12 222 0 20 12 222 0 21 12 222 0 22 12 222 0 23 12 222 0 24 12 222 0 25 12 222 0 26 12 222 0 27 12 222 0 28 12 222 0 29 12 222 0 30 12 222 0 31 12 222 0 32 12 222 0 33 0 239 0 34 0 239 0 35 0 239 0 36 0 239 0 37 13 54 0 38 12 222 0 39 12 222 0 40 12 222 0 41 12 222 0 42 12 222 0 43 12 222 0 44 12 222 0 45 12 222 0 46 12 222 0 47 13 54 0 48 12 222 0 49 12 222 0 50 12 222 0 51 13 54 0 52 13 54 0 53 13 54 0 54 13 54 0 57 13 54 0 58 13 54 0 60 13 54 0 61 13 54 0 62 13 54 0 64 13 54 0 65 13 54 0 67 13 54 0 68 13 54 0 70 13 54 0 72 13 54 0 74 13 54 0 76 13 54 0 77 12 222 0 78 12 222 0 81 13 54 0 82 13 54 0 84 13 54 0 86 13 54 0 87 13 54 0 88 13 54 0 94 13 54 0 98 13 54 0 99 13 54 0 101 13 54 0 102 13 54 0 103 13 54 0 104 13 54 0 105 13 54 0 106 13 54 0 107 13 54 0 108 13 54 0 109 13 54 0 110 13 54 0 111 12 222 0 113 13 54 0 116 13 54 0 119 13 54 0 120 13 54 0 121 0 239 0 123 0 239 0 124 13 54 0 127 12 222 1 198 0 239 1 199 13 54 1 200] 
#[0 13 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 27 81 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 113 0 248 15 153 0 249 27 85 1 12 0 6 1 199] 
#[0 27 89 0 4] 
#[0 13 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 27 93 0 4] 
#[0 13 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 27 97 0 4] 
#[0 13 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 27 101 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 25 113 0 248 15 153 0 249 27 105 1 12 0 6 1 199] 
#[0 27 109 0 4] 
#[0 13 74 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 27 113 0 4] 
#[0 13 78 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 27 117 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 27 121 0 248 15 153 0 249 0 6 1 199] 
#[0 27 125 0 3] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 27 129 0 248 15 153 0 249 0 6 1 199] 
#[0 27 133 0 3] 
#[0 13 82 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 27 137 0 248 15 153 0 249 0 6 1 199] 
#[0 13 86 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 13 90 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 27 141 0 4] 
#[0 13 94 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 13 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 13 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 128 1 198 1 199 1 200] 
#[0 13 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 198 1 199 1 200] 
#[0 27 145 0 4] 
#[0 13 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 93 0 1 0 15 0 3 0 97 0 5 1 201 0 7 0 101 0 34 0 105 0 35 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 48 0 125 0 52 0 129 0 53 1 205 0 54 0 133 0 57 1 209 0 60 1 213 0 61 0 137 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 145 0 74 1 225 0 76 0 149 0 77 0 153 0 87 1 153 0 88 1 229 0 94 0 161 0 98 1 233 0 99 0 165 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 173 0 106 1 245 0 107 0 177 0 108 1 249 0 109 1 253 0 110 0 181 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 197 0 121 0 201 0 123 0 18 0 124 0 11 0 127 0 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 233 0 142 0 245 0 150 0 241 0 151 0 245 0 154 0 245 0 155 0 245 0 156 0 245 0 157 1 25 0 158 1 9 0 159 1 9 0 160 1 9 0 161 1 21 0 164 1 25 0 168 1 33 0 169 1 33 0 170 1 41 0 171 1 41 0 172 1 45 0 174 1 49 0 175 1 53 0 176 1 57 0 177 1 61 0 178 1 65 0 179 1 69 0 180 1 73 0 181 1 77 0 182 1 81 0 183 1 85 0 184 1 89 0 185 2 5 0 186 2 5 0 187 2 5 0 189 27 149 0 190 27 149 0 193 27 149 0 194 27 149 0 195 27 149 0 203 27 149 0 217 27 149 0 218 27 149 0 219 27 149 0 220 27 149 0 223 27 149 0 224 27 149 0 226 27 149 0 227 27 149 0 228 27 149 0 233 27 149 0 235 27 149 0 236 27 149 0 240 0 245 0 242 2 5 0 250 1 113 0 251 1 117 0 252 1 121 0 255 2 5 1 0 0 245 1 6 2 5 1 8 0 245 1 11 0 245 1 15 1 33 1 17 0 245 1 19 1 153 1 46 1 157 1 47 1 161 1 48 1 165 1 49 0 245 1 50 0 245 1 51 0 245 1 52 1 181 1 53 0 245 1 55 1 189 1 73 1 193 1 199] 
#[0 13 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[1 0 6 0 1 0 6 0 3 13 126 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 126 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 13 126 0 63 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 181 0 197 0 57 0 198 6 181 0 199 0 65 0 200 0 6 1 199] 
#[0 13 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 27 153 0 7] 
#[0 13 134 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 138 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 142 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 157 0 7] 
#[0 27 161 0 7] 
#[0 13 146 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 150 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 0 243 0 2] 
#[1 0 247 0 1 13 154 0 3 13 154 0 4 0 247 0 5 0 247 0 7 13 98 0 8 13 98 0 9 13 98 0 10 13 98 0 11 13 98 0 12 13 98 0 13 13 98 0 14 13 98 0 15 13 98 0 16 13 98 0 17 13 98 0 19 13 98 0 20 13 98 0 21 13 98 0 22 13 98 0 23 13 98 0 24 13 98 0 25 13 98 0 26 13 98 0 27 13 98 0 28 13 98 0 29 13 98 0 30 13 98 0 31 13 98 0 32 13 98 0 33 0 247 0 34 0 247 0 35 0 247 0 36 0 247 0 37 13 154 0 38 13 98 0 39 13 98 0 40 13 98 0 41 13 98 0 42 13 98 0 43 13 98 0 44 13 98 0 45 13 98 0 46 13 98 0 47 13 154 0 48 13 98 0 49 13 98 0 50 13 98 0 51 13 154 0 52 13 154 0 53 13 154 0 54 13 154 0 57 13 154 0 58 13 154 0 60 13 154 0 61 13 154 0 62 13 154 0 64 13 154 0 65 13 154 0 67 13 154 0 68 13 154 0 70 13 154 0 72 13 154 0 74 13 154 0 76 13 154 0 77 13 98 0 78 13 98 0 81 13 154 0 82 13 154 0 84 13 154 0 86 13 154 0 87 13 154 0 88 13 154 0 94 13 154 0 98 13 154 0 99 13 154 0 101 13 154 0 102 13 154 0 103 13 154 0 104 13 154 0 105 13 154 0 106 13 154 0 107 13 154 0 108 13 154 0 109 13 154 0 110 13 154 0 111 13 98 0 113 13 154 0 116 13 154 0 119 13 154 0 120 13 154 0 121 0 247 0 123 0 247 0 124 13 154 0 127 13 98 1 198 0 247 1 199 13 154 1 200] 
#[0 13 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 27 165 0 4] 
#[0 13 162 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 198 1 199 1 200] 
#[0 13 170 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 27 169 0 4] 
#[0 13 174 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 13 178 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 13 182 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 27 173 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 27 177 0 248 15 153 0 249 0 6 1 199] 
#[0 27 181 0 4] 
#[1 0 6 0 1 0 6 0 3 6 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 145 0 196 2 85 0 197 0 57 0 198 2 85 0 199 0 65 0 200 27 185 0 248 15 153 0 249 0 6 1 199] 
#[0 27 189 0 4] 
#[0 13 186 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 13 190 0 3 0 8 0 13 0 128] 
#[0 13 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 198 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 202 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 206 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 210 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 199 1 200] 
#[0 13 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 13 218 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 27 193 0 4] 
#[0 13 222 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 27 197 0 4] 
#[0 13 226 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 199] 
#[0 13 230 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199] 
#[0 13 234 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 199]
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
JSParser >> reduceActionForClassDeclaration3: nodes [
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
JSParser >> reduceActionForClassDeclaration4: nodes [
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
JSParser >> reduceActionForConstructorDeclaration4: nodes [
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
JSParser >> reduceActionForDeclarationScript1: nodes [
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
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration6: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration7: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration8: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration10: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration11: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration12: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration13: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration14: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration15: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration16: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration1: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration4: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration5: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration6: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration7: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration8: nodes [
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
JSParser >> reduceActionForMemberVariableDeclaration9: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
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
