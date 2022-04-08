Class {
	#name : #RustParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustParser class >> ambiguousTransitions [
^#(
#[ 0 10 0 25] 
#[ 0 46 0 50] 
#[ 0 62 2 77] 
#[ 0 66 2 85] 
#[ 1 6 1 25] 
#[ 1 6 1 33] 
#[ 0 149 1 6] 
#[ 0 153 1 6] 
#[ 1 6 1 197] 
#[ 1 86 1 90] 
#[ 0 186 1 98] 
#[ 1 102 4 57] 
#[ 1 110 1 114] 
#[ 1 142 5 21] 
#[ 1 214 5 21] 
#[ 0 25 2 2] 
#[ 1 110 1 114 5 221] 
#[ 1 86 2 22] 
#[ 1 86 2 38] 
#[ 2 78 4 73] 
#[ 2 82 6 185] 
#[ 2 14 10 49] 
#[ 2 54 10 53] 
#[ 2 238 6 185] 
#[ 0 25 3 14] 
#[ 3 18 3 105] 
#[ 1 185 3 18] 
#[ 1 94 3 58] 
#[ 1 98 3 62] 
#[ 1 94 13 45] 
#[ 2 242 13 133] 
#[ 5 190 6 129] 
#[ 5 194 6 129] 
#[ 5 198 6 129] 
#[ 5 202 6 129] 
#[ 1 246 14 161] 
#[ 6 38 15 117] 
#[ 6 46 15 125] 
#[ 1 25 5 134] 
#[ 1 33 5 134] 
#[ 0 149 5 134] 
#[ 0 153 5 134] 
#[ 5 134 15 161] 
#[ 0 14 1 246 16 21] 
#[ 0 14 0 61] 
#[ 0 14 10 93] 
#[ 0 14 10 101] 
#[ 0 14 1 25] 
#[ 0 14 1 29] 
#[ 0 14 1 33] 
#[ 0 14 0 113] 
#[ 0 14 0 125] 
#[ 0 14 10 141] 
#[ 0 14 0 149] 
#[ 0 14 0 153] 
#[ 1 110 2 54] 
#[ 1 110 1 114 2 54] 
#[ 6 129 7 66] 
#[ 6 129 7 74] 
#[ 0 190 7 222] 
#[ 1 246 18 237] 
#[ 5 210 7 254] 
#[ 5 214 8 2] 
#[ 6 129 8 6] 
#[ 0 210 1 25] 
#[ 0 210 1 33] 
#[ 0 210 19 205] 
#[ 0 149 0 210] 
#[ 0 153 0 210] 
#[ 0 210 19 77] 
#[ 0 86 1 14] 
#[ 1 18 2 157] 
#[ 5 214 8 138] 
#[ 8 138 20 125] 
#[ 0 14 0 57 1 246] 
#[ 0 246 7 86] 
#[ 0 70 9 14] 
#[ 0 70 21 193] 
#[ 1 10 7 142] 
#[ 4 53 6 46] 
#[ 1 102 6 46] 
#[ 1 102 6 46 21 213] 
#[ 7 166 9 154] 
#[ 9 194 22 129] 
#[ 0 190 10 26] 
#[ 0 25 1 246] 
#[ 2 6 9 150] 
#[ 0 70 11 158] 
#[ 0 190 7 222 9 182] 
#[ 12 10 22 129] 
#[ 0 25 12 58] 
#[ 1 246 12 70] 
#[ 0 70 12 230] 
#[ 0 70 12 234] 
#[ 3 34 10 142] 
#[ 6 86 8 66] 
#[ 13 98 26 177] 
#[ 9 194 12 10] 
#[ 9 194 12 10 22 129] 
#[ 0 70 13 250] 
#[ 8 78 10 174] 
#[ 8 86 10 178] 
#[ 12 50 13 58] 
#[ 10 206 12 134] 
#[ 5 214 15 26]
	).
]

{ #category : #'generated-accessing' }
RustParser class >> cacheId [
	^'2022-04-11T19:28:07.203507-05:00'
]

{ #category : #generated }
RustParser class >> definitionComment [
"/*
Copyright (c) 2010 The Rust Project Developers
Copyright (c) 2020-2021 Student Main

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the ""Software""), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice (including the next paragraph) shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

%unicode;

%glr;
%id <lt> <gt> <amp> <rawString> <FLOAT_LITERAL> <INTEGER_LITERAL> <lparen> <lbracket>;
%right ""box"" ""break"" ""continue"" ""return"";
%right ""="" ""+="" ""-="" ""*="" ""/="" ""%="" ""&="" ""|="" ""^="" ""<<="" "">>="" ;
%nonassoc "".."" ""..="";
%left ""||"";
%left ""&&"";
%nonassoc <lt> ""<="" <gt> "">="" ""=="" ""!="" ;
%left <bar>;
%left ""^"";
%left <amp>;
%left ""<<"" "">>"" "">>>"";
%left ""+"" ""-"";
%left ""*"" ""/"" ""%"";
%left ""as"";
### unary %right ""-"" ""*"" ""!"" ""&"" ;
%left ""?"";
%left ""."";
%left <lparen> <lbracket>;

<bar> : \|;
<lparen> : \(;
<lbracket> : \[;
/*parser grammar RustParser
   ;*/

/*
Copyright (c) 2010 The Rust Project Developers
Copyright (c) 2020-2021 Student Main

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the ""Software""), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice (including the next paragraph) shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

/*lexer grammar RustLexer
   ;*/

/* TODO: options
{
   superClass = RustLexerBase;
} */

# https://doc.rust-lang.org/reference/keywords.html strict
# 2018+
# reserved
# reserved 2018+
# weak
# rule itself allow any identifier, but keyword has been matched before
<NON_KEYWORD_IDENTIFIER>: <isLetter>(_ | <isAlphaNumeric>)* | _ (_ | <isAlphaNumeric>)+;
<RAW_IDENTIFIER>: r\# <NON_KEYWORD_IDENTIFIER>;
# comments https://doc.rust-lang.org/reference/comments.html
<comment>
	: \/\/[^\r\n]*
	|  (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;

shebang <SHEBANG>: \xfeff? \#\! [^\r\n\[] [^\r\n]*;

#ISOLATED_CR
# : '\r' {_input.LA(1)!='\n'}// not followed with \n ;

# whitespace https://doc.rust-lang.org/reference/whitespace.html
<whitespace>: \s+;

# tokens char and string
<CHAR_LITERAL>
   : \'
   (
      [^\'\\\n\r\t]
      | <QUOTE_ESCAPE>
      | <ASCII_ESCAPE>
      | <UNICODE_ESCAPE>
   ) \'
   ;

<STRING_LITERAL>
   : \""
   (
      [^\""\\]
      | <QUOTE_ESCAPE>
      | <ASCII_ESCAPE>
      | <UNICODE_ESCAPE>
      | <ESC_NEWLINE>
   )* \""
   ;

<rawStringStart>: b?r \#+ ;

<simpleRawString>: b?r \"" [^\""]* \"";	#### fix

<BYTE_LITERAL>: b\' (. | <QUOTE_ESCAPE> | <BYTE_ESCAPE>) \';

<BYTE_STRING_LITERAL>: b\"" ([^\""] | <QUOTE_ESCAPE> | <BYTE_ESCAPE>)* \"";

<ASCII_ESCAPE>: \\x <OCT_DIGIT> <HEX_DIGIT> | <COMMON_ESCAPE>;

<BYTE_ESCAPE>: \\x <HEX_DIGIT> <HEX_DIGIT> | <COMMON_ESCAPE>;

<COMMON_ESCAPE>: \\ [nrt\\0];

<UNICODE_ESCAPE>
   : \\u\{ <HEX_DIGIT> <HEX_DIGIT>? <HEX_DIGIT>? <HEX_DIGIT>? <HEX_DIGIT>? <HEX_DIGIT>? \}
   ;

<QUOTE_ESCAPE>: \\ [\'\""];

<ESC_NEWLINE>: \\ \n;

# number

<INTEGER_LITERAL>
   :
   (
      <DEC_LITERAL>
      | <BIN_LITERAL>
      | <OCT_LITERAL>
      | <HEX_LITERAL>
   ) <INTEGER_SUFFIX>?
   ;

<DEC_LITERAL>: <DEC_DIGIT> (<DEC_DIGIT> | _)*;

<HEX_LITERAL>: 0x _* <HEX_DIGIT> (<HEX_DIGIT> | _)*;

<OCT_LITERAL>: 0o _* <OCT_DIGIT> (<OCT_DIGIT> | _)*;

<BIN_LITERAL>: 0b _* [01] [01_]*;
<potentialFloat>
	: <DEC_LITERAL> \.
	;

<FLOAT_LITERAL>
   : <DEC_LITERAL> <FLOAT_EXPONENT> <FLOAT_SUFFIX>?
   | <DEC_LITERAL> <FLOAT_SUFFIX>
   | <DEC_LITERAL> \. <DEC_LITERAL> <FLOAT_EXPONENT>? <FLOAT_SUFFIX>?
   ;

<INTEGER_SUFFIX>
   : u8
   | u16
   | u32
   | u64
   | u128
   | usize
   | i8
   | i16
   | i32
   | i64
   | i128
   | isize
   ;

<FLOAT_SUFFIX>: f32 | f64;

<FLOAT_EXPONENT>: [eE] [\+\-]? _* <DEC_LITERAL>;

<OCT_DIGIT>: [0-7];

<DEC_DIGIT>: [0-9];

<HEX_DIGIT>: [0-9a-fA-F];

# LIFETIME_TOKEN: '\'' IDENTIFIER_OR_KEYWORD | '\'_';

<LIFETIME_OR_LABEL>: \' <NON_KEYWORD_IDENTIFIER>;

#SHL: '<<'; SHR: '>>'; removed to avoid confusion in type parameter

<lt>
	: <
	;
<gt>
	: \>
	;
<amp>
	: \&
	;
# entry point
# 4
crate
   : <SHEBANG>? innerAttribute 'attribute'* item* {{}}
   ;

# 3
macroInvocation ###
   : macroInvocationWithoutBlock
   | macroInvocationWithBlock
   ;
macroInvocationWithBlock ###
	: simplePath 'name' ""!"" 'bang' ""{"" 'left' tokenTree* ""}"" 'right' {{MacroInvocation}}
	;
macroInvocationWithoutBlock ###
	: simplePath 'name' ""!"" 'bang' ""("" 'left' tokenTree* "")"" 'right' {{MacroInvocation}}
	| simplePath 'name' ""!"" 'bang' ""["" 'left' tokenTree* ""]"" 'right' {{MacroInvocation}}
	;
delimTokenTree
   : ""("" 'left' tokenTree* "")"" 'right'
   | ""["" 'left' tokenTree* ""]"" 'right'
   | ""{"" 'left' tokenTree* ""}"" 'right'
   ;
tokenTree
   : tokenTreeToken
   | delimTokenTree
   ;
tokenTreeToken
   : macroIdentifierLikeToken
   | macroLiteralToken
   | macroPunctuationToken
   | macroRepOp
   | ""$""
   ;

macroInvocationSemi ###
   : macroInvocationWithoutBlock 'macroInvocation' "";"" 'semicolon'
   | macroInvocationWithBlock
   ;

# 3.1
macroRulesDefinition
   : ""macro_rules"" 'macroRulesToken' ""!"" 'bang' identifier macroRulesDef {{}}
   ;
macroRulesDef
   : ""("" 'left' macroRules "")"" 'right' "";"" 'semicolon'
   | ""["" 'left' macroRules ""]"" 'right' "";"" 'semicolon'
   | ""{"" 'left' macroRules ""}"" 'right'
   ;
macroRules
   : macroRule 'rule' ("";"" 'semicolon' macroRule 'rule')* "";"" 'semicolon'?
   ;
macroRule
   : macroMatcher ""=>"" macroTranscriber {{}}
   ;
macroMatcher
   : ""("" 'left' macroMatch 'match'* "")"" 'right'
   | ""["" 'left' macroMatch 'match'* ""]"" 'right'
   | ""{"" 'left' macroMatch 'match'* ""}"" 'right'
   ;
macroMatch
   : macroMatchToken {{}}
   | macroMatcher 'matcher' {{}}
   | ""$"" (identifier | ""self"" 'selfToken') "":"" macroFragSpec
   | ""$"" ""("" 'leftParen' macroMatch 'match'+ "")"" 'rightParen' macroRepSep? macroRepOp
   ;
macroMatchToken
   : macroIdentifierLikeToken
   | macroLiteralToken
   | macroPunctuationToken
   | macroRepOp
   ;
macroFragSpec
   : identifier # do validate here is wasting token
   ;
macroRepSep
   : macroIdentifierLikeToken
   | macroLiteralToken
   | macroPunctuationToken
   | ""$""
   ;
macroRepOp
   : ""*""
   | ""+""
   | ""?""
   ;
macroTranscriber
   : delimTokenTree
   ;

#configurationPredicate
# : configurationOption | configurationAll | configurationAny | configurationNot ; configurationOption: identifier (
# '=' (STRING_LITERAL | RAW_STRING_LITERAL))?; configurationAll: 'all' '(' configurationPredicateList? ')';
# configurationAny: 'any' '(' configurationPredicateList? ')'; configurationNot: 'not' '(' configurationPredicate ')';

#configurationPredicateList
# : configurationPredicate (',' configurationPredicate)* ','? ; cfgAttribute: 'cfg' '(' configurationPredicate ')';
# cfgAttrAttribute: 'cfg_attr' '(' configurationPredicate ',' cfgAttrs? ')'; cfgAttrs: attr (',' attr)* ','?;

# 6
item
   : outerAttribute 'attribute'* (visItem 'item' | macroItem 'item')
   ;
visItem
   : visibility?
   (
      module
      | externCrate
      | useDeclaration
      | function
      | typeAlias
      | struct
      | enumeration
      | union
      | constantItem
      | staticItem
      | trait
      | implementation
      | externBlock
   )
   ;
macroItem
   : macroInvocationSemi
   | macroRulesDefinition
   ;

# 6.1
module
   : ""unsafe"" 'unsafeToken'? ""mod"" 'modToken' identifier ("";"" 'semicolon' | ""{"" 'leftBrace' innerAttribute* item* ""}"" 'rightBrace')
   ;

# 6.2
externCrate
   : ""extern"" 'externToken' ""crate"" 'crateToken' crateRef asClause? "";"" 'semicolon'
   ;
crateRef
   : identifier
   | ""self"" 'selfToken'
   ;
asClause
   : ""as"" 'asToken' (identifier | ""_"")
   ;

# 6.3
useDeclaration
   : ""use"" 'useToken' useTree "";"" 'semicolon'
   ;
useTree
   : (simplePath? ""::"")? (""*"" | ""{"" 'leftBrace' ( useTree ("","" 'comma' useTree)* "","" 'comma'?)? ""}"" 'rightBrace')
   | simplePath (""as"" 'asToken' (identifier | ""_""))?
   ;

# 6.4
function
   : functionQualifiers ""fn"" 'fnToken' identifier genericParams? ""("" 'leftParen' functionParameters? "")"" 'rightParen' functionReturnType? whereClause 'where'?
      (blockExpression 'block' | "";"" 'semicolon')
   ;
functionQualifiers
   : ""default"" 'defaultToken'? ""const"" 'constToken'? ""async"" 'asyncToken'? ""unsafe"" 'unsafeToken'? (""extern"" 'externToken' abi?)? ### added default
   ;
abi
   : <STRING_LITERAL>
   | <rawString>
   | <simpleRawString>
   ;
functionParameters
   : selfParam "","" 'comma'?
   | (selfParam "","" 'comma')? functionParam ("","" 'comma' functionParam)* "","" 'comma'?
   ;
selfParam
   : outerAttribute* (shorthandSelf | typedSelf)
   ;
shorthandSelf
   : (<amp> 'amp' lifetime?)? ""mut"" 'mutToken'? ""self"" 'selfToken'
   ;
typedSelf
   : ""mut"" 'mutToken'? ""self"" 'selfToken' "":"" type 'type'
   ;
functionParam
   : outerAttribute* (functionParamPattern | ""..."" | type 'type')
   ;
functionParamPattern
   : pattern "":"" (type 'type' | ""..."")
   ;
functionReturnType
   : ""->"" type 'type'
   ;

# 6.5
typeAlias
   : ""type"" 'typeToken' identifier genericParams? ("":"" 'colon' typeParamBounds)? whereClause 'where'? (""="" type 'type')? "";"" 'semicolon'
   ;

# 6.6
struct
   : structStruct
   | tupleStruct
   ;
structStruct
   : ""struct"" 'structToken' identifier 'name' genericParams? whereClause 'where'? (""{"" 'leftBrace' structFields? ""}"" 'rightBrace' | "";"" 'semicolon') {{Struct}}
   ;
tupleStruct
   : ""struct"" 'structToken' identifier 'name' genericParams? ""("" 'leftParen' tupleFields? "")"" 'rightParen' whereClause 'where'? "";"" 'semicolon' {{TupleStruct}}
   ;
structFields
   : structField 'field' ("","" 'comma' structField 'field')* "","" 'comma'?
   ;
structField
   : outerAttribute* visibility? identifier "":"" type 'type' {{}}
   ;
tupleFields
   : tupleField 'field' ("","" 'comma' tupleField 'field')* "","" 'comma'?
   ;
tupleField
   : outerAttribute 'attribute'* visibility? type 'type' {{}}
   ;

# 6.7
enumeration
   : ""enum"" 'enumToken' identifier 'name' genericParams? whereClause 'where'? ""{"" 'leftBrace' enumItems? ""}"" 'rightBrace' {{Enum}}
   ;
enumItems
   : enumItem ("","" 'comma' enumItem)* "","" 'comma'?
   ;
enumItem
   : outerAttribute* visibility? identifier
   (
      enumItemTuple
      | enumItemStruct
      | enumItemDiscriminant
   )?
   ;
enumItemTuple
   : ""("" 'leftParen' tupleFields? "")"" 'rightParen'
   ;
enumItemStruct
   : ""{"" 'leftBrace' structFields? ""}"" 'rightBrace'
   ;
enumItemDiscriminant
   : ""="" expression
   ;

# 6.8
union
   : ""union"" 'unionToken' identifier 'name' genericParams? whereClause 'where'? ""{"" 'leftBrace' structFields ""}"" 'rightBrace' {{}}
   ;

# 6.9
constantItem
   : ""const"" 'constToken' (identifier | ""_"") "":"" type 'type' (""="" expression)? "";"" 'semicolon'
   ;

# 6.10
staticItem
   : ""static"" 'staticToken' ""mut"" 'mutToken'? identifier "":"" type 'type' (""="" expression)? "";"" 'semicolon'
   ;

# 6.11
trait
   : ""unsafe"" 'unsafeToken'? ""auto"" 'autoToken'? ""trait"" 'traitToken' identifier 'name' genericParams? ("":"" typeParamBounds?)? whereClause 'where'? ""{"" 'leftBrace' innerAttribute* associatedItem* ""}"" 'rightBrace' {{}}
   ;

# 6.12
implementation
   : inherentImpl
   | traitImpl
   ;
inherentImpl
   : ""impl"" 'implToken' genericParams? type 'type' whereClause 'where'? ""{"" 'leftBrace' innerAttribute* associatedItem* ""}"" 'rightBrace'
   ;
traitImpl
   : ""unsafe"" 'unsafeToken'? ""impl"" 'implToken' genericParams? ""const"" 'constToken'? ""!"" 'bang'? typePath ""for"" 'forToken' type 'type' whereClause 'where'? ""{"" 'leftBrace' innerAttribute* associatedItem* ""}"" 'rightBrace'	### added const
   ;

# 6.13
externBlock
   : ""unsafe"" 'unsafeToken'? ""extern"" 'externToken' abi? ""{"" 'leftBrace' innerAttribute* externalItem* ""}"" 'rightBrace'
   ;
externalItem
   : outerAttribute*
   (
      macroInvocationSemi
      | visibility? ( staticItem | function)
   )
   ;

# 6.14
genericParams
   : <lt> 'lt' ((genericParam "","" 'comma')* genericParam "","" 'comma'? )?<gt> 'gt'
   ;
genericParam
   : outerAttribute*
   (
      lifetimeParam
      | typeParam
      | constParam
   );
lifetimeParam
   : outerAttribute? <LIFETIME_OR_LABEL> 'label' ("":"" lifetimeBounds)?
   ;
typeParam
   : outerAttribute? identifier ("":"" typeParamBounds?)? (""="" type 'type')?
   ;
constParam
   : ""const"" 'constToken' identifier "":"" type 'type'
   ;

whereClause
   : ""where"" 'whereToken' (whereClauseItem 'clause' "","" 'comma')* whereClauseItem 'clause'? {{}}
   ;
whereClauseItem
   : lifetimeWhereClauseItem
   | typeBoundWhereClauseItem
   ;
lifetimeWhereClauseItem
   : lifetime "":"" lifetimeBounds
   ;
typeBoundWhereClauseItem
   : forLifetimes? type 'type' "":"" typeParamBounds?
   ;
forLifetimes
   : ""for"" 'forToken' genericParams
   ;

# 6.15
associatedItem
   : outerAttribute*
   (
      macroInvocationSemi
      | visibility? ( typeAlias | constantItem | function )
   )
   ;

# 7
innerAttribute
   : ""#"" ""!"" 'bang' ""["" 'leftBracket' attr ""]"" 'rightBracket' {{Attribute}}
   ;
outerAttribute
   : ""#"" 'hashToken' ""["" 'leftBracket' attr ""]"" 'rightBracket' {{Attribute}}
   ;
attr
   : simplePath attrInput?
   ;
attrInput
   : delimTokenTree
   | ""="" literalExpression
   ; # w/o suffix

#metaItem
# : simplePath ( '=' literalExpression //w | '(' metaSeq ')' )? ; metaSeq: metaItemInner (',' metaItemInner)* ','?;
# metaItemInner: metaItem | literalExpression; // w

#metaWord: identifier; metaNameValueStr: identifier '=' ( STRING_LITERAL | RAW_STRING_LITERAL); metaListPaths:
# identifier '(' ( simplePath (',' simplePath)* ','?)? ')'; metaListIdents: identifier '(' ( identifier (','
# identifier)* ','?)? ')'; metaListNameValueStr : identifier '(' (metaNameValueStr ( ',' metaNameValueStr)* ','?)? ')'
# ;

# 8
statement
   : "";"" 'semicolon'
   | item
   | letStatement
   | expressionStatement
   | macroInvocationSemi
   ;

letStatement
   : outerAttribute* ""let"" 'letToken' pattern ("":"" type 'type')? (""="" expression)? "";"" 'semicolon'
   ;

expressionStatement
   : expressionWithoutBlock "";"" 'semicolon'
   | expressionWithBlock "";"" 'semicolon'?
   ;

# 8.2
expression
   : expressionWithoutBlock
   | expressionWithBlock                                # ExpressionWithBlock_
   ;
expressionWithoutBlock
	: outerAttribute 'attribute' expressionWithoutBlock 'expression' {{AttributedExpression}}                         # AttributedExpression # technical, remove left recursive
   | literalExpression                                  # LiteralExpression_
   | pathExpression                                     # PathExpression_
   | expression ""."" 'period' pathExprSegment <lparen> 'leftParen' callParams? "")"" 'rightParen' # MethodCallExpression   # 8.2.10
   | expression ""."" 'period' identifier                          # FieldExpression  # 8.2.11
   | expression ""."" 'period' tupleIndex                          # TupleIndexingExpression   # 8.2.7
   | expression ""."" 'period' ""await"" 'awaitToken'                             # AwaitExpression  # 8.2.18
   | expression <lparen> 'leftParen' callParams? "")"" 'rightParen'                     # CallExpression   # 8.2.9
   | expression <lbracket> 'leftBracket' expression ""]"" 'rightBracket'                      # IndexExpression  # 8.2.6
   | expression ""?""                                     # ErrorPropagationExpression   # 8.2.4
   | (""&"" | ""&&"") ""mut"" 'mutToken'? expression                     # BorrowExpression # 8.2.4
   | ""*"" 'operator' expression 'value' {{UnaryExpression}}                                     # DereferenceExpression  # 8.2.4
   | (""-"" 'operator' | ""!"" 'operator') expression 'value' {{UnaryExpression}}                             # NegationExpression  # 8.2.4
   | expression ""as"" typeNoBounds       'type'                 # TypeCastExpression  # 8.2.4
   | expression 'left' (""*"" 'operator' | ""/"" 'operator' | ""%"" 'operator') expression 'right'  {{BinaryExpression}}            # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' (""+"" 'operator' | ""-"" 'operator') expression 'right' {{BinaryExpression}}                  # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' (""<<"" 'operator' |  "">>"" 'operator' | "">>>"" 'operator') expression 'right' {{BinaryExpression}}                  # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' <amp> 'operator' expression 'right' {{BinaryExpression}}                          # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' ""^"" 'operator' expression 'right' {{BinaryExpression}}                          # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' <bar> 'operator' expression 'right' {{BinaryExpression}}                          # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' ( ""=="" 'operator' | ""!="" 'operator' | <gt> 'operator' | <lt> 'operator' | "">="" 'operator' | ""<="" 'operator' ) expression  'right' {{BinaryExpression}}         # ComparisonExpression   # 8.2.4
   | expression 'left' ""&&"" 'operator' expression 'right' {{BinaryExpression}}                        # LazyBooleanExpression  # 8.2.4
   | expression 'left' ""||"" 'operator' expression 'right' {{BinaryExpression}}                         # LazyBooleanExpression  # 8.2.4
   | expression "".."" 'operator' expression?                        # RangeExpression  # 8.2.14
   | "".."" expression?                                   # RangeExpression  # 8.2.14
   | ""..="" expression                                   # RangeExpression  # 8.2.14
   | expression ""..="" expression                        # RangeExpression  # 8.2.14
   | expression 'lhs' ""="" 'operator' expression 'rhs' {{AssignmentExpression}}                          # AssignmentExpression   # 8.2.4
   | expression 'lhs' ( ""+="" 'operator' | ""-="" 'operator' | ""*="" 'operator' | ""/="" 'operator' | ""%="" 'operator' | ""&="" 'operator' | ""|="" 'operator' | ""^="" 'operator' | ""<<="" 'operator' | "">>="" 'operator' ) expression 'rhs' {{AssignmentExpression}}       # CompoundAssignmentExpression # 8.2.4
   | ""continue"" 'continueToken' <LIFETIME_OR_LABEL> 'label'? expression?          # ContinueExpression  # 8.2.13
   | ""break"" 'breakToken' <LIFETIME_OR_LABEL> 'label'? expression?             # BreakExpression  # 8.2.13
   | ""return"" 'returnToken' expression 'value'? {{ReturnExpression}}                               # ReturnExpression # 8.2.17
   | ""("" 'leftParen' innerAttribute* expression "")"" 'rightParen'                 # GroupedExpression   # 8.2.5
   | ""["" 'leftBracket' innerAttribute* arrayElements? ""]"" 'rightBracket'             # ArrayExpression  # 8.2.6
   | ""("" 'leftParen' innerAttribute* tupleElements? "")"" 'rightParen'             # TupleExpression  # 8.2.7
   | structExpression                                   # StructExpression_   # 8.2.8
   | enumerationVariantExpression                       # EnumerationVariantExpression_
   | closureExpression                                  # ClosureExpression_  # 8.2.12
   | macroInvocation                                    # MacroInvocationAsExpression
   | ""box"" 'boxToken' expression 'value' {{BoxExpression}} ###
	;

expressionWithBlock
   : outerAttribute 'attribute' expressionWithBlock 'expression' {{AttributedExpression}} # technical
   | blockExpression
   | asyncBlockExpression
   | unsafeBlockExpression
   | loopExpression
   | ifExpression
   | ifLetExpression
   | matchExpression
   ;

# 8.2.1
literalExpression
   : <CHAR_LITERAL> 'value' {{}}
   | <STRING_LITERAL> 'value' {{}}
   | <rawString> 'value' {{}}
   | <simpleRawString> 'value' {{}}
   | <BYTE_LITERAL> 'value' {{}}
   | <BYTE_STRING_LITERAL> 'value' {{}}
   | <INTEGER_LITERAL> 'value' {{}}
   | <FLOAT_LITERAL> 'value' {{}}
   | ""true"" 'value' {{}}
   | ""false"" 'value' {{}}
   ;

# 8.2.2
pathExpression
   : pathInExpression
   | qualifiedPathInExpression
   ;

# 8.2.3
blockExpression
   : ""{"" 'leftBrace' innerAttribute* statements 'statement'? ""}"" 'rightBrace' {{}}
   ;
statements
   : statement 'statement'+ expressionWithoutBlock 'statement'?
   | expressionWithoutBlock 'statement'
   ;

asyncBlockExpression
   : ""async"" 'asyncToken' ""move"" 'moveToken'? blockExpression 'expression' {{}}
   ;
unsafeBlockExpression
   : ""unsafe"" 'unsafeToken' blockExpression 'expression' {{}}
   ;

# 8.2.6
arrayElements
   : expression ("","" 'comma' expression)* "","" 'comma'?
   | expression "";"" 'semicolon' expression
   ;

# 8.2.7
tupleElements
   : (expression "","" 'comma')+ expression?
   ;
tupleIndex
   : <INTEGER_LITERAL>
   ;

# 8.2.8
structExpression
   : structExprStruct
   | structExprTuple
   ### defined in pathExpression -- | structExprUnit
   ;
structExprStruct
   : pathInExpression ""{"" 'leftBrace' innerAttribute* (structExprFields | structBase)? ""}"" 'rightBrace'
   ;
structExprFields
   : structExprField ("","" 'comma' structExprField)* ("","" 'comma' structBase | "","" 'comma'?)
   ;
# outerAttribute here is not in doc
structExprField
   : outerAttribute* (identifier | (identifier | tupleIndex) "":"" expression)
   ;
structBase
   : "".."" expression
   ;
structExprTuple
   : pathInExpression ""("" 'leftParen' (expression ("","" 'comma' expression)* "","" 'comma'?)? "")"" 'rightParen' ###
   ;
structExprUnit
   : pathInExpression
   ;

enumerationVariantExpression
   : enumExprStruct
   ### same as structExprTuple | enumExprTuple
   ### defined in pathExpression -- | enumExprFieldless
   ;
enumExprStruct
   : pathInExpression ""{"" 'leftBrace' enumExprFields? ""}"" 'rightBrace'
   ;
enumExprFields
   : enumExprField ("","" 'comma' enumExprField)* "","" 'comma'?
   ;
enumExprField
   : identifier
   | (identifier | tupleIndex) "":"" expression
   ;
enumExprFieldless
   : pathInExpression
   ;

# 8.2.9
callParams
   : expression 'parameter' ("","" 'comma' expression)* "","" 'comma'?
   ;

# 8.2.12
closureExpression
   : ""move"" 'moveToken'? (""||"" 'bar' | ""|"" 'bar' closureParameters? ""|"" 'bar')
   (
      expression 'expression'
      | ""->"" 'arrow' typeNoBounds 'type' blockExpression 'expression'
   )
   ;
closureParameters
   : closureParam 'parameter' ("","" 'comma' closureParam 'parameter')* "","" 'comma'?
   ;
closureParam
   : outerAttribute* pattern ("":"" type 'type')?
   ;

# 8.2.13
loopExpression
   : loopLabel? infiniteLoopExpression {{}}
   | loopLabel? predicateLoopExpression {{WhileLoopExpression}} 
   | loopLabel? predicatePatternLoopExpression {{WhileLetLoopExpression}}
   | loopLabel? iteratorLoopExpression {{ForIteratorLoopExpression}}
   ;
infiniteLoopExpression
   : ""loop"" 'loopToken' blockExpression 'block'
   ;
predicateLoopExpression
   : ""while"" 'whileToken' expression 'condition' /*except structExpression*/ blockExpression 'block'
   ;
predicatePatternLoopExpression
   : ""while"" 'whileToken' ""let"" 'letToken' matchArmPatterns 'matchPattern' ""="" 'equalsToken' expression 'value' blockExpression 'block'
   ;
iteratorLoopExpression
   : ""for"" 'forToken' pattern 'pattern' ""in"" 'inToken' expression 'value' blockExpression 'block'
   ;
loopLabel
   : <LIFETIME_OR_LABEL> 'label' "":"" 'colon'
   ;

# 8.2.15
ifExpression
   : ""if"" 'ifToken' expression 'conditional' blockExpression 'thenValue'
   (
      ""else"" 'elseToken' (blockExpression 'elseValue' | ifExpression 'elseValue' | ifLetExpression 'elseValue')
   )? {{}}
   ;
ifLetExpression
   : ""if"" 'ifToken' ""let"" 'letToken' matchArmPatterns 'matchPattern' ""="" 'equalsToken' expression 'matchValue' blockExpression 'thenValue'
   (
      ""else"" 'elseToken' (blockExpression 'elseValue' | ifExpression 'elseValue' | ifLetExpression 'elseValue')
   )? {{}}
   ;

# 8.2.16
matchExpression
   : ""match"" 'matchToken' expression ""{"" 'leftBrace' innerAttribute* matchArms? ""}"" 'rightBrace' {{}}
   ;
matchArms
   : (matchArm ""=>"" matchArmExpression)* matchArm ""=>"" ( expressionWithoutBlock | expressionWithBlock ) "","" 'comma'?
   ;
matchArmExpression
   : expressionWithoutBlock "","" 'comma'
   | expressionWithBlock "","" 'comma'?
   ;
matchArm
   : outerAttribute* matchArmPatterns matchArmGuard?
   ;
matchArmPatterns
   : ""|""? pattern (""|"" pattern)*
   ;
matchArmGuard
   : ""if"" 'ifToken' expression
   ;

# 9
pattern
   : ""|""? patternNoTopAlt (""|"" patternNoTopAlt)*
   ;
patternNoTopAlt 
	: patternWithoutRange
   | rangePattern
	;
patternWithoutRange
   : literalPattern
   | identifierPattern
   | wildcardPattern
   | restPattern
   | obsoleteRangePattern
   | referencePattern
   | structPattern
   | tupleStructPattern
   | tuplePattern
   | groupedPattern
   | slicePattern
   | pathPattern
   | macroInvocation
   ;

literalPattern
   : ""true""
   | ""false""
   | <CHAR_LITERAL> 'value'
   | <BYTE_LITERAL> 'value'
   | <STRING_LITERAL> 'value'
   | <rawString> 'value'
   | <simpleRawString> 'value'
   | <BYTE_STRING_LITERAL> 'value'
   | ""-""? <INTEGER_LITERAL> 'value'
   | ""-""? <FLOAT_LITERAL> 'value'
   ;

identifierPattern
   : ""ref"" 'refToken'? ""mut"" 'mutToken'? identifier (""@"" pattern)?
   ;
wildcardPattern
   : ""_""
   ;
restPattern
   : ""..""
   ;
rangePattern
   : rangePatternBound ""..="" rangePatternBound
   ;
obsoleteRangePattern
   : rangePatternBound ""..."" rangePatternBound
   ;
rangePatternBound
   : <CHAR_LITERAL>
   | <BYTE_LITERAL>
   | ""-""? <INTEGER_LITERAL>
   | ""-""? <FLOAT_LITERAL>
   | pathInExpression
   | qualifiedPathInExpression
   ;
referencePattern
   : (<amp> 'amp' | ""&&"") ""mut"" 'mutToken'? patternWithoutRange
   ;
structPattern
   : pathInExpression ""{"" 'leftBrace' structPatternElements? ""}"" 'rightBrace'
   ;
structPatternElements
   : structPatternFields ("","" 'comma' structPatternEtCetera?)?
   | structPatternEtCetera
   ;
structPatternFields
   : structPatternField ("","" 'comma' structPatternField)*
   ;
structPatternField
   : outerAttribute*
   (
      tupleIndex "":"" pattern
      | identifier "":"" pattern
      | ""ref"" 'refToken'? ""mut"" 'mutToken'? identifier
   )
   ;
structPatternEtCetera
   : outerAttribute* ""..""
   ;
tupleStructPattern
   : pathInExpression ""("" 'leftParen' tupleStructItems? "")"" 'rightParen'
   ;
tupleStructItems
   : pattern ("","" 'comma' pattern)* "","" 'comma'?
   ;
tuplePattern
   : ""("" 'leftParen' tuplePatternItems? "")"" 'rightParen'
   ;
tuplePatternItems
   : pattern "","" 'comma'
   | restPattern
   | pattern ("","" 'comma' pattern)+ "","" 'comma'?
   ;
groupedPattern
   : ""("" 'leftParen' pattern "")"" 'rightParen'
   ;
slicePattern
   : ""["" 'leftBracket' slicePatternItems? ""]"" 'rightBracket'
   ;
slicePatternItems
   : pattern ("","" 'comma' pattern)* "","" 'comma'?
   ;
pathPattern
   : pathInExpression
   | qualifiedPathInExpression
   ;

# 10.1
type
   : typeNoBounds
   | implTraitType
   | traitObjectType
   ;
typeNoBounds
   : parenthesizedType
   | implTraitTypeOneBound
   | traitObjectTypeOneBound
   | typePath
   | tupleType
   | neverType
   | rawPointerType
   | referenceType
   | arrayType
   | sliceType
   | inferredType
   | qualifiedPathInType
   | bareFunctionType
   | macroInvocation
   ;
parenthesizedType
   : ""("" 'leftParen' type 'type' "")"" 'rightParen' {{}}
   ;

# 10.1.4
neverType
   : ""!"" 'bang' {{}}
   ;

# 10.1.5
tupleType
   : ""("" 'leftParen' ((type 'type' "","" 'comma')+ type 'type'?)? "")"" 'rightParen' {{}}
   ;

# 10.1.6
arrayType
   : ""["" 'leftBracket' type 'type' "";"" 'semicolon' expression 'size' ""]"" 'rightBracket' {{ArrayType}}
   ;

# 10.1.7
sliceType
   : ""["" 'leftBracket' type 'type' ""]"" 'rightBracket' {{SliceType}}
   ;

# 10.1.13
referenceType
   : <amp> 'amp' lifetime 'lifetime'? ""mut"" 'mutToken'? typeNoBounds 'type' {{}}
   ;
rawPointerType
   : ""*"" 'star' (""mut"" 'mutToken' | ""const"" 'constToken') typeNoBounds 'type' {{}}
   ;

# 10.1.14
bareFunctionType
   : forLifetimes? functionTypeQualifiers ""fn"" 'fnToken' ""("" 'leftParen' functionParametersMaybeNamedVariadic? "")"" 'rightParen' bareFunctionReturnType? {{FunctionType}}
   ;
functionTypeQualifiers
   : ""unsafe"" 'unsafeToken'? (""extern"" 'externToken' abi?)?
   ;
bareFunctionReturnType
   : ""->"" typeNoBounds 'type'
   ;
functionParametersMaybeNamedVariadic
   : maybeNamedFunctionParameters
   | maybeNamedFunctionParametersVariadic
   ;
maybeNamedFunctionParameters
   : maybeNamedParam ("","" 'comma' maybeNamedParam)* "","" 'comma'?
   ;
maybeNamedParam
   : outerAttribute* ((identifier | ""_"") "":"")? type 'type'
   ;
maybeNamedFunctionParametersVariadic
   : maybeNamedParam ("","" 'comma' maybeNamedParam)* "","" 'comma' outerAttribute* ""...""
   ;

# 10.1.15
traitObjectType
   : ""dyn"" 'dynToken'? typeParamBounds {{}}
   ;
traitObjectTypeOneBound
   : ""dyn"" 'dynToken'? traitBound 'bound' {{}}
   ;
implTraitType
   : ""impl"" 'implToken' typeParamBounds 'bounds' {{}}
   ;
implTraitTypeOneBound
   : ""impl"" 'implToken' traitBound {{}}
   ;

# 10.1.18
inferredType
   : ""_"" 'underscore' {{}}
   ;

# 10.6
typeParamBounds
   : typeParamBound (""+"" typeParamBound)* ""+""?
   ;
typeParamBound
   : lifetime
   | traitBound
   ;
traitBound
   : ""?""? forLifetimes? typePath
   | ""("" 'leftParen' ""?""? forLifetimes? typePath "")"" 'rightParen'
   ;
lifetimeBounds
   : (lifetime ""+"")* lifetime?
   ;
lifetime
   : <LIFETIME_OR_LABEL>
   | ""'static""
   | ""'_""
   ;

# 12.4
simplePath
   : ""::"" 'separator' ? simplePathSegment (""::"" 'separator' simplePathSegment)* {{Path}}
   ;
simplePathSegment
   : identifier 'name'
   | ""super"" 'name'
   | ""self"" 'name'
   | ""crate"" 'name'
   | ""$crate"" 'name'
   ;

pathInExpression
   : ""::"" 'separator'? pathExprSegment (""::"" 'separator' pathExprSegment)*
   ;
pathExprSegment
   : pathIdentSegment (""::"" genericArgs)?
   ;
pathIdentSegment
   : simplePathSegment
   | ""Self"" 'name'
   ;

#TODO: let x : T<_>=something;
genericArgs
   : <lt> 'lt' <gt> 'gt'
   ### handled below by genericArg ###| <lt> 'lt' genericArgsLifetimes ("","" 'comma' genericArgsTypes)? ("","" 'comma' genericArgsBindings)? "","" 'comma'? <gt> 'gt'
   ### handled below by genericArg ###| <lt> 'lt' genericArgsTypes ("","" 'comma' genericArgsBindings)? "","" 'comma'? <gt> 'gt'
   | <lt> 'lt' genericArg 'arg' ("","" 'comma' genericArg 'arg')* "","" 'comma'? <gt> 'gt'
   ;
genericArg
   : lifetime
   | type 'type'
   | genericArgsConst
   | genericArgsBinding
   ;
genericArgsConst
   : blockExpression
   | ""-""? literalExpression
   | simplePathSegment
   ;
genericArgsLifetimes
   : lifetime ("","" 'comma' lifetime)*
   ;
genericArgsTypes
   : type 'type' ("","" 'comma' type 'type')*
   ;
genericArgsBindings
   : genericArgsBinding ("","" 'comma' genericArgsBinding)*
   ;
genericArgsBinding
   : identifier ""="" type 'type'
   ;

qualifiedPathInExpression
   : qualifiedPathType (""::"" 'separator' pathExprSegment)+
   ;
qualifiedPathType
   : <lt> 'lt' type 'type' (""as"" 'asToken' typePath)? <gt> 'gt'
   ;
qualifiedPathInType
   : qualifiedPathType (""::"" typePathSegment)+
   ;

typePath
   : ""::"" 'separator'? typePathSegment (""::"" 'separator' typePathSegment)* {{}}
   ;
typePathSegment
   : pathIdentSegment ""::"" 'separator'? (genericArgs | typePathFn)?
   ;
typePathFn
   : ""("" 'leftParen' typePathInputs? "")"" 'rightParen' (""->"" type 'type')?
   ;
typePathInputs
   : type 'type' ("","" 'comma' type 'type')* "","" 'comma'?
   ;

# 12.6
visibility
   : ""pub"" 'pubToken' (""("" 'leftParen' (""crate"" 'crateToken' | ""self"" 'selfToken' | ""super"" 'superToken' | ""in"" 'inToken' simplePath 'path') "")"" 'rightParen')?
   | ""crate"" 'crateToken' ### added
   ;

# technical
identifier
   : <NON_KEYWORD_IDENTIFIER>
   | <RAW_IDENTIFIER>
   | ""macro_rules""
   | ""auto""	###
   ;
keyword
   : ""as""
   | ""break""
   | ""const""
   | ""continue""
   | ""crate""
   | ""else""
   | ""enum""
   | ""extern""
   ### part of macroLiteralToken -- | ""false""
   | ""fn""
   | ""for""
   | ""if""
   | ""impl""
   | ""in""
   | ""let""
   | ""loop""
   | ""match""
   | ""mod""
   | ""move""
   | ""mut""
   | ""pub""
   | ""ref""
   | ""return""
   | ""self""
   | ""Self""
   | ""static""
   | ""struct""
   | ""super""
   | ""trait""
   ### part of macroLiteralToken -- | ""true""
   | ""type""
   | ""unsafe""
   | ""use""
   | ""where""
   | ""while""

   # 2018+
   | ""async""
   | ""await""
   | ""dyn""
   # reserved
   | ""abstract""
   | ""become""
   | ""box""
   | ""do""
   | ""final""
   | ""macro""
   | ""override""
   | ""priv""
   | ""typeof""
   | ""unsized""
   | ""virtual""
   | ""yield""
   | ""try""
   | ""union""
   | ""'static""
   ;
macroIdentifierLikeToken
   : keyword
   | identifier
   | ""'_""
   | ""$crate""
   | <LIFETIME_OR_LABEL>
   ;
macroLiteralToken
   : literalExpression
   ;
# macroDelimiterToken: '{' | '}' | '[' | ']' | '(' | ')';
macroPunctuationToken
   : ""-""
   #| '+' | '*'
   | ""/""
   | ""%""
   | ""^""
   | ""!""
   | <amp>
   | ""|""
   | ""&&""
   | ""||""
   # already covered by '<' and '>' in macro | shl | shr
   | ""<<""	###
   | "">>""	###
   | "">>>""###
   | ""+=""
   | ""-=""
   | ""*=""
   | ""/=""
   | ""%=""
   | ""^=""
   | ""&=""
   | ""|=""
   | ""<<=""
   | "">>=""
   | ""=""
   | ""==""
   | ""!=""
   | <gt>
   | <lt>
   | "">=""
   | ""<=""
   | ""@""
   | ""_""
   | "".""
   | ""..""
   | ""...""
   | ""..=""
   | "",""
   | "";""
   | "":""
   | ""::""
   | ""->""
   | ""=>""
   | ""#""
   #| '$' | '?'
   ;

# LA can be removed, legal rust code still pass but the cost is `let c = a < < b` will pass... i hope antlr5 can add
# some new syntax? dsl? for these stuff so i needn't write it in (at least) 5 language"
]

{ #category : #'file types' }
RustParser class >> fileExtension [
	^ '.rs'
]

{ #category : #generated }
RustParser class >> reduceTable [
^#(
	#(132 0 #reduceFor: 5688321 false) 
	#(133 0 #reduceFor: 5716993 false) 
	#(158 0 #reduceFor: 8492033 false) 
	#(131 2 #reduceFor: 5665793 false) 
	#(132 2 #reduceFor: 5688322 false) 
	#(131 3 #reduceFor: 5665794 false) 
	#(133 2 #reduceFor: 5716994 false) 
	#(174 0 #reduceFor: 9904129 false) 
	#(366 1 #reduceFor: 31063045 false) 
	#(400 1 #reduceFor: 33201156 false) 
	#(366 1 #reduceFor: 31063044 false) 
	#(399 1 #reduceFor: 32970758 false) 
	#(173 1 #reduceFor: 9904129 false) 
	#(341 0 #reduceFor: 29641729 false) 
	#(400 1 #reduceFor: 33201155 false) 
	#(399 1 #reduceFor: 32970753 false) 
	#(366 1 #reduceFor: 31063043 false) 
	#(366 1 #reduceFor: 31063042 false) 
	#(400 1 #reduceFor: 33201153 false) 
	#(400 1 #reduceFor: 33201154 false) 
	#(141 1 #reduceFor: 6487042 false) 
	#(160 1 #reduceFor: 8846337 false) 
	#(160 1 #reduceFor: 8846338 false) 
	#(157 2 #reduceFor: 8481793 false) 
	#(157 2 #reduceFor: 8481794 false) 
	#(159 1 #reduceFor: 8562689 false) 
	#(159 1 #reduceFor: 8562690 false) 
	#(159 1 #reduceFor: 8562691 false) 
	#(159 1 #reduceFor: 8562692 false) 
	#(174 1 #reduceFor: 9904130 false) 
	#(172 1 #reduceFor: 9783297 false) 
	#(159 1 #reduceFor: 8562693 false) 
	#(159 1 #reduceFor: 8562694 false) 
	#(187 1 #reduceFor: 10772481 false) 
	#(187 1 #reduceFor: 10772482 false) 
	#(159 1 #reduceFor: 8562695 false) 
	#(159 1 #reduceFor: 8562696 false) 
	#(159 1 #reduceFor: 8562697 false) 
	#(159 1 #reduceFor: 8562698 false) 
	#(159 1 #reduceFor: 8562699 false) 
	#(159 1 #reduceFor: 8562700 false) 
	#(213 1 #reduceFor: 12754945 false) 
	#(213 1 #reduceFor: 12754946 false) 
	#(159 1 #reduceFor: 8562701 false) 
	#(158 2 #reduceFor: 8492034 false) 
	#(365 0 #reduceFor: 31009793 false) 
	#(366 1 #reduceFor: 31063041 false) 
	#(236 1 #reduceFor: 14722049 false) 
	#(172 2 #reduceFor: 9783299 false) 
	#(172 2 #reduceFor: 9783301 false) 
	#(172 2 #reduceFor: 9783305 false) 
	#(162 0 #reduceFor: 9022465 false) 
	#(175 1 #reduceFor: 9959425 false) 
	#(175 1 #reduceFor: 9959427 false) 
	#(173 2 #reduceFor: 9904130 false) 
	#(175 1 #reduceFor: 9959426 false) 
	#(332 1 #reduceFor: 28839937 false) 
	#(362 1 #reduceFor: 30881795 false) 
	#(362 1 #reduceFor: 30881794 false) 
	#(371 1 #reduceFor: 31356930 false) 
	#(353 1 #reduceFor: 30536705 false) 
	#(341 1 #reduceFor: 29641730 false) 
	#(341 1 #reduceFor: 29641732 false) 
	#(362 1 #reduceFor: 30881793 false) 
	#(221 0 #reduceFor: 13536257 false) 
	#(330 1 #reduceFor: 28446734 false) 
	#(134 1 #reduceFor: 5738498 false) 
	#(134 1 #reduceFor: 5738497 false) 
	#(329 1 #reduceFor: 28377089 false) 
	#(330 1 #reduceFor: 28446721 false) 
	#(330 1 #reduceFor: 28446726 false) 
	#(330 1 #reduceFor: 28446725 false) 
	#(330 1 #reduceFor: 28446729 false) 
	#(330 1 #reduceFor: 28446730 false) 
	#(330 1 #reduceFor: 28446728 false) 
	#(330 1 #reduceFor: 28446727 false) 
	#(330 1 #reduceFor: 28446733 false) 
	#(329 1 #reduceFor: 28377091 false) 
	#(330 1 #reduceFor: 28446723 false) 
	#(329 1 #reduceFor: 28377090 false) 
	#(330 1 #reduceFor: 28446722 false) 
	#(330 1 #reduceFor: 28446731 false) 
	#(349 1 #reduceFor: 30237697 false) 
	#(356 0 #reduceFor: 30627841 false) 
	#(357 1 #reduceFor: 30660610 false) 
	#(350 1 #reduceFor: 30304257 false) 
	#(357 1 #reduceFor: 30660609 false) 
	#(371 1 #reduceFor: 31356929 false) 
	#(396 1 #reduceFor: 32700417 false) 
	#(330 1 #reduceFor: 28446732 false) 
	#(358 1 #reduceFor: 30711809 false) 
	#(330 1 #reduceFor: 28446724 false) 
	#(395 0 #reduceFor: 32653313 false) 
	#(211 0 #reduceFor: 12648449 false) 
	#(172 2 #reduceFor: 9783298 false) 
	#(167 1 #reduceFor: 9363457 false) 
	#(167 1 #reduceFor: 9363466 false) 
	#(141 2 #reduceFor: 6487041 false) 
	#(363 2 #reduceFor: 30955521 false) 
	#(159 2 #reduceFor: 8562702 false) 
	#(159 2 #reduceFor: 8562703 false) 
	#(159 2 #reduceFor: 8562704 false) 
	#(159 2 #reduceFor: 8562705 false) 
	#(159 2 #reduceFor: 8562706 false) 
	#(159 2 #reduceFor: 8562707 false) 
	#(159 2 #reduceFor: 8562708 false) 
	#(159 2 #reduceFor: 8562709 false) 
	#(159 2 #reduceFor: 8562710 false) 
	#(159 2 #reduceFor: 8562711 false) 
	#(159 2 #reduceFor: 8562712 false) 
	#(159 2 #reduceFor: 8562713 false) 
	#(159 2 #reduceFor: 8562714 false) 
	#(234 5 #reduceFor: 14524417 false) 
	#(136 0 #reduceFor: 5902337 false) 
	#(237 1 #reduceFor: 14759937 false) 
	#(236 2 #reduceFor: 14722050 false) 
	#(363 3 #reduceFor: 30955522 false) 
	#(172 3 #reduceFor: 9783300 false) 
	#(172 3 #reduceFor: 9783303 false) 
	#(172 3 #reduceFor: 9783302 false) 
	#(172 3 #reduceFor: 9783307 false) 
	#(172 3 #reduceFor: 9783309 false) 
	#(172 3 #reduceFor: 9783306 false) 
	#(228 0 #reduceFor: 14008321 false) 
	#(180 0 #reduceFor: 10188801 false) 
	#(164 1 #reduceFor: 9179138 false) 
	#(164 1 #reduceFor: 9179137 false) 
	#(217 0 #reduceFor: 13337601 false) 
	#(333 2 #reduceFor: 28887041 false) 
	#(335 1 #reduceFor: 28919809 false) 
	#(358 2 #reduceFor: 30711811 false) 
	#(349 2 #reduceFor: 30237698 false) 
	#(350 2 #reduceFor: 30304258 false) 
	#(341 2 #reduceFor: 29641731 false) 
	#(232 2 #reduceFor: 14315521 false) 
	#(351 2 #reduceFor: 30382081 false) 
	#(352 2 #reduceFor: 30456833 false) 
	#(341 2 #reduceFor: 29641733 false) 
	#(219 2 #reduceFor: 13505537 false) 
	#(338 2 #reduceFor: 29227009 false) 
	#(358 2 #reduceFor: 30711810 false) 
	#(354 2 #reduceFor: 30590977 false) 
	#(396 2 #reduceFor: 32700420 false) 
	#(396 2 #reduceFor: 32700418 false) 
	#(396 2 #reduceFor: 32700419 false) 
	#(392 1 #reduceFor: 32573441 false) 
	#(390 2 #reduceFor: 32529409 false) 
	#(393 2 #reduceFor: 32604161 false) 
	#(161 3 #reduceFor: 8921089 false) 
	#(188 3 #reduceFor: 10820611 false) 
	#(210 0 #reduceFor: 12628993 false) 
	#(211 1 #reduceFor: 12648450 false) 
	#(186 3 #reduceFor: 10609665 false) 
	#(167 2 #reduceFor: 9363460 false) 
	#(167 2 #reduceFor: 9363458 false) 
	#(169 0 #reduceFor: 9431041 false) 
	#(166 3 #reduceFor: 9295873 false) 
	#(365 2 #reduceFor: 31009794 false) 
	#(244 1 #reduceFor: 21126154 false) 
	#(244 1 #reduceFor: 21126153 false) 
	#(244 1 #reduceFor: 21126145 false) 
	#(244 1 #reduceFor: 21126146 false) 
	#(244 1 #reduceFor: 21126148 false) 
	#(244 1 #reduceFor: 21126149 false) 
	#(244 1 #reduceFor: 21126150 false) 
	#(244 1 #reduceFor: 21126151 false) 
	#(244 1 #reduceFor: 21126152 false) 
	#(237 2 #reduceFor: 14759938 false) 
	#(244 1 #reduceFor: 21126147 false) 
	#(235 4 #reduceFor: 14622721 false) 
	#(172 4 #reduceFor: 9783304 false) 
	#(172 4 #reduceFor: 9783308 false) 
	#(172 4 #reduceFor: 9783311 false) 
	#(172 4 #reduceFor: 9783310 false) 
	#(226 2 #reduceFor: 13969409 false) 
	#(198 4 #reduceFor: 11538433 false) 
	#(201 0 #reduceFor: 11714561 false) 
	#(163 4 #reduceFor: 9075713 false) 
	#(162 2 #reduceFor: 9022466 false) 
	#(331 3 #reduceFor: 28749825 false) 
	#(334 2 #reduceFor: 28919809 false) 
	#(333 3 #reduceFor: 28887042 false) 
	#(335 2 #reduceFor: 28919810 false) 
	#(358 3 #reduceFor: 30711813 false) 
	#(339 3 #reduceFor: 29329410 false) 
	#(339 3 #reduceFor: 29329409 false) 
	#(393 3 #reduceFor: 32604162 false) 
	#(358 3 #reduceFor: 30711812 false) 
	#(337 3 #reduceFor: 29130753 false) 
	#(341 3 #reduceFor: 29641734 false) 
	#(221 2 #reduceFor: 13536258 false) 
	#(389 3 #reduceFor: 32440321 false) 
	#(338 3 #reduceFor: 29227010 false) 
	#(338 3 #reduceFor: 29227011 false) 
	#(212 0 #reduceFor: 12702721 false) 
	#(354 3 #reduceFor: 30590978 false) 
	#(356 2 #reduceFor: 30627842 false) 
	#(397 2 #reduceFor: 32791553 false) 
	#(382 0 #reduceFor: 32172033 false) 
	#(396 3 #reduceFor: 32700421 false) 
	#(396 3 #reduceFor: 32700422 false) 
	#(372 2 #reduceFor: 31455233 false) 
	#(376 1 #reduceFor: 31975426 false) 
	#(376 1 #reduceFor: 31975425 false) 
	#(375 1 #reduceFor: 31880194 false) 
	#(375 1 #reduceFor: 31880193 false) 
	#(376 1 #reduceFor: 31975428 false) 
	#(374 0 #reduceFor: 31818753 false) 
	#(375 1 #reduceFor: 31880195 false) 
	#(375 1 #reduceFor: 31880196 false) 
	#(391 2 #reduceFor: 32573441 false) 
	#(392 2 #reduceFor: 32573442 false) 
	#(395 2 #reduceFor: 32653314 false) 
	#(142 4 #reduceFor: 6623233 false) 
	#(399 4 #reduceFor: 32970754 false) 
	#(399 4 #reduceFor: 32970755 false) 
	#(399 4 #reduceFor: 32970756 false) 
	#(196 0 #reduceFor: 11398145 false) 
	#(188 4 #reduceFor: 10820609 false) 
	#(192 0 #reduceFor: 11223041 false) 
	#(188 4 #reduceFor: 10820617 false) 
	#(188 4 #reduceFor: 10820614 false) 
	#(210 1 #reduceFor: 12628994 false) 
	#(186 4 #reduceFor: 10609673 false) 
	#(186 4 #reduceFor: 10609667 false) 
	#(161 4 #reduceFor: 8921091 false) 
	#(167 3 #reduceFor: 9363461 false) 
	#(170 0 #reduceFor: 9454593 false) 
	#(167 3 #reduceFor: 9363463 false) 
	#(167 3 #reduceFor: 9363468 false) 
	#(167 3 #reduceFor: 9363467 false) 
	#(364 2 #reduceFor: 31009793 false) 
	#(404 1 #reduceFor: 34313221 false) 
	#(404 1 #reduceFor: 34313241 false) 
	#(404 1 #reduceFor: 34313258 false) 
	#(140 1 #reduceFor: 6358021 false) 
	#(402 1 #reduceFor: 34096132 false) 
	#(404 1 #reduceFor: 34313219 false) 
	#(404 1 #reduceFor: 34313233 false) 
	#(404 1 #reduceFor: 34313224 false) 
	#(404 1 #reduceFor: 34313235 false) 
	#(402 1 #reduceFor: 34096131 false) 
	#(401 1 #reduceFor: 33306675 false) 
	#(138 3 #reduceFor: 6161409 false) 
	#(155 1 #reduceFor: 7750657 false) 
	#(404 1 #reduceFor: 34313231 false) 
	#(155 1 #reduceFor: 7750658 false) 
	#(404 1 #reduceFor: 34313229 false) 
	#(404 1 #reduceFor: 34313252 false) 
	#(404 1 #reduceFor: 34313217 false) 
	#(404 1 #reduceFor: 34313230 false) 
	#(404 1 #reduceFor: 34313256 false) 
	#(404 1 #reduceFor: 34313248 false) 
	#(404 1 #reduceFor: 34313249 false) 
	#(404 1 #reduceFor: 34313250 false) 
	#(404 1 #reduceFor: 34313251 false) 
	#(404 1 #reduceFor: 34313218 false) 
	#(404 1 #reduceFor: 34313232 false) 
	#(404 1 #reduceFor: 34313254 false) 
	#(404 1 #reduceFor: 34313255 false) 
	#(404 1 #reduceFor: 34313253 false) 
	#(404 1 #reduceFor: 34313226 false) 
	#(404 1 #reduceFor: 34313237 false) 
	#(404 1 #reduceFor: 34313245 false) 
	#(404 1 #reduceFor: 34313239 false) 
	#(404 1 #reduceFor: 34313240 false) 
	#(404 1 #reduceFor: 34313257 false) 
	#(404 1 #reduceFor: 34313244 false) 
	#(404 1 #reduceFor: 34313227 false) 
	#(404 1 #reduceFor: 34313238 false) 
	#(404 1 #reduceFor: 34313228 false) 
	#(155 1 #reduceFor: 7750659 false) 
	#(404 1 #reduceFor: 34313246 false) 
	#(401 1 #reduceFor: 33306648 false) 
	#(404 1 #reduceFor: 34313220 false) 
	#(404 1 #reduceFor: 34313234 false) 
	#(404 1 #reduceFor: 34313247 false) 
	#(401 1 #reduceFor: 33306661 false) 
	#(401 1 #reduceFor: 33306625 false) 
	#(401 1 #reduceFor: 33306658 false) 
	#(401 1 #reduceFor: 33306659 false) 
	#(401 1 #reduceFor: 33306662 false) 
	#(401 1 #reduceFor: 33306663 false) 
	#(401 1 #reduceFor: 33306626 false) 
	#(401 1 #reduceFor: 33306627 false) 
	#(401 1 #reduceFor: 33306628 false) 
	#(401 1 #reduceFor: 33306629 false) 
	#(401 1 #reduceFor: 33306664 false) 
	#(401 1 #reduceFor: 33306660 false) 
	#(401 1 #reduceFor: 33306630 false) 
	#(401 1 #reduceFor: 33306631 false) 
	#(401 1 #reduceFor: 33306632 false) 
	#(401 1 #reduceFor: 33306665 false) 
	#(401 1 #reduceFor: 33306633 false) 
	#(401 1 #reduceFor: 33306634 false) 
	#(401 1 #reduceFor: 33306635 false) 
	#(401 1 #reduceFor: 33306636 false) 
	#(401 1 #reduceFor: 33306637 false) 
	#(401 1 #reduceFor: 33306638 false) 
	#(401 1 #reduceFor: 33306639 false) 
	#(401 1 #reduceFor: 33306666 false) 
	#(401 1 #reduceFor: 33306640 false) 
	#(401 1 #reduceFor: 33306641 false) 
	#(401 1 #reduceFor: 33306642 false) 
	#(401 1 #reduceFor: 33306643 false) 
	#(401 1 #reduceFor: 33306667 false) 
	#(401 1 #reduceFor: 33306668 false) 
	#(401 1 #reduceFor: 33306644 false) 
	#(401 1 #reduceFor: 33306645 false) 
	#(401 1 #reduceFor: 33306646 false) 
	#(401 1 #reduceFor: 33306647 false) 
	#(401 1 #reduceFor: 33306649 false) 
	#(401 1 #reduceFor: 33306650 false) 
	#(401 1 #reduceFor: 33306651 false) 
	#(401 1 #reduceFor: 33306652 false) 
	#(401 1 #reduceFor: 33306673 false) 
	#(401 1 #reduceFor: 33306653 false) 
	#(401 1 #reduceFor: 33306669 false) 
	#(401 1 #reduceFor: 33306674 false) 
	#(401 1 #reduceFor: 33306654 false) 
	#(401 1 #reduceFor: 33306670 false) 
	#(401 1 #reduceFor: 33306655 false) 
	#(401 1 #reduceFor: 33306671 false) 
	#(401 1 #reduceFor: 33306656 false) 
	#(401 1 #reduceFor: 33306657 false) 
	#(401 1 #reduceFor: 33306672 false) 
	#(404 1 #reduceFor: 34313223 false) 
	#(404 1 #reduceFor: 34313236 false) 
	#(404 1 #reduceFor: 34313225 false) 
	#(402 1 #reduceFor: 34096133 false) 
	#(404 1 #reduceFor: 34313243 false) 
	#(404 1 #reduceFor: 34313242 false) 
	#(404 1 #reduceFor: 34313222 false) 
	#(139 1 #reduceFor: 6301698 false) 
	#(136 2 #reduceFor: 5902338 false) 
	#(139 1 #reduceFor: 6301697 false) 
	#(140 1 #reduceFor: 6358020 false) 
	#(403 1 #reduceFor: 34206721 false) 
	#(402 1 #reduceFor: 34096130 false) 
	#(402 1 #reduceFor: 34096129 false) 
	#(140 1 #reduceFor: 6358017 false) 
	#(140 1 #reduceFor: 6358018 false) 
	#(140 1 #reduceFor: 6358019 false) 
	#(138 3 #reduceFor: 6161410 false) 
	#(138 3 #reduceFor: 6161411 false) 
	#(207 5 #reduceFor: 12254211 false) 
	#(207 5 #reduceFor: 12254209 false) 
	#(172 5 #reduceFor: 9783312 false) 
	#(228 2 #reduceFor: 14008322 false) 
	#(226 3 #reduceFor: 13969410 false) 
	#(229 1 #reduceFor: 14086145 false) 
	#(229 1 #reduceFor: 14086146 false) 
	#(180 2 #reduceFor: 10188802 false) 
	#(202 2 #reduceFor: 11757569 false) 
	#(198 5 #reduceFor: 11538434 false) 
	#(199 2 #reduceFor: 11689985 false) 
	#(198 5 #reduceFor: 11538437 false) 
	#(198 5 #reduceFor: 11538435 false) 
	#(165 2 #reduceFor: 9234434 false) 
	#(165 2 #reduceFor: 9234433 false) 
	#(163 5 #reduceFor: 9075714 false) 
	#(216 5 #reduceFor: 13234177 false) 
	#(217 2 #reduceFor: 13337602 false) 
	#(358 4 #reduceFor: 30711815 false) 
	#(358 4 #reduceFor: 30711814 false) 
	#(333 4 #reduceFor: 28887043 false) 
	#(242 1 #reduceFor: 15862826 false) 
	#(242 1 #reduceFor: 15862845 false) 
	#(242 1 #reduceFor: 15862841 false) 
	#(242 1 #reduceFor: 15862849 false) 
	#(242 1 #reduceFor: 15862859 false) 
	#(241 1 #reduceFor: 15736833 false) 
	#(241 1 #reduceFor: 15736834 false) 
	#(242 1 #reduceFor: 15862786 false) 
	#(242 1 #reduceFor: 15862787 false) 
	#(243 1 #reduceFor: 20829186 false) 
	#(243 1 #reduceFor: 20829187 false) 
	#(243 1 #reduceFor: 20829188 false) 
	#(242 1 #reduceFor: 15862856 false) 
	#(258 1 #reduceFor: 22259713 false) 
	#(258 1 #reduceFor: 22259714 false) 
	#(242 1 #reduceFor: 15862857 false) 
	#(267 1 #reduceFor: 22981633 false) 
	#(242 1 #reduceFor: 15862858 false) 
	#(243 1 #reduceFor: 20829189 false) 
	#(280 1 #reduceFor: 23955457 false) 
	#(280 1 #reduceFor: 23955459 false) 
	#(280 1 #reduceFor: 23955461 false) 
	#(280 1 #reduceFor: 23955463 false) 
	#(243 1 #reduceFor: 20829190 false) 
	#(243 1 #reduceFor: 20829191 false) 
	#(243 1 #reduceFor: 20829192 false) 
	#(245 1 #reduceFor: 21494785 false) 
	#(369 0 #reduceFor: 31250433 false) 
	#(370 1 #reduceFor: 31292417 false) 
	#(245 1 #reduceFor: 21494786 false) 
	#(223 1 #reduceFor: 13713409 false) 
	#(222 2 #reduceFor: 13608961 false) 
	#(222 2 #reduceFor: 13608962 false) 
	#(222 2 #reduceFor: 13608963 false) 
	#(224 1 #reduceFor: 13805569 false) 
	#(220 2 #reduceFor: 13536257 false) 
	#(219 4 #reduceFor: 13505538 false) 
	#(338 4 #reduceFor: 29227012 false) 
	#(340 4 #reduceFor: 29446145 false) 
	#(343 1 #reduceFor: 29791233 false) 
	#(346 0 #reduceFor: 29963265 false) 
	#(343 1 #reduceFor: 29791234 false) 
	#(355 2 #reduceFor: 30627841 false) 
	#(398 2 #reduceFor: 32883713 false) 
	#(397 3 #reduceFor: 32791555 false) 
	#(376 2 #reduceFor: 31975427 false) 
	#(394 2 #reduceFor: 32653313 false) 
	#(149 0 #reduceFor: 7086081 false) 
	#(146 0 #reduceFor: 6935553 false) 
	#(399 5 #reduceFor: 32970757 false) 
	#(208 5 #reduceFor: 12378113 false) 
	#(189 5 #reduceFor: 11002881 false) 
	#(197 2 #reduceFor: 11451393 false) 
	#(194 2 #reduceFor: 11361281 false) 
	#(188 5 #reduceFor: 10820610 false) 
	#(190 2 #reduceFor: 11184129 false) 
	#(188 5 #reduceFor: 10820615 false) 
	#(188 5 #reduceFor: 10820620 false) 
	#(188 5 #reduceFor: 10820612 false) 
	#(186 5 #reduceFor: 10609669 false) 
	#(186 5 #reduceFor: 10609666 false) 
	#(186 5 #reduceFor: 10609675 false) 
	#(206 5 #reduceFor: 12101633 false) 
	#(170 1 #reduceFor: 9454594 false) 
	#(169 2 #reduceFor: 9431042 false) 
	#(167 4 #reduceFor: 9363464 false) 
	#(176 1 #reduceFor: 10032129 false) 
	#(178 0 #reduceFor: 10125313 false) 
	#(137 5 #reduceFor: 5949441 false) 
	#(137 5 #reduceFor: 5949442 false) 
	#(135 5 #reduceFor: 5828609 false) 
	#(227 2 #reduceFor: 14008321 false) 
	#(231 2 #reduceFor: 14231553 false) 
	#(361 0 #reduceFor: 30850049 false) 
	#(202 3 #reduceFor: 11757573 false) 
	#(202 3 #reduceFor: 11757570 false) 
	#(202 3 #reduceFor: 11757571 false) 
	#(202 3 #reduceFor: 11757572 false) 
	#(199 3 #reduceFor: 11689986 false) 
	#(201 2 #reduceFor: 11714562 false) 
	#(198 6 #reduceFor: 11538438 false) 
	#(198 6 #reduceFor: 11538439 false) 
	#(198 6 #reduceFor: 11538436 false) 
	#(218 2 #reduceFor: 13374465 false) 
	#(218 2 #reduceFor: 13374467 false) 
	#(218 2 #reduceFor: 13374466 false) 
	#(216 6 #reduceFor: 13234178 false) 
	#(358 5 #reduceFor: 30711816 false) 
	#(242 2 #reduceFor: 15862803 false) 
	#(242 2 #reduceFor: 15862797 false) 
	#(242 2 #reduceFor: 15862799 false) 
	#(242 2 #reduceFor: 15862801 false) 
	#(242 2 #reduceFor: 15862802 false) 
	#(242 2 #reduceFor: 15862827 false) 
	#(242 2 #reduceFor: 15862828 false) 
	#(249 2 #reduceFor: 21809153 false) 
	#(242 2 #reduceFor: 15862860 false) 
	#(242 2 #reduceFor: 15862847 false) 
	#(242 2 #reduceFor: 15862846 false) 
	#(242 2 #reduceFor: 15862843 false) 
	#(242 2 #reduceFor: 15862842 false) 
	#(306 1 #reduceFor: 26745857 false) 
	#(305 1 #reduceFor: 26715137 false) 
	#(303 1 #reduceFor: 26322946 false) 
	#(303 1 #reduceFor: 26322945 false) 
	#(303 1 #reduceFor: 26322947 false) 
	#(309 1 #reduceFor: 26914817 false) 
	#(303 1 #reduceFor: 26322949 false) 
	#(303 1 #reduceFor: 26322951 false) 
	#(303 1 #reduceFor: 26322948 false) 
	#(309 1 #reduceFor: 26914818 false) 
	#(303 1 #reduceFor: 26322952 false) 
	#(303 1 #reduceFor: 26322953 false) 
	#(309 1 #reduceFor: 26914819 false) 
	#(303 1 #reduceFor: 26322955 false) 
	#(309 1 #reduceFor: 26914821 false) 
	#(302 1 #reduceFor: 26023949 false) 
	#(300 0 #reduceFor: 25932801 false) 
	#(301 1 #reduceFor: 25961473 false) 
	#(302 1 #reduceFor: 26023937 false) 
	#(302 1 #reduceFor: 26023938 false) 
	#(302 1 #reduceFor: 26023939 false) 
	#(302 1 #reduceFor: 26023940 false) 
	#(301 1 #reduceFor: 25961474 false) 
	#(302 1 #reduceFor: 26023941 false) 
	#(302 1 #reduceFor: 26023942 false) 
	#(302 1 #reduceFor: 26023943 false) 
	#(302 1 #reduceFor: 26023944 false) 
	#(302 1 #reduceFor: 26023945 false) 
	#(302 1 #reduceFor: 26023946 false) 
	#(302 1 #reduceFor: 26023947 false) 
	#(302 1 #reduceFor: 26023948 false) 
	#(328 1 #reduceFor: 28297217 false) 
	#(309 1 #reduceFor: 26914823 false) 
	#(328 1 #reduceFor: 28297218 false) 
	#(309 1 #reduceFor: 26914824 false) 
	#(304 1 #reduceFor: 26622977 false) 
	#(303 1 #reduceFor: 26322950 false) 
	#(281 2 #reduceFor: 24233985 false) 
	#(242 2 #reduceFor: 15862850 false) 
	#(250 2 #reduceFor: 21917697 false) 
	#(278 0 #reduceFor: 23818241 false) 
	#(275 2 #reduceFor: 23552001 false) 
	#(285 2 #reduceFor: 24750081 false) 
	#(242 2 #reduceFor: 15862785 false) 
	#(243 2 #reduceFor: 20829185 false) 
	#(242 2 #reduceFor: 15862824 false) 
	#(242 2 #reduceFor: 15862796 false) 
	#(336 5 #reduceFor: 29000705 false) 
	#(280 2 #reduceFor: 23955458 false) 
	#(280 2 #reduceFor: 23955460 false) 
	#(280 2 #reduceFor: 23955462 false) 
	#(280 2 #reduceFor: 23955464 false) 
	#(367 2 #reduceFor: 31193089 false) 
	#(388 1 #reduceFor: 32398337 false) 
	#(387 2 #reduceFor: 32348161 false) 
	#(223 2 #reduceFor: 13713411 false) 
	#(224 2 #reduceFor: 13805575 false) 
	#(224 2 #reduceFor: 13805571 false) 
	#(219 5 #reduceFor: 13505539 false) 
	#(389 5 #reduceFor: 32440322 false) 
	#(340 5 #reduceFor: 29446149 false) 
	#(214 6 #reduceFor: 12809217 false) 
	#(212 2 #reduceFor: 12702722 false) 
	#(340 5 #reduceFor: 29446146 false) 
	#(347 2 #reduceFor: 30013441 false) 
	#(340 5 #reduceFor: 29446147 false) 
	#(344 2 #reduceFor: 29912065 false) 
	#(397 4 #reduceFor: 32791554 false) 
	#(398 3 #reduceFor: 32883714 false) 
	#(382 2 #reduceFor: 32172034 false) 
	#(238 1 #reduceFor: 15377409 false) 
	#(246 3 #reduceFor: 21578753 false) 
	#(238 1 #reduceFor: 15377413 false) 
	#(238 1 #reduceFor: 15377410 false) 
	#(248 1 #reduceFor: 21701633 false) 
	#(238 1 #reduceFor: 15377411 false) 
	#(238 1 #reduceFor: 15377412 false) 
	#(247 1 #reduceFor: 21685251 false) 
	#(240 1 #reduceFor: 15616002 false) 
	#(247 1 #reduceFor: 21685249 false) 
	#(372 4 #reduceFor: 31455234 false) 
	#(374 2 #reduceFor: 31818754 false) 
	#(386 3 #reduceFor: 32289793 false) 
	#(144 2 #reduceFor: 6901761 false) 
	#(143 3 #reduceFor: 6729731 false) 
	#(161 6 #reduceFor: 8921090 false) 
	#(208 6 #reduceFor: 12378115 false) 
	#(189 6 #reduceFor: 11002882 false) 
	#(197 3 #reduceFor: 11451394 false) 
	#(189 6 #reduceFor: 11002883 false) 
	#(194 3 #reduceFor: 11361282 false) 
	#(196 2 #reduceFor: 11398146 false) 
	#(190 3 #reduceFor: 11184130 false) 
	#(192 2 #reduceFor: 11223042 false) 
	#(189 6 #reduceFor: 11002885 false) 
	#(188 6 #reduceFor: 10820616 false) 
	#(188 6 #reduceFor: 10820618 false) 
	#(188 6 #reduceFor: 10820613 false) 
	#(186 6 #reduceFor: 10609671 false) 
	#(186 6 #reduceFor: 10609677 false) 
	#(186 6 #reduceFor: 10609674 false) 
	#(186 6 #reduceFor: 10609668 false) 
	#(206 6 #reduceFor: 12101635 false) 
	#(206 6 #reduceFor: 12101634 false) 
	#(216 6 #reduceFor: 13234179 false) 
	#(168 2 #reduceFor: 9431041 false) 
	#(167 5 #reduceFor: 9363459 false) 
	#(171 6 #reduceFor: 9554946 false) 
	#(171 6 #reduceFor: 9554945 false) 
	#(176 2 #reduceFor: 10032130 false) 
	#(183 2 #reduceFor: 10401794 false) 
	#(181 1 #reduceFor: 10238977 false) 
	#(179 2 #reduceFor: 10173441 false) 
	#(179 2 #reduceFor: 10173442 false) 
	#(183 2 #reduceFor: 10401793 false) 
	#(183 2 #reduceFor: 10401795 false) 
	#(176 2 #reduceFor: 10032131 false) 
	#(207 7 #reduceFor: 12254212 false) 
	#(207 7 #reduceFor: 12254210 false) 
	#(231 3 #reduceFor: 14231555 false) 
	#(231 3 #reduceFor: 14231554 false) 
	#(230 3 #reduceFor: 14168065 false) 
	#(359 1 #reduceFor: 30829569 false) 
	#(202 4 #reduceFor: 11757574 false) 
	#(202 4 #reduceFor: 11757575 false) 
	#(202 4 #reduceFor: 11757576 false) 
	#(203 2 #reduceFor: 11901953 false) 
	#(205 2 #reduceFor: 12047361 false) 
	#(204 2 #reduceFor: 11973633 false) 
	#(200 2 #reduceFor: 11714561 false) 
	#(198 7 #reduceFor: 11538440 false) 
	#(218 3 #reduceFor: 13374469 false) 
	#(218 3 #reduceFor: 13374468 false) 
	#(242 3 #reduceFor: 15862798 false) 
	#(242 3 #reduceFor: 15862800 false) 
	#(242 3 #reduceFor: 15862854 false) 
	#(256 1 #reduceFor: 22166529 false) 
	#(254 1 #reduceFor: 22147073 false) 
	#(367 3 #reduceFor: 31193090 false) 
	#(242 3 #reduceFor: 15862852 false) 
	#(253 0 #reduceFor: 22048769 false) 
	#(249 3 #reduceFor: 21809154 false) 
	#(242 3 #reduceFor: 15862848 false) 
	#(242 3 #reduceFor: 15862844 false) 
	#(310 2 #reduceFor: 27088899 false) 
	#(322 2 #reduceFor: 27881473 false) 
	#(323 1 #reduceFor: 27958274 false) 
	#(303 2 #reduceFor: 26322954 false) 
	#(309 2 #reduceFor: 26914820 false) 
	#(303 2 #reduceFor: 26322956 false) 
	#(309 2 #reduceFor: 26914822 false) 
	#(326 2 #reduceFor: 28142593 false) 
	#(321 0 #reduceFor: 27839489 false) 
	#(304 2 #reduceFor: 26622979 false) 
	#(304 2 #reduceFor: 26622981 false) 
	#(310 2 #reduceFor: 27088897 false) 
	#(298 2 #reduceFor: 25897985 false) 
	#(296 0 #reduceFor: 25821185 false) 
	#(286 3 #reduceFor: 24821761 false) 
	#(275 3 #reduceFor: 23552007 false) 
	#(282 3 #reduceFor: 24311809 false) 
	#(275 3 #reduceFor: 23552003 false) 
	#(279 2 #reduceFor: 23877633 false) 
	#(276 2 #reduceFor: 23769089 false) 
	#(242 3 #reduceFor: 15862817 false) 
	#(242 3 #reduceFor: 15862807 false) 
	#(242 3 #reduceFor: 15862835 false) 
	#(242 3 #reduceFor: 15862822 false) 
	#(242 3 #reduceFor: 15862836 false) 
	#(242 3 #reduceFor: 15862805 false) 
	#(242 3 #reduceFor: 15862833 false) 
	#(242 3 #reduceFor: 15862808 false) 
	#(242 3 #reduceFor: 15862831 false) 
	#(242 3 #reduceFor: 15862809 false) 
	#(242 3 #reduceFor: 15862832 false) 
	#(242 3 #reduceFor: 15862792 false) 
	#(257 1 #reduceFor: 22210561 false) 
	#(242 3 #reduceFor: 15862791 false) 
	#(242 3 #reduceFor: 15862790 false) 
	#(242 3 #reduceFor: 15862825 false) 
	#(242 3 #reduceFor: 15862829 false) 
	#(242 3 #reduceFor: 15862806 false) 
	#(242 3 #reduceFor: 15862834 false) 
	#(242 3 #reduceFor: 15862810 false) 
	#(242 3 #reduceFor: 15862839 false) 
	#(242 3 #reduceFor: 15862821 false) 
	#(242 3 #reduceFor: 15862830 false) 
	#(242 3 #reduceFor: 15862816 false) 
	#(242 3 #reduceFor: 15862820 false) 
	#(242 3 #reduceFor: 15862811 false) 
	#(242 3 #reduceFor: 15862840 false) 
	#(242 3 #reduceFor: 15862812 false) 
	#(242 3 #reduceFor: 15862814 false) 
	#(242 3 #reduceFor: 15862838 false) 
	#(242 3 #reduceFor: 15862804 false) 
	#(242 3 #reduceFor: 15862837 false) 
	#(242 3 #reduceFor: 15862823 false) 
	#(242 3 #reduceFor: 15862815 false) 
	#(242 3 #reduceFor: 15862793 false) 
	#(242 3 #reduceFor: 15862819 false) 
	#(242 3 #reduceFor: 15862818 false) 
	#(242 3 #reduceFor: 15862813 false) 
	#(265 3 #reduceFor: 22801409 false) 
	#(268 3 #reduceFor: 23142401 false) 
	#(271 0 #reduceFor: 23270401 false) 
	#(272 1 #reduceFor: 23318529 false) 
	#(369 2 #reduceFor: 31250434 false) 
	#(370 3 #reduceFor: 31292418 false) 
	#(368 2 #reduceFor: 31250433 false) 
	#(388 2 #reduceFor: 32398338 false) 
	#(223 3 #reduceFor: 13713410 false) 
	#(224 3 #reduceFor: 13805577 false) 
	#(224 3 #reduceFor: 13805573 false) 
	#(224 3 #reduceFor: 13805570 false) 
	#(214 7 #reduceFor: 12809219 false) 
	#(340 6 #reduceFor: 29446150 false) 
	#(340 6 #reduceFor: 29446151 false) 
	#(233 2 #reduceFor: 14379009 false) 
	#(233 2 #reduceFor: 14379012 false) 
	#(233 2 #reduceFor: 14379010 false) 
	#(233 2 #reduceFor: 14379011 false) 
	#(214 7 #reduceFor: 12809218 false) 
	#(342 2 #reduceFor: 29731841 false) 
	#(340 6 #reduceFor: 29446148 false) 
	#(344 3 #reduceFor: 29912066 false) 
	#(346 2 #reduceFor: 29963266 false) 
	#(381 2 #reduceFor: 32172033 false) 
	#(397 5 #reduceFor: 32791556 false) 
	#(240 2 #reduceFor: 15616001 false) 
	#(240 2 #reduceFor: 15616003 false) 
	#(246 4 #reduceFor: 21578754 false) 
	#(248 2 #reduceFor: 21701634 false) 
	#(247 2 #reduceFor: 21685250 false) 
	#(372 5 #reduceFor: 31455235 false) 
	#(373 2 #reduceFor: 31818753 false) 
	#(148 3 #reduceFor: 7056385 false) 
	#(150 1 #reduceFor: 7222274 false) 
	#(149 2 #reduceFor: 7086082 false) 
	#(150 1 #reduceFor: 7222273 false) 
	#(152 1 #reduceFor: 7449604 false) 
	#(152 1 #reduceFor: 7449601 false) 
	#(152 1 #reduceFor: 7449602 false) 
	#(152 1 #reduceFor: 7449603 false) 
	#(148 3 #reduceFor: 7056386 false) 
	#(148 3 #reduceFor: 7056387 false) 
	#(143 4 #reduceFor: 6729729 false) 
	#(144 3 #reduceFor: 6901762 false) 
	#(146 2 #reduceFor: 6935554 false) 
	#(156 1 #reduceFor: 7794689 false) 
	#(147 3 #reduceFor: 6994945 false) 
	#(143 4 #reduceFor: 6729730 false) 
	#(208 7 #reduceFor: 12378114 false) 
	#(189 7 #reduceFor: 11002884 false) 
	#(195 2 #reduceFor: 11398145 false) 
	#(193 4 #reduceFor: 11277313 false) 
	#(191 2 #reduceFor: 11223041 false) 
	#(189 7 #reduceFor: 11002886 false) 
	#(189 7 #reduceFor: 11002887 false) 
	#(188 7 #reduceFor: 10820619 false) 
	#(209 7 #reduceFor: 12512257 false) 
	#(186 7 #reduceFor: 10609670 false) 
	#(186 7 #reduceFor: 10609679 false) 
	#(186 7 #reduceFor: 10609676 false) 
	#(206 7 #reduceFor: 12101636 false) 
	#(216 7 #reduceFor: 13234180 false) 
	#(161 7 #reduceFor: 8921092 false) 
	#(167 6 #reduceFor: 9363462 false) 
	#(185 2 #reduceFor: 10555393 false) 
	#(171 7 #reduceFor: 9554950 false) 
	#(171 7 #reduceFor: 9554949 false) 
	#(171 7 #reduceFor: 9554948 false) 
	#(171 7 #reduceFor: 9554947 false) 
	#(171 7 #reduceFor: 9554954 false) 
	#(171 7 #reduceFor: 9554953 false) 
	#(181 2 #reduceFor: 10238978 false) 
	#(181 2 #reduceFor: 10238979 false) 
	#(176 3 #reduceFor: 10032132 false) 
	#(178 2 #reduceFor: 10125314 false) 
	#(171 7 #reduceFor: 9554962 false) 
	#(171 7 #reduceFor: 9554961 false) 
	#(209 8 #reduceFor: 12512261 false) 
	#(231 4 #reduceFor: 14231556 false) 
	#(361 2 #reduceFor: 30850050 false) 
	#(359 2 #reduceFor: 30829570 false) 
	#(203 3 #reduceFor: 11901954 false) 
	#(204 3 #reduceFor: 11973634 false) 
	#(242 4 #reduceFor: 15862851 false) 
	#(255 2 #reduceFor: 22166529 false) 
	#(242 4 #reduceFor: 15862855 false) 
	#(254 2 #reduceFor: 22147074 false) 
	#(256 2 #reduceFor: 22166530 false) 
	#(251 2 #reduceFor: 22018049 false) 
	#(242 4 #reduceFor: 15862853 false) 
	#(310 3 #reduceFor: 27088900 false) 
	#(325 3 #reduceFor: 28075009 false) 
	#(323 2 #reduceFor: 27958273 false) 
	#(324 1 #reduceFor: 28033025 false) 
	#(323 2 #reduceFor: 27958275 false) 
	#(322 3 #reduceFor: 27881474 false) 
	#(327 2 #reduceFor: 28223489 false) 
	#(326 3 #reduceFor: 28142594 false) 
	#(304 3 #reduceFor: 26622983 false) 
	#(298 3 #reduceFor: 25897986 false) 
	#(310 3 #reduceFor: 27088898 false) 
	#(300 2 #reduceFor: 25932802 false) 
	#(308 3 #reduceFor: 26840065 false) 
	#(307 3 #reduceFor: 26773505 false) 
	#(318 3 #reduceFor: 27709441 false) 
	#(311 3 #reduceFor: 27176961 false) 
	#(312 1 #reduceFor: 27276289 false) 
	#(315 0 #reduceFor: 27441153 false) 
	#(312 1 #reduceFor: 27276292 false) 
	#(304 3 #reduceFor: 26622978 false) 
	#(294 2 #reduceFor: 25785345 false) 
	#(291 0 #reduceFor: 25492481 false) 
	#(275 4 #reduceFor: 23552009 false) 
	#(275 4 #reduceFor: 23552005 false) 
	#(276 3 #reduceFor: 23769090 false) 
	#(278 2 #reduceFor: 23818242 false) 
	#(275 4 #reduceFor: 23552002 false) 
	#(274 2 #reduceFor: 23456769 false) 
	#(242 4 #reduceFor: 15862794 false) 
	#(242 4 #reduceFor: 15862795 false) 
	#(259 4 #reduceFor: 22380545 false) 
	#(262 0 #reduceFor: 22548481 false) 
	#(268 4 #reduceFor: 23142402 false) 
	#(269 2 #reduceFor: 23235585 false) 
	#(225 4 #reduceFor: 13897729 false) 
	#(223 4 #reduceFor: 13713412 false) 
	#(224 4 #reduceFor: 13805579 false) 
	#(224 4 #reduceFor: 13805576 false) 
	#(224 4 #reduceFor: 13805572 false) 
	#(214 8 #reduceFor: 12809220 false) 
	#(340 7 #reduceFor: 29446152 false) 
	#(233 3 #reduceFor: 14379015 false) 
	#(233 3 #reduceFor: 14379013 false) 
	#(233 3 #reduceFor: 14379014 false) 
	#(347 4 #reduceFor: 30013443 false) 
	#(347 4 #reduceFor: 30013442 false) 
	#(345 2 #reduceFor: 29963265 false) 
	#(145 2 #reduceFor: 6935553 false) 
	#(208 8 #reduceFor: 12378116 false) 
	#(193 5 #reduceFor: 11277314 false) 
	#(189 8 #reduceFor: 11002888 false) 
	#(209 8 #reduceFor: 12512259 false) 
	#(186 8 #reduceFor: 10609672 false) 
	#(186 8 #reduceFor: 10609678 false) 
	#(209 8 #reduceFor: 12512265 false) 
	#(167 7 #reduceFor: 9363465 false) 
	#(171 8 #reduceFor: 9554952 false) 
	#(171 8 #reduceFor: 9554951 false) 
	#(171 8 #reduceFor: 9554958 false) 
	#(171 8 #reduceFor: 9554957 false) 
	#(171 8 #reduceFor: 9554956 false) 
	#(171 8 #reduceFor: 9554955 false) 
	#(176 4 #reduceFor: 10032133 false) 
	#(182 3 #reduceFor: 10327041 false) 
	#(181 3 #reduceFor: 10238980 false) 
	#(181 3 #reduceFor: 10238981 false) 
	#(184 3 #reduceFor: 10488834 false) 
	#(184 3 #reduceFor: 10488833 false) 
	#(177 2 #reduceFor: 10125313 false) 
	#(171 8 #reduceFor: 9554966 false) 
	#(171 8 #reduceFor: 9554965 false) 
	#(171 8 #reduceFor: 9554964 false) 
	#(171 8 #reduceFor: 9554963 false) 
	#(171 8 #reduceFor: 9554970 false) 
	#(171 8 #reduceFor: 9554969 false) 
	#(209 9 #reduceFor: 12512263 false) 
	#(360 2 #reduceFor: 30850049 false) 
	#(251 3 #reduceFor: 22018051 false) 
	#(251 3 #reduceFor: 22018050 false) 
	#(253 2 #reduceFor: 22048770 false) 
	#(320 2 #reduceFor: 27839489 false) 
	#(323 3 #reduceFor: 27958276 false) 
	#(324 2 #reduceFor: 28033026 false) 
	#(327 3 #reduceFor: 28223490 false) 
	#(321 2 #reduceFor: 27839490 false) 
	#(304 4 #reduceFor: 26622980 false) 
	#(304 4 #reduceFor: 26622982 false) 
	#(284 5 #reduceFor: 24621057 false) 
	#(299 2 #reduceFor: 25932801 false) 
	#(319 2 #reduceFor: 27808769 false) 
	#(318 4 #reduceFor: 27709442 false) 
	#(317 2 #reduceFor: 27655169 false) 
	#(316 2 #reduceFor: 27481091 false) 
	#(311 4 #reduceFor: 27176962 false) 
	#(312 2 #reduceFor: 27276290 false) 
	#(313 2 #reduceFor: 27396097 false) 
	#(294 3 #reduceFor: 25785346 false) 
	#(296 2 #reduceFor: 25821186 false) 
	#(286 5 #reduceFor: 24821762 false) 
	#(286 5 #reduceFor: 24821763 false) 
	#(286 5 #reduceFor: 24821764 false) 
	#(288 5 #reduceFor: 25351169 false) 
	#(275 5 #reduceFor: 23552011 false) 
	#(275 5 #reduceFor: 23552008 false) 
	#(275 5 #reduceFor: 23552004 false) 
	#(279 4 #reduceFor: 23877634 false) 
	#(277 2 #reduceFor: 23818241 false) 
	#(242 5 #reduceFor: 15862788 false) 
	#(274 3 #reduceFor: 23456770 false) 
	#(265 5 #reduceFor: 22801410 false) 
	#(264 2 #reduceFor: 22763521 false) 
	#(263 2 #reduceFor: 22663169 false) 
	#(259 5 #reduceFor: 22380546 false) 
	#(260 2 #reduceFor: 22509570 false) 
	#(259 5 #reduceFor: 22380547 false) 
	#(272 3 #reduceFor: 23318531 false) 
	#(269 3 #reduceFor: 23235586 false) 
	#(271 2 #reduceFor: 23270402 false) 
	#(272 3 #reduceFor: 23318530 false) 
	#(224 5 #reduceFor: 13805578 false) 
	#(224 5 #reduceFor: 13805574 false) 
	#(348 5 #reduceFor: 30095361 false) 
	#(239 4 #reduceFor: 15495169 false) 
	#(215 9 #reduceFor: 12967937 false) 
	#(151 1 #reduceFor: 7382017 false) 
	#(209 9 #reduceFor: 12512258 false) 
	#(186 9 #reduceFor: 10609680 false) 
	#(209 9 #reduceFor: 12512269 false) 
	#(209 9 #reduceFor: 12512267 false) 
	#(171 9 #reduceFor: 9554960 false) 
	#(171 9 #reduceFor: 9554959 false) 
	#(176 5 #reduceFor: 10032134 false) 
	#(182 4 #reduceFor: 10327042 false) 
	#(181 4 #reduceFor: 10238982 false) 
	#(171 9 #reduceFor: 9554968 false) 
	#(171 9 #reduceFor: 9554967 false) 
	#(171 9 #reduceFor: 9554974 false) 
	#(171 9 #reduceFor: 9554973 false) 
	#(171 9 #reduceFor: 9554972 false) 
	#(171 9 #reduceFor: 9554971 false) 
	#(209 10 #reduceFor: 12512262 false) 
	#(215 10 #reduceFor: 12967938 false) 
	#(252 2 #reduceFor: 22048769 false) 
	#(304 5 #reduceFor: 26622984 false) 
	#(319 3 #reduceFor: 27808770 false) 
	#(316 3 #reduceFor: 27481092 false) 
	#(316 3 #reduceFor: 27481093 false) 
	#(312 3 #reduceFor: 27276291 false) 
	#(315 2 #reduceFor: 27441154 false) 
	#(287 6 #reduceFor: 25046017 false) 
	#(295 2 #reduceFor: 25821185 false) 
	#(288 6 #reduceFor: 25351170 false) 
	#(291 2 #reduceFor: 25492482 false) 
	#(275 6 #reduceFor: 23552010 false) 
	#(283 6 #reduceFor: 24444929 false) 
	#(275 6 #reduceFor: 23552006 false) 
	#(242 6 #reduceFor: 15862789 false) 
	#(265 6 #reduceFor: 22801411 false) 
	#(260 3 #reduceFor: 22509571 false) 
	#(262 2 #reduceFor: 22548482 false) 
	#(270 2 #reduceFor: 23270401 false) 
	#(215 10 #reduceFor: 12967939 false) 
	#(224 6 #reduceFor: 13805580 false) 
	#(215 10 #reduceFor: 12967941 false) 
	#(151 2 #reduceFor: 7382018 false) 
	#(150 4 #reduceFor: 7222276 false) 
	#(153 1 #reduceFor: 7569409 false) 
	#(150 4 #reduceFor: 7222275 false) 
	#(209 10 #reduceFor: 12512260 false) 
	#(209 10 #reduceFor: 12512271 false) 
	#(215 10 #reduceFor: 12967945 false) 
	#(209 10 #reduceFor: 12512266 false) 
	#(171 10 #reduceFor: 9554976 false) 
	#(171 10 #reduceFor: 9554975 false) 
	#(209 11 #reduceFor: 12512264 false) 
	#(316 4 #reduceFor: 27481094 false) 
	#(316 4 #reduceFor: 27481089 false) 
	#(316 4 #reduceFor: 27481090 false) 
	#(314 2 #reduceFor: 27441153 false) 
	#(293 2 #reduceFor: 25716737 false) 
	#(275 7 #reduceFor: 23552012 false) 
	#(263 4 #reduceFor: 22663171 false) 
	#(263 4 #reduceFor: 22663170 false) 
	#(261 2 #reduceFor: 22548481 false) 
	#(260 4 #reduceFor: 22509569 false) 
	#(215 11 #reduceFor: 12967940 false) 
	#(215 11 #reduceFor: 12967942 false) 
	#(215 11 #reduceFor: 12967943 false) 
	#(239 6 #reduceFor: 15495171 false) 
	#(239 6 #reduceFor: 15495170 false) 
	#(154 1 #reduceFor: 7642116 false) 
	#(150 5 #reduceFor: 7222277 false) 
	#(154 1 #reduceFor: 7642113 false) 
	#(154 1 #reduceFor: 7642114 false) 
	#(154 1 #reduceFor: 7642115 false) 
	#(209 11 #reduceFor: 12512270 false) 
	#(215 11 #reduceFor: 12967946 false) 
	#(215 11 #reduceFor: 12967947 false) 
	#(215 11 #reduceFor: 12967949 false) 
	#(209 11 #reduceFor: 12512268 false) 
	#(287 8 #reduceFor: 25046018 false) 
	#(287 8 #reduceFor: 25046019 false) 
	#(287 8 #reduceFor: 25046020 false) 
	#(293 3 #reduceFor: 25716738 false) 
	#(289 4 #reduceFor: 25477121 false) 
	#(292 1 #reduceFor: 25612290 false) 
	#(289 4 #reduceFor: 25477123 false) 
	#(290 3 #reduceFor: 25492481 false) 
	#(215 12 #reduceFor: 12967944 false) 
	#(150 6 #reduceFor: 7222278 false) 
	#(209 12 #reduceFor: 12512272 false) 
	#(215 12 #reduceFor: 12967948 false) 
	#(215 12 #reduceFor: 12967950 false) 
	#(215 12 #reduceFor: 12967951 false) 
	#(297 2 #reduceFor: 25841665 false) 
	#(292 2 #reduceFor: 25612289 false) 
	#(289 5 #reduceFor: 25477122 false) 
	#(292 2 #reduceFor: 25612291 false) 
	#(289 5 #reduceFor: 25477124 false) 
	#(239 8 #reduceFor: 15495172 false) 
	#(215 13 #reduceFor: 12967952 false)
	).
]

{ #category : #generated }
RustParser class >> scannerClass [
	^RustScanner
]

{ #category : #generated }
RustParser class >> startingStateForcrate [
	^ 1
]

{ #category : #generated }
RustParser class >> symbolNames [
	^ #('"!"' '"!="' '"#"' '"$"' '"$crate"' '"%"' '"%="' '"&"' '"&&"' '"&="' '"''_"' '"''static"' '"("' '")"' '"*"' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '".."' '"..."' '"..="' '"/"' '"/="' '":"' '"::"' '";"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>"' '">>="' '">>>"' '"?"' '"@"' '"Self"' '"["' '"]"' '"^"' '"^="' '"_"' '"abstract"' '"as"' '"async"' '"auto"' '"await"' '"become"' '"box"' '"break"' '"const"' '"continue"' '"crate"' '"default"' '"do"' '"dyn"' '"else"' '"enum"' '"extern"' '"false"' '"final"' '"fn"' '"for"' '"if"' '"impl"' '"in"' '"let"' '"loop"' '"macro"' '"macro_rules"' '"match"' '"mod"' '"move"' '"mut"' '"override"' '"priv"' '"pub"' '"ref"' '"return"' '"self"' '"static"' '"struct"' '"super"' '"trait"' '"true"' '"try"' '"type"' '"typeof"' '"union"' '"unsafe"' '"unsized"' '"use"' '"virtual"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"}"' '<bar>' '<lparen>' '<lbracket>' '<NON_KEYWORD_IDENTIFIER>' '<RAW_IDENTIFIER>' '<comment>' '<SHEBANG>' '<whitespace>' '<CHAR_LITERAL>' '<STRING_LITERAL>' '<rawStringStart>' '<simpleRawString>' '<BYTE_LITERAL>' '<BYTE_STRING_LITERAL>' '<INTEGER_LITERAL>' '<potentialFloat>' '<FLOAT_LITERAL>' '<LIFETIME_OR_LABEL>' '<lt>' '<gt>' '<amp>' 'B e g i n' 'crate' 'innerAttribute ''attribute''*' 'item*' 'macroInvocation' 'macroInvocationWithBlock' 'tokenTree*' 'macroInvocationWithoutBlock' 'delimTokenTree' 'tokenTree' 'tokenTreeToken' 'macroInvocationSemi' 'macroRulesDefinition' 'macroRulesDef' 'macroRules' '(";" ''semicolon'' macroRule ''rule'')' '(";" ''semicolon'' macroRule ''rule'')*' 'macroRule' 'macroMatcher' 'macroMatch ''match''*' 'macroMatch' 'macroMatch ''match''+' 'macroMatchToken' 'macroFragSpec' 'macroRepSep' 'macroRepOp' 'macroTranscriber' 'item' 'outerAttribute ''attribute''*' 'visItem' 'macroItem' 'module' 'innerAttribute*' 'externCrate' 'crateRef' 'asClause' 'useDeclaration' 'useTree' '("," ''comma'' useTree)' '("," ''comma'' useTree)*' '"," ''comma''?' 'function' 'functionQualifiers' '("extern" ''externToken'' abi?)' '("extern" ''externToken'' abi?)?' 'abi' 'functionParameters' '("," ''comma'' functionParam)' '("," ''comma'' functionParam)*' 'selfParam' 'outerAttribute*' 'shorthandSelf' 'typedSelf' 'functionParam' 'functionParamPattern' 'functionReturnType' 'typeAlias' 'struct' 'structStruct' 'tupleStruct' 'structFields' '("," ''comma'' structField ''field'')' '("," ''comma'' structField ''field'')*' 'structField' 'tupleFields' '("," ''comma'' tupleField ''field'')' '("," ''comma'' tupleField ''field'')*' 'tupleField' 'enumeration' 'enumItems' '("," ''comma'' enumItem)' '("," ''comma'' enumItem)*' 'enumItem' 'enumItemTuple' 'enumItemStruct' 'enumItemDiscriminant' 'union' 'constantItem' 'staticItem' 'trait' 'typeParamBounds?' 'whereClause ''where''?' 'associatedItem*' 'implementation' 'inherentImpl' 'traitImpl' 'externBlock' 'externalItem*' 'externalItem' 'genericParams' '(genericParam "," ''comma'')' '(genericParam "," ''comma'')*' 'genericParam' 'lifetimeParam' 'typeParam' 'constParam' 'whereClause' '(whereClauseItem ''clause'' "," ''comma'')' '(whereClauseItem ''clause'' "," ''comma'')*' 'whereClauseItem' 'lifetimeWhereClauseItem' 'typeBoundWhereClauseItem' 'forLifetimes' 'associatedItem' 'innerAttribute' 'outerAttribute' 'attr' 'attrInput' 'statement' 'letStatement' 'expressionStatement' 'expression' 'expressionWithoutBlock' 'expressionWithBlock' 'literalExpression' 'pathExpression' 'blockExpression' 'statements' 'statement ''statement''+' 'asyncBlockExpression' 'unsafeBlockExpression' 'arrayElements' '("," ''comma'' expression)' '("," ''comma'' expression)*' 'tupleElements' '(expression "," ''comma'')' '(expression "," ''comma'')+' 'tupleIndex' 'structExpression' 'structExprStruct' 'structExprFields' '("," ''comma'' structExprField)' '("," ''comma'' structExprField)*' 'structExprField' 'structBase' 'structExprTuple' 'structExprUnit' 'enumerationVariantExpression' 'enumExprStruct' 'enumExprFields' '("," ''comma'' enumExprField)' '("," ''comma'' enumExprField)*' 'enumExprField' 'enumExprFieldless' 'callParams' 'closureExpression' 'closureParameters' '("," ''comma'' closureParam ''parameter'')' '("," ''comma'' closureParam ''parameter'')*' 'closureParam' 'loopExpression' 'infiniteLoopExpression' 'predicateLoopExpression' 'predicatePatternLoopExpression' 'iteratorLoopExpression' 'loopLabel' 'ifExpression' 'ifLetExpression' 'matchExpression' 'matchArms' '(matchArm "=>" matchArmExpression)' '(matchArm "=>" matchArmExpression)*' 'matchArmExpression' 'matchArm' 'matchArmPatterns' '("|" pattern)' '("|" pattern)*' 'matchArmGuard' 'pattern' '("|" patternNoTopAlt)' '("|" patternNoTopAlt)*' 'patternNoTopAlt' 'patternWithoutRange' 'literalPattern' 'identifierPattern' 'wildcardPattern' 'restPattern' 'rangePattern' 'obsoleteRangePattern' 'rangePatternBound' 'referencePattern' 'structPattern' 'structPatternElements' 'structPatternFields' '("," ''comma'' structPatternField)' '("," ''comma'' structPatternField)*' 'structPatternField' 'structPatternEtCetera' 'tupleStructPattern' 'tupleStructItems' '("," ''comma'' pattern)' '("," ''comma'' pattern)*' 'tuplePattern' 'tuplePatternItems' '("," ''comma'' pattern)+' 'groupedPattern' 'slicePattern' 'slicePatternItems' 'pathPattern' 'type' 'typeNoBounds' 'parenthesizedType' 'neverType' 'tupleType' '(type ''type'' "," ''comma'')' '(type ''type'' "," ''comma'')+' 'arrayType' 'sliceType' 'referenceType' 'rawPointerType' 'bareFunctionType' 'functionTypeQualifiers' 'bareFunctionReturnType' 'functionParametersMaybeNamedVariadic' 'maybeNamedFunctionParameters' '("," ''comma'' maybeNamedParam)' '("," ''comma'' maybeNamedParam)*' 'maybeNamedParam' 'maybeNamedFunctionParametersVariadic' 'traitObjectType' 'traitObjectTypeOneBound' 'implTraitType' 'implTraitTypeOneBound' 'inferredType' 'typeParamBounds' '("+" typeParamBound)' '("+" typeParamBound)*' 'typeParamBound' 'traitBound' 'lifetimeBounds' '(lifetime "+")' '(lifetime "+")*' 'lifetime' 'simplePath' '("::" ''separator'' simplePathSegment)' '("::" ''separator'' simplePathSegment)*' 'simplePathSegment' 'pathInExpression' '("::" ''separator'' pathExprSegment)' '("::" ''separator'' pathExprSegment)*' 'pathExprSegment' 'pathIdentSegment' 'genericArgs' '("," ''comma'' genericArg ''arg'')' '("," ''comma'' genericArg ''arg'')*' 'genericArg' 'genericArgsConst' 'genericArgsLifetimes' '("," ''comma'' lifetime)' '("," ''comma'' lifetime)*' 'genericArgsTypes' '("," ''comma'' type ''type'')' '("," ''comma'' type ''type'')*' 'genericArgsBindings' '("," ''comma'' genericArgsBinding)' '("," ''comma'' genericArgsBinding)*' 'genericArgsBinding' 'qualifiedPathInExpression' '("::" ''separator'' pathExprSegment)+' 'qualifiedPathType' 'qualifiedPathInType' '("::" typePathSegment)' '("::" typePathSegment)+' 'typePath' '("::" ''separator'' typePathSegment)' '("::" ''separator'' typePathSegment)*' 'typePathSegment' 'typePathFn' 'typePathInputs' 'visibility' 'identifier' 'keyword' 'macroIdentifierLikeToken' 'macroLiteralToken' 'macroPunctuationToken' '<rawString>' 'E O F' 'error')
]

{ #category : #generated }
RustParser class >> transitionTable [
^#(
#[1 0 6 0 3 0 6 0 5 0 6 0 30 0 6 0 52 0 6 0 53 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 72 0 6 0 77 0 6 0 79 0 6 0 84 0 6 0 87 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 91 0 6 0 94 0 6 0 96 0 6 0 97 0 6 0 99 0 6 0 112 0 6 0 113 0 9 0 115 0 13 0 131 0 17 0 132 0 6 1 150] 
#[1 0 6 0 3 0 6 0 5 0 6 0 30 0 6 0 52 0 6 0 53 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 72 0 6 0 77 0 6 0 79 0 6 0 84 0 6 0 87 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 91 0 6 0 94 0 6 0 96 0 6 0 97 0 6 0 99 0 6 0 112 0 6 0 113 0 21 0 132 0 6 1 150] 
#[0 0 0 1 150] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 112 0 10 0 113 0 29 0 133 0 33 0 234 0 10 1 150] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 112 0 10 0 113 0 37 0 133 0 33 0 234 0 10 1 150] 
#[0 0 41 0 1] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158 0 18 1 150] 
#[0 0 22 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 65 0 66 0 69 0 72 0 77 0 79 0 84 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 1 150] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158 0 26 1 150] 
#[0 0 53 0 45] 
#[0 0 30 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 65 0 66 0 69 0 72 0 77 0 79 0 84 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 108 0 112 0 113 1 150] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 0 73 0 53 0 77 0 58 0 81 0 60 0 85 0 61 0 89 0 65 0 93 0 66 0 34 0 69 0 97 0 72 0 101 0 77 0 105 0 79 0 109 0 84 0 113 0 87 0 117 0 88 0 121 0 89 0 125 0 90 0 129 0 91 0 133 0 94 0 137 0 96 0 141 0 97 0 145 0 99 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 0 165 0 141 0 169 0 142 0 173 0 159 0 177 0 160 0 181 0 161 0 185 0 163 0 189 0 166 0 193 0 171 0 197 0 172 0 201 0 173 0 205 0 174 0 209 0 186 0 213 0 187 0 217 0 188 0 221 0 189 0 225 0 198 0 229 0 206 0 233 0 207 0 237 0 208 0 241 0 209 0 245 0 213 0 249 0 214 0 253 0 215 1 1 0 216 1 5 0 235 1 9 1 107 1 13 1 110 1 17 1 143 1 21 1 144] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 37 0 236 1 41 1 107 1 13 1 110 1 21 1 144] 
#[0 1 45 0 45] 
#[0 0 38 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 49 1 110 1 21 1 144] 
#[1 1 53 0 66 0 34 0 69 1 57 0 97 0 201 0 173 1 61 0 174] 
#[1 0 42 0 1 0 42 0 30 1 65 0 91] 
#[1 1 69 0 49 1 73 0 52 1 25 0 53 1 53 0 66 0 34 0 69 1 33 0 77 1 77 0 97 0 149 0 112 0 153 0 113 0 201 0 173 1 81 0 174 1 85 1 144] 
#[1 0 11 0 1 0 50 0 5 0 50 0 11 0 50 0 12 0 11 0 13 0 46 0 14 0 50 0 15 0 46 0 17 0 46 0 19 0 11 0 30 0 50 0 42 0 50 0 44 0 50 0 45 0 50 0 49 0 50 0 52 0 50 0 53 0 50 0 58 0 50 0 60 0 50 0 61 0 50 0 63 0 50 0 65 0 50 0 66 0 50 0 69 0 50 0 70 0 50 0 72 0 50 0 77 0 50 0 79 0 50 0 87 0 50 0 88 0 50 0 89 0 50 0 90 0 50 0 91 0 50 0 94 0 50 0 96 0 50 0 97 0 50 0 99 0 50 0 112 0 50 0 113 0 50 0 126 0 11 0 127 0 50 0 129] 
#[1 1 89 0 52 1 93 0 58 1 53 0 66 0 34 0 69 1 97 0 97 0 201 0 173 1 101 0 174] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 1 105 1 144] 
#[1 1 109 0 60 0 54 0 69 1 113 0 104 1 117 0 118 1 121 0 120 1 125 0 175 1 129 1 149] 
#[1 1 133 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 173 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 1 201 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 221 0 219 1 225 0 232 1 229 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 2 69 1 137 2 73 1 140 1 21 1 144] 
#[1 0 15 0 1 0 62 0 30] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 81 1 144] 
#[1 0 66 0 1 0 66 0 5 0 66 0 11 0 66 0 12 0 19 0 13 0 66 0 15 0 66 0 30 0 66 0 42 0 66 0 44 0 66 0 45 0 66 0 49 0 66 0 52 0 66 0 53 0 66 0 58 0 66 0 60 0 66 0 61 0 66 0 63 0 66 0 65 0 66 0 66 0 66 0 69 0 66 0 70 0 66 0 72 0 66 0 77 0 66 0 79 0 66 0 87 0 66 0 88 0 66 0 89 0 66 0 90 0 66 0 91 0 66 0 94 0 66 0 96 0 66 0 97 0 66 0 99 0 66 0 112 0 66 0 113 0 66 0 126 0 66 0 127 0 66 0 129] 
#[0 0 70 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 25 0 53 1 33 0 77 2 89 0 81 0 149 0 112 0 153 0 113 2 93 1 144] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 97 1 144] 
#[0 0 74 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 101 1 144] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 105 1 144] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 109 1 144] 
#[1 2 113 0 53 2 117 0 66 0 34 0 69 2 121 0 72 2 125 0 79 2 129 0 91 0 201 0 173 2 133 0 174] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 0 149 0 112 0 153 0 113 2 149 0 167 2 153 1 107 1 13 1 110 1 21 1 144] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 0 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 2 157 0 31] 
#[0 0 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 2 161 0 69] 
#[0 0 122 0 69] 
#[0 0 126 0 69] 
#[0 0 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 0 182 0 1 0 3 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 84 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 2 165 0 1] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 104 0 186 0 108 2 169 1 109] 
#[1 0 69 0 52 2 173 0 53 0 77 0 58 0 85 0 61 0 89 0 65 0 93 0 66 0 34 0 69 0 97 0 72 0 105 0 79 0 117 0 88 0 121 0 89 0 129 0 91 0 133 0 94 0 137 0 96 0 141 0 97 0 145 0 99 2 177 0 161 2 181 0 163 2 185 0 166 2 189 0 171 0 197 0 172 0 201 0 173 0 205 0 174 2 193 0 186 2 197 0 187 0 217 0 188 0 221 0 189 2 201 0 198 2 205 0 206 2 209 0 207 2 213 0 208 2 217 0 209 2 221 0 213 0 249 0 214 0 253 0 215 2 225 0 216] 
#[0 0 190 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 0 46 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 229 0 46] 
#[1 2 233 0 13 2 237 0 35 2 241 0 45 0 194 0 46 2 245 0 104 2 249 0 138 2 253 0 237] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 1 0 236 1 41 1 107 1 13 1 110 1 21 1 144] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 104 0 186 0 108 3 5 1 109] 
#[1 0 54 0 69 1 117 0 118 1 121 0 120 3 9 0 175 1 129 1 149] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 3 13 0 174] 
#[0 0 198 0 69] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 3 17 1 144] 
#[0 3 21 0 29] 
#[1 1 53 0 66 0 34 0 69 3 25 0 97 0 201 0 173 3 29 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 3 33 0 174] 
#[0 0 202 0 69] 
#[0 3 37 0 29] 
#[1 1 53 0 66 0 34 0 69 3 41 0 97 0 201 0 173 3 45 0 174] 
#[1 3 49 0 52 1 53 0 66 0 34 0 69 3 53 0 97 0 201 0 173 3 57 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 3 61 0 174] 
#[0 0 206 0 69] 
#[1 3 65 0 101 3 69 0 104 3 73 0 127 3 77 0 219 3 81 0 226] 
#[1 1 25 0 53 1 33 0 77 3 85 0 87 0 149 0 112 0 153 0 113 3 89 0 164 3 93 1 144] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 3 97 0 162] 
#[0 0 214 0 69 0 104] 
#[0 0 218 0 69 0 104] 
#[1 0 222 0 69 3 101 0 104] 
#[0 0 226 0 69 0 104] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 230 0 101 0 230 0 104 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 3 113 1 137 2 73 1 140 1 21 1 144] 
#[0 0 234 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[0 0 238 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 3 121 0 14 1 149 0 15 1 153 0 30 3 125 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 3 133 0 232 3 137 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 3 141 1 78 3 145 1 79 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 149 1 137 2 73 1 140 1 21 1 144] 
#[1 3 153 0 58 3 157 0 81] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 110 2 57 1 115 3 165 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 169 0 232 3 109 1 110 2 57 1 115 3 173 1 137 2 73 1 140 1 21 1 144] 
#[0 0 242 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 3 177 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 0 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 185 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 3 189 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 232 3 201 1 98 2 41 1 101 3 205 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[1 0 250 0 69 1 117 0 118 1 121 0 120 3 213 0 175 1 129 1 149] 
#[1 3 73 0 127 3 217 0 219] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 232 3 221 1 98 2 41 1 101 3 225 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[1 3 229 0 66 0 254 0 69] 
#[0 1 2 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[1 3 117 0 1 1 6 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 0 23 0 53 1 6 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 0 27 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 31 0 112 0 35 0 113 0 39 0 126 3 129 0 127 3 233 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 3 237 0 221 1 225 0 232 3 241 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 3 253 0 81 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 4 1 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 4 9 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 1 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 4 13 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 4 17 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 4 21 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 4 25 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 181 0 66 0 58 0 69 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 4 29 1 85 3 109 1 110 2 57 1 115 4 33 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 4 37 0 104 4 41 0 226] 
#[0 1 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 30 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 46 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 4 45 0 69] 
#[0 1 58 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 66 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 82 0 2 1 82 0 6 1 82 0 7 1 82 0 9 1 82 0 10 1 82 0 14 1 82 0 15 1 82 0 16 1 82 0 17 1 82 0 18 1 82 0 19 1 82 0 20 1 82 0 21 1 82 0 23 1 82 0 24 1 82 0 26 1 82 0 27 1 82 0 28 1 82 0 29 1 82 0 30 1 82 0 31 1 82 0 32 1 82 0 33 1 82 0 34 1 82 0 35 1 82 0 36 1 82 0 37 1 82 0 38 1 82 0 39 1 82 0 40 1 82 0 41 1 82 0 42 1 82 0 46 1 82 0 47 1 82 0 48 1 82 0 51 1 82 0 70 1 82 0 101 1 82 0 104 1 82 0 105 1 82 0 106 1 82 0 107 1 82 0 108 1 82 0 109 1 82 0 110 1 82 0 111 1 82 0 127 1 82 0 128 1 82 0 129 4 49 1 100] 
#[0 0 43 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 186 0 1 1 98 0 2 1 98 0 6 1 98 0 7 1 98 0 9 1 98 0 10 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 29 0 47 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 40 1 98 0 41 1 98 0 42 1 98 0 46 1 98 0 47 1 98 0 48 1 98 0 51 1 98 0 70 1 98 0 71 1 98 0 73 1 98 0 101 1 98 0 104 1 98 0 105 1 98 0 106 1 98 0 107 1 98 0 108 1 98 0 109 1 98 0 110 1 98 0 111 1 98 0 127 1 98 0 128 1 98 0 129 2 169 1 109] 
#[1 1 102 0 2 1 102 0 6 1 102 0 7 1 102 0 9 1 102 0 10 4 53 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 23 1 102 0 24 1 102 0 26 1 102 0 27 1 102 0 28 1 102 0 29 0 51 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 42 1 102 0 46 1 102 0 47 1 102 0 48 1 102 0 51 1 102 0 70 1 102 0 101 1 102 0 104 1 102 0 105 1 102 0 106 1 102 0 107 1 102 0 108 1 102 0 109 1 102 0 110 1 102 0 111 4 61 0 127 1 102 0 128 1 102 0 129 4 65 1 116 4 69 1 141] 
#[1 4 73 0 30 4 77 1 135 4 81 1 136] 
#[0 1 106 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 110 0 17 4 85 0 70 0 55 0 101 0 55 0 104] 
#[1 1 118 0 2 1 118 0 6 1 118 0 7 1 118 0 9 1 118 0 10 1 118 0 14 1 118 0 15 1 118 0 16 1 118 0 17 1 118 0 18 1 118 0 19 1 118 0 20 1 118 0 21 1 118 0 23 1 118 0 24 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 34 1 118 0 35 1 118 0 36 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 42 1 118 0 46 1 118 0 47 1 118 0 48 1 118 0 51 1 118 0 70 1 118 0 101 1 118 0 104 1 118 0 105 1 118 0 106 1 118 0 107 1 118 0 108 1 118 0 109 1 118 0 110 1 118 0 111 1 118 0 127 1 118 0 128 1 118 0 129 4 89 1 139] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 93 1 144] 
#[1 4 97 0 31 4 101 0 104] 
#[1 4 105 0 60 4 109 0 73 4 113 0 87 4 117 0 90] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 121 1 144] 
#[0 4 125 0 29] 
#[1 4 129 0 13 4 133 0 31 3 65 0 101 4 137 0 104 3 73 0 127 4 141 0 219 4 145 0 226] 
#[1 4 149 0 29 3 65 0 101 1 122 0 104 3 73 0 127 4 153 0 211 4 157 0 219 4 161 0 226] 
#[1 4 165 0 29 4 169 0 31 4 173 0 35 3 65 0 101 3 73 0 127 4 177 0 219 4 181 0 226] 
#[1 3 65 0 101 4 185 0 104 3 73 0 127 4 189 0 219 4 193 0 226] 
#[0 4 197 0 91] 
#[1 0 54 0 69 4 201 0 104 1 117 0 118 1 121 0 120 4 205 0 175 1 129 1 149] 
#[1 4 209 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 4 213 0 58 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 73 0 127 4 217 0 219 3 109 1 110 2 57 1 115 4 221 1 137 2 73 1 140 1 21 1 144] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 225 1 144] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 229 1 144] 
#[0 1 126 0 69] 
#[0 1 130 0 19 0 31 0 108] 
#[1 0 61 0 5 4 233 0 15 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 4 237 0 104 0 149 0 112 0 153 0 113 1 49 1 110 1 21 1 144] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 4 241 0 108 0 149 0 112 0 153 0 113 4 245 0 167 2 153 1 107 1 13 1 110 1 21 1 144] 
#[0 4 249 0 31] 
#[1 1 134 0 19 4 253 0 30 1 134 0 31 5 1 0 51 1 134 0 108] 
#[0 1 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 5 5 1 144] 
#[1 5 9 0 13 5 13 0 45 5 17 0 104] 
#[1 1 142 0 1 1 142 0 13 1 142 0 14 1 142 0 19 0 59 0 30 1 142 0 31 1 142 0 35 1 142 0 45 1 142 0 46 1 142 0 51 1 142 0 104 1 142 0 108 5 25 1 108] 
#[0 1 65 0 91] 
#[0 1 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 198 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 46 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 149 1 150] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 29 0 136 1 202 1 149] 
#[1 5 33 0 67 5 37 0 92 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 5 69 0 244 5 73 1 149] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 77 0 136 1 202 1 149] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 108 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 81 0 136 1 202 1 149] 
#[0 1 206 0 46] 
#[0 1 210 0 46] 
#[0 5 85 0 46] 
#[1 1 214 0 1 1 214 0 13 1 214 0 14 1 214 0 19 0 63 0 30 1 214 0 31 1 214 0 35 1 214 0 45 1 214 0 46 1 214 0 51 1 214 0 104 1 214 0 108 5 25 1 108] 
#[0 0 222 0 69] 
#[0 1 218 0 69] 
#[1 5 89 0 29 3 65 0 101 1 122 0 104 3 73 0 127 5 93 0 211 5 97 0 219 4 161 0 226] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 5 101 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 5 105 0 174] 
#[0 1 222 0 69] 
#[0 1 226 0 69] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 5 109 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 5 113 0 174] 
#[0 1 230 0 69] 
#[1 1 53 0 66 0 34 0 69 5 117 0 97 0 201 0 173 5 121 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 5 125 0 174] 
#[0 1 234 0 69] 
#[0 1 238 0 69] 
#[1 1 242 0 1 1 242 0 5 1 242 0 11 1 242 0 12 1 242 0 13 1 242 0 15 1 242 0 30 1 242 0 31 1 242 0 35 1 242 0 42 1 242 0 44 1 242 0 45 1 242 0 49 1 242 0 53 1 242 0 60 1 242 0 63 1 242 0 66 1 242 0 69 1 242 0 70 1 242 0 72 1 242 0 77 1 242 0 87 1 242 0 90 1 242 0 97 1 242 0 104 1 242 0 112 1 242 0 113 1 242 0 126 1 242 0 127 1 242 0 129 5 129 0 228] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 5 133 0 108 1 246 0 112 1 246 0 113 5 137 0 180 5 141 0 199 5 145 0 202] 
#[1 1 6 0 3 1 6 0 53 1 6 0 58 1 6 0 77 1 6 0 112 1 6 0 113 1 6 0 126 3 233 0 128 3 237 0 221] 
#[1 3 65 0 101 5 149 0 104 5 153 0 226] 
#[0 5 157 0 104] 
#[0 1 250 0 31 0 51] 
#[1 5 161 0 31 5 165 0 51 5 169 0 165] 
#[0 1 254 0 31 0 51] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 5 173 0 217 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 5 181 0 162] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 3 165 1 140 1 21 1 144] 
#[0 1 98 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 185 0 70] 
#[0 0 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 5 189 0 232 3 109 1 110 2 57 1 115 5 193 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 3 241 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 181 0 66 0 58 0 69 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 4 29 1 85 3 109 1 110 2 57 1 115 5 197 1 137 2 73 1 140 1 21 1 144] 
#[1 5 201 0 14 5 205 0 19] 
#[0 2 10 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 5 209 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 5 213 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 5 217 1 78 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 71 0 14 1 110 0 17 0 55 0 19] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 5 225 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 5 229 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 186 0 1 1 98 0 2 1 98 0 6 1 98 0 7 1 98 0 9 1 98 0 10 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 29 0 47 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 40 1 98 0 41 1 98 0 42 1 98 0 46 1 98 0 47 1 98 0 48 1 98 0 51 1 98 0 70 1 98 0 71 1 98 0 73 1 98 0 101 1 98 0 104 1 98 0 105 1 98 0 106 1 98 0 107 1 98 0 108 1 98 0 109 1 98 0 110 1 98 0 111 1 98 0 127 1 98 0 128 1 98 0 129 3 5 1 109] 
#[1 1 118 0 2 1 118 0 6 1 118 0 7 1 118 0 9 1 118 0 10 1 118 0 14 1 118 0 15 1 118 0 16 1 118 0 17 1 118 0 18 1 118 0 19 1 118 0 20 1 118 0 21 1 118 0 23 1 118 0 24 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 34 1 118 0 35 1 118 0 36 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 42 1 118 0 46 1 118 0 47 1 118 0 48 1 118 0 51 1 118 0 70 1 118 0 101 1 118 0 104 1 118 0 105 1 118 0 106 1 118 0 107 1 118 0 108 1 118 0 109 1 118 0 110 1 118 0 111 1 118 0 127 1 118 0 128 1 118 0 129 5 233 1 139] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 5 237 1 137 2 73 1 140 1 21 1 144] 
#[0 2 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 5 241 0 31 5 245 0 46] 
#[0 0 55 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 5 249 1 137 2 73 1 140 1 21 1 144] 
#[0 5 253 0 70] 
#[1 0 61 0 5 3 105 0 30 6 1 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 6 5 0 232 3 109 1 110 2 57 1 115 6 9 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 4 33 1 137 2 73 1 140 1 21 1 144] 
#[0 2 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 75 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 110 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 26 0 69] 
#[0 2 30 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[0 2 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 79 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 42 0 69 1 117 0 118 1 121 0 120 6 13 0 175 1 129 1 149] 
#[0 2 46 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[1 1 246 0 3 1 246 0 53 1 246 0 58 1 246 0 77 1 246 0 112 1 246 0 113 1 246 0 126 6 17 0 180 6 21 0 220 6 25 0 222] 
#[1 6 29 0 51 6 33 0 128] 
#[1 0 61 0 5 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 197 0 232 6 37 1 102 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 197 0 232 6 41 1 102 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 45 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 2 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 6 49 0 81 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 53 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 230 0 101 0 230 0 104 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 6 57 1 137 2 73 1 140 1 21 1 144] 
#[1 6 61 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 6 65 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 6 69 0 104 6 73 0 226] 
#[1 1 110 0 17 6 77 0 70 0 55 0 101 0 55 0 104] 
#[0 6 81 0 69] 
#[0 2 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 6 85 0 162] 
#[0 6 89 0 104] 
#[0 6 93 0 13] 
#[1 2 58 0 2 2 58 0 6 2 58 0 7 2 58 0 9 2 58 0 10 2 58 0 14 2 58 0 15 2 58 0 16 6 97 0 17 2 58 0 18 2 58 0 19 2 58 0 20 2 58 0 21 2 58 0 23 2 58 0 24 2 58 0 26 2 58 0 27 2 58 0 28 2 58 0 29 2 58 0 30 2 58 0 31 2 58 0 32 2 58 0 33 2 58 0 34 2 58 0 35 2 58 0 36 2 58 0 37 2 58 0 38 2 58 0 39 2 58 0 40 2 58 0 41 2 58 0 42 2 58 0 46 2 58 0 47 2 58 0 48 2 58 0 51 2 58 0 70 2 58 0 101 2 58 0 104 2 58 0 105 2 58 0 106 2 58 0 107 2 58 0 108 2 58 0 109 2 58 0 110 2 58 0 111 2 58 0 127 2 58 0 128 2 58 0 129 6 101 1 99] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 6 105 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 109 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 6 113 1 142 1 21 1 144] 
#[1 2 62 0 2 2 62 0 6 2 62 0 7 2 62 0 9 2 62 0 10 4 53 0 13 2 62 0 14 2 62 0 15 2 62 0 16 2 62 0 17 2 62 0 18 2 62 0 19 2 62 0 20 2 62 0 21 2 62 0 23 2 62 0 24 2 62 0 26 2 62 0 27 2 62 0 28 2 62 0 29 2 62 0 30 2 62 0 31 2 62 0 32 2 62 0 33 2 62 0 34 2 62 0 35 2 62 0 36 2 62 0 37 2 62 0 38 2 62 0 39 2 62 0 40 2 62 0 41 2 62 0 42 2 62 0 46 2 62 0 47 2 62 0 48 2 62 0 51 2 62 0 70 2 62 0 101 2 62 0 104 2 62 0 105 2 62 0 106 2 62 0 107 2 62 0 108 2 62 0 109 2 62 0 110 2 62 0 111 4 61 0 127 2 62 0 128 2 62 0 129 6 117 1 116 6 121 1 141] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 6 125 0 20 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 5 33 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 5 37 0 92 1 193 0 97 6 129 0 104 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 1 197 0 126 3 129 0 127 6 133 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 137 0 244 6 141 0 246 6 145 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 6 149 1 106 1 9 1 107 6 153 1 110 2 57 1 115 6 157 1 119 6 161 1 120 6 165 1 130 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 6 169 1 144 5 73 1 149] 
#[0 2 66 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 6 173 1 140 1 21 1 144] 
#[0 2 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 78 0 2 2 78 0 6 2 78 0 7 2 78 0 9 2 78 0 10 2 78 0 14 2 78 0 15 2 78 0 16 2 78 0 17 2 78 0 18 2 78 0 19 2 78 0 20 2 78 0 21 2 78 0 23 2 78 0 24 2 78 0 26 2 78 0 27 2 78 0 28 2 78 0 29 0 83 0 30 2 78 0 31 2 78 0 32 2 78 0 33 2 78 0 34 2 78 0 35 2 78 0 36 2 78 0 37 2 78 0 38 2 78 0 39 2 78 0 40 2 78 0 41 2 78 0 42 2 78 0 46 2 78 0 47 2 78 0 48 2 78 0 51 2 78 0 70 2 78 0 101 2 78 0 104 2 78 0 105 2 78 0 106 2 78 0 107 2 78 0 108 2 78 0 109 2 78 0 110 2 78 0 111 2 78 0 127 2 78 0 128 2 78 0 129 6 177 1 135] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 181 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 2 82 0 2 2 82 0 6 2 82 0 7 2 82 0 9 2 82 0 10 2 82 0 14 2 82 0 15 2 82 0 16 2 82 0 17 2 82 0 18 2 82 0 19 2 82 0 20 2 82 0 21 2 82 0 23 2 82 0 24 2 82 0 26 2 82 0 27 2 82 0 28 2 82 0 29 0 87 0 30 2 82 0 31 2 82 0 32 2 82 0 33 2 82 0 34 2 82 0 35 2 82 0 36 2 82 0 37 2 82 0 38 2 82 0 39 2 82 0 40 2 82 0 41 2 82 0 42 2 82 0 46 2 82 0 47 2 82 0 48 2 82 0 51 2 82 0 70 2 82 0 101 2 82 0 104 2 82 0 105 2 82 0 106 2 82 0 107 2 82 0 108 2 82 0 109 2 82 0 110 2 82 0 111 2 82 0 127 2 82 0 128 2 82 0 129 6 189 1 138] 
#[1 6 193 0 13 6 197 0 45 6 201 0 104 6 205 0 143] 
#[0 2 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 69 0 210 0 72 0 210 0 77 0 210 0 79 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 108 0 210 0 112 0 210 0 113 6 209 0 162] 
#[0 6 213 0 14] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 6 217 1 107 1 13 1 110 1 21 1 144] 
#[0 6 221 0 14] 
#[0 6 225 0 14] 
#[0 6 229 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 233 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 6 237 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 241 0 158 6 245 0 194 6 249 0 197] 
#[0 2 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 6 253 0 108 1 246 0 112 1 246 0 113 7 1 0 180 7 5 0 190 7 9 0 193] 
#[1 7 13 0 13 7 17 0 31 3 65 0 101 7 21 0 104 7 25 0 226] 
#[1 7 29 0 31 7 33 0 104] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 7 37 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 7 49 0 104] 
#[1 7 53 0 29 3 65 0 101 1 122 0 104 7 57 0 211 4 161 0 226] 
#[0 2 98 0 104] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 232 7 61 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 2 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 7 65 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 7 69 0 29 7 73 0 31 7 77 0 35 3 65 0 101 7 81 0 226] 
#[1 7 85 0 31 7 89 0 35] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 1 0 180 7 93 0 190 7 9 0 193] 
#[1 3 65 0 101 7 97 0 104 7 101 0 226] 
#[0 7 105 0 104] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 7 109 1 144] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 7 113 0 162] 
#[1 0 222 0 69 7 117 0 104] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 7 121 1 137 2 73 1 140 1 21 1 144] 
#[1 7 125 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 7 129 1 137 2 73 1 140 1 21 1 144] 
#[1 7 133 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 7 137 0 58 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 7 141 1 137 2 73 1 140 1 21 1 144] 
#[0 7 145 0 70] 
#[1 7 149 0 31 7 153 0 104] 
#[1 7 157 0 29 3 65 0 101 1 122 0 104 3 73 0 127 7 161 0 211 7 165 0 219 4 161 0 226] 
#[0 2 106 0 19 0 31 0 108] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 7 169 0 108 0 149 0 112 0 153 0 113 7 173 0 167 2 153 1 107 1 13 1 110 1 21 1 144] 
#[0 2 110 0 19 0 31 0 108] 
#[1 2 114 0 19 2 114 0 108 7 177 0 169] 
#[0 2 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 7 181 0 15 7 185 0 104] 
#[1 7 189 0 49 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 7 193 1 144] 
#[1 7 197 0 13 3 73 0 127 7 201 0 219] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 205 0 136 1 202 1 149] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 209 0 136 1 202 1 149] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 108 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 213 0 136 1 202 1 149] 
#[1 0 61 0 5 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 7 217 1 110 1 21 1 144] 
#[0 2 122 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 104 0 108] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 7 233 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 2 233 0 13 8 9 0 14 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 2 241 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 2 245 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 9 113 0 138 9 117 0 139 9 121 0 140 9 125 0 155 9 129 0 244 9 133 1 144 9 137 1 145 9 141 1 146 9 145 1 147 9 149 1 148 5 73 1 149] 
#[0 2 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 2 162 0 46] 
#[0 2 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 7 233 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 2 233 0 13 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 2 241 0 45 9 153 0 46 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 2 245 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 9 113 0 138 9 117 0 139 9 121 0 140 9 125 0 155 9 129 0 244 9 133 1 144 9 137 1 145 9 141 1 146 9 145 1 147 9 149 1 148 5 73 1 149] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 7 233 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 2 233 0 13 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 2 241 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 2 245 0 104 9 85 0 105 9 89 0 106 9 93 0 107 9 157 0 108 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 9 113 0 138 9 117 0 139 9 121 0 140 9 125 0 155 9 129 0 244 9 133 1 144 9 137 1 145 9 141 1 146 9 145 1 147 9 149 1 148 5 73 1 149] 
#[0 2 170 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 26 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 149] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 9 161 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 9 165 0 104] 
#[1 9 169 0 29 3 65 0 101 1 122 0 104 9 173 0 211 4 161 0 226] 
#[1 9 177 0 31 9 181 0 35] 
#[0 2 174 0 69] 
#[1 9 185 0 31 9 189 0 35] 
#[0 2 178 0 69] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 9 193 0 174] 
#[0 2 182 0 69] 
#[0 2 186 0 69] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 2 190 0 31 2 190 0 35 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 2 190 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 9 197 0 227 9 201 0 229 9 205 0 230 9 209 0 231 9 213 0 232 9 217 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 9 221 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 2 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 57 0 3 1 25 0 53 9 225 0 60 1 33 0 77 0 109 0 84 0 149 0 112 0 153 0 113 9 229 0 235 9 233 1 143 9 237 1 144] 
#[0 9 241 0 108] 
#[1 2 198 0 19 2 198 0 108 9 245 0 201] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 9 249 0 108 1 246 0 112 1 246 0 113 5 137 0 180 9 253 0 199 5 145 0 202] 
#[0 10 1 0 104] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 10 5 0 108 1 246 0 112 1 246 0 113 5 137 0 180 10 9 0 199 5 145 0 202] 
#[0 2 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 10 13 0 49 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 10 17 1 144] 
#[0 10 21 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 10 25 0 108 1 246 0 112 1 246 0 113 10 29 0 180 10 33 0 218] 
#[0 2 206 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 46 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 149] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 10 37 0 217 5 177 0 234] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 10 41 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 10 45 1 137 2 73 1 140 1 21 1 144] 
#[1 0 91 0 14 2 14 0 17 2 14 0 19] 
#[1 0 95 0 14 2 54 0 17 2 54 0 19] 
#[0 2 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 214 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[0 2 218 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 57 0 14 5 205 0 19] 
#[0 2 222 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[0 2 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 234 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 238 0 2 2 238 0 6 2 238 0 7 2 238 0 9 2 238 0 10 2 238 0 14 2 238 0 15 2 238 0 16 2 238 0 17 2 238 0 18 2 238 0 19 2 238 0 20 2 238 0 21 2 238 0 23 2 238 0 24 2 238 0 26 2 238 0 27 2 238 0 28 2 238 0 29 0 99 0 30 2 238 0 31 2 238 0 32 2 238 0 33 2 238 0 34 2 238 0 35 2 238 0 36 2 238 0 37 2 238 0 38 2 238 0 39 2 238 0 40 2 238 0 41 2 238 0 42 2 238 0 46 2 238 0 47 2 238 0 48 2 238 0 51 2 238 0 70 2 238 0 101 2 238 0 104 2 238 0 105 2 238 0 106 2 238 0 107 2 238 0 108 2 238 0 109 2 238 0 110 2 238 0 111 2 238 0 127 2 238 0 128 2 238 0 129 6 189 1 138] 
#[0 2 242 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 10 169 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 2 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 25 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 11 29 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 11 33 0 232 3 109 1 110 2 57 1 115 11 37 1 137 2 73 1 140 1 21 1 144] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 11 41 1 137 2 73 1 140 1 21 1 144] 
#[0 5 221 0 14] 
#[0 2 250 0 69] 
#[1 0 57 0 3 1 25 0 53 11 45 0 58 1 33 0 77 0 149 0 112 0 153 0 113 11 49 0 126 11 53 0 223 11 57 0 224 11 61 0 225 11 65 0 235 11 69 1 144] 
#[0 2 254 0 3 0 53 0 58 0 77 0 112 0 113 0 126] 
#[1 11 73 0 19 11 77 0 128] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 11 81 1 137 2 73 1 140 1 21 1 144] 
#[0 3 2 0 30] 
#[0 2 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 11 85 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 3 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 89 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 11 93 1 137 2 73 1 140 1 21 1 144] 
#[0 11 97 0 70] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 11 101 0 162] 
#[0 11 105 0 104] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 11 109 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 11 113 0 13] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 11 117 0 212 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 11 121 0 162] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 11 125 0 14 1 246 0 15 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 11 129 0 180 11 133 1 87 11 137 1 88 11 141 1 91 11 145 1 92] 
#[1 3 18 0 2 0 61 0 5 3 18 0 6 3 18 0 7 3 18 0 9 3 18 0 10 1 137 0 11 1 141 0 12 3 193 0 13 3 18 0 14 3 18 0 15 3 18 0 16 3 18 0 17 3 18 0 18 3 18 0 19 3 18 0 20 3 18 0 21 3 18 0 23 3 18 0 24 3 18 0 26 3 18 0 27 3 18 0 28 3 18 0 29 0 107 0 30 3 18 0 31 3 18 0 32 3 18 0 33 3 18 0 34 3 18 0 35 3 18 0 36 3 18 0 37 3 18 0 38 3 18 0 39 3 18 0 40 3 18 0 41 1 157 0 42 1 161 0 44 3 18 0 46 3 18 0 47 3 18 0 48 3 18 0 51 1 25 0 53 1 29 0 60 0 111 0 70 1 33 0 77 0 113 0 87 0 125 0 90 3 18 0 101 3 18 0 104 3 18 0 105 3 18 0 106 3 18 0 107 3 18 0 108 3 18 0 109 3 18 0 110 3 18 0 111 0 149 0 112 0 153 0 113 1 197 0 126 3 18 0 127 3 18 0 128 3 18 0 129 3 197 0 232 11 149 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 3 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 26 0 2 3 26 0 6 3 26 0 7 3 26 0 9 3 26 0 10 3 26 0 14 3 26 0 15 3 26 0 16 3 26 0 17 3 26 0 18 3 26 0 19 3 26 0 20 3 26 0 21 11 153 0 22 3 26 0 23 3 26 0 24 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 29 3 26 0 30 3 26 0 31 3 26 0 32 3 26 0 33 3 26 0 34 3 26 0 35 3 26 0 36 3 26 0 37 3 26 0 38 3 26 0 39 3 26 0 40 3 26 0 41 3 26 0 42 3 26 0 46 3 26 0 47 3 26 0 48 3 26 0 51 3 26 0 70 3 26 0 101 3 26 0 104 3 26 0 105 3 26 0 106 3 26 0 107 3 26 0 108 3 26 0 109 3 26 0 110 3 26 0 111 3 26 0 127 3 26 0 128 3 26 0 129] 
#[1 3 30 0 14 3 30 0 19 11 157 1 126] 
#[0 11 161 0 14] 
#[0 3 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 5 33 0 67 5 37 0 92 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 11 165 0 244 5 73 1 149] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 31 0 210 0 44 0 210 0 45 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 58 0 210 0 59 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 67 0 210 0 69 0 210 0 70 0 210 0 71 0 210 0 72 0 210 0 74 0 210 0 75 0 210 0 77 0 210 0 78 0 210 0 79 0 210 0 80 0 210 0 84 0 210 0 86 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 92 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 102 0 210 0 104 0 210 0 105 0 210 0 107 0 210 0 108 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 126 0 210 0 127 11 169 0 162 0 210 1 149] 
#[0 3 42 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 46 0 19 0 128] 
#[0 3 50 0 19 0 128] 
#[0 3 54 0 19 0 128] 
#[1 1 94 0 17 0 115 0 19 0 115 0 128] 
#[1 0 186 0 1 1 98 0 13 1 98 0 17 0 119 0 19 0 47 0 30 1 98 0 127 0 119 0 128 2 169 1 109] 
#[1 3 66 0 19 3 66 0 128 11 173 1 118] 
#[0 3 70 0 19 0 128] 
#[0 3 74 0 19 0 128] 
#[1 0 190 0 1 0 190 0 13 0 190 0 17 0 190 0 19 0 190 0 30 11 177 0 35 0 190 0 127 0 190 0 128] 
#[0 3 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 82 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 65 0 101 1 122 0 104 11 181 0 211 4 161 0 226] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 11 185 1 140 1 21 1 144] 
#[0 3 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 11 189 0 13 11 193 0 45 11 197 0 104 11 201 0 144 11 205 0 147 11 209 0 148] 
#[1 11 189 0 13 11 193 0 45 11 197 0 104 11 213 0 144 11 205 0 147 11 209 0 148] 
#[1 11 189 0 13 11 193 0 45 11 197 0 104 11 217 0 144 11 205 0 147 11 209 0 148] 
#[0 3 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 108 0 10 0 112 0 10 0 113 11 221 0 133 5 177 0 234] 
#[0 3 94 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 11 225 0 14] 
#[0 3 98 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 3 102 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 11 229 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 11 233 0 31 11 237 0 35] 
#[1 11 241 0 31 3 65 0 101 11 245 0 226] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 0 81 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 109 0 84 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 1 5 0 235 11 249 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 11 253 1 143 1 21 1 144] 
#[0 12 1 0 14] 
#[1 3 106 0 14 3 106 0 19 12 5 0 196] 
#[0 3 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 57 0 3 1 25 0 53 9 225 0 60 1 33 0 77 0 109 0 84 0 149 0 112 0 153 0 113 9 229 0 235 12 9 1 143 12 13 1 144] 
#[0 12 17 0 108] 
#[1 3 114 0 19 3 114 0 108 12 21 0 192] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 12 25 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 241 0 158 12 29 0 194 6 249 0 197] 
#[0 3 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 12 33 0 108 1 246 0 112 1 246 0 113 7 1 0 180 12 37 0 190 7 9 0 193] 
#[1 12 41 0 31 12 45 0 104] 
#[0 3 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 12 49 0 108 1 246 0 112 1 246 0 113 7 1 0 180 12 53 0 190 7 9 0 193] 
#[1 3 65 0 101 1 122 0 104 12 57 0 211 4 161 0 226] 
#[0 3 126 0 101 0 104] 
#[0 1 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 12 61 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 12 65 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 12 69 0 104] 
#[1 12 73 0 31 12 77 0 35 3 65 0 101 12 81 0 226] 
#[0 12 85 0 31] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 232 12 89 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 3 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 12 93 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 12 97 0 31 12 101 0 35] 
#[0 3 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 12 105 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 12 109 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 1 0 180 12 113 0 190 7 9 0 193] 
#[0 12 117 0 104] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 1 0 180 12 121 0 190 7 9 0 193] 
#[1 12 125 0 29 3 65 0 101 1 122 0 104 3 73 0 127 12 129 0 211 12 133 0 219 4 161 0 226] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 12 137 0 217 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 12 141 0 162] 
#[0 12 145 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 12 149 1 137 2 73 1 140 1 21 1 144] 
#[0 12 153 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 12 157 1 137 2 73 1 140 1 21 1 144] 
#[1 12 161 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 12 165 1 137 2 73 1 140 1 21 1 144] 
#[0 12 169 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 12 173 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 3 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 69 0 210 0 72 0 210 0 77 0 210 0 79 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 108 0 210 0 112 0 210 0 113 12 177 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 12 181 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 12 185 0 104] 
#[1 12 189 0 29 3 65 0 101 1 122 0 104 12 193 0 211 4 161 0 226] 
#[0 3 142 0 19 0 31 0 108] 
#[1 2 114 0 19 2 114 0 108 12 197 0 169] 
#[1 12 201 0 19 3 146 0 108 12 205 0 168 12 209 0 170] 
#[0 3 150 0 19 0 31 0 108] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 12 213 0 108 0 149 0 112 0 153 0 113 12 217 0 167 2 153 1 107 1 13 1 110 1 21 1 144] 
#[0 3 154 0 19 0 31 0 108] 
#[0 3 158 0 19 0 31 0 108] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 12 221 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 12 225 0 176 12 229 0 179 12 233 0 180 12 237 0 183 1 246 1 149] 
#[0 12 241 0 13] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 7 233 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 2 233 0 13 12 245 0 14 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 2 241 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 2 245 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 9 113 0 138 9 117 0 139 9 121 0 140 9 125 0 155 9 129 0 244 9 133 1 144 9 137 1 145 9 141 1 146 9 145 1 147 9 149 1 148 5 73 1 149] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 7 233 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 2 233 0 13 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 2 241 0 45 12 249 0 46 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 2 245 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 9 113 0 138 9 117 0 139 9 121 0 140 9 125 0 155 9 129 0 244 9 133 1 144 9 137 1 145 9 141 1 146 9 145 1 147 9 149 1 148 5 73 1 149] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 7 233 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 2 233 0 13 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 2 241 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 2 245 0 104 9 85 0 105 9 89 0 106 9 93 0 107 12 253 0 108 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 9 113 0 138 9 117 0 139 9 121 0 140 9 125 0 155 9 129 0 244 9 133 1 144 9 137 1 145 9 141 1 146 9 145 1 147 9 149 1 148 5 73 1 149] 
#[0 3 162 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 104 0 108] 
#[0 3 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 4 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 3 65 0 101 1 122 0 104 13 1 0 211 4 161 0 226] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 13 5 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 13 9 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 13 13 0 104] 
#[0 5 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 17 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 5 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 21 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 5 114 0 69] 
#[0 5 118 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 104 0 112 0 113 0 126 0 127 0 129] 
#[1 13 25 0 19 5 122 0 31 5 122 0 35 5 122 0 104] 
#[0 5 126 0 19 0 31 0 35 0 104] 
#[0 5 130 0 19 0 31 0 35 0 104] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 13 29 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 13 33 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 13 37 1 137 2 73 1 140 1 21 1 144] 
#[0 13 41 0 29] 
#[1 1 94 0 17 0 123 0 29] 
#[0 0 50 0 53 0 77 0 112 0 113] 
#[0 5 134 0 1 0 3 0 5 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 66 0 67 0 69 0 70 0 72 0 74 0 77 0 81 0 84 0 85 0 87 0 88 0 90 0 92 0 94 0 97 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 149] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 13 49 1 144] 
#[1 13 53 0 13 5 138 0 19 13 57 0 35 13 61 0 104 5 138 0 108 13 65 0 203 13 69 0 204 13 73 0 205] 
#[0 5 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 13 77 0 19 5 146 0 108 13 81 0 200] 
#[0 5 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 85 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 13 89 0 108 1 246 0 112 1 246 0 113 5 137 0 180 13 93 0 199 5 145 0 202] 
#[0 5 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 97 0 108] 
#[0 5 158 0 31] 
#[0 5 162 0 31] 
#[0 5 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 5 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 1 25 0 53 13 101 0 58 0 81 0 60 0 85 0 61 1 53 0 66 0 34 0 69 1 33 0 77 0 109 0 84 0 113 0 87 0 117 0 88 0 125 0 90 13 105 0 97 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 13 109 0 141 13 113 0 171 0 197 0 172 0 201 0 173 0 205 0 174 13 117 0 208 9 229 0 235 1 9 1 107 1 13 1 110 13 121 1 143 1 21 1 144] 
#[0 5 174 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 13 125 0 108 1 246 0 112 1 246 0 113 10 29 0 180 10 33 0 218] 
#[1 3 65 0 101 1 122 0 104 13 129 0 211 4 161 0 226] 
#[1 0 127 0 14 2 242 0 17 2 242 0 19] 
#[0 5 178 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 182 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 186 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 137 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 13 141 0 81 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 145 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 13 149 0 81 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 153 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 14 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 59 0 210 0 60 0 210 0 67 0 210 0 70 0 210 0 71 0 210 0 75 0 210 0 77 0 210 0 78 0 210 0 80 0 210 0 86 0 210 0 87 0 210 0 90 0 210 0 92 0 210 0 97 0 210 0 102 0 210 0 104 0 210 0 105 0 210 0 107 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 126 0 210 0 127 13 157 0 162 0 210 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 161 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 165 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 5 190 0 2 0 57 0 3 0 61 0 5 5 190 0 6 5 190 0 7 10 65 0 8 10 69 0 9 5 190 0 10 10 73 0 13 5 190 0 14 10 77 0 15 5 190 0 16 5 190 0 17 5 190 0 18 5 190 0 19 10 81 0 20 5 190 0 21 5 190 0 23 5 190 0 27 5 190 0 28 10 93 0 30 5 190 0 31 5 190 0 32 5 190 0 33 5 190 0 34 5 190 0 35 5 190 0 36 5 190 0 37 5 190 0 38 5 190 0 39 5 190 0 40 5 190 0 41 5 190 0 42 1 161 0 44 10 97 0 45 5 190 0 46 5 190 0 47 5 190 0 48 5 190 0 51 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 0 131 0 104 10 149 0 105 5 190 0 106 10 153 0 107 5 190 0 108 5 190 0 109 5 190 0 110 5 190 0 111 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 5 190 0 128 5 190 0 129 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 169 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 173 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 110 13 177 1 114 11 13 1 115 1 21 1 144] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 59 0 210 0 60 0 210 0 67 0 210 0 70 0 210 0 71 0 210 0 75 0 210 0 77 0 210 0 78 0 210 0 80 0 210 0 86 0 210 0 87 0 210 0 90 0 210 0 92 0 210 0 97 0 210 0 102 0 210 0 104 0 210 0 105 0 210 0 107 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 126 0 210 0 127 13 181 0 162 0 210 1 149] 
#[1 13 185 0 80 6 129 0 104 13 189 0 246] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 193 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 5 194 0 2 0 57 0 3 0 61 0 5 5 194 0 6 5 194 0 7 10 65 0 8 10 69 0 9 5 194 0 10 10 73 0 13 5 194 0 14 10 77 0 15 5 194 0 16 5 194 0 17 5 194 0 18 5 194 0 19 10 81 0 20 5 194 0 21 5 194 0 23 10 85 0 24 10 89 0 26 5 194 0 27 5 194 0 28 10 93 0 30 5 194 0 31 5 194 0 32 5 194 0 33 5 194 0 34 5 194 0 35 5 194 0 36 5 194 0 37 5 194 0 38 5 194 0 39 5 194 0 40 5 194 0 41 5 194 0 42 1 161 0 44 10 97 0 45 5 194 0 46 5 194 0 47 5 194 0 48 5 194 0 51 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 0 135 0 104 10 149 0 105 5 194 0 106 10 153 0 107 5 194 0 108 5 194 0 109 5 194 0 110 5 194 0 111 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 13 197 0 126 3 129 0 127 5 194 0 128 5 194 0 129 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 201 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 5 198 0 2 0 57 0 3 0 61 0 5 5 198 0 6 5 198 0 7 10 65 0 8 10 69 0 9 5 198 0 10 10 73 0 13 5 198 0 14 10 77 0 15 5 198 0 16 5 198 0 17 5 198 0 18 5 198 0 19 10 81 0 20 5 198 0 21 5 198 0 23 10 85 0 24 10 89 0 26 5 198 0 27 5 198 0 28 10 93 0 30 5 198 0 31 5 198 0 32 5 198 0 33 5 198 0 34 5 198 0 35 5 198 0 36 5 198 0 37 5 198 0 38 5 198 0 39 5 198 0 40 5 198 0 41 5 198 0 42 1 161 0 44 10 97 0 45 5 198 0 46 5 198 0 47 5 198 0 48 5 198 0 51 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 0 139 0 104 10 149 0 105 5 198 0 106 10 153 0 107 5 198 0 108 5 198 0 109 5 198 0 110 5 198 0 111 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 13 205 0 126 3 129 0 127 5 198 0 128 5 198 0 129 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 13 209 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 14 37 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 14 121 0 74 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 14 125 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 6 129 0 104 14 129 0 246] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 14 133 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 137 0 105 14 141 0 107] 
#[1 10 61 0 1 5 202 0 2 0 57 0 3 0 61 0 5 5 202 0 6 5 202 0 7 10 65 0 8 10 69 0 9 5 202 0 10 10 73 0 13 5 202 0 14 10 77 0 15 5 202 0 16 5 202 0 17 5 202 0 18 5 202 0 19 10 81 0 20 5 202 0 21 5 202 0 23 10 85 0 24 10 89 0 26 5 202 0 27 5 202 0 28 10 93 0 30 5 202 0 31 5 202 0 32 5 202 0 33 5 202 0 34 5 202 0 35 5 202 0 36 5 202 0 37 5 202 0 38 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 42 1 161 0 44 10 97 0 45 5 202 0 46 5 202 0 47 5 202 0 48 5 202 0 51 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 0 143 0 104 10 149 0 105 5 202 0 106 10 153 0 107 5 202 0 108 5 202 0 109 5 202 0 110 5 202 0 111 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 5 202 0 128 5 202 0 129 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 14 145 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 6 129 0 104 14 149 0 246] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 14 153 0 74 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 14 157 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 0 147 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 14 165 0 180 14 169 1 20 14 173 1 23 1 246 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 14 177 0 22 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 14 181 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 14 185 0 29] 
#[0 5 206 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 14 189 0 241 14 193 0 242 14 197 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 49 0 46 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 5 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 214 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 218 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 226 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 230 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 234 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 5 238 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 242 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 254 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 6 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 6 10 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 6 14 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 6 18 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 6 22 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 10 117 0 70 10 125 0 75 10 145 0 102 15 97 1 25 15 101 1 26 15 105 1 27 15 109 1 28] 
#[0 6 26 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 6 30 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 6 34 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 6 38 0 2 6 38 0 6 6 38 0 7 6 38 0 9 6 38 0 10 15 113 0 13 6 38 0 14 6 38 0 15 6 38 0 16 6 38 0 17 6 38 0 18 6 38 0 19 6 38 0 20 6 38 0 21 6 38 0 23 6 38 0 24 6 38 0 26 6 38 0 27 6 38 0 28 6 38 0 31 6 38 0 32 6 38 0 33 6 38 0 34 6 38 0 35 6 38 0 36 6 38 0 37 6 38 0 38 6 38 0 39 6 38 0 40 6 38 0 41 6 38 0 42 6 38 0 46 6 38 0 47 6 38 0 48 6 38 0 51 0 151 0 104 6 38 0 106 6 38 0 107 6 38 0 108 6 38 0 109 6 38 0 110 6 38 0 111 6 38 0 127 6 38 0 128 6 38 0 129] 
#[1 6 42 0 2 6 42 0 6 6 42 0 7 6 42 0 9 6 42 0 10 6 42 0 13 6 42 0 14 6 42 0 15 6 42 0 16 6 42 0 17 6 42 0 18 6 42 0 19 6 42 0 20 6 42 0 21 6 42 0 23 6 42 0 24 6 42 0 25 6 42 0 26 6 42 0 27 6 42 0 28 6 42 0 29 6 42 0 30 6 42 0 31 6 42 0 32 6 42 0 33 6 42 0 34 6 42 0 35 6 42 0 36 6 42 0 37 6 42 0 38 6 42 0 39 6 42 0 40 6 42 0 41 6 42 0 42 6 42 0 46 6 42 0 47 6 42 0 48 6 42 0 51 6 42 0 71 6 42 0 73 6 42 0 104 6 42 0 105 6 42 0 106 6 42 0 107 6 42 0 108 6 42 0 109 6 42 0 110 6 42 0 111 6 42 0 127 6 42 0 128 6 42 0 129 15 121 1 113] 
#[1 6 46 0 2 6 46 0 6 6 46 0 7 6 46 0 9 6 46 0 10 6 46 0 13 6 46 0 14 6 46 0 15 6 46 0 16 6 46 0 17 6 46 0 18 6 46 0 19 6 46 0 20 6 46 0 21 6 46 0 23 6 46 0 24 6 46 0 25 6 46 0 26 6 46 0 27 6 46 0 28 6 46 0 29 0 155 0 30 6 46 0 31 6 46 0 32 6 46 0 33 6 46 0 34 6 46 0 35 6 46 0 36 6 46 0 37 6 46 0 38 6 46 0 39 6 46 0 40 6 46 0 41 6 46 0 42 6 46 0 46 6 46 0 47 6 46 0 48 6 46 0 51 6 46 0 71 6 46 0 73 6 46 0 104 6 46 0 105 6 46 0 106 6 46 0 107 6 46 0 108 6 46 0 109 6 46 0 110 6 46 0 111 6 46 0 127 6 46 0 128 6 46 0 129] 
#[0 6 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 129 0 30 15 133 1 112 15 137 1 132] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 15 141 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 1 122 0 104 15 145 0 211 4 161 0 226] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 15 149 1 137 2 73 1 140 1 21 1 144] 
#[0 10 49 0 14] 
#[0 10 53 0 14] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 15 153 1 144] 
#[1 6 54 0 19 15 157 0 29 6 54 0 128] 
#[0 6 58 0 19 0 128] 
#[0 6 62 0 19 0 128] 
#[0 6 66 0 19 0 128] 
#[1 5 134 0 3 0 159 0 53 5 134 0 58 0 163 0 77 0 167 0 112 0 171 0 113 0 175 0 126 15 165 1 144] 
#[1 6 70 0 19 15 169 0 29 15 173 0 35 6 70 0 128] 
#[1 6 74 0 3 6 74 0 53 6 74 0 58 6 74 0 77 6 74 0 112 6 74 0 113 6 74 0 126 15 177 0 128] 
#[0 6 78 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 15 181 0 128] 
#[0 6 82 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 15 185 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 15 189 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 15 193 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 15 197 0 212 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 15 201 0 162] 
#[1 3 65 0 101 1 122 0 104 15 205 0 211 4 161 0 226] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 15 209 0 14 1 246 0 15 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 11 129 0 180 15 213 1 87 11 137 1 88 11 141 1 91 11 145 1 92] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 15 217 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 15 229 0 212 5 177 0 234] 
#[1 6 86 0 2 6 86 0 6 6 86 0 7 6 86 0 9 6 86 0 10 6 86 0 14 6 86 0 15 6 86 0 16 6 86 0 17 6 86 0 18 6 86 0 19 6 86 0 20 6 86 0 21 15 233 0 22 6 86 0 23 6 86 0 24 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 29 6 86 0 30 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 34 6 86 0 35 6 86 0 36 6 86 0 37 6 86 0 38 6 86 0 39 6 86 0 40 6 86 0 41 6 86 0 42 6 86 0 46 6 86 0 47 6 86 0 48 6 86 0 51 6 86 0 70 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 106 6 86 0 107 6 86 0 108 6 86 0 109 6 86 0 110 6 86 0 111 6 86 0 127 6 86 0 128 6 86 0 129 15 237 1 86] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 15 241 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 9 229 0 235 15 245 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 15 249 1 144] 
#[0 15 253 0 14] 
#[0 6 90 0 14] 
#[1 6 94 0 14 6 94 0 19 16 1 1 90] 
#[0 6 98 0 14] 
#[0 6 102 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 16 5 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 6 106 0 14 16 9 0 19 16 13 1 125] 
#[1 6 110 0 2 6 110 0 6 6 110 0 7 6 110 0 9 6 110 0 10 6 110 0 14 6 110 0 15 6 110 0 16 6 110 0 17 6 110 0 18 6 110 0 19 6 110 0 20 6 110 0 21 16 17 0 22 6 110 0 23 6 110 0 24 6 110 0 26 6 110 0 27 6 110 0 28 6 110 0 29 6 110 0 30 6 110 0 31 6 110 0 32 6 110 0 33 6 110 0 34 6 110 0 35 6 110 0 36 6 110 0 37 6 110 0 38 6 110 0 39 6 110 0 40 6 110 0 41 6 110 0 42 6 110 0 46 6 110 0 47 6 110 0 48 6 110 0 51 6 110 0 70 6 110 0 101 6 110 0 104 6 110 0 105 6 110 0 106 6 110 0 107 6 110 0 108 6 110 0 109 6 110 0 110 6 110 0 111 6 110 0 127 6 110 0 128 6 110 0 129] 
#[0 6 114 0 19 0 128] 
#[1 10 61 0 1 0 179 0 3 0 183 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 0 187 0 30 16 25 0 31 1 161 0 44 10 97 0 45 0 191 0 52 0 195 0 53 10 105 0 56 10 109 0 57 0 14 0 58 10 113 0 59 0 199 0 60 0 14 0 61 0 14 0 65 0 14 0 66 5 33 0 67 0 14 0 69 10 117 0 70 10 121 0 71 0 14 0 72 1 246 0 74 10 125 0 75 0 203 0 77 10 129 0 78 0 14 0 79 10 133 0 80 0 14 0 84 10 137 0 86 0 207 0 87 0 14 0 88 0 14 0 89 0 211 0 90 0 14 0 91 5 37 0 92 0 14 0 94 0 14 0 96 0 215 0 97 0 14 0 99 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 16 29 0 108 0 219 0 112 0 223 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 16 33 0 135 16 37 0 137 16 41 0 141 16 45 0 157 0 49 0 158 16 49 0 180 5 177 0 234 10 165 0 235 16 53 0 238 16 57 0 239 16 61 0 240 14 189 0 241 16 65 0 242 16 69 0 243 10 181 0 244 10 185 0 245 10 189 0 246 16 73 0 247 16 77 0 248 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 16 81 0 19 16 85 0 128 16 89 1 117] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 16 93 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 16 97 0 104] 
#[0 6 118 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 6 122 0 1 6 122 0 2 6 122 0 3 6 122 0 4 6 122 0 5 6 122 0 6 6 122 0 7 6 122 0 9 6 122 0 10 6 122 0 11 6 122 0 12 6 122 0 13 6 122 0 14 6 122 0 15 6 122 0 16 6 122 0 17 6 122 0 18 6 122 0 19 6 122 0 20 6 122 0 21 6 122 0 22 6 122 0 23 6 122 0 24 6 122 0 25 6 122 0 26 6 122 0 27 6 122 0 28 6 122 0 29 6 122 0 30 6 122 0 31 6 122 0 32 6 122 0 33 6 122 0 34 6 122 0 35 6 122 0 36 6 122 0 37 6 122 0 38 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 42 6 122 0 43 6 122 0 44 6 122 0 45 6 122 0 47 6 122 0 48 6 122 0 49 6 122 0 50 6 122 0 51 6 122 0 52 6 122 0 53 6 122 0 54 6 122 0 55 6 122 0 56 6 122 0 57 6 122 0 58 6 122 0 59 6 122 0 60 6 122 0 62 6 122 0 63 6 122 0 64 6 122 0 65 6 122 0 66 6 122 0 67 6 122 0 68 6 122 0 69 6 122 0 70 6 122 0 71 6 122 0 72 6 122 0 73 6 122 0 74 6 122 0 75 6 122 0 76 6 122 0 77 6 122 0 78 6 122 0 79 6 122 0 80 6 122 0 81 6 122 0 82 6 122 0 83 6 122 0 84 6 122 0 85 6 122 0 86 6 122 0 87 6 122 0 88 6 122 0 89 6 122 0 90 6 122 0 91 6 122 0 92 6 122 0 93 6 122 0 94 6 122 0 95 6 122 0 96 6 122 0 97 6 122 0 98 6 122 0 99 6 122 0 100 6 122 0 101 6 122 0 102 6 122 0 103 6 122 0 104 6 122 0 105 6 122 0 106 6 122 0 107 6 122 0 112 6 122 0 113 6 122 0 117 6 122 0 118 6 122 0 120 6 122 0 121 6 122 0 122 6 122 0 123 6 122 0 125 6 122 0 126 6 122 0 127 6 122 0 128 6 122 0 129 16 101 0 149 6 122 1 149] 
#[1 6 122 0 1 6 122 0 2 6 122 0 3 6 122 0 4 6 122 0 5 6 122 0 6 6 122 0 7 6 122 0 9 6 122 0 10 6 122 0 11 6 122 0 12 6 122 0 13 6 122 0 15 6 122 0 16 6 122 0 17 6 122 0 18 6 122 0 19 6 122 0 20 6 122 0 21 6 122 0 22 6 122 0 23 6 122 0 24 6 122 0 25 6 122 0 26 6 122 0 27 6 122 0 28 6 122 0 29 6 122 0 30 6 122 0 31 6 122 0 32 6 122 0 33 6 122 0 34 6 122 0 35 6 122 0 36 6 122 0 37 6 122 0 38 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 42 6 122 0 43 6 122 0 44 6 122 0 45 6 122 0 46 6 122 0 47 6 122 0 48 6 122 0 49 6 122 0 50 6 122 0 51 6 122 0 52 6 122 0 53 6 122 0 54 6 122 0 55 6 122 0 56 6 122 0 57 6 122 0 58 6 122 0 59 6 122 0 60 6 122 0 62 6 122 0 63 6 122 0 64 6 122 0 65 6 122 0 66 6 122 0 67 6 122 0 68 6 122 0 69 6 122 0 70 6 122 0 71 6 122 0 72 6 122 0 73 6 122 0 74 6 122 0 75 6 122 0 76 6 122 0 77 6 122 0 78 6 122 0 79 6 122 0 80 6 122 0 81 6 122 0 82 6 122 0 83 6 122 0 84 6 122 0 85 6 122 0 86 6 122 0 87 6 122 0 88 6 122 0 89 6 122 0 90 6 122 0 91 6 122 0 92 6 122 0 93 6 122 0 94 6 122 0 95 6 122 0 96 6 122 0 97 6 122 0 98 6 122 0 99 6 122 0 100 6 122 0 101 6 122 0 102 6 122 0 103 6 122 0 104 6 122 0 105 6 122 0 106 6 122 0 107 6 122 0 112 6 122 0 113 6 122 0 117 6 122 0 118 6 122 0 120 6 122 0 121 6 122 0 122 6 122 0 123 6 122 0 125 6 122 0 126 6 122 0 127 6 122 0 128 6 122 0 129 16 105 0 149 6 122 1 149] 
#[1 6 122 0 1 6 122 0 2 6 122 0 3 6 122 0 4 6 122 0 5 6 122 0 6 6 122 0 7 6 122 0 9 6 122 0 10 6 122 0 11 6 122 0 12 6 122 0 13 6 122 0 15 6 122 0 16 6 122 0 17 6 122 0 18 6 122 0 19 6 122 0 20 6 122 0 21 6 122 0 22 6 122 0 23 6 122 0 24 6 122 0 25 6 122 0 26 6 122 0 27 6 122 0 28 6 122 0 29 6 122 0 30 6 122 0 31 6 122 0 32 6 122 0 33 6 122 0 34 6 122 0 35 6 122 0 36 6 122 0 37 6 122 0 38 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 42 6 122 0 43 6 122 0 44 6 122 0 45 6 122 0 47 6 122 0 48 6 122 0 49 6 122 0 50 6 122 0 51 6 122 0 52 6 122 0 53 6 122 0 54 6 122 0 55 6 122 0 56 6 122 0 57 6 122 0 58 6 122 0 59 6 122 0 60 6 122 0 62 6 122 0 63 6 122 0 64 6 122 0 65 6 122 0 66 6 122 0 67 6 122 0 68 6 122 0 69 6 122 0 70 6 122 0 71 6 122 0 72 6 122 0 73 6 122 0 74 6 122 0 75 6 122 0 76 6 122 0 77 6 122 0 78 6 122 0 79 6 122 0 80 6 122 0 81 6 122 0 82 6 122 0 83 6 122 0 84 6 122 0 85 6 122 0 86 6 122 0 87 6 122 0 88 6 122 0 89 6 122 0 90 6 122 0 91 6 122 0 92 6 122 0 93 6 122 0 94 6 122 0 95 6 122 0 96 6 122 0 97 6 122 0 98 6 122 0 99 6 122 0 100 6 122 0 101 6 122 0 102 6 122 0 103 6 122 0 104 6 122 0 105 6 122 0 106 6 122 0 107 6 122 0 108 6 122 0 112 6 122 0 113 6 122 0 117 6 122 0 118 6 122 0 120 6 122 0 121 6 122 0 122 6 122 0 123 6 122 0 125 6 122 0 126 6 122 0 127 6 122 0 128 6 122 0 129 16 109 0 149 6 122 1 149] 
#[0 16 113 0 14] 
#[1 6 126 0 14 6 126 0 31 6 126 0 46 6 126 0 108 16 117 0 146] 
#[0 16 121 0 37] 
#[0 16 125 0 46] 
#[0 16 129 0 108] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 16 133 0 108 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158] 
#[0 6 130 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[1 16 137 0 31 16 141 0 35] 
#[0 6 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 16 145 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 6 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 16 149 0 31] 
#[0 6 142 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 16 153 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 16 157 0 31 3 65 0 101 16 161 0 226] 
#[1 6 146 0 14 16 165 0 19 16 169 0 195] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 16 173 1 144] 
#[0 16 177 0 29] 
#[0 6 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 16 181 0 19 6 154 0 108 16 185 0 191] 
#[1 16 189 0 31 3 65 0 101 16 193 0 226] 
#[0 16 197 0 14] 
#[0 6 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 16 201 0 108] 
#[0 6 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 16 205 0 108 1 246 0 112 1 246 0 113 7 1 0 180 16 209 0 190 7 9 0 193] 
#[0 6 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 16 213 0 108] 
#[0 16 217 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 16 221 0 212 5 177 0 234] 
#[1 3 65 0 101 1 122 0 104 16 225 0 211 4 161 0 226] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 16 229 0 162] 
#[0 6 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 16 233 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 16 237 0 31 16 241 0 35] 
#[0 6 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 16 245 0 31 16 249 0 35 3 65 0 101 16 253 0 226] 
#[0 17 1 0 31] 
#[0 6 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 17 5 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 17 9 0 31] 
#[0 6 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 17 13 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 1 0 180 17 17 0 190 7 9 0 193] 
#[0 17 21 0 108] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 17 25 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 17 29 0 104] 
#[1 17 33 0 29 3 65 0 101 1 122 0 104 17 37 0 211 4 161 0 226] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 17 41 0 108 1 246 0 112 1 246 0 113 10 29 0 180 10 33 0 218] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 17 45 0 217 5 177 0 234] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 17 49 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 17 53 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 17 57 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 17 61 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 2 57 1 115 17 65 1 137 2 73 1 140 1 21 1 144] 
#[0 17 69 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 17 73 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 1 122 0 104 17 77 0 211 4 161 0 226] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 108 0 10 0 112 0 10 0 113 17 81 0 133 5 177 0 234] 
#[1 3 65 0 101 1 122 0 104 17 85 0 211 4 161 0 226] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 17 89 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 17 93 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 17 97 0 104] 
#[1 12 201 0 19 3 146 0 108 12 205 0 168 17 101 0 170] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 6 186 0 108 0 149 0 112 0 153 0 113 17 105 0 167 2 153 1 107 1 13 1 110 1 21 1 144] 
#[0 6 190 0 19 0 108] 
#[0 17 109 0 108] 
#[0 6 194 0 19 0 31 0 108] 
#[1 2 114 0 19 2 114 0 108 17 113 0 169] 
#[1 17 117 0 22 17 121 0 31 3 65 0 101 6 129 0 104 17 125 0 185 17 129 0 226 17 133 0 246] 
#[0 17 137 0 14] 
#[1 6 198 0 14 17 141 0 19] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 13 213 0 9 1 137 0 11 1 141 0 12 17 145 0 13 1 149 0 15 13 221 0 20 13 225 0 24 17 149 0 25 17 153 0 30 1 157 0 42 1 161 0 44 17 157 0 45 17 161 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 17 165 0 81 13 245 0 85 17 169 0 87 0 125 0 90 13 249 0 92 1 193 0 97 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 1 197 0 126 3 129 0 127 17 173 0 129 17 177 0 134 1 213 0 135 1 217 0 137 17 181 0 181 17 185 0 182 17 189 0 184 1 225 0 232 9 229 0 235 17 193 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 17 197 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 181 1 137 2 73 1 140 14 113 1 144 14 117 1 149] 
#[1 6 202 0 14 6 202 0 19 17 209 0 178] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 17 213 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 17 217 0 176 12 229 0 179 12 233 0 180 12 237 0 183 1 246 1 149] 
#[0 6 206 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 214 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 101 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149 1 150] 
#[0 17 221 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 17 225 0 212 5 177 0 234] 
#[1 3 65 0 101 1 122 0 104 17 229 0 211 4 161 0 226] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 17 233 0 162] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 17 237 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 17 241 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 6 218 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 17 245 0 29] 
#[0 17 249 0 69] 
#[1 0 227 0 17 0 231 0 29] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 6 222 0 19 3 105 0 30 6 222 0 31 6 222 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 6 222 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 232 17 253 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[1 6 226 0 11 6 226 0 12 6 226 0 19 6 226 0 31 6 226 0 35 6 226 0 104 6 226 0 126 18 1 1 103 18 5 1 105] 
#[1 13 53 0 13 6 230 0 19 13 57 0 35 13 61 0 104 6 230 0 108 18 9 0 203 18 13 0 204 18 17 0 205] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 18 21 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 241 0 158 18 25 0 194 6 249 0 197] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 18 29 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 18 33 0 108 1 246 0 112 1 246 0 113 7 1 0 180 18 37 0 190 7 9 0 193] 
#[0 6 234 0 19 0 108] 
#[0 6 238 0 19 0 108] 
#[0 6 242 0 19 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 6 246 0 108 1 246 0 112 1 246 0 113 5 137 0 180 18 41 0 202] 
#[0 6 250 0 19 0 108] 
#[0 6 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 7 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 18 45 0 108] 
#[0 7 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 73 0 52 1 53 0 66 0 34 0 69 1 77 0 97 0 201 0 173 1 81 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 2 133 0 174] 
#[0 7 10 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 7 14 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 7 18 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 0 69 0 52 13 101 0 58 0 85 0 61 1 53 0 66 0 34 0 69 0 117 0 88 13 105 0 97 18 49 0 171 0 197 0 172 0 201 0 173 0 205 0 174 18 53 0 208] 
#[0 7 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 18 57 0 104] 
#[0 7 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 7 30 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 7 30 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 7 30 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 7 30 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 7 30 0 46 15 53 0 47 15 57 0 48 15 61 0 51 7 30 0 104 15 65 0 106 15 69 0 107 7 30 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 18 61 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 7 34 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 7 34 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 7 34 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 7 34 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 7 34 0 46 15 53 0 47 15 57 0 48 15 61 0 51 7 34 0 104 15 65 0 106 15 69 0 107 7 34 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 18 65 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 7 38 0 7 7 38 0 9 7 38 0 10 7 38 0 14 14 221 0 15 7 38 0 16 14 229 0 17 7 38 0 18 7 38 0 19 14 237 0 20 7 38 0 21 14 245 0 23 7 38 0 24 7 38 0 26 15 1 0 27 7 38 0 28 7 38 0 31 15 9 0 32 7 38 0 33 15 17 0 34 7 38 0 35 15 25 0 36 7 38 0 37 15 29 0 38 15 33 0 39 7 38 0 40 15 41 0 41 15 45 0 42 7 38 0 46 15 53 0 47 7 38 0 48 15 61 0 51 7 38 0 104 7 38 0 106 7 38 0 107 7 38 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 61 0 1 16 21 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 18 69 0 14 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 5 177 0 234 10 165 0 235 18 73 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 18 77 0 254 18 81 0 255 18 85 1 0 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 7 42 0 2 7 42 0 6 7 42 0 7 7 42 0 9 7 42 0 10 7 42 0 14 7 42 0 15 7 42 0 16 7 42 0 17 7 42 0 18 7 42 0 19 7 42 0 20 7 42 0 21 14 245 0 23 7 42 0 24 7 42 0 26 7 42 0 27 7 42 0 28 7 42 0 31 7 42 0 32 7 42 0 33 7 42 0 34 7 42 0 35 7 42 0 36 7 42 0 37 7 42 0 38 7 42 0 39 7 42 0 40 7 42 0 41 15 45 0 42 7 42 0 46 7 42 0 47 7 42 0 48 15 61 0 51 7 42 0 104 7 42 0 106 7 42 0 107 7 42 0 108 7 42 0 109 15 77 0 110 15 81 0 111 7 42 0 127 7 42 0 128 7 42 0 129] 
#[1 7 46 0 2 14 205 0 6 7 46 0 7 7 46 0 9 7 46 0 10 7 46 0 14 14 221 0 15 7 46 0 16 7 46 0 17 7 46 0 18 7 46 0 19 7 46 0 20 7 46 0 21 14 245 0 23 7 46 0 24 7 46 0 26 15 1 0 27 7 46 0 28 7 46 0 31 7 46 0 32 7 46 0 33 7 46 0 34 7 46 0 35 7 46 0 36 7 46 0 37 7 46 0 38 7 46 0 39 7 46 0 40 7 46 0 41 15 45 0 42 7 46 0 46 7 46 0 47 7 46 0 48 15 61 0 51 7 46 0 104 7 46 0 106 7 46 0 107 7 46 0 108 7 46 0 109 15 77 0 110 15 81 0 111 7 46 0 127 7 46 0 128 7 46 0 129] 
#[1 14 201 0 2 14 205 0 6 7 50 0 7 14 213 0 9 7 50 0 10 7 50 0 14 14 221 0 15 7 50 0 16 14 229 0 17 7 50 0 18 7 50 0 19 14 237 0 20 7 50 0 21 14 245 0 23 15 1 0 27 7 50 0 28 7 50 0 31 15 9 0 32 7 50 0 33 15 17 0 34 7 50 0 35 15 25 0 36 7 50 0 37 15 29 0 38 15 33 0 39 7 50 0 40 15 41 0 41 15 45 0 42 7 50 0 46 15 53 0 47 7 50 0 48 15 61 0 51 7 50 0 104 7 50 0 106 15 69 0 107 7 50 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 7 54 0 7 14 213 0 9 7 54 0 10 7 54 0 14 14 221 0 15 7 54 0 16 14 229 0 17 7 54 0 18 7 54 0 19 14 237 0 20 7 54 0 21 14 245 0 23 15 1 0 27 7 54 0 28 7 54 0 31 15 9 0 32 7 54 0 33 15 17 0 34 7 54 0 35 15 25 0 36 7 54 0 37 15 29 0 38 15 33 0 39 7 54 0 40 15 41 0 41 15 45 0 42 7 54 0 46 15 53 0 47 7 54 0 48 15 61 0 51 7 54 0 104 7 54 0 106 15 69 0 107 7 54 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 6 42 0 2 6 42 0 6 6 42 0 7 6 42 0 9 6 42 0 10 6 42 0 13 6 42 0 14 6 42 0 15 6 42 0 16 6 42 0 17 6 42 0 18 6 42 0 19 6 42 0 20 6 42 0 21 6 42 0 23 6 42 0 24 6 42 0 25 6 42 0 26 6 42 0 27 6 42 0 28 6 42 0 29 6 42 0 30 6 42 0 31 6 42 0 32 6 42 0 33 6 42 0 34 6 42 0 35 6 42 0 36 6 42 0 37 6 42 0 38 6 42 0 39 6 42 0 40 6 42 0 41 6 42 0 42 6 42 0 46 6 42 0 47 6 42 0 48 6 42 0 51 6 42 0 71 6 42 0 73 6 42 0 104 6 42 0 105 6 42 0 106 6 42 0 107 6 42 0 108 6 42 0 109 6 42 0 110 6 42 0 111 6 42 0 127 6 42 0 128 6 42 0 129 18 89 1 113] 
#[1 10 61 0 1 16 21 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 18 93 0 46 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 5 177 0 234 10 165 0 235 18 97 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 18 101 0 251 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 6 129 0 104 18 105 0 246] 
#[0 7 58 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 7 62 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 7 62 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 7 62 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 7 62 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 7 62 0 46 15 53 0 47 15 57 0 48 15 61 0 51 7 62 0 104 15 65 0 106 15 69 0 107 7 62 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 61 0 1 7 66 0 2 0 57 0 3 0 61 0 5 7 66 0 6 7 66 0 7 10 65 0 8 10 69 0 9 7 66 0 10 10 73 0 13 7 66 0 14 10 77 0 15 7 66 0 16 7 66 0 17 7 66 0 18 7 66 0 19 10 81 0 20 7 66 0 21 7 66 0 23 10 85 0 24 10 89 0 26 7 66 0 27 7 66 0 28 14 185 0 29 10 93 0 30 7 66 0 31 7 66 0 32 7 66 0 33 7 66 0 34 7 66 0 35 7 66 0 36 7 66 0 37 7 66 0 38 7 66 0 39 7 66 0 40 7 66 0 41 7 66 0 42 1 161 0 44 10 97 0 45 7 66 0 46 7 66 0 47 7 66 0 48 7 66 0 51 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 0 235 0 104 10 149 0 105 7 66 0 106 10 153 0 107 7 66 0 108 7 66 0 109 7 66 0 110 7 66 0 111 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 7 66 0 128 7 66 0 129 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 18 109 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 7 70 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 7 70 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 7 70 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 7 70 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 7 70 0 46 15 53 0 47 15 57 0 48 15 61 0 51 7 70 0 104 15 65 0 106 15 69 0 107 7 70 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 61 0 1 7 74 0 2 0 57 0 3 0 61 0 5 7 74 0 6 7 74 0 7 10 65 0 8 10 69 0 9 7 74 0 10 10 73 0 13 7 74 0 14 10 77 0 15 7 74 0 16 7 74 0 17 7 74 0 18 7 74 0 19 10 81 0 20 7 74 0 21 7 74 0 23 10 85 0 24 10 89 0 26 7 74 0 27 7 74 0 28 14 185 0 29 10 93 0 30 7 74 0 31 7 74 0 32 7 74 0 33 7 74 0 34 7 74 0 35 7 74 0 36 7 74 0 37 7 74 0 38 7 74 0 39 7 74 0 40 7 74 0 41 7 74 0 42 1 161 0 44 10 97 0 45 7 74 0 46 7 74 0 47 7 74 0 48 7 74 0 51 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 0 239 0 104 10 149 0 105 7 74 0 106 10 153 0 107 7 74 0 108 7 74 0 109 7 74 0 110 7 74 0 111 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 7 74 0 128 7 74 0 129 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 18 113 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 7 78 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 7 78 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 7 78 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 7 78 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 7 78 0 46 15 53 0 47 15 57 0 48 15 61 0 51 7 78 0 104 15 65 0 106 15 69 0 107 7 78 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 18 117 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 18 121 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 18 129 0 14 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 18 133 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 18 137 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 18 141 1 67 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 18 145 0 123 18 149 0 125] 
#[0 7 82 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 18 153 0 46 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 18 157 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 18 161 1 71 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 7 86 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 90 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 18 165 1 144] 
#[1 1 25 0 53 1 33 0 77 18 169 0 81 0 149 0 112 0 153 0 113 18 173 1 144] 
#[0 7 94 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 18 177 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 7 98 0 14 7 98 0 19 7 102 0 25 7 102 0 26 7 98 0 29 7 98 0 31 7 98 0 35 7 98 0 37 7 98 0 46 7 98 0 71 7 98 0 73 7 98 0 105 7 98 0 108] 
#[0 7 106 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 110 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 7 114 0 14 7 114 0 19 7 118 0 25 7 118 0 26 7 114 0 29 7 114 0 31 7 114 0 35 7 114 0 37 7 114 0 46 7 114 0 71 7 114 0 73 7 114 0 105 7 114 0 108] 
#[0 7 122 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 7 126 0 14 7 126 0 19 7 130 0 25 7 130 0 26 7 126 0 29 7 126 0 31 7 126 0 35 7 126 0 37 7 126 0 46 7 126 0 71 7 126 0 73 7 126 0 105 7 126 0 108] 
#[1 7 134 0 14 7 134 0 19 7 138 0 25 7 138 0 26 7 134 0 29 7 134 0 31 7 134 0 35 7 134 0 37 7 134 0 46 7 134 0 71 7 134 0 73 7 134 0 105 7 134 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 18 181 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 18 185 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 7 142 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 18 189 0 73] 
#[1 7 146 0 14 7 146 0 19 7 146 0 29 7 146 0 31 7 146 0 35 7 146 0 37 7 146 0 46 7 146 0 71 7 146 0 73 7 146 0 105 7 146 0 108 18 193 1 44] 
#[0 7 150 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 154 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 158 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 162 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 166 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 170 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 18 197 0 25 18 201 0 26] 
#[0 7 178 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 182 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 186 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 190 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 194 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 198 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 202 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 18 205 0 13 7 206 0 14 7 206 0 19 7 210 0 25 7 210 0 26 7 206 0 29 7 206 0 31 7 206 0 35 7 206 0 37 7 206 0 46 7 206 0 71 7 206 0 73 18 209 0 104 7 206 0 105 7 206 0 108] 
#[1 7 214 0 14 7 214 0 19 7 218 0 25 7 218 0 26 7 214 0 29 7 214 0 31 7 214 0 35 7 214 0 37 7 214 0 46 7 214 0 71 7 214 0 73 7 214 0 105 7 214 0 108] 
#[1 0 190 0 1 0 190 0 13 0 243 0 14 0 190 0 17 0 243 0 19 0 190 0 25 0 190 0 26 0 243 0 29 0 190 0 30 0 243 0 31 0 243 0 35 0 243 0 37 18 213 0 43 0 243 0 46 0 243 0 71 0 243 0 73 0 190 0 104 0 243 0 105 0 243 0 108 0 190 0 127] 
#[0 7 226 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 18 217 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 18 221 1 38 18 225 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 6 129 0 104 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 18 229 0 246] 
#[0 7 230 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 18 233 0 104 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 0 247 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 14 165 0 180 18 241 1 20 14 173 1 23 1 246 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 18 245 0 22 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 18 249 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 7 234 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 7 234 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 7 234 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 7 234 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 7 234 0 46 15 53 0 47 15 57 0 48 15 61 0 51 7 234 0 104 15 65 0 106 15 69 0 107 7 234 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 7 238 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 18 217 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 18 253 1 38 18 225 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 6 129 0 104 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 19 1 0 246] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 19 5 0 22 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 9 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 0 57 0 3 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 9 229 0 235 19 13 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 19 17 0 105] 
#[1 7 242 0 19 7 242 0 105 19 21 1 22] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 19 25 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 14 201 0 2 14 205 0 6 7 246 0 7 14 213 0 9 7 246 0 10 7 246 0 14 14 221 0 15 7 246 0 16 14 229 0 17 7 246 0 18 7 246 0 19 14 237 0 20 7 246 0 21 14 245 0 23 7 246 0 24 7 246 0 26 15 1 0 27 7 246 0 28 7 246 0 31 15 9 0 32 7 246 0 33 15 17 0 34 7 246 0 35 15 25 0 36 7 246 0 37 15 29 0 38 15 33 0 39 7 246 0 40 15 41 0 41 15 45 0 42 7 246 0 46 15 53 0 47 7 246 0 48 15 61 0 51 7 246 0 104 7 246 0 106 7 246 0 107 7 246 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 7 250 0 70 0 75 0 102] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 0 251 0 2 0 251 0 6 0 251 0 7 0 251 0 9 0 251 0 10 7 254 0 14 0 251 0 15 0 251 0 16 0 251 0 17 0 251 0 18 7 254 0 19 0 251 0 20 0 251 0 21 0 251 0 23 0 251 0 24 0 251 0 26 0 251 0 27 0 251 0 28 7 254 0 31 0 251 0 32 0 251 0 33 0 251 0 34 0 251 0 35 0 251 0 36 7 254 0 37 0 251 0 38 0 251 0 39 0 251 0 40 0 251 0 41 0 251 0 42 7 254 0 46 0 251 0 47 0 251 0 48 0 251 0 51 7 254 0 104 0 251 0 106 0 251 0 107 7 254 0 108 0 251 0 109 0 251 0 110 0 251 0 111 0 251 0 127 0 251 0 128 0 251 0 129] 
#[1 8 2 0 1 0 255 0 2 8 2 0 3 8 2 0 5 0 255 0 6 0 255 0 7 8 2 0 8 0 255 0 9 0 255 0 10 8 2 0 13 8 2 0 14 0 255 0 15 0 255 0 16 0 255 0 17 0 255 0 18 8 2 0 19 0 255 0 20 0 255 0 21 0 255 0 23 0 255 0 24 0 255 0 26 0 255 0 27 0 255 0 28 8 2 0 30 8 2 0 31 0 255 0 32 0 255 0 33 0 255 0 34 0 255 0 35 0 255 0 36 8 2 0 37 0 255 0 38 0 255 0 39 0 255 0 40 0 255 0 41 0 255 0 42 8 2 0 44 8 2 0 45 8 2 0 46 0 255 0 47 0 255 0 48 8 2 0 49 0 255 0 51 8 2 0 52 8 2 0 53 8 2 0 56 8 2 0 57 8 2 0 58 8 2 0 59 8 2 0 60 8 2 0 61 8 2 0 65 8 2 0 66 8 2 0 67 8 2 0 69 8 2 0 70 8 2 0 71 8 2 0 72 8 2 0 74 8 2 0 75 8 2 0 77 8 2 0 78 8 2 0 79 8 2 0 80 8 2 0 81 8 2 0 84 8 2 0 85 8 2 0 86 8 2 0 87 8 2 0 88 8 2 0 89 8 2 0 90 8 2 0 91 8 2 0 92 8 2 0 94 8 2 0 96 8 2 0 97 8 2 0 99 8 2 0 102 8 2 0 104 8 2 0 105 0 255 0 106 0 255 0 107 8 2 0 108 0 255 0 109 0 255 0 110 0 255 0 111 8 2 0 112 8 2 0 113 8 2 0 117 8 2 0 118 8 2 0 120 8 2 0 121 8 2 0 122 8 2 0 123 8 2 0 125 8 2 0 126 0 255 0 127 0 255 0 128 0 255 0 129 8 2 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 29 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 33 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 37 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 41 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 45 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 49 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 53 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 57 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 61 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 65 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 69 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 19 73 0 54 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 19 77 0 123 19 81 1 1 3 109 1 110 19 85 1 114 11 13 1 115 19 89 1 144] 
#[1 10 61 0 1 8 6 0 2 0 57 0 3 0 61 0 5 8 6 0 6 8 6 0 7 10 65 0 8 10 69 0 9 8 6 0 10 10 73 0 13 8 6 0 14 10 77 0 15 8 6 0 16 8 6 0 17 8 6 0 18 8 6 0 19 10 81 0 20 8 6 0 21 8 6 0 23 8 6 0 27 8 6 0 28 10 93 0 30 8 6 0 31 8 6 0 32 8 6 0 33 8 6 0 34 8 6 0 35 8 6 0 36 8 6 0 37 8 6 0 38 8 6 0 39 8 6 0 40 8 6 0 41 8 6 0 42 1 161 0 44 10 97 0 45 8 6 0 46 8 6 0 47 8 6 0 48 8 6 0 51 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 1 3 0 104 10 149 0 105 8 6 0 106 10 153 0 107 8 6 0 108 8 6 0 109 8 6 0 110 8 6 0 111 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 8 6 0 128 8 6 0 129 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 93 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 97 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 101 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 105 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 109 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 113 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 117 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 121 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 125 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 129 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 133 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 137 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 141 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 8 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 8 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 145 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 149 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 19 153 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 157 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 161 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 165 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 19 169 0 14 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 173 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 19 177 1 18 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 181 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 185 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 189 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 193 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 8 18 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 8 22 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 8 26 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 8 30 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 19 197 0 14 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 201 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 0 210 0 3 0 210 0 24 1 7 0 53 1 11 0 77 1 15 0 108 1 19 0 112 1 23 0 113 1 27 0 123 19 209 0 162 19 213 1 1 19 217 1 13 19 221 1 16 19 225 1 144] 
#[1 8 34 0 2 8 34 0 6 8 34 0 7 8 34 0 9 8 34 0 10 8 34 0 13 8 34 0 14 8 34 0 15 8 34 0 16 8 34 0 17 8 34 0 18 8 34 0 19 8 34 0 20 8 34 0 21 8 34 0 23 8 34 0 24 8 34 0 25 8 34 0 26 8 34 0 27 8 34 0 28 8 34 0 29 15 129 0 30 8 34 0 31 8 34 0 32 8 34 0 33 8 34 0 34 8 34 0 35 8 34 0 36 8 34 0 37 8 34 0 38 8 34 0 39 8 34 0 40 8 34 0 41 8 34 0 42 8 34 0 46 8 34 0 47 8 34 0 48 8 34 0 51 8 34 0 71 8 34 0 73 8 34 0 104 8 34 0 105 8 34 0 106 8 34 0 107 8 34 0 108 8 34 0 109 8 34 0 110 8 34 0 111 8 34 0 127 8 34 0 128 8 34 0 129 19 229 1 112] 
#[1 4 61 0 127 19 233 1 116] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 19 237 1 114 11 13 1 115 1 21 1 144] 
#[0 8 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 8 42 0 2 8 42 0 6 8 42 0 7 8 42 0 9 8 42 0 10 8 42 0 14 8 42 0 15 8 42 0 16 8 42 0 17 8 42 0 18 8 42 0 19 8 42 0 20 8 42 0 21 8 42 0 23 8 42 0 24 8 42 0 25 8 42 0 26 8 42 0 27 8 42 0 28 8 42 0 29 15 129 0 30 8 42 0 31 8 42 0 32 8 42 0 33 8 42 0 34 8 42 0 35 8 42 0 36 8 42 0 37 8 42 0 38 8 42 0 39 8 42 0 40 8 42 0 41 8 42 0 42 8 42 0 46 8 42 0 47 8 42 0 48 8 42 0 51 8 42 0 71 8 42 0 73 8 42 0 104 8 42 0 105 8 42 0 106 8 42 0 107 8 42 0 108 8 42 0 109 8 42 0 110 8 42 0 111 8 42 0 127 8 42 0 128 8 42 0 129 19 241 1 112] 
#[1 3 65 0 101 1 122 0 104 19 245 0 211 4 161 0 226] 
#[0 19 249 0 104] 
#[0 13 133 0 14] 
#[0 19 253 0 29] 
#[1 6 226 0 11 6 226 0 12 6 226 0 19 6 226 0 126 6 226 0 128 20 1 1 103 18 5 1 105] 
#[1 8 46 0 19 20 5 0 29 8 46 0 128] 
#[1 8 50 0 19 20 9 0 29 20 13 0 35 8 50 0 128] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 8 54 0 19 3 105 0 30 20 17 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 8 54 0 128 3 197 0 232 20 21 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 20 25 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 8 58 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 8 62 0 30] 
#[1 3 65 0 101 1 122 0 104 20 29 0 211 4 161 0 226] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 20 33 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 1 122 0 104 20 37 0 211 4 161 0 226] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 20 41 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 20 45 0 212 5 177 0 234] 
#[0 20 49 0 104] 
#[1 8 66 0 2 8 66 0 6 8 66 0 7 8 66 0 9 8 66 0 10 8 66 0 14 8 66 0 15 8 66 0 16 8 66 0 17 8 66 0 18 8 66 0 19 8 66 0 20 8 66 0 21 15 233 0 22 8 66 0 23 8 66 0 24 8 66 0 26 8 66 0 27 8 66 0 28 8 66 0 29 8 66 0 30 8 66 0 31 8 66 0 32 8 66 0 33 8 66 0 34 8 66 0 35 8 66 0 36 8 66 0 37 8 66 0 38 8 66 0 39 8 66 0 40 8 66 0 41 8 66 0 42 8 66 0 46 8 66 0 47 8 66 0 48 8 66 0 51 8 66 0 70 8 66 0 101 8 66 0 104 8 66 0 105 8 66 0 106 8 66 0 107 8 66 0 108 8 66 0 109 8 66 0 110 8 66 0 111 8 66 0 127 8 66 0 128 8 66 0 129 20 53 1 86] 
#[0 20 57 0 14] 
#[0 8 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 1 25 0 53 0 77 0 58 0 81 0 60 0 85 0 61 1 53 0 66 0 34 0 69 1 33 0 77 0 109 0 84 0 113 0 87 0 125 0 90 0 133 0 94 13 105 0 97 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 20 61 0 141 20 65 0 171 0 197 0 172 0 201 0 173 0 205 0 174 20 69 0 186 20 73 0 207 9 229 0 235 1 9 1 107 1 13 1 110 20 77 1 143 1 21 1 144] 
#[0 8 74 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 20 81 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 20 85 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 8 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 246 0 14 0 246 0 19 20 89 0 29] 
#[0 8 82 0 14 0 19] 
#[1 0 190 0 1 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 20 93 0 29 0 190 0 30 0 190 0 127] 
#[1 8 86 0 2 8 86 0 6 8 86 0 7 8 86 0 9 8 86 0 10 8 86 0 14 8 86 0 15 8 86 0 16 8 86 0 17 8 86 0 18 8 86 0 19 8 86 0 20 8 86 0 21 15 233 0 22 8 86 0 23 8 86 0 24 8 86 0 26 8 86 0 27 8 86 0 28 8 86 0 29 8 86 0 30 8 86 0 31 8 86 0 32 8 86 0 33 8 86 0 34 8 86 0 35 8 86 0 36 8 86 0 37 8 86 0 38 8 86 0 39 8 86 0 40 8 86 0 41 8 86 0 42 8 86 0 46 8 86 0 47 8 86 0 48 8 86 0 51 8 86 0 70 8 86 0 101 8 86 0 104 8 86 0 105 8 86 0 106 8 86 0 107 8 86 0 108 8 86 0 109 8 86 0 110 8 86 0 111 8 86 0 127 8 86 0 128 8 86 0 129 20 97 1 86] 
#[1 8 90 0 14 20 101 0 19 20 105 1 89] 
#[0 8 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 8 98 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 20 109 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 8 102 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 20 113 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 41 0 1 1 45 0 45] 
#[0 8 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 8 110 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149 1 150] 
#[1 0 86 0 1 1 14 0 2 0 86 0 3 0 86 0 5 1 14 0 6 1 14 0 7 0 86 0 8 1 31 0 9 1 14 0 10 0 86 0 13 1 31 0 15 1 14 0 16 1 14 0 17 1 14 0 18 1 31 0 20 1 14 0 21 1 14 0 23 1 31 0 24 1 31 0 26 1 14 0 27 1 14 0 28 0 86 0 30 1 31 0 31 1 14 0 32 1 14 0 33 1 14 0 34 1 14 0 35 1 14 0 36 1 14 0 38 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 42 0 86 0 44 0 86 0 45 1 14 0 47 1 14 0 48 1 14 0 51 0 86 0 52 0 86 0 53 0 86 0 56 0 86 0 57 0 86 0 58 0 86 0 59 0 86 0 60 0 86 0 61 0 86 0 65 0 86 0 66 0 86 0 67 0 86 0 69 0 86 0 70 0 86 0 71 0 86 0 72 0 86 0 74 0 86 0 75 0 86 0 77 0 86 0 78 0 86 0 79 0 86 0 80 0 86 0 84 0 86 0 86 0 86 0 87 0 86 0 88 0 86 0 89 0 86 0 90 0 86 0 91 0 86 0 92 0 86 0 94 0 86 0 96 0 86 0 97 0 86 0 99 0 86 0 102 0 86 0 104 0 86 0 105 1 14 0 106 1 31 0 107 1 31 0 108 1 14 0 109 1 14 0 110 1 14 0 111 0 86 0 112 0 86 0 113 0 86 0 117 0 86 0 118 0 86 0 120 0 86 0 121 0 86 0 122 0 86 0 123 0 86 0 125 0 86 0 126 1 31 0 127 1 14 0 128 1 14 0 129 0 86 1 149] 
#[1 1 18 0 2 1 18 0 6 1 18 0 7 1 18 0 9 1 18 0 10 1 18 0 15 1 18 0 16 1 18 0 17 1 18 0 18 1 18 0 20 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 35 0 31 1 18 0 32 1 18 0 33 1 18 0 34 1 18 0 35 1 18 0 36 1 18 0 38 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 42 1 18 0 47 1 18 0 48 1 18 0 51 1 18 0 106 1 18 0 107 1 18 0 108 1 18 0 109 1 18 0 110 1 18 0 111 1 18 0 127 1 18 0 128 1 18 0 129] 
#[0 8 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 8 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[1 0 57 0 3 20 117 0 74 9 229 0 235] 
#[0 8 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 8 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 8 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[1 5 210 0 2 5 210 0 6 5 210 0 7 5 210 0 9 5 210 0 10 5 210 0 15 5 210 0 16 5 210 0 17 5 210 0 18 5 210 0 20 5 210 0 21 5 210 0 23 5 210 0 24 5 210 0 26 5 210 0 27 5 210 0 28 20 121 0 31 5 210 0 32 5 210 0 33 5 210 0 34 5 210 0 35 5 210 0 36 5 210 0 38 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 42 5 210 0 47 5 210 0 48 5 210 0 51 5 210 0 106 5 210 0 107 8 134 0 108 5 210 0 109 5 210 0 110 5 210 0 111 5 210 0 127 5 210 0 128 5 210 0 129] 
#[1 8 138 0 1 5 214 0 2 8 138 0 3 8 138 0 5 5 214 0 6 5 214 0 7 8 138 0 8 1 39 0 9 5 214 0 10 8 138 0 13 1 39 0 15 5 214 0 16 5 214 0 17 5 214 0 18 1 39 0 20 5 214 0 21 5 214 0 23 1 39 0 24 1 39 0 26 5 214 0 27 5 214 0 28 8 138 0 30 1 43 0 31 5 214 0 32 5 214 0 33 5 214 0 34 5 214 0 35 5 214 0 36 5 214 0 38 5 214 0 39 5 214 0 40 5 214 0 41 5 214 0 42 8 138 0 44 8 138 0 45 5 214 0 47 5 214 0 48 5 214 0 51 8 138 0 52 8 138 0 53 8 138 0 56 8 138 0 57 8 138 0 58 8 138 0 59 8 138 0 60 8 138 0 61 8 138 0 65 8 138 0 66 8 138 0 67 8 138 0 69 8 138 0 70 8 138 0 71 8 138 0 72 8 138 0 74 8 138 0 75 8 138 0 77 8 138 0 78 8 138 0 79 8 138 0 80 8 138 0 84 8 138 0 86 8 138 0 87 8 138 0 88 8 138 0 89 8 138 0 90 8 138 0 91 8 138 0 92 8 138 0 94 8 138 0 96 8 138 0 97 8 138 0 99 8 138 0 102 8 138 0 104 8 138 0 105 5 214 0 106 1 39 0 107 8 138 0 108 5 214 0 109 5 214 0 110 5 214 0 111 8 138 0 112 8 138 0 113 8 138 0 117 8 138 0 118 8 138 0 120 8 138 0 121 8 138 0 122 8 138 0 123 8 138 0 125 8 138 0 126 1 39 0 127 5 214 0 128 5 214 0 129 8 138 1 149] 
#[0 20 129 0 108] 
#[1 10 61 0 1 1 47 0 3 0 183 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 0 187 0 30 16 25 0 31 1 161 0 44 10 97 0 45 0 191 0 52 0 195 0 53 10 105 0 56 10 109 0 57 0 14 0 58 10 113 0 59 0 199 0 60 0 14 0 61 0 14 0 65 0 14 0 66 5 33 0 67 0 14 0 69 10 117 0 70 10 121 0 71 0 14 0 72 1 246 0 74 10 125 0 75 0 203 0 77 10 129 0 78 0 14 0 79 10 133 0 80 0 14 0 84 10 137 0 86 0 207 0 87 0 14 0 88 0 14 0 89 0 211 0 90 0 14 0 91 5 37 0 92 0 14 0 94 0 14 0 96 0 215 0 97 0 14 0 99 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 8 142 0 108 0 219 0 112 0 223 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 16 33 0 135 16 37 0 137 16 41 0 141 16 45 0 157 0 49 0 158 16 49 0 180 10 165 0 235 20 133 0 238 16 57 0 239 16 61 0 240 14 189 0 241 20 137 0 242 16 69 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 6 125 0 20 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 5 33 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 5 37 0 92 1 193 0 97 6 129 0 104 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 1 197 0 126 3 129 0 127 20 141 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 137 0 244 6 141 0 246 6 145 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 6 149 1 106 1 9 1 107 6 153 1 110 2 57 1 115 20 145 1 119 6 161 1 120 6 165 1 130 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 6 169 1 144 5 73 1 149] 
#[0 8 146 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 8 150 0 19 0 128] 
#[0 8 154 0 19 0 128] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 20 149 0 162] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 20 153 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 11 189 0 13 20 157 0 14 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 11 193 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 11 197 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 20 161 0 148 20 165 0 150 20 169 0 152 20 173 0 155 9 129 0 244 9 133 1 144 9 137 1 145 20 177 1 146 20 181 1 147 20 185 1 148 5 73 1 149] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 20 153 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 11 189 0 13 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 11 193 0 45 20 189 0 46 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 11 197 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 20 161 0 148 20 165 0 150 20 169 0 152 20 173 0 155 9 129 0 244 9 133 1 144 9 137 1 145 20 177 1 146 20 181 1 147 20 185 1 148 5 73 1 149] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 20 153 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 11 189 0 13 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 11 193 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 11 197 0 104 9 85 0 105 9 89 0 106 9 93 0 107 20 193 0 108 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 20 161 0 148 20 165 0 150 20 169 0 152 20 173 0 155 9 129 0 244 9 133 1 144 9 137 1 145 20 177 1 146 20 181 1 147 20 185 1 148 5 73 1 149] 
#[0 20 197 0 31] 
#[1 8 158 0 14 20 201 0 31 8 158 0 46 8 158 0 108 20 205 0 145] 
#[1 2 233 0 13 2 241 0 45 2 245 0 104 20 209 0 138 20 213 0 156] 
#[0 20 217 0 31] 
#[0 8 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 8 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 8 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 20 221 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 20 225 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 8 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 8 178 0 14 0 19] 
#[0 8 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 20 229 0 31] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 8 186 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 241 0 158 20 233 0 197] 
#[0 8 190 0 14 0 19] 
#[0 20 237 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 20 241 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 8 194 0 108 1 246 0 112 1 246 0 113 7 1 0 180 20 245 0 193] 
#[0 8 198 0 19 0 108] 
#[0 8 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 20 249 0 31] 
#[1 20 253 0 31 3 65 0 101 21 1 0 226] 
#[0 8 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 8 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 21 5 0 108] 
#[0 8 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 9 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 21 13 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 21 17 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 21 21 0 212 5 177 0 234] 
#[0 21 25 0 31] 
#[0 8 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 21 29 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 8 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 21 33 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 21 37 0 31 21 41 0 35] 
#[0 8 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 21 45 0 31] 
#[0 8 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 8 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 21 49 0 108] 
#[0 8 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 65 0 101 1 122 0 104 21 53 0 211 4 161 0 226] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 57 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 21 61 0 210 3 197 0 232 7 41 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 21 65 0 104] 
#[0 8 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 21 69 0 108 1 246 0 112 1 246 0 113 10 29 0 180 10 33 0 218] 
#[1 3 65 0 101 1 122 0 104 21 73 0 211 4 161 0 226] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 21 77 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 1 122 0 104 21 81 0 211 4 161 0 226] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 21 85 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 21 89 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 21 93 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 1 122 0 104 21 97 0 211 4 161 0 226] 
#[0 21 101 0 104] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 21 105 0 108 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158] 
#[0 21 109 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 21 113 0 212 5 177 0 234] 
#[1 3 65 0 101 1 122 0 104 21 117 0 211 4 161 0 226] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 121 0 162] 
#[0 21 125 0 108] 
#[0 8 246 0 19 0 108] 
#[0 8 250 0 19 0 31 0 108] 
#[1 12 201 0 19 3 146 0 108 12 205 0 168 21 129 0 170] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 21 133 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 8 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 21 137 0 31 3 65 0 101 6 129 0 104 21 141 0 226 21 145 0 246] 
#[1 21 149 0 31 6 129 0 104 21 153 0 246] 
#[0 9 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 17 117 0 22 21 157 0 31 3 65 0 101 6 129 0 104 21 161 0 185 21 165 0 226 21 169 0 246] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 9 6 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 21 173 0 180 21 177 0 183 1 246 1 149] 
#[1 3 117 0 1 0 61 0 5 13 213 0 9 1 137 0 11 1 141 0 12 17 145 0 13 21 181 0 14 1 149 0 15 13 221 0 20 13 225 0 24 17 153 0 30 3 125 0 42 1 161 0 44 17 157 0 45 17 161 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 1 193 0 97 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 1 197 0 126 3 129 0 127 21 185 0 129 17 177 0 134 1 213 0 135 1 217 0 137 3 133 0 232 18 133 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 18 137 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 18 141 1 67 14 93 1 69 14 97 1 70 14 101 1 72 3 137 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 3 141 1 78 3 145 1 79 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 149 1 137 2 73 1 140 14 113 1 144 14 117 1 149] 
#[0 9 10 0 14 0 19] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 110 13 177 1 114 17 201 1 115 3 165 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 13 213 0 9 1 137 0 11 1 141 0 12 17 145 0 13 1 149 0 15 13 221 0 20 13 225 0 24 17 153 0 30 1 157 0 42 1 161 0 44 17 157 0 45 18 153 0 46 17 161 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 1 193 0 97 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 1 197 0 126 3 129 0 127 21 185 0 129 17 177 0 134 1 213 0 135 1 217 0 137 1 225 0 232 18 157 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 18 161 1 71 14 101 1 72 3 177 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 181 1 137 2 73 1 140 14 113 1 144 14 117 1 149] 
#[1 1 51 0 14 1 51 0 19 7 86 0 29 0 246 0 31 1 51 0 46 7 86 0 105] 
#[1 1 25 0 53 1 33 0 77 21 189 0 87 0 149 0 112 0 153 0 113 18 165 1 144] 
#[1 0 70 0 1 0 70 0 13 1 55 0 14 0 70 0 17 1 55 0 19 0 70 0 25 0 70 0 26 1 59 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 13 213 0 9 1 137 0 11 1 141 0 12 17 145 0 13 1 149 0 15 13 221 0 20 13 225 0 24 17 153 0 30 1 157 0 42 1 161 0 44 17 157 0 45 17 161 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 21 197 0 81 13 245 0 85 21 201 0 87 0 125 0 90 13 249 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 1 197 0 126 3 129 0 127 21 185 0 129 17 177 0 134 1 213 0 135 1 217 0 137 1 225 0 232 18 185 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 4 1 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 21 205 1 106 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 181 1 137 2 73 1 140 14 113 1 144 14 117 1 149] 
#[1 1 63 0 14 1 63 0 19 7 142 0 29 1 10 0 31 1 63 0 46 7 142 0 105] 
#[0 9 18 0 14 0 19] 
#[0 9 22 0 14 0 19] 
#[0 9 26 0 14 0 19] 
#[0 21 209 0 29] 
#[0 9 30 0 14 0 19] 
#[1 1 67 0 13 1 71 0 14 1 102 0 17 1 71 0 19 6 46 0 25 6 46 0 26 6 46 0 29 1 75 0 30 1 102 0 31 1 71 0 46 6 46 0 104 6 46 0 105 4 61 0 127 4 65 1 116 4 69 1 141] 
#[1 21 217 0 30 15 133 1 112 15 137 1 132 4 77 1 135 4 81 1 136] 
#[1 9 34 0 14 21 221 0 19 21 225 0 177] 
#[1 17 117 0 22 21 229 0 31 3 65 0 101 6 129 0 104 21 233 0 185 21 237 0 226 21 241 0 246] 
#[0 21 245 0 14] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 249 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 21 253 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 22 1 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 22 5 0 212 5 177 0 234] 
#[0 9 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 9 42 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 9 46 0 19 3 105 0 30 9 46 0 31 9 46 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 9 46 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 232 22 9 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[0 22 13 0 13] 
#[0 9 50 0 19 0 31 0 35 0 104] 
#[0 9 54 0 19 0 31 0 35 0 104] 
#[1 1 137 0 11 1 141 0 12 9 58 0 19 9 58 0 31 9 58 0 35 9 58 0 104 1 197 0 126 9 58 0 128 22 17 1 104 22 21 1 106] 
#[0 9 62 0 19 0 108] 
#[0 9 66 0 19 0 108] 
#[0 9 70 0 19 0 108] 
#[0 9 74 0 19 0 108] 
#[0 22 25 0 14] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 78 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 9 78 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 9 82 0 19 0 108] 
#[0 22 29 0 108] 
#[0 9 86 0 19 0 108] 
#[0 9 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 9 94 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 9 98 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 22 33 0 162] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 102 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 102 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 9 102 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 9 102 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 102 0 46 15 53 0 47 15 57 0 48 15 61 0 51 9 102 0 104 15 65 0 106 15 69 0 107 9 102 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 9 106 0 7 9 106 0 9 9 106 0 10 9 106 0 14 14 221 0 15 9 106 0 16 14 229 0 17 9 106 0 18 9 106 0 19 14 237 0 20 9 106 0 21 14 245 0 23 9 106 0 24 9 106 0 26 15 1 0 27 9 106 0 28 9 106 0 31 15 9 0 32 9 106 0 33 15 17 0 34 9 106 0 35 15 25 0 36 9 106 0 37 15 29 0 38 15 33 0 39 9 106 0 40 15 41 0 41 15 45 0 42 9 106 0 46 15 53 0 47 9 106 0 48 15 61 0 51 9 106 0 104 9 106 0 106 9 106 0 107 9 106 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 9 110 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 22 37 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 22 41 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 22 45 0 14] 
#[0 9 114 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 9 118 0 14 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 22 49 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 22 53 0 255 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 9 122 0 2 9 122 0 6 9 122 0 7 9 122 0 9 9 122 0 10 9 122 0 13 9 122 0 14 9 122 0 15 9 122 0 16 9 122 0 17 9 122 0 18 9 122 0 19 9 122 0 20 9 122 0 21 9 122 0 23 9 122 0 24 9 122 0 25 9 122 0 26 9 122 0 27 9 122 0 28 9 122 0 29 15 129 0 30 9 122 0 31 9 122 0 32 9 122 0 33 9 122 0 34 9 122 0 35 9 122 0 36 9 122 0 37 9 122 0 38 9 122 0 39 9 122 0 40 9 122 0 41 9 122 0 42 9 122 0 46 9 122 0 47 9 122 0 48 9 122 0 51 9 122 0 71 9 122 0 73 9 122 0 104 9 122 0 105 9 122 0 106 9 122 0 107 9 122 0 108 9 122 0 109 9 122 0 110 9 122 0 111 9 122 0 127 9 122 0 128 9 122 0 129 19 229 1 112] 
#[0 9 126 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 130 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 22 57 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 130 0 46 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 22 61 0 253] 
#[0 22 65 0 46] 
#[0 9 134 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 138 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 138 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 9 138 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 9 138 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 138 0 46 15 53 0 47 15 57 0 48 15 61 0 51 9 138 0 104 15 65 0 106 15 69 0 107 9 138 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 142 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 142 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 9 142 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 9 142 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 142 0 46 15 53 0 47 15 57 0 48 15 61 0 51 9 142 0 104 15 65 0 106 15 69 0 107 9 142 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 22 69 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 22 73 1 144 14 117 1 149] 
#[0 9 146 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 18 197 0 25] 
#[0 9 150 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 22 77 0 14 22 81 0 19 22 85 1 64 22 89 1 68] 
#[1 1 79 0 14 7 166 0 19 7 166 0 105] 
#[0 22 93 0 14] 
#[1 9 158 0 14 9 158 0 19 9 162 0 25 9 162 0 26 9 158 0 29 9 158 0 31 9 158 0 35 9 158 0 37 9 158 0 46 9 158 0 71 9 158 0 73 9 158 0 105 9 158 0 108] 
#[1 9 166 0 14 9 166 0 19 9 170 0 25 9 170 0 26 9 166 0 29 9 166 0 31 9 166 0 35 9 166 0 37 9 166 0 46 9 166 0 71 9 166 0 73 9 166 0 105 9 166 0 108] 
#[0 9 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 178 0 19 9 178 0 46 22 97 1 65] 
#[0 22 101 0 46] 
#[1 9 182 0 14 9 182 0 19 9 182 0 29 9 182 0 31 9 182 0 35 9 182 0 37 22 105 0 43 9 182 0 46 9 182 0 71 9 182 0 73 9 182 0 105 9 182 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 22 109 1 144] 
#[1 9 186 0 14 9 186 0 19 9 186 0 29 9 186 0 31 9 186 0 35 9 186 0 37 22 113 0 43 9 186 0 46 9 186 0 71 9 186 0 73 9 186 0 105 9 186 0 108] 
#[1 7 146 0 14 7 146 0 19 7 146 0 29 7 146 0 31 7 146 0 35 7 146 0 37 7 146 0 46 7 146 0 71 7 146 0 73 7 146 0 105 7 146 0 108 22 117 1 44] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 22 121 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 22 73 1 144 14 117 1 149] 
#[0 9 190 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 22 125 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 9 194 0 14 9 194 0 19 9 194 0 29 9 194 0 31 9 194 0 35 9 194 0 37 9 194 0 46 9 194 0 71 9 194 0 73 1 83 0 105 9 194 0 108 22 133 1 43] 
#[1 0 61 0 5 22 137 0 20 22 141 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 22 145 0 117 22 149 0 121 22 153 0 123 22 157 0 125 3 129 0 127 22 161 1 53 3 109 1 110 22 165 1 111 11 9 1 114 11 13 1 115 22 169 1 131 11 21 1 133 1 21 1 144] 
#[1 0 61 0 5 22 137 0 20 22 141 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 22 145 0 117 22 149 0 121 22 153 0 123 22 157 0 125 3 129 0 127 22 173 1 53 3 109 1 110 22 165 1 111 11 9 1 114 11 13 1 115 22 169 1 131 11 21 1 133 1 21 1 144] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 22 177 0 14 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 22 181 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 22 185 1 63 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 1 246 0 3 1 246 0 24 1 246 0 53 1 246 0 77 1 246 0 81 1 246 0 85 22 189 0 108 1 246 0 112 1 246 0 113 1 246 0 123 22 193 0 180 22 197 1 56 22 201 1 57 22 205 1 60 22 209 1 61] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 22 213 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 22 217 1 42 22 221 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 22 225 0 35] 
#[1 9 198 0 35 9 198 0 37 9 198 0 71 9 198 0 105 22 229 1 40] 
#[1 9 202 0 1 9 202 0 2 9 202 0 3 9 202 0 5 9 202 0 6 9 202 0 7 9 202 0 8 9 202 0 9 9 202 0 10 9 202 0 13 9 202 0 14 9 202 0 15 9 202 0 16 9 202 0 17 9 202 0 18 9 202 0 19 9 202 0 20 9 202 0 21 9 202 0 23 9 202 0 24 9 202 0 26 9 202 0 27 9 202 0 28 9 202 0 30 9 202 0 31 9 202 0 32 9 202 0 33 9 202 0 34 9 202 0 35 9 202 0 36 9 202 0 37 9 202 0 38 9 202 0 39 9 202 0 40 9 202 0 41 9 202 0 42 9 202 0 44 9 202 0 45 9 202 0 46 9 202 0 47 9 202 0 48 9 202 0 49 9 202 0 51 9 202 0 52 9 202 0 53 9 202 0 56 9 202 0 57 9 202 0 58 9 202 0 59 9 202 0 60 9 202 0 61 22 233 0 64 9 202 0 65 9 202 0 66 9 202 0 67 9 202 0 69 9 202 0 70 9 202 0 71 9 202 0 72 9 202 0 74 9 202 0 75 9 202 0 77 9 202 0 78 9 202 0 79 9 202 0 80 9 202 0 81 9 202 0 84 9 202 0 85 9 202 0 86 9 202 0 87 9 202 0 88 9 202 0 89 9 202 0 90 9 202 0 91 9 202 0 92 9 202 0 94 9 202 0 96 9 202 0 97 9 202 0 99 9 202 0 102 9 202 0 104 9 202 0 105 9 202 0 106 9 202 0 107 9 202 0 108 9 202 0 109 9 202 0 110 9 202 0 111 9 202 0 112 9 202 0 113 9 202 0 117 9 202 0 118 9 202 0 120 9 202 0 121 9 202 0 122 9 202 0 123 9 202 0 125 9 202 0 126 9 202 0 127 9 202 0 128 9 202 0 129 9 202 1 149] 
#[1 0 210 0 3 0 210 0 5 0 210 0 9 0 210 0 13 0 210 0 20 0 210 0 24 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 49 0 210 0 53 0 210 0 60 0 210 0 67 0 210 0 77 0 210 0 81 0 210 0 85 0 210 0 87 0 210 0 90 0 210 0 92 0 210 0 105 0 210 0 108 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 127 0 210 0 129 22 237 0 162 0 210 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 22 241 0 22 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 22 245 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 22 249 0 105] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 22 253 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 14 201 0 2 14 205 0 6 9 206 0 7 14 213 0 9 9 206 0 10 9 206 0 14 14 221 0 15 9 206 0 16 14 229 0 17 9 206 0 18 9 206 0 19 14 237 0 20 9 206 0 21 14 245 0 23 9 206 0 24 9 206 0 26 15 1 0 27 9 206 0 28 9 206 0 31 15 9 0 32 9 206 0 33 15 17 0 34 9 206 0 35 15 25 0 36 9 206 0 37 15 29 0 38 15 33 0 39 9 206 0 40 15 41 0 41 15 45 0 42 9 206 0 46 15 53 0 47 9 206 0 48 15 61 0 51 9 206 0 104 9 206 0 106 9 206 0 107 9 206 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 23 1 0 35] 
#[0 9 210 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 5 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 214 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 214 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 9 214 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 9 214 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 214 0 46 15 53 0 47 15 57 0 48 15 61 0 51 9 214 0 104 15 65 0 106 15 69 0 107 9 214 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 9 218 0 19 23 9 0 29 9 218 0 105] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 23 13 0 22 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 23 17 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 23 21 0 19 9 222 0 105 23 25 1 21] 
#[1 6 129 0 104 23 29 0 246] 
#[1 14 205 0 6 9 226 0 7 9 226 0 9 9 226 0 10 9 226 0 14 14 221 0 15 9 226 0 16 14 229 0 17 9 226 0 18 9 226 0 19 14 237 0 20 9 226 0 21 14 245 0 23 9 226 0 24 9 226 0 26 15 1 0 27 9 226 0 28 9 226 0 31 15 9 0 32 9 226 0 33 9 226 0 35 9 226 0 37 15 33 0 39 9 226 0 40 15 41 0 41 15 45 0 42 9 226 0 46 15 53 0 47 9 226 0 48 15 61 0 51 9 226 0 104 9 226 0 106 9 226 0 107 9 226 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 93 0 129] 
#[1 9 230 0 2 9 230 0 6 9 230 0 7 9 230 0 9 9 230 0 10 9 230 0 14 9 230 0 15 9 230 0 16 9 230 0 17 9 230 0 18 9 230 0 19 9 230 0 20 9 230 0 21 14 245 0 23 9 230 0 24 9 230 0 26 9 230 0 27 9 230 0 28 9 230 0 31 9 230 0 32 9 230 0 33 9 230 0 34 9 230 0 35 9 230 0 36 9 230 0 37 9 230 0 38 9 230 0 39 9 230 0 40 9 230 0 41 15 45 0 42 9 230 0 46 9 230 0 47 9 230 0 48 15 61 0 51 9 230 0 104 9 230 0 106 9 230 0 107 9 230 0 108 9 230 0 109 15 77 0 110 15 81 0 111 9 230 0 127 9 230 0 128 9 230 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 234 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 234 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 9 234 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 9 234 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 234 0 46 15 53 0 47 15 57 0 48 15 61 0 51 9 234 0 104 15 65 0 106 15 69 0 107 9 234 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 9 238 0 7 9 238 0 9 9 238 0 10 9 238 0 14 14 221 0 15 9 238 0 16 14 229 0 17 9 238 0 18 9 238 0 19 14 237 0 20 9 238 0 21 14 245 0 23 9 238 0 24 9 238 0 26 15 1 0 27 9 238 0 28 9 238 0 31 15 9 0 32 9 238 0 33 15 17 0 34 9 238 0 35 15 25 0 36 9 238 0 37 15 29 0 38 15 33 0 39 9 238 0 40 15 41 0 41 15 45 0 42 9 238 0 46 15 53 0 47 9 238 0 48 15 61 0 51 9 238 0 104 9 238 0 106 9 238 0 107 9 238 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 242 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 242 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 9 242 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 9 242 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 242 0 46 15 53 0 47 15 57 0 48 15 61 0 51 9 242 0 104 15 65 0 106 15 69 0 107 9 242 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 9 246 0 2 9 246 0 6 9 246 0 7 9 246 0 9 9 246 0 10 9 246 0 14 9 246 0 15 9 246 0 16 9 246 0 17 9 246 0 18 9 246 0 19 9 246 0 20 9 246 0 21 14 245 0 23 9 246 0 24 9 246 0 26 9 246 0 27 9 246 0 28 9 246 0 31 9 246 0 32 9 246 0 33 9 246 0 34 9 246 0 35 9 246 0 36 9 246 0 37 9 246 0 38 9 246 0 39 9 246 0 40 9 246 0 41 15 45 0 42 9 246 0 46 9 246 0 47 9 246 0 48 15 61 0 51 9 246 0 104 9 246 0 106 9 246 0 107 9 246 0 108 9 246 0 109 15 77 0 110 15 81 0 111 9 246 0 127 9 246 0 128 9 246 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 250 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 250 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 9 250 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 9 250 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 9 250 0 46 15 53 0 47 15 57 0 48 15 61 0 51 9 250 0 104 15 65 0 106 15 69 0 107 9 250 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 9 254 0 2 14 205 0 6 9 254 0 7 9 254 0 9 9 254 0 10 9 254 0 14 14 221 0 15 9 254 0 16 9 254 0 17 9 254 0 18 9 254 0 19 9 254 0 20 9 254 0 21 14 245 0 23 9 254 0 24 9 254 0 26 15 1 0 27 9 254 0 28 9 254 0 31 9 254 0 32 9 254 0 33 9 254 0 34 9 254 0 35 9 254 0 36 9 254 0 37 9 254 0 38 9 254 0 39 9 254 0 40 9 254 0 41 15 45 0 42 9 254 0 46 9 254 0 47 9 254 0 48 15 61 0 51 9 254 0 104 9 254 0 106 9 254 0 107 9 254 0 108 9 254 0 109 15 77 0 110 15 81 0 111 9 254 0 127 9 254 0 128 9 254 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 2 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 2 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 2 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 2 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 2 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 2 0 104 15 65 0 106 15 69 0 107 10 2 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 6 0 2 14 205 0 6 10 6 0 7 10 6 0 9 10 6 0 10 10 6 0 14 14 221 0 15 10 6 0 16 10 6 0 17 10 6 0 18 10 6 0 19 10 6 0 20 10 6 0 21 14 245 0 23 10 6 0 24 10 6 0 26 15 1 0 27 10 6 0 28 10 6 0 31 10 6 0 32 10 6 0 33 10 6 0 34 10 6 0 35 10 6 0 36 10 6 0 37 10 6 0 38 10 6 0 39 10 6 0 40 10 6 0 41 15 45 0 42 10 6 0 46 10 6 0 47 10 6 0 48 15 61 0 51 10 6 0 104 10 6 0 106 10 6 0 107 10 6 0 108 10 6 0 109 15 77 0 110 15 81 0 111 10 6 0 127 10 6 0 128 10 6 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 10 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 10 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 10 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 10 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 10 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 10 0 104 15 65 0 106 15 69 0 107 10 10 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 10 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 23 33 0 110] 
#[1 10 26 0 2 10 26 0 6 10 26 0 7 10 26 0 9 10 26 0 10 10 26 0 14 10 26 0 15 10 26 0 16 10 26 0 17 10 26 0 18 10 26 0 19 10 26 0 20 10 26 0 21 10 26 0 23 10 26 0 24 10 26 0 26 10 26 0 27 10 26 0 28 0 190 0 30 10 26 0 31 10 26 0 32 10 26 0 33 10 26 0 34 10 26 0 35 10 26 0 36 10 26 0 37 10 26 0 38 10 26 0 39 10 26 0 40 10 26 0 41 10 26 0 42 10 26 0 46 10 26 0 47 10 26 0 48 10 26 0 51 10 26 0 104 10 26 0 106 10 26 0 107 10 26 0 108 10 26 0 109 1 87 0 110 10 26 0 111 10 26 0 127 10 26 0 128 10 26 0 129] 
#[1 14 201 0 2 14 205 0 6 10 30 0 7 14 213 0 9 10 30 0 10 10 30 0 14 14 221 0 15 10 30 0 16 14 229 0 17 10 30 0 18 10 30 0 19 14 237 0 20 10 30 0 21 14 245 0 23 15 1 0 27 10 30 0 28 10 30 0 31 15 9 0 32 10 30 0 33 15 17 0 34 10 30 0 35 15 25 0 36 10 30 0 37 15 29 0 38 15 33 0 39 10 30 0 40 15 41 0 41 15 45 0 42 10 30 0 46 15 53 0 47 10 30 0 48 15 61 0 51 10 30 0 104 10 30 0 106 15 69 0 107 10 30 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 10 34 0 7 14 213 0 9 10 34 0 10 10 34 0 14 14 221 0 15 10 34 0 16 14 229 0 17 10 34 0 18 10 34 0 19 14 237 0 20 10 34 0 21 14 245 0 23 15 1 0 27 10 34 0 28 10 34 0 31 15 9 0 32 10 34 0 33 15 17 0 34 10 34 0 35 15 25 0 36 10 34 0 37 15 29 0 38 15 33 0 39 10 34 0 40 15 41 0 41 15 45 0 42 10 34 0 46 15 53 0 47 10 34 0 48 15 61 0 51 10 34 0 104 10 34 0 106 15 69 0 107 10 34 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 38 0 2 10 38 0 6 10 38 0 7 10 38 0 9 10 38 0 10 10 38 0 14 10 38 0 15 10 38 0 16 10 38 0 17 10 38 0 18 10 38 0 19 10 38 0 20 10 38 0 21 14 245 0 23 10 38 0 24 10 38 0 26 10 38 0 27 10 38 0 28 10 38 0 31 10 38 0 32 10 38 0 33 10 38 0 34 10 38 0 35 10 38 0 36 10 38 0 37 10 38 0 38 10 38 0 39 10 38 0 40 10 38 0 41 15 45 0 42 10 38 0 46 10 38 0 47 10 38 0 48 15 61 0 51 10 38 0 104 10 38 0 106 10 38 0 107 10 38 0 108 10 38 0 109 15 77 0 110 15 81 0 111 10 38 0 127 10 38 0 128 10 38 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 42 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 42 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 42 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 42 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 42 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 42 0 104 15 65 0 106 15 69 0 107 10 42 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 46 0 2 14 205 0 6 10 46 0 7 10 46 0 9 10 46 0 10 10 46 0 14 14 221 0 15 10 46 0 16 14 229 0 17 10 46 0 18 10 46 0 19 14 237 0 20 10 46 0 21 14 245 0 23 10 46 0 24 10 46 0 26 15 1 0 27 10 46 0 28 10 46 0 31 10 46 0 32 10 46 0 33 10 46 0 34 10 46 0 35 10 46 0 36 10 46 0 37 10 46 0 38 10 46 0 39 10 46 0 40 10 46 0 41 15 45 0 42 10 46 0 46 10 46 0 47 10 46 0 48 15 61 0 51 10 46 0 104 10 46 0 106 10 46 0 107 10 46 0 108 10 46 0 109 15 77 0 110 15 81 0 111 10 46 0 127 10 46 0 128 10 46 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 50 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 50 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 50 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 50 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 50 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 50 0 104 15 65 0 106 15 69 0 107 10 50 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 205 0 6 10 54 0 7 10 54 0 9 10 54 0 10 10 54 0 14 14 221 0 15 10 54 0 16 14 229 0 17 10 54 0 18 10 54 0 19 14 237 0 20 10 54 0 21 14 245 0 23 10 54 0 24 10 54 0 26 15 1 0 27 10 54 0 28 10 54 0 31 15 9 0 32 10 54 0 33 10 54 0 35 10 54 0 37 15 33 0 39 10 54 0 40 15 41 0 41 15 45 0 42 10 54 0 46 15 53 0 47 10 54 0 48 15 61 0 51 10 54 0 104 10 54 0 106 10 54 0 107 10 54 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 58 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 58 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 58 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 58 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 58 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 58 0 104 15 65 0 106 15 69 0 107 10 58 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 205 0 6 10 62 0 7 10 62 0 9 10 62 0 10 10 62 0 14 14 221 0 15 10 62 0 16 14 229 0 17 10 62 0 18 10 62 0 19 14 237 0 20 10 62 0 21 14 245 0 23 10 62 0 24 10 62 0 26 15 1 0 27 10 62 0 28 10 62 0 31 15 9 0 32 10 62 0 33 10 62 0 35 10 62 0 37 15 33 0 39 10 62 0 40 15 41 0 41 15 45 0 42 10 62 0 46 15 53 0 47 10 62 0 48 15 61 0 51 10 62 0 104 10 62 0 106 10 62 0 107 10 62 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 93 0 129] 
#[1 14 205 0 6 10 66 0 7 10 66 0 9 10 66 0 10 10 66 0 14 14 221 0 15 10 66 0 16 14 229 0 17 10 66 0 18 10 66 0 19 14 237 0 20 10 66 0 21 14 245 0 23 10 66 0 24 10 66 0 26 15 1 0 27 10 66 0 28 10 66 0 31 15 9 0 32 10 66 0 33 10 66 0 35 10 66 0 37 15 33 0 39 10 66 0 40 15 41 0 41 15 45 0 42 10 66 0 46 15 53 0 47 10 66 0 48 15 61 0 51 10 66 0 104 10 66 0 106 10 66 0 107 10 66 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 93 0 129] 
#[1 10 70 0 2 14 205 0 6 10 70 0 7 10 70 0 9 10 70 0 10 10 70 0 14 14 221 0 15 10 70 0 16 14 229 0 17 10 70 0 18 10 70 0 19 14 237 0 20 10 70 0 21 14 245 0 23 10 70 0 24 10 70 0 26 15 1 0 27 10 70 0 28 10 70 0 31 10 70 0 32 10 70 0 33 10 70 0 34 10 70 0 35 10 70 0 36 10 70 0 37 10 70 0 38 10 70 0 39 10 70 0 40 10 70 0 41 15 45 0 42 10 70 0 46 10 70 0 47 10 70 0 48 15 61 0 51 10 70 0 104 10 70 0 106 10 70 0 107 10 70 0 108 10 70 0 109 15 77 0 110 15 81 0 111 10 70 0 127 10 70 0 128 10 70 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 74 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 74 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 74 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 74 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 74 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 74 0 104 15 65 0 106 15 69 0 107 10 74 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 78 0 2 14 205 0 6 10 78 0 7 10 78 0 9 10 78 0 10 10 78 0 14 14 221 0 15 10 78 0 16 14 229 0 17 10 78 0 18 10 78 0 19 14 237 0 20 10 78 0 21 14 245 0 23 10 78 0 24 10 78 0 26 15 1 0 27 10 78 0 28 10 78 0 31 10 78 0 32 10 78 0 33 10 78 0 34 10 78 0 35 10 78 0 36 10 78 0 37 10 78 0 38 10 78 0 39 10 78 0 40 10 78 0 41 15 45 0 42 10 78 0 46 10 78 0 47 10 78 0 48 15 61 0 51 10 78 0 104 10 78 0 106 10 78 0 107 10 78 0 108 10 78 0 109 15 77 0 110 15 81 0 111 10 78 0 127 10 78 0 128 10 78 0 129] 
#[1 10 82 0 2 14 205 0 6 10 82 0 7 10 82 0 9 10 82 0 10 10 82 0 14 14 221 0 15 10 82 0 16 14 229 0 17 10 82 0 18 10 82 0 19 14 237 0 20 10 82 0 21 14 245 0 23 10 82 0 24 10 82 0 26 15 1 0 27 10 82 0 28 10 82 0 31 15 9 0 32 10 82 0 33 10 82 0 34 10 82 0 35 10 82 0 36 10 82 0 37 10 82 0 38 15 33 0 39 10 82 0 40 15 41 0 41 15 45 0 42 10 82 0 46 10 82 0 47 10 82 0 48 15 61 0 51 10 82 0 104 10 82 0 106 10 82 0 107 10 82 0 108 10 82 0 109 15 77 0 110 15 81 0 111 10 82 0 127 10 82 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 86 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 86 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 86 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 86 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 86 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 86 0 104 15 65 0 106 15 69 0 107 10 86 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 10 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 10 94 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 10 94 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 10 94 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 10 94 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 10 94 0 46 15 53 0 47 15 57 0 48 15 61 0 51 10 94 0 104 15 65 0 106 15 69 0 107 10 94 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 10 98 0 7 14 213 0 9 10 98 0 10 10 98 0 14 14 221 0 15 10 98 0 16 14 229 0 17 10 98 0 18 10 98 0 19 14 237 0 20 10 98 0 21 14 245 0 23 10 98 0 24 10 98 0 26 15 1 0 27 10 98 0 28 10 98 0 31 15 9 0 32 10 98 0 33 15 17 0 34 10 98 0 35 15 25 0 36 10 98 0 37 15 29 0 38 15 33 0 39 10 98 0 40 15 41 0 41 15 45 0 42 10 98 0 46 15 53 0 47 10 98 0 48 15 61 0 51 10 98 0 104 10 98 0 106 10 98 0 107 10 98 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 102 0 2 14 205 0 6 10 102 0 7 10 102 0 9 10 102 0 10 10 102 0 14 14 221 0 15 10 102 0 16 14 229 0 17 10 102 0 18 10 102 0 19 14 237 0 20 10 102 0 21 14 245 0 23 10 102 0 24 10 102 0 26 15 1 0 27 10 102 0 28 10 102 0 31 15 9 0 32 10 102 0 33 10 102 0 34 10 102 0 35 10 102 0 36 10 102 0 37 10 102 0 38 15 33 0 39 10 102 0 40 15 41 0 41 15 45 0 42 10 102 0 46 15 53 0 47 10 102 0 48 15 61 0 51 10 102 0 104 10 102 0 106 10 102 0 107 10 102 0 108 10 102 0 109 15 77 0 110 15 81 0 111 10 102 0 127 10 102 0 128 15 93 0 129] 
#[0 10 106 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 130 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 130 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 23 37 0 253] 
#[0 23 41 0 14] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 23 45 0 46 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 205 0 6 10 110 0 7 10 110 0 9 10 110 0 10 10 110 0 14 14 221 0 15 10 110 0 16 14 229 0 17 10 110 0 18 10 110 0 19 14 237 0 20 10 110 0 21 14 245 0 23 10 110 0 24 10 110 0 26 15 1 0 27 10 110 0 28 10 110 0 31 15 9 0 32 10 110 0 33 10 110 0 35 10 110 0 37 15 33 0 39 10 110 0 40 15 41 0 41 15 45 0 42 10 110 0 46 15 53 0 47 10 110 0 48 15 61 0 51 10 110 0 104 10 110 0 106 10 110 0 107 10 110 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 93 0 129] 
#[1 14 205 0 6 10 114 0 7 10 114 0 9 10 114 0 10 10 114 0 14 14 221 0 15 10 114 0 16 14 229 0 17 10 114 0 18 10 114 0 19 14 237 0 20 10 114 0 21 14 245 0 23 10 114 0 24 10 114 0 26 15 1 0 27 10 114 0 28 10 114 0 31 15 9 0 32 10 114 0 33 10 114 0 35 10 114 0 37 15 33 0 39 10 114 0 40 15 41 0 41 15 45 0 42 10 114 0 46 15 53 0 47 10 114 0 48 15 61 0 51 10 114 0 104 10 114 0 106 10 114 0 107 10 114 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 93 0 129] 
#[1 10 118 0 2 14 205 0 6 10 118 0 7 10 118 0 9 10 118 0 10 10 118 0 14 14 221 0 15 10 118 0 16 14 229 0 17 10 118 0 18 10 118 0 19 14 237 0 20 10 118 0 21 14 245 0 23 10 118 0 24 10 118 0 26 15 1 0 27 10 118 0 28 10 118 0 31 15 9 0 32 10 118 0 33 10 118 0 34 10 118 0 35 10 118 0 36 10 118 0 37 10 118 0 38 15 33 0 39 10 118 0 40 15 41 0 41 15 45 0 42 10 118 0 46 10 118 0 47 10 118 0 48 15 61 0 51 10 118 0 104 10 118 0 106 10 118 0 107 10 118 0 108 10 118 0 109 15 77 0 110 15 81 0 111 10 118 0 127 10 118 0 128 10 118 0 129] 
#[0 10 122 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 9 130 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 9 130 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 23 49 0 253] 
#[0 10 126 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 91 0 3 23 53 0 24 1 246 0 53 1 246 0 77 23 57 0 108 1 246 0 112 1 246 0 113 1 246 0 123 23 61 0 180 5 177 0 234 23 65 1 4 23 69 1 7 23 73 1 8] 
#[0 23 77 0 29] 
#[0 23 81 0 108] 
#[1 10 130 0 19 10 130 0 108 23 85 1 15] 
#[1 10 134 0 19 23 89 0 29 10 134 0 108] 
#[0 10 138 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 142 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 146 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 150 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 23 93 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 23 97 0 162] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 101 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 10 154 0 19 0 128] 
#[1 6 226 0 11 6 226 0 12 6 226 0 19 6 226 0 126 6 226 0 128 23 105 1 103 18 5 1 105] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 10 158 0 19 3 105 0 30 23 109 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 10 158 0 128 3 197 0 232 23 113 1 98 2 41 1 101 7 45 1 102 2 49 1 106 3 109 1 110 2 57 1 115 3 209 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 117 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 121 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 10 162 0 19 23 125 0 35 10 162 0 128] 
#[0 10 166 0 19 0 128] 
#[0 23 129 0 104] 
#[1 3 65 0 101 1 122 0 104 23 133 0 211 4 161 0 226] 
#[0 23 137 0 104] 
#[0 10 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 23 141 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 23 145 0 162] 
#[0 10 174 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 178 0 2 10 178 0 6 10 178 0 7 10 178 0 9 10 178 0 10 10 178 0 14 10 178 0 15 10 178 0 16 10 178 0 17 10 178 0 18 10 178 0 19 10 178 0 20 10 178 0 21 15 233 0 22 10 178 0 23 10 178 0 24 10 178 0 26 10 178 0 27 10 178 0 28 10 178 0 29 10 178 0 30 10 178 0 31 10 178 0 32 10 178 0 33 10 178 0 34 10 178 0 35 10 178 0 36 10 178 0 37 10 178 0 38 10 178 0 39 10 178 0 40 10 178 0 41 10 178 0 42 10 178 0 46 10 178 0 47 10 178 0 48 10 178 0 51 10 178 0 70 10 178 0 101 10 178 0 104 10 178 0 105 10 178 0 106 10 178 0 107 10 178 0 108 10 178 0 109 10 178 0 110 10 178 0 111 10 178 0 127 10 178 0 128 10 178 0 129 23 149 1 86] 
#[0 10 182 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 186 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 190 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 194 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[1 0 69 0 52 0 77 0 58 0 85 0 61 1 53 0 66 0 34 0 69 0 133 0 94 13 105 0 97 23 153 0 171 0 197 0 172 0 201 0 173 0 205 0 174 23 157 0 186 23 161 0 207] 
#[0 10 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 10 202 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 165 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 169 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 10 206 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 10 210 0 14 1 246 0 15 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 23 173 0 180 23 177 1 91] 
#[0 10 214 0 14 0 19] 
#[0 10 218 0 14 0 19] 
#[0 10 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 23 181 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 10 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 10 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 10 234 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149 1 150] 
#[0 10 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[1 5 210 0 2 5 210 0 6 5 210 0 7 5 210 0 9 5 210 0 10 5 210 0 15 5 210 0 16 5 210 0 17 5 210 0 18 5 210 0 20 5 210 0 21 5 210 0 23 5 210 0 24 5 210 0 26 5 210 0 27 5 210 0 28 20 121 0 31 5 210 0 32 5 210 0 33 5 210 0 34 5 210 0 35 5 210 0 36 5 210 0 38 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 42 5 210 0 47 5 210 0 48 5 210 0 51 5 210 0 106 5 210 0 107 10 242 0 108 5 210 0 109 5 210 0 110 5 210 0 111 5 210 0 127 5 210 0 128 5 210 0 129] 
#[0 10 246 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 250 0 19 0 128] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 23 185 0 212 5 177 0 234] 
#[1 23 189 0 13 1 25 0 53 1 33 0 77 23 193 0 87 0 149 0 112 0 153 0 113 23 197 1 144] 
#[0 10 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 11 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 11 189 0 13 11 42 0 14 11 193 0 45 11 42 0 46 11 197 0 104 11 42 0 108 23 201 0 147 11 209 0 148] 
#[0 11 46 0 14 0 31 0 46 0 108] 
#[0 11 50 0 14 0 31 0 46 0 108] 
#[0 11 54 0 14 0 31 0 46 0 108] 
#[0 11 58 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 23 205 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 11 62 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 11 66 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 11 70 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 209 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 11 74 0 19 0 108] 
#[0 11 78 0 19 0 108] 
#[0 11 82 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 11 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 23 213 0 31] 
#[0 11 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 23 217 0 212 5 177 0 234] 
#[0 11 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 23 221 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 23 225 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 11 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 23 229 0 31] 
#[0 23 233 0 31] 
#[0 11 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 23 237 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 11 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 11 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 23 241 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 23 245 0 212 5 177 0 234] 
#[1 3 65 0 101 1 122 0 104 23 249 0 211 4 161 0 226] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 23 253 0 162] 
#[0 11 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 24 1 0 104] 
#[1 3 65 0 101 1 122 0 104 24 5 0 211 4 161 0 226] 
#[0 24 9 0 104] 
#[1 3 65 0 101 1 122 0 104 24 13 0 211 4 161 0 226] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 24 17 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 65 0 101 1 122 0 104 24 21 0 211 4 161 0 226] 
#[0 24 25 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 29 0 162] 
#[0 11 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 33 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 24 37 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 24 41 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 24 45 0 212 5 177 0 234] 
#[0 11 122 0 19 0 31 0 108] 
#[0 24 49 0 108] 
#[0 11 126 0 31 0 101 0 104] 
#[0 11 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 24 53 0 31 6 129 0 104 24 57 0 246] 
#[0 11 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 11 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 11 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 11 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 24 61 0 31 3 65 0 101 6 129 0 104 24 65 0 226 24 69 0 246] 
#[1 24 73 0 31 6 129 0 104 24 77 0 246] 
#[0 11 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 13 213 0 9 1 137 0 11 1 141 0 12 17 145 0 13 1 149 0 15 13 221 0 20 13 225 0 24 17 149 0 25 17 153 0 30 1 157 0 42 1 161 0 44 17 157 0 45 17 161 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 1 193 0 97 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 1 197 0 126 3 129 0 127 21 185 0 129 17 177 0 134 1 213 0 135 1 217 0 137 17 189 0 184 1 225 0 232 9 229 0 235 17 193 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 17 197 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 181 1 137 2 73 1 140 14 113 1 144 14 117 1 149] 
#[1 6 202 0 14 6 202 0 19 24 81 0 178] 
#[1 1 95 0 14 1 95 0 19 9 150 0 29 2 6 0 31 1 95 0 46 9 150 0 105] 
#[1 3 117 0 1 0 61 0 5 13 213 0 9 1 137 0 11 1 141 0 12 17 145 0 13 1 149 0 15 13 221 0 20 13 225 0 24 17 153 0 30 1 157 0 42 1 161 0 44 17 157 0 45 17 161 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 24 85 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 1 197 0 126 3 129 0 127 21 185 0 129 17 177 0 134 1 213 0 135 1 217 0 137 1 225 0 232 18 185 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 4 1 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 4 9 1 106 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 181 1 137 2 73 1 140 14 113 1 144 14 117 1 149] 
#[1 11 154 0 14 11 154 0 19 24 89 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 24 93 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 13 213 0 9 17 145 0 13 1 149 0 15 13 221 0 20 13 225 0 24 17 153 0 30 1 157 0 42 1 161 0 44 17 157 0 45 17 161 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 13 241 0 81 13 245 0 85 24 97 0 87 0 125 0 90 13 249 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 21 185 0 129 17 177 0 134 1 213 0 135 1 217 0 137 1 225 0 232 22 121 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 6 45 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 181 1 137 2 73 1 140 22 73 1 144 14 117 1 149] 
#[1 0 70 0 1 0 70 0 13 1 99 0 14 1 99 0 19 0 70 0 25 0 70 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 24 101 0 81 24 105 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 6 53 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 24 109 0 25 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 24 113 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 4 53 0 13 2 62 0 14 2 62 0 17 2 62 0 19 2 62 0 30 2 62 0 31 2 62 0 46 4 61 0 127 24 117 1 116 6 121 1 141] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 19 237 1 114 17 201 1 115 6 173 1 140 1 21 1 144] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 11 162 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 21 173 0 180 24 121 0 183 1 246 1 149] 
#[0 11 166 0 14 0 19] 
#[0 11 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 24 125 0 31 3 65 0 101 6 129 0 104 24 129 0 226 24 133 0 246] 
#[1 24 137 0 31 6 129 0 104 24 141 0 246] 
#[0 11 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 17 117 0 22 24 145 0 31 3 65 0 101 6 129 0 104 24 149 0 185 24 153 0 226 24 157 0 246] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 24 161 0 212 5 177 0 234] 
#[0 11 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 165 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 24 169 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 11 182 0 19 0 31 0 35 0 104] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 24 173 0 14 1 246 0 15 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 11 129 0 180 24 177 1 87 11 137 1 88 11 141 1 91 11 145 1 92] 
#[0 11 186 0 11 0 12 0 19 0 31 0 35 0 104 0 126 0 128] 
#[1 24 181 0 17 11 190 0 19 11 190 0 31 11 190 0 35 11 190 0 104 11 190 0 128] 
#[0 11 194 0 19 0 108] 
#[0 11 198 0 19 0 108] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 24 185 0 212 5 177 0 234] 
#[0 11 202 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 206 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 11 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 11 214 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 22 41 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 11 218 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 24 189 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 24 193 0 19 11 222 0 46 24 197 0 252] 
#[0 11 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 230 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 190 0 1 0 190 0 13 1 103 0 14 1 103 0 19 0 190 0 25 1 103 0 29 0 190 0 30 1 103 0 31 1 103 0 35 1 103 0 37 24 201 0 43 1 103 0 46 1 103 0 71 1 103 0 73 0 190 0 104 1 103 0 105 1 103 0 108 0 190 0 127] 
#[0 11 234 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 11 238 0 14 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 24 205 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 11 242 0 14 0 19] 
#[1 11 246 0 14 24 209 0 19 24 213 1 64] 
#[0 11 250 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 24 217 0 19 11 254 0 46 24 221 1 64] 
#[0 12 2 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 24 225 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 12 6 0 14 12 6 0 19 12 6 0 29 12 6 0 31 12 6 0 35 12 6 0 37 24 229 0 43 12 6 0 46 12 6 0 71 12 6 0 73 12 6 0 105 12 6 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 24 233 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 12 10 0 14 12 10 0 19 12 10 0 29 12 10 0 31 12 10 0 35 12 10 0 37 12 10 0 46 12 10 0 71 12 10 0 73 1 107 0 105 12 10 0 108 22 133 1 43] 
#[0 12 14 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 6 129 0 104 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 24 237 0 246] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 24 241 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 12 18 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 24 245 0 123 24 249 0 125] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 110 13 177 1 114 11 13 1 115 1 21 1 144] 
#[0 7 102 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 118 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 130 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 138 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 22 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 210 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 218 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 26 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 30 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 178 0 14 9 178 0 19 24 253 1 65] 
#[0 25 1 0 14] 
#[0 12 34 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 57 0 3 25 5 0 24 1 25 0 53 1 33 0 77 25 9 0 81 25 13 0 85 0 149 0 112 0 153 0 113 19 77 0 123 9 229 0 235 25 17 1 1 25 21 1 144] 
#[0 25 25 0 108] 
#[1 25 29 0 19 12 38 0 108] 
#[1 12 42 0 19 12 42 0 108 25 33 1 59] 
#[0 12 46 0 108] 
#[0 12 50 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 198 0 35 9 198 0 37 9 198 0 71 9 198 0 105 25 37 1 40] 
#[1 7 146 0 35 7 146 0 37 7 146 0 71 7 146 0 105 25 41 1 44] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 25 45 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 12 54 0 35 12 54 0 37 12 54 0 71 25 49 0 105 25 53 1 39] 
#[1 10 121 0 71 6 129 0 104 25 57 0 246 25 61 1 30 25 65 1 31] 
#[1 1 111 0 3 12 58 0 5 12 58 0 9 12 58 0 13 12 58 0 20 12 58 0 24 12 58 0 30 12 58 0 44 12 58 0 45 12 58 0 49 12 58 0 53 12 58 0 60 12 58 0 67 12 58 0 77 12 58 0 81 12 58 0 85 12 58 0 87 12 58 0 90 12 58 0 92 12 58 0 105 25 69 0 108 12 58 0 112 12 58 0 113 12 58 0 117 12 58 0 118 12 58 0 120 12 58 0 121 12 58 0 122 12 58 0 123 12 58 0 125 12 58 0 127 12 58 0 129 5 177 0 234 25 73 1 33 25 77 1 35 12 58 1 149] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 25 81 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 12 62 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 12 62 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 12 62 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 12 62 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 12 62 0 46 15 53 0 47 15 57 0 48 15 61 0 51 12 62 0 104 15 65 0 106 15 69 0 107 12 62 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 25 85 0 22 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 25 89 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 6 129 0 104 25 93 0 246] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 25 97 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 6 129 0 104 25 101 0 246] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 25 105 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 25 109 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 12 66 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 12 66 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 12 66 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 12 66 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 12 66 0 46 15 53 0 47 15 57 0 48 15 61 0 51 12 66 0 104 15 65 0 106 15 69 0 107 12 66 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 115 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 14 165 0 180 25 113 1 23 1 246 1 149] 
#[0 12 74 0 19 0 105] 
#[0 12 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 25 117 0 14 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 19 173 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 25 121 1 18 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 12 82 0 14 25 125 0 19 24 197 0 252] 
#[0 12 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 25 129 0 14 25 133 0 19 24 197 0 252] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 25 137 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 12 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 57 0 3 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 19 77 0 123 9 229 0 235 25 141 1 1 25 145 1 144] 
#[0 25 149 0 108] 
#[1 12 98 0 19 12 98 0 108 25 153 1 6] 
#[0 25 157 0 108] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 25 161 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 12 102 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 25 165 0 19 12 106 0 108 25 169 1 14] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 25 173 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 177 0 162] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 25 181 0 212 5 177 0 234] 
#[0 12 110 0 19 0 128] 
#[0 12 114 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 25 185 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 12 118 0 19 25 189 0 35 12 118 0 128] 
#[0 12 122 0 19 0 128] 
#[0 12 126 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 25 193 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 197 0 162] 
#[0 25 201 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 205 0 162] 
#[0 12 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 25 209 0 212 5 177 0 234] 
#[0 12 134 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 138 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 142 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 146 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 150 0 14 0 19] 
#[0 12 154 0 14 0 19] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 25 213 0 25 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 15 241 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 9 229 0 235 15 245 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 15 249 1 144] 
#[0 12 158 0 14 0 19] 
#[1 25 217 0 29 25 221 0 31 25 225 0 35] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 25 229 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 20 153 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 11 189 0 13 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 11 193 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 11 197 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 20 161 0 148 25 233 0 150 25 237 0 151 20 169 0 152 20 173 0 155 9 129 0 244 9 133 1 144 9 137 1 145 20 177 1 146 20 181 1 147 20 185 1 148 5 73 1 149] 
#[0 25 241 0 29] 
#[0 25 245 0 29] 
#[0 12 162 0 14 0 31 0 46 0 108] 
#[0 12 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 12 170 0 19 0 108] 
#[0 12 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 25 249 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 25 253 0 212 5 177 0 234] 
#[0 12 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 12 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 12 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 26 1 0 31] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 5 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 26 9 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 26 13 0 104] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 26 17 0 212 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 21 0 162] 
#[0 26 25 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 29 0 162] 
#[0 26 33 0 104] 
#[1 3 65 0 101 1 122 0 104 26 37 0 211 4 161 0 226] 
#[0 26 41 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 45 0 162] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 26 49 0 212 5 177 0 234] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 26 53 0 212 5 177 0 234] 
#[0 12 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 57 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 26 61 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 12 194 0 19 0 31 0 108] 
#[0 12 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 12 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 12 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 26 65 0 31 6 129 0 104 26 69 0 246] 
#[0 12 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 12 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 12 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 12 222 0 14 26 73 0 19 21 225 0 177] 
#[1 3 117 0 1 0 61 0 5 13 213 0 9 17 145 0 13 1 149 0 15 13 221 0 20 13 225 0 24 17 153 0 30 1 157 0 42 1 161 0 44 17 157 0 45 17 161 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 13 237 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 21 185 0 129 17 177 0 134 1 213 0 135 1 217 0 137 1 225 0 232 22 121 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 69 1 52 18 125 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 6 45 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 17 201 1 115 14 109 1 131 17 205 1 133 2 65 1 134 3 181 1 137 2 73 1 140 22 73 1 144 14 117 1 149] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 26 77 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 12 226 0 14 0 19] 
#[1 0 70 0 1 0 70 0 13 1 119 0 14 1 119 0 19 0 70 0 25 0 70 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 26 81 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 11 85 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 0 70 0 1 0 70 0 13 1 123 0 14 1 123 0 19 0 70 0 30 0 70 0 127] 
#[0 12 238 0 14 0 19] 
#[0 12 242 0 14 0 19] 
#[1 10 142 0 13 1 127 0 14 3 34 0 17 1 127 0 19 10 142 0 25 10 142 0 26 10 142 0 29 1 127 0 30 3 34 0 31 1 127 0 46 10 142 0 104 10 142 0 105] 
#[0 12 246 0 14 0 19] 
#[0 12 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 26 85 0 31 6 129 0 104 26 89 0 246] 
#[0 12 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 26 93 0 31 3 65 0 101 6 129 0 104 26 97 0 226 26 101 0 246] 
#[1 26 105 0 31 6 129 0 104 26 109 0 246] 
#[0 13 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 26 113 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 26 117 0 212 5 177 0 234] 
#[0 13 18 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 15 233 0 22 1 131 0 29 26 121 1 86] 
#[0 26 125 0 14] 
#[0 13 22 0 11 0 12 0 19 0 31 0 35 0 104 0 126 0 128] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 26 129 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 13 26 0 46 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 13 30 0 46 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 26 133 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 13 34 0 14 0 19 0 46] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 26 137 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 13 38 0 14 0 19 0 46] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 42 0 14 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 24 205 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 13 46 0 14 0 19] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 50 0 46 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 24 205 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 13 54 0 14 0 19 0 46] 
#[0 13 58 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 26 141 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 13 62 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 13 66 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 13 70 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 9 162 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 9 170 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 13 74 0 14 26 145 0 19 24 221 1 64] 
#[0 13 78 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 13 82 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 26 149 1 144] 
#[1 1 25 0 53 1 33 0 77 26 153 0 81 0 149 0 112 0 153 0 113 26 157 1 144] 
#[0 26 161 0 29] 
#[1 13 86 0 19 26 165 0 29 13 86 0 108] 
#[0 13 90 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 1 246 0 3 1 246 0 24 13 94 0 108 26 169 0 180 26 173 1 61] 
#[1 1 135 0 19 13 98 0 108 26 181 1 58] 
#[1 13 102 0 35 13 102 0 37 13 102 0 71 25 49 0 105 25 53 1 39] 
#[1 1 139 0 35 1 139 0 37 1 139 0 71 1 143 0 105 22 133 1 43] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 6 129 0 104 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 26 185 0 246] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 26 189 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 13 106 0 35 0 37 0 71 0 105] 
#[0 13 110 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 13 114 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 13 118 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 13 122 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 26 193 0 108] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 26 197 0 180 26 201 1 34 26 205 1 37 1 246 1 149] 
#[1 6 129 0 104 26 209 0 246] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 26 213 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 21 1 94 2 29 1 96 2 33 1 97 4 5 1 102 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 13 126 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 13 126 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 13 126 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 13 126 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 13 126 0 46 15 53 0 47 15 57 0 48 15 61 0 51 13 126 0 104 15 65 0 106 15 69 0 107 13 126 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 13 130 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 6 129 0 104 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129 26 217 0 246] 
#[0 13 134 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 13 138 0 19 0 105] 
#[1 6 129 0 104 26 221 0 246] 
#[0 13 142 0 19 0 105] 
#[0 13 146 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 26 225 0 14] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 13 150 0 14 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 26 133 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 13 154 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 26 229 0 14 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 26 133 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 13 158 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 26 233 0 29] 
#[1 13 162 0 19 26 237 0 29 13 162 0 108] 
#[0 13 166 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 26 241 0 19 13 170 0 108 26 245 1 5] 
#[0 13 174 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 13 178 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 13 178 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 1 25 0 53 1 33 0 77 13 182 0 108 0 149 0 112 0 153 0 113 19 77 0 123 19 213 1 1 26 249 1 16 19 225 1 144] 
#[0 13 186 0 19 0 108] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 13 190 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 13 190 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 26 253 0 212 5 177 0 234] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 1 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 13 194 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 27 5 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 13 198 0 19 0 128] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 9 0 212 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 13 0 162] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 17 0 212 5 177 0 234] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 21 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 13 202 0 14] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 232 27 25 1 73 1 233 1 74 1 237 1 75 1 241 1 76 1 245 1 77 1 249 1 80 1 253 1 81 2 1 1 82 2 5 1 83 2 9 1 84 2 13 1 85 2 17 1 93 2 21 1 94 2 25 1 95 2 29 1 96 2 33 1 97 2 37 1 98 2 41 1 101 2 45 1 102 2 49 1 106 1 9 1 107 2 53 1 110 2 57 1 115 2 61 1 133 2 65 1 134 3 181 1 137 2 73 1 140 1 21 1 144] 
#[0 13 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 27 29 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 13 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 20 153 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 11 189 0 13 27 33 0 14 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 11 193 0 45 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 11 197 0 104 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 20 161 0 148 27 37 0 150 20 169 0 152 20 173 0 155 9 129 0 244 9 133 1 144 9 137 1 145 20 177 1 146 20 181 1 147 20 185 1 148 5 73 1 149] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 27 41 0 153 27 45 1 144] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 27 49 0 153 27 45 1 144] 
#[0 13 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 53 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 13 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 57 0 212 5 177 0 234] 
#[0 13 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 61 0 162] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 65 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 69 0 212 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 73 0 162] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 77 0 212 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 81 0 162] 
#[0 27 85 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 89 0 162] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 93 0 212 5 177 0 234] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 97 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 101 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 105 0 212 5 177 0 234] 
#[0 13 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 13 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 13 242 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 21 173 0 180 24 121 0 183 1 246 1 149] 
#[0 13 246 0 14 0 19] 
#[1 0 70 0 1 0 70 0 13 1 147 0 14 1 147 0 19 0 70 0 30 0 70 0 127] 
#[0 13 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 27 109 0 31 6 129 0 104 27 113 0 246] 
#[0 14 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 18 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 117 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 1 151 0 29] 
#[1 15 233 0 22 1 155 0 29 27 121 1 86] 
#[0 14 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 30 0 14 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 30 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 14 30 0 46 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 1 159 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 14 34 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 14 38 0 14 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 24 205 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 14 42 0 19 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 27 125 1 144] 
#[0 14 46 0 19 0 108] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 27 129 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 13 253 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 27 133 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[1 0 57 0 3 25 5 0 24 9 229 0 235] 
#[0 14 50 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 112 1 246 0 113 1 246 0 123 27 137 0 180 27 141 1 60] 
#[0 14 54 0 19 0 108] 
#[1 14 58 0 1 14 58 0 2 14 58 0 3 14 58 0 5 14 58 0 6 14 58 0 7 14 58 0 8 14 58 0 9 14 58 0 10 14 58 0 13 14 58 0 14 14 58 0 15 14 58 0 16 14 58 0 17 14 58 0 18 14 58 0 19 14 58 0 20 14 58 0 21 14 58 0 23 14 58 0 24 14 58 0 26 14 58 0 27 14 58 0 28 14 58 0 30 14 58 0 31 14 58 0 32 14 58 0 33 14 58 0 34 14 58 0 35 14 58 0 36 14 58 0 37 14 58 0 38 14 58 0 39 14 58 0 40 14 58 0 41 14 58 0 42 14 58 0 44 14 58 0 45 14 58 0 46 14 58 0 47 14 58 0 48 14 58 0 49 14 58 0 51 14 58 0 52 14 58 0 53 14 58 0 56 14 58 0 57 14 58 0 58 14 58 0 59 14 58 0 60 14 58 0 61 27 145 0 64 14 58 0 65 14 58 0 66 14 58 0 67 14 58 0 69 14 58 0 70 14 58 0 71 14 58 0 72 14 58 0 74 14 58 0 75 14 58 0 77 14 58 0 78 14 58 0 79 14 58 0 80 14 58 0 81 14 58 0 84 14 58 0 85 14 58 0 86 14 58 0 87 14 58 0 88 14 58 0 89 14 58 0 90 14 58 0 91 14 58 0 92 14 58 0 94 14 58 0 96 14 58 0 97 14 58 0 99 14 58 0 102 14 58 0 104 14 58 0 105 14 58 0 106 14 58 0 107 14 58 0 108 14 58 0 109 14 58 0 110 14 58 0 111 14 58 0 112 14 58 0 113 14 58 0 117 14 58 0 118 14 58 0 120 14 58 0 121 14 58 0 122 14 58 0 123 14 58 0 125 14 58 0 126 14 58 0 127 14 58 0 128 14 58 0 129 14 58 1 149] 
#[0 14 62 0 35 0 37 0 71 0 105] 
#[0 14 66 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 0 57 0 3 0 61 0 5 13 213 0 9 13 217 0 13 13 221 0 20 13 225 0 24 10 93 0 30 1 161 0 44 13 229 0 45 13 233 0 49 1 25 0 53 1 29 0 60 13 237 0 67 1 33 0 77 13 241 0 81 13 245 0 85 0 113 0 87 0 125 0 90 13 249 0 92 18 217 0 105 0 149 0 112 0 153 0 113 14 1 0 117 14 5 0 118 14 9 0 120 14 13 0 121 14 17 0 122 14 21 0 123 14 25 0 125 3 129 0 127 14 29 0 129 14 33 0 134 1 213 0 135 1 217 0 137 9 229 0 235 27 149 1 38 18 225 1 42 14 41 1 45 14 45 1 46 14 49 1 47 14 53 1 48 14 57 1 49 14 61 1 50 14 65 1 51 14 69 1 52 14 73 1 53 14 77 1 54 14 81 1 55 14 85 1 62 14 89 1 66 14 93 1 69 14 97 1 70 14 101 1 72 1 9 1 107 2 53 1 110 14 105 1 111 11 9 1 114 11 13 1 115 14 109 1 131 11 21 1 133 14 113 1 144 14 117 1 149] 
#[0 14 70 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 60 0 67 0 77 0 81 0 85 0 87 0 90 0 92 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 127 0 129 1 149] 
#[0 27 153 0 37] 
#[0 14 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 6 129 0 104 27 157 0 246] 
#[0 14 78 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 14 82 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 14 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 14 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 27 161 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 27 165 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[1 1 246 0 3 23 53 0 24 1 246 0 53 1 246 0 77 14 94 0 108 1 246 0 112 1 246 0 113 1 246 0 123 23 61 0 180 27 169 1 7 27 173 1 8] 
#[0 14 98 0 19 0 108] 
#[0 14 102 0 19 0 108] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 177 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 110 0 19 0 128] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 181 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 185 0 212 5 177 0 234] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 189 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 27 193 0 31 27 197 0 35] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 27 201 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 7 221 0 1 7 225 0 2 7 229 0 3 27 205 0 4 7 237 0 5 7 241 0 6 7 245 0 7 7 249 0 9 7 253 0 10 8 1 0 11 8 5 0 12 8 13 0 15 8 17 0 16 8 21 0 17 8 25 0 18 8 29 0 19 8 33 0 20 8 37 0 21 8 41 0 22 8 45 0 23 8 49 0 24 8 53 0 25 8 57 0 26 8 61 0 27 8 65 0 28 8 69 0 29 8 73 0 30 8 77 0 31 8 81 0 32 8 85 0 33 8 89 0 34 8 93 0 35 8 97 0 36 8 101 0 37 8 105 0 38 8 109 0 39 8 113 0 40 8 117 0 41 8 121 0 42 8 125 0 43 8 129 0 44 8 133 0 47 8 137 0 48 8 141 0 49 8 145 0 50 8 149 0 51 8 153 0 52 1 25 0 53 8 157 0 54 8 161 0 55 8 165 0 56 8 169 0 57 8 173 0 58 8 177 0 59 8 181 0 60 8 185 0 62 8 189 0 63 8 193 0 64 8 197 0 65 8 201 0 66 5 33 0 67 8 205 0 68 8 209 0 69 8 213 0 70 8 217 0 71 8 221 0 72 8 225 0 73 8 229 0 74 8 233 0 75 8 237 0 76 1 33 0 77 8 241 0 78 8 245 0 79 8 249 0 80 8 253 0 81 9 1 0 82 9 5 0 83 9 9 0 84 9 13 0 85 9 17 0 86 9 21 0 87 9 25 0 88 9 29 0 89 9 33 0 90 9 37 0 91 5 37 0 92 9 41 0 93 9 45 0 94 9 49 0 95 9 53 0 96 9 57 0 97 9 61 0 98 9 65 0 99 9 69 0 100 9 73 0 101 9 77 0 102 9 81 0 103 9 85 0 105 9 89 0 106 9 93 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 9 97 0 126 9 101 0 127 9 105 0 128 9 109 0 129 27 209 0 154 27 213 0 155 9 129 0 244 9 133 1 144 9 137 1 145 27 217 1 146 27 221 1 147 27 225 1 148 5 73 1 149] 
#[0 14 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 14 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 14 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 14 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 14 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 229 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 233 0 212 5 177 0 234] 
#[0 14 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 237 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 241 0 212 5 177 0 234] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 245 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 27 249 0 212 5 177 0 234] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 253 0 162] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 28 1 0 212 5 177 0 234] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 5 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 9 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 1 163 0 29] 
#[0 14 162 0 19 0 108] 
#[0 14 166 0 19 0 108] 
#[0 14 170 0 19 0 108] 
#[1 0 57 0 3 1 25 0 53 1 33 0 77 25 9 0 81 25 13 0 85 0 149 0 112 0 153 0 113 19 77 0 123 9 229 0 235 25 17 1 1 25 21 1 144] 
#[0 14 174 0 19 0 108] 
#[1 10 121 0 71 6 129 0 104 28 13 0 246 28 17 1 30 28 21 1 31] 
#[1 14 178 0 37 28 25 0 71 28 29 1 41] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 14 189 0 241 28 33 0 242 28 37 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 28 41 1 36 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 14 182 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 186 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 14 186 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 190 0 19 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 14 190 0 108 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 14 194 0 19 0 108] 
#[0 14 198 0 108] 
#[0 14 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 45 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 14 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 28 49 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 14 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 14 222 0 15 0 17 0 42] 
#[1 8 13 0 15 8 21 0 17 8 121 0 42 28 53 0 155] 
#[0 14 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 14 230 0 15 0 17 0 42] 
#[0 14 234 0 15 0 17 0 42] 
#[0 14 238 0 15 0 17 0 42] 
#[0 14 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 57 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 61 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 65 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[1 0 103 0 3 3 14 0 5 3 14 0 30 3 14 0 52 3 14 0 53 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 66 3 14 0 69 3 14 0 77 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 94 3 14 0 97 3 14 0 108 3 14 0 112 3 14 0 113 28 69 0 212 5 177 0 234] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 73 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 14 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 15 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 15 6 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 15 10 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 15 14 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[1 10 61 0 1 0 57 0 3 0 61 0 5 10 65 0 8 10 69 0 9 10 73 0 13 10 77 0 15 10 81 0 20 10 85 0 24 10 89 0 26 10 93 0 30 1 161 0 44 10 97 0 45 10 101 0 52 1 25 0 53 10 105 0 56 10 109 0 57 10 113 0 59 1 29 0 60 5 33 0 67 10 117 0 70 10 121 0 71 10 125 0 75 1 33 0 77 10 129 0 78 10 133 0 80 10 137 0 86 0 113 0 87 0 125 0 90 5 37 0 92 10 141 0 97 10 145 0 102 6 129 0 104 10 149 0 105 10 153 0 107 0 149 0 112 0 153 0 113 5 41 0 117 5 45 0 118 5 49 0 120 5 53 0 121 5 57 0 122 5 61 0 123 5 65 0 125 10 157 0 126 3 129 0 127 10 161 0 134 1 213 0 135 1 217 0 137 10 165 0 235 28 77 0 241 10 173 0 242 10 177 0 243 10 181 0 244 10 185 0 245 10 189 0 246 10 193 0 249 10 197 0 250 10 201 1 2 10 205 1 3 10 209 1 9 10 213 1 11 10 217 1 12 10 221 1 19 10 225 1 24 10 229 1 25 10 233 1 26 10 237 1 27 10 241 1 28 10 245 1 29 10 249 1 30 10 253 1 31 11 1 1 32 1 9 1 107 2 53 1 110 11 5 1 111 11 9 1 114 11 13 1 115 11 17 1 131 11 21 1 133 1 21 1 144 5 73 1 149] 
#[0 15 18 0 37] 
#[1 5 210 0 2 5 210 0 6 5 210 0 7 5 210 0 9 5 210 0 10 5 210 0 15 5 210 0 16 5 210 0 17 5 210 0 18 28 81 0 19 5 210 0 20 5 210 0 21 5 210 0 23 5 210 0 24 5 210 0 26 5 210 0 27 5 210 0 28 5 210 0 32 5 210 0 33 5 210 0 34 5 210 0 35 5 210 0 36 5 210 0 38 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 42 5 210 0 47 5 210 0 48 5 210 0 51 5 210 0 106 5 210 0 107 15 22 0 108 5 210 0 109 5 210 0 110 5 210 0 111 5 210 0 127 5 210 0 128 5 210 0 129] 
#[1 5 214 0 2 15 26 0 3 15 26 0 5 5 214 0 6 5 214 0 7 1 167 0 9 5 214 0 10 15 26 0 13 5 214 0 15 5 214 0 16 5 214 0 17 5 214 0 18 28 85 0 19 1 167 0 20 5 214 0 21 5 214 0 23 1 167 0 24 5 214 0 26 5 214 0 27 5 214 0 28 15 26 0 30 5 214 0 32 5 214 0 33 5 214 0 34 5 214 0 35 5 214 0 36 5 214 0 38 5 214 0 39 5 214 0 40 5 214 0 41 5 214 0 42 15 26 0 44 15 26 0 45 5 214 0 47 5 214 0 48 15 26 0 49 5 214 0 51 15 26 0 53 15 26 0 60 15 26 0 67 15 26 0 77 15 26 0 81 15 26 0 85 15 26 0 87 15 26 0 90 15 26 0 92 15 26 0 105 5 214 0 106 5 214 0 107 15 30 0 108 5 214 0 109 5 214 0 110 5 214 0 111 15 26 0 112 15 26 0 113 15 26 0 117 15 26 0 118 15 26 0 120 15 26 0 121 15 26 0 122 15 26 0 123 15 26 0 125 1 167 0 127 5 214 0 128 1 167 0 129 15 26 1 149] 
#[0 15 34 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 60 0 67 0 77 0 81 0 85 0 87 0 90 0 92 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 127 0 129 1 149] 
#[0 15 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 28 89 0 31 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[0 15 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 149] 
#[0 15 46 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 15 50 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[0 15 54 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 93 0 108 1 246 0 112 1 246 0 113 15 221 0 180 15 225 0 233] 
#[0 15 58 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150] 
#[1 14 201 0 2 14 205 0 6 14 209 0 7 14 213 0 9 14 217 0 10 14 221 0 15 14 225 0 16 14 229 0 17 14 233 0 18 14 237 0 20 14 241 0 21 14 245 0 23 14 249 0 24 14 253 0 26 15 1 0 27 15 5 0 28 15 9 0 32 15 13 0 33 15 17 0 34 15 21 0 35 15 25 0 36 15 62 0 37 15 29 0 38 15 33 0 39 15 37 0 40 15 41 0 41 15 45 0 42 15 53 0 47 15 57 0 48 15 61 0 51 15 65 0 106 15 69 0 107 15 73 0 109 15 77 0 110 15 81 0 111 15 85 0 127 15 89 0 128 15 93 0 129] 
#[1 15 66 0 3 15 66 0 5 15 66 0 9 15 66 0 13 15 66 0 20 15 66 0 24 15 66 0 30 15 66 0 44 15 66 0 45 15 66 0 49 15 66 0 53 15 66 0 60 15 66 0 67 15 66 0 77 15 66 0 81 15 66 0 85 15 66 0 87 15 66 0 90 15 66 0 92 15 66 0 105 15 70 0 108 15 66 0 112 15 66 0 113 15 66 0 117 15 66 0 118 15 66 0 120 15 66 0 121 15 66 0 122 15 66 0 123 15 66 0 125 15 66 0 127 15 66 0 129 15 66 1 149] 
#[1 15 74 0 3 15 74 0 5 15 74 0 9 15 74 0 13 15 74 0 20 15 74 0 24 15 74 0 30 15 74 0 44 15 74 0 45 15 74 0 49 15 74 0 53 15 74 0 60 15 74 0 67 15 74 0 77 15 74 0 81 15 74 0 85 15 74 0 87 15 74 0 90 15 74 0 92 15 74 0 105 15 78 0 108 15 74 0 112 15 74 0 113 15 74 0 117 15 74 0 118 15 74 0 120 15 74 0 121 15 74 0 122 15 74 0 123 15 74 0 125 15 74 0 127 15 74 0 129 15 74 1 149] 
#[0 15 82 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149] 
#[0 15 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 149 1 150]
	).
]

{ #category : #private }
RustParser >> actionsForCurrentToken [
	| actions |
	actions := super actionsForCurrentToken.
	(actions isEmpty and: [ currentToken value size > 1 ])
		ifTrue:
			[ currentToken value first = $<
				ifTrue:
					[ currentToken := currentToken class
						value: '<'
						start: currentToken startPosition
						ids: {scanner ltId}.
					self position: currentToken startPosition.
					^ super actionsForCurrentToken ].
			currentToken value first = $>
				ifTrue:
					[ currentToken := currentToken class
						value: '>'
						start: currentToken startPosition
						ids: {scanner gtId}.
					self position: currentToken startPosition.
					^ super actionsForCurrentToken ].
			currentToken value first = $&
				ifTrue:
					[ currentToken := currentToken class
						value: '&'
						start: currentToken startPosition
						ids: {scanner ampId}.
					self position: currentToken startPosition.
					^ super actionsForCurrentToken ].
			(currentToken ids includes: scanner FLOAT_LITERALId)
				ifTrue:
					[ | index |
					index := currentToken source indexOf: $..
					index > 0
						ifTrue:
							[ currentToken := currentToken class
								value: (currentToken source first: index - 1)
								start: currentToken startPosition
								ids: {scanner INTEGER_LITERALId}.
							self position: currentToken startPosition + index - 2.
							^ super actionsForCurrentToken ] ] ].
	^ actions
]

{ #category : #testing }
RustParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
RustParser >> useAllTokenIds [
	^ false
]
