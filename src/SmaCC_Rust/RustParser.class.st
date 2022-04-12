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
#[ 1 142 5 25] 
#[ 1 214 5 25] 
#[ 0 25 2 2] 
#[ 1 110 1 114 5 229] 
#[ 1 90 2 22] 
#[ 1 90 2 38] 
#[ 2 78 4 73] 
#[ 2 82 6 193] 
#[ 2 14 10 93] 
#[ 2 54 10 97] 
#[ 2 242 6 193] 
#[ 0 25 3 18] 
#[ 3 22 3 105] 
#[ 1 185 3 22] 
#[ 1 94 3 62] 
#[ 1 98 3 66] 
#[ 1 94 13 145] 
#[ 2 246 13 233] 
#[ 5 202 6 137] 
#[ 5 206 6 137] 
#[ 5 210 6 137] 
#[ 5 214 6 137] 
#[ 1 246 15 21] 
#[ 6 50 15 233] 
#[ 6 58 15 241] 
#[ 1 25 5 146] 
#[ 1 33 5 146] 
#[ 0 149 5 146] 
#[ 0 153 5 146] 
#[ 5 146 16 21] 
#[ 0 14 1 246 16 137] 
#[ 0 14 0 61] 
#[ 0 14 10 137] 
#[ 0 14 10 145] 
#[ 0 14 1 25] 
#[ 0 14 1 29] 
#[ 1 246 10 169] 
#[ 0 14 1 33] 
#[ 0 14 0 113] 
#[ 0 14 0 125] 
#[ 0 14 10 189] 
#[ 0 14 0 149] 
#[ 0 14 0 153] 
#[ 1 110 2 54] 
#[ 1 110 1 114 2 54] 
#[ 6 137 7 82] 
#[ 6 137 7 90] 
#[ 0 190 7 238] 
#[ 1 246 19 173] 
#[ 5 222 8 18] 
#[ 5 226 8 22] 
#[ 6 137 8 26] 
#[ 0 210 1 25] 
#[ 0 210 1 33] 
#[ 0 210 20 141] 
#[ 0 149 0 210] 
#[ 0 153 0 210] 
#[ 0 210 20 13] 
#[ 0 86 1 14] 
#[ 1 18 2 157] 
#[ 5 226 8 158] 
#[ 8 158 21 61] 
#[ 0 14 0 57 1 246] 
#[ 0 246 7 102] 
#[ 0 70 9 38] 
#[ 0 70 22 173] 
#[ 1 10 7 158] 
#[ 4 53 6 58] 
#[ 1 102 6 58] 
#[ 1 102 6 58 22 193] 
#[ 7 182 9 182] 
#[ 9 226 23 121] 
#[ 9 234 23 213] 
#[ 0 190 10 62] 
#[ 0 25 1 246] 
#[ 2 6 9 178] 
#[ 0 70 11 206] 
#[ 0 190 7 238 9 214] 
#[ 12 66 23 121] 
#[ 9 226 12 66] 
#[ 9 226 12 66 23 121] 
#[ 0 25 12 118] 
#[ 1 246 12 130] 
#[ 0 70 13 50] 
#[ 0 70 13 54] 
#[ 3 38 10 178] 
#[ 6 98 8 86] 
#[ 13 178 27 221] 
#[ 0 70 14 82] 
#[ 8 98 10 210] 
#[ 8 106 10 214] 
#[ 12 106 13 138] 
#[ 14 146 28 193] 
#[ 10 242 12 194] 
#[ 5 226 15 118]
	).
]

{ #category : #'generated-accessing' }
RustParser class >> cacheId [
	^'2022-04-12T10:35:14.683211-05:00'
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

<rawStringStart>: b?r \#+ \"";

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
   | ""unsafe"" 'unsafeToken'? ""auto"" 'autoToken'? ""trait"" 'traitToken' identifier 'name' genericParams? ""="" 'equalsToken' typeParamBounds? ("":"" typeParamBounds?)? whereClause 'where'? "";"" 'semicolon' ### added
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
	| ""let"" 'letToken' matchArmPatterns 'matchPattern' ""="" 'equalsToken' expression 'matchValue' ""else"" 'elseToken' blockExpression 'elseValue' {{}}	### added
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
   | ""if"" 'ifToken' ""let"" 'letToken' matchArmPatterns 'matchPattern' ""="" 'equalsToken' expression 'matchValue'	### added
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
   | ""box"" 'boxToken' patternWithoutRange 'pattern' {{BoxPattern}}
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
   | rangePatternBound ""..""	### added
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
	#(132 0 #reduceFor: 5690369 false) 
	#(133 0 #reduceFor: 5719041 false) 
	#(158 0 #reduceFor: 8494081 false) 
	#(131 2 #reduceFor: 5667841 false) 
	#(132 2 #reduceFor: 5690370 false) 
	#(131 3 #reduceFor: 5667842 false) 
	#(133 2 #reduceFor: 5719042 false) 
	#(174 0 #reduceFor: 9897985 false) 
	#(368 1 #reduceFor: 31649797 false) 
	#(402 1 #reduceFor: 33787908 false) 
	#(401 1 #reduceFor: 33557510 false) 
	#(368 1 #reduceFor: 31649796 false) 
	#(173 1 #reduceFor: 9897985 false) 
	#(343 0 #reduceFor: 30228481 false) 
	#(402 1 #reduceFor: 33787907 false) 
	#(401 1 #reduceFor: 33557505 false) 
	#(368 1 #reduceFor: 31649795 false) 
	#(368 1 #reduceFor: 31649794 false) 
	#(402 1 #reduceFor: 33787905 false) 
	#(402 1 #reduceFor: 33787906 false) 
	#(141 1 #reduceFor: 6489090 false) 
	#(160 1 #reduceFor: 8840193 false) 
	#(160 1 #reduceFor: 8840194 false) 
	#(157 2 #reduceFor: 8483841 false) 
	#(157 2 #reduceFor: 8483842 false) 
	#(159 1 #reduceFor: 8564737 false) 
	#(159 1 #reduceFor: 8564738 false) 
	#(159 1 #reduceFor: 8564739 false) 
	#(159 1 #reduceFor: 8564740 false) 
	#(174 1 #reduceFor: 9897986 false) 
	#(172 1 #reduceFor: 9777153 false) 
	#(159 1 #reduceFor: 8564741 false) 
	#(159 1 #reduceFor: 8564742 false) 
	#(187 1 #reduceFor: 10766337 false) 
	#(187 1 #reduceFor: 10766338 false) 
	#(159 1 #reduceFor: 8564743 false) 
	#(159 1 #reduceFor: 8564744 false) 
	#(159 1 #reduceFor: 8564745 false) 
	#(159 1 #reduceFor: 8564746 false) 
	#(159 1 #reduceFor: 8564747 false) 
	#(159 1 #reduceFor: 8564748 false) 
	#(215 1 #reduceFor: 12962817 false) 
	#(215 1 #reduceFor: 12962818 false) 
	#(159 1 #reduceFor: 8564749 false) 
	#(158 2 #reduceFor: 8494082 false) 
	#(367 0 #reduceFor: 31596545 false) 
	#(368 1 #reduceFor: 31649793 false) 
	#(238 1 #reduceFor: 14929921 false) 
	#(172 2 #reduceFor: 9777155 false) 
	#(172 2 #reduceFor: 9777157 false) 
	#(172 2 #reduceFor: 9777161 false) 
	#(162 0 #reduceFor: 9016321 false) 
	#(175 1 #reduceFor: 9953281 false) 
	#(175 1 #reduceFor: 9953283 false) 
	#(173 2 #reduceFor: 9897986 false) 
	#(175 1 #reduceFor: 9953282 false) 
	#(334 1 #reduceFor: 29426689 false) 
	#(364 1 #reduceFor: 31468547 false) 
	#(364 1 #reduceFor: 31468546 false) 
	#(373 1 #reduceFor: 31943682 false) 
	#(355 1 #reduceFor: 31123457 false) 
	#(343 1 #reduceFor: 30228482 false) 
	#(343 1 #reduceFor: 30228484 false) 
	#(364 1 #reduceFor: 31468545 false) 
	#(223 0 #reduceFor: 13744129 false) 
	#(332 1 #reduceFor: 29033486 false) 
	#(134 1 #reduceFor: 5740546 false) 
	#(134 1 #reduceFor: 5740545 false) 
	#(331 1 #reduceFor: 28963841 false) 
	#(332 1 #reduceFor: 29033473 false) 
	#(332 1 #reduceFor: 29033478 false) 
	#(332 1 #reduceFor: 29033477 false) 
	#(332 1 #reduceFor: 29033481 false) 
	#(332 1 #reduceFor: 29033482 false) 
	#(332 1 #reduceFor: 29033480 false) 
	#(332 1 #reduceFor: 29033479 false) 
	#(332 1 #reduceFor: 29033485 false) 
	#(331 1 #reduceFor: 28963843 false) 
	#(332 1 #reduceFor: 29033475 false) 
	#(331 1 #reduceFor: 28963842 false) 
	#(332 1 #reduceFor: 29033474 false) 
	#(332 1 #reduceFor: 29033483 false) 
	#(351 1 #reduceFor: 30824449 false) 
	#(358 0 #reduceFor: 31214593 false) 
	#(352 1 #reduceFor: 30891009 false) 
	#(359 1 #reduceFor: 31247362 false) 
	#(359 1 #reduceFor: 31247361 false) 
	#(373 1 #reduceFor: 31943681 false) 
	#(398 1 #reduceFor: 33287169 false) 
	#(332 1 #reduceFor: 29033484 false) 
	#(360 1 #reduceFor: 31298561 false) 
	#(332 1 #reduceFor: 29033476 false) 
	#(397 0 #reduceFor: 33240065 false) 
	#(211 0 #reduceFor: 12642305 false) 
	#(172 2 #reduceFor: 9777154 false) 
	#(167 1 #reduceFor: 9357313 false) 
	#(167 1 #reduceFor: 9357322 false) 
	#(141 2 #reduceFor: 6489089 false) 
	#(365 2 #reduceFor: 31542273 false) 
	#(159 2 #reduceFor: 8564750 false) 
	#(159 2 #reduceFor: 8564751 false) 
	#(159 2 #reduceFor: 8564752 false) 
	#(159 2 #reduceFor: 8564753 false) 
	#(159 2 #reduceFor: 8564754 false) 
	#(159 2 #reduceFor: 8564755 false) 
	#(159 2 #reduceFor: 8564756 false) 
	#(159 2 #reduceFor: 8564757 false) 
	#(159 2 #reduceFor: 8564758 false) 
	#(159 2 #reduceFor: 8564759 false) 
	#(159 2 #reduceFor: 8564760 false) 
	#(159 2 #reduceFor: 8564761 false) 
	#(159 2 #reduceFor: 8564762 false) 
	#(236 5 #reduceFor: 14732289 false) 
	#(136 0 #reduceFor: 5904385 false) 
	#(239 1 #reduceFor: 14967809 false) 
	#(238 2 #reduceFor: 14929922 false) 
	#(365 3 #reduceFor: 31542274 false) 
	#(172 3 #reduceFor: 9777156 false) 
	#(172 3 #reduceFor: 9777159 false) 
	#(172 3 #reduceFor: 9777158 false) 
	#(172 3 #reduceFor: 9777163 false) 
	#(172 3 #reduceFor: 9777165 false) 
	#(172 3 #reduceFor: 9777162 false) 
	#(230 0 #reduceFor: 14216193 false) 
	#(180 0 #reduceFor: 10182657 false) 
	#(164 1 #reduceFor: 9172994 false) 
	#(164 1 #reduceFor: 9172993 false) 
	#(219 0 #reduceFor: 13545473 false) 
	#(335 2 #reduceFor: 29473793 false) 
	#(337 1 #reduceFor: 29506561 false) 
	#(360 2 #reduceFor: 31298563 false) 
	#(351 2 #reduceFor: 30824450 false) 
	#(352 2 #reduceFor: 30891010 false) 
	#(343 2 #reduceFor: 30228483 false) 
	#(234 2 #reduceFor: 14523393 false) 
	#(353 2 #reduceFor: 30968833 false) 
	#(354 2 #reduceFor: 31043585 false) 
	#(343 2 #reduceFor: 30228485 false) 
	#(221 2 #reduceFor: 13713409 false) 
	#(340 2 #reduceFor: 29813761 false) 
	#(360 2 #reduceFor: 31298562 false) 
	#(356 2 #reduceFor: 31177729 false) 
	#(398 2 #reduceFor: 33287172 false) 
	#(398 2 #reduceFor: 33287170 false) 
	#(398 2 #reduceFor: 33287171 false) 
	#(394 1 #reduceFor: 33160193 false) 
	#(392 2 #reduceFor: 33116161 false) 
	#(395 2 #reduceFor: 33190913 false) 
	#(161 3 #reduceFor: 8914945 false) 
	#(188 3 #reduceFor: 10814467 false) 
	#(210 0 #reduceFor: 12622849 false) 
	#(214 0 #reduceFor: 12876801 false) 
	#(211 1 #reduceFor: 12642306 false) 
	#(186 3 #reduceFor: 10603521 false) 
	#(167 2 #reduceFor: 9357316 false) 
	#(167 2 #reduceFor: 9357314 false) 
	#(169 0 #reduceFor: 9424897 false) 
	#(166 3 #reduceFor: 9289729 false) 
	#(367 2 #reduceFor: 31596546 false) 
	#(246 1 #reduceFor: 21334026 false) 
	#(246 1 #reduceFor: 21334025 false) 
	#(246 1 #reduceFor: 21334017 false) 
	#(246 1 #reduceFor: 21334018 false) 
	#(246 1 #reduceFor: 21334020 false) 
	#(246 1 #reduceFor: 21334021 false) 
	#(246 1 #reduceFor: 21334022 false) 
	#(246 1 #reduceFor: 21334023 false) 
	#(246 1 #reduceFor: 21334024 false) 
	#(239 2 #reduceFor: 14967810 false) 
	#(246 1 #reduceFor: 21334019 false) 
	#(237 4 #reduceFor: 14830593 false) 
	#(172 4 #reduceFor: 9777160 false) 
	#(172 4 #reduceFor: 9777164 false) 
	#(172 4 #reduceFor: 9777167 false) 
	#(172 4 #reduceFor: 9777166 false) 
	#(228 2 #reduceFor: 14177281 false) 
	#(198 4 #reduceFor: 11532289 false) 
	#(201 0 #reduceFor: 11708417 false) 
	#(163 4 #reduceFor: 9069569 false) 
	#(162 2 #reduceFor: 9016322 false) 
	#(333 3 #reduceFor: 29336577 false) 
	#(336 2 #reduceFor: 29506561 false) 
	#(335 3 #reduceFor: 29473794 false) 
	#(337 2 #reduceFor: 29506562 false) 
	#(360 3 #reduceFor: 31298565 false) 
	#(341 3 #reduceFor: 29916162 false) 
	#(341 3 #reduceFor: 29916161 false) 
	#(395 3 #reduceFor: 33190914 false) 
	#(360 3 #reduceFor: 31298564 false) 
	#(339 3 #reduceFor: 29717505 false) 
	#(343 3 #reduceFor: 30228486 false) 
	#(223 2 #reduceFor: 13744130 false) 
	#(391 3 #reduceFor: 33027073 false) 
	#(340 3 #reduceFor: 29813762 false) 
	#(340 3 #reduceFor: 29813763 false) 
	#(212 0 #reduceFor: 12696577 false) 
	#(356 3 #reduceFor: 31177730 false) 
	#(358 2 #reduceFor: 31214594 false) 
	#(399 2 #reduceFor: 33378305 false) 
	#(384 0 #reduceFor: 32758785 false) 
	#(398 3 #reduceFor: 33287173 false) 
	#(398 3 #reduceFor: 33287174 false) 
	#(374 2 #reduceFor: 32041985 false) 
	#(378 1 #reduceFor: 32562178 false) 
	#(378 1 #reduceFor: 32562177 false) 
	#(377 1 #reduceFor: 32466946 false) 
	#(377 1 #reduceFor: 32466945 false) 
	#(378 1 #reduceFor: 32562180 false) 
	#(376 0 #reduceFor: 32405505 false) 
	#(377 1 #reduceFor: 32466947 false) 
	#(377 1 #reduceFor: 32466948 false) 
	#(393 2 #reduceFor: 33160193 false) 
	#(394 2 #reduceFor: 33160194 false) 
	#(397 2 #reduceFor: 33240066 false) 
	#(142 4 #reduceFor: 6625281 false) 
	#(401 4 #reduceFor: 33557506 false) 
	#(401 4 #reduceFor: 33557507 false) 
	#(401 4 #reduceFor: 33557508 false) 
	#(196 0 #reduceFor: 11392001 false) 
	#(188 4 #reduceFor: 10814465 false) 
	#(192 0 #reduceFor: 11216897 false) 
	#(188 4 #reduceFor: 10814473 false) 
	#(188 4 #reduceFor: 10814470 false) 
	#(210 1 #reduceFor: 12622850 false) 
	#(213 1 #reduceFor: 12876801 false) 
	#(214 1 #reduceFor: 12876802 false) 
	#(186 4 #reduceFor: 10603529 false) 
	#(186 4 #reduceFor: 10603523 false) 
	#(161 4 #reduceFor: 8914947 false) 
	#(167 3 #reduceFor: 9357317 false) 
	#(170 0 #reduceFor: 9448449 false) 
	#(167 3 #reduceFor: 9357319 false) 
	#(167 3 #reduceFor: 9357324 false) 
	#(167 3 #reduceFor: 9357323 false) 
	#(366 2 #reduceFor: 31596545 false) 
	#(406 1 #reduceFor: 34899973 false) 
	#(406 1 #reduceFor: 34899993 false) 
	#(406 1 #reduceFor: 34900010 false) 
	#(140 1 #reduceFor: 6360069 false) 
	#(404 1 #reduceFor: 34682884 false) 
	#(406 1 #reduceFor: 34899971 false) 
	#(406 1 #reduceFor: 34899985 false) 
	#(406 1 #reduceFor: 34899976 false) 
	#(406 1 #reduceFor: 34899987 false) 
	#(404 1 #reduceFor: 34682883 false) 
	#(403 1 #reduceFor: 33893427 false) 
	#(138 3 #reduceFor: 6163457 false) 
	#(155 1 #reduceFor: 7752705 false) 
	#(406 1 #reduceFor: 34899983 false) 
	#(155 1 #reduceFor: 7752706 false) 
	#(406 1 #reduceFor: 34899981 false) 
	#(406 1 #reduceFor: 34900004 false) 
	#(406 1 #reduceFor: 34899969 false) 
	#(406 1 #reduceFor: 34899982 false) 
	#(406 1 #reduceFor: 34900008 false) 
	#(406 1 #reduceFor: 34900000 false) 
	#(406 1 #reduceFor: 34900001 false) 
	#(406 1 #reduceFor: 34900002 false) 
	#(406 1 #reduceFor: 34900003 false) 
	#(406 1 #reduceFor: 34899970 false) 
	#(406 1 #reduceFor: 34899984 false) 
	#(406 1 #reduceFor: 34900006 false) 
	#(406 1 #reduceFor: 34900007 false) 
	#(406 1 #reduceFor: 34900005 false) 
	#(406 1 #reduceFor: 34899978 false) 
	#(406 1 #reduceFor: 34899989 false) 
	#(406 1 #reduceFor: 34899997 false) 
	#(406 1 #reduceFor: 34899991 false) 
	#(406 1 #reduceFor: 34899992 false) 
	#(406 1 #reduceFor: 34900009 false) 
	#(406 1 #reduceFor: 34899996 false) 
	#(406 1 #reduceFor: 34899979 false) 
	#(406 1 #reduceFor: 34899990 false) 
	#(406 1 #reduceFor: 34899980 false) 
	#(155 1 #reduceFor: 7752707 false) 
	#(406 1 #reduceFor: 34899998 false) 
	#(403 1 #reduceFor: 33893400 false) 
	#(406 1 #reduceFor: 34899972 false) 
	#(406 1 #reduceFor: 34899986 false) 
	#(406 1 #reduceFor: 34899999 false) 
	#(403 1 #reduceFor: 33893413 false) 
	#(403 1 #reduceFor: 33893377 false) 
	#(403 1 #reduceFor: 33893410 false) 
	#(403 1 #reduceFor: 33893411 false) 
	#(403 1 #reduceFor: 33893414 false) 
	#(403 1 #reduceFor: 33893415 false) 
	#(403 1 #reduceFor: 33893378 false) 
	#(403 1 #reduceFor: 33893379 false) 
	#(403 1 #reduceFor: 33893380 false) 
	#(403 1 #reduceFor: 33893381 false) 
	#(403 1 #reduceFor: 33893416 false) 
	#(403 1 #reduceFor: 33893412 false) 
	#(403 1 #reduceFor: 33893382 false) 
	#(403 1 #reduceFor: 33893383 false) 
	#(403 1 #reduceFor: 33893384 false) 
	#(403 1 #reduceFor: 33893417 false) 
	#(403 1 #reduceFor: 33893385 false) 
	#(403 1 #reduceFor: 33893386 false) 
	#(403 1 #reduceFor: 33893387 false) 
	#(403 1 #reduceFor: 33893388 false) 
	#(403 1 #reduceFor: 33893389 false) 
	#(403 1 #reduceFor: 33893390 false) 
	#(403 1 #reduceFor: 33893391 false) 
	#(403 1 #reduceFor: 33893418 false) 
	#(403 1 #reduceFor: 33893392 false) 
	#(403 1 #reduceFor: 33893393 false) 
	#(403 1 #reduceFor: 33893394 false) 
	#(403 1 #reduceFor: 33893395 false) 
	#(403 1 #reduceFor: 33893419 false) 
	#(403 1 #reduceFor: 33893420 false) 
	#(403 1 #reduceFor: 33893396 false) 
	#(403 1 #reduceFor: 33893397 false) 
	#(403 1 #reduceFor: 33893398 false) 
	#(403 1 #reduceFor: 33893399 false) 
	#(403 1 #reduceFor: 33893401 false) 
	#(403 1 #reduceFor: 33893402 false) 
	#(403 1 #reduceFor: 33893403 false) 
	#(403 1 #reduceFor: 33893404 false) 
	#(403 1 #reduceFor: 33893425 false) 
	#(403 1 #reduceFor: 33893405 false) 
	#(403 1 #reduceFor: 33893421 false) 
	#(403 1 #reduceFor: 33893426 false) 
	#(403 1 #reduceFor: 33893406 false) 
	#(403 1 #reduceFor: 33893422 false) 
	#(403 1 #reduceFor: 33893407 false) 
	#(403 1 #reduceFor: 33893423 false) 
	#(403 1 #reduceFor: 33893408 false) 
	#(403 1 #reduceFor: 33893409 false) 
	#(403 1 #reduceFor: 33893424 false) 
	#(406 1 #reduceFor: 34899975 false) 
	#(406 1 #reduceFor: 34899988 false) 
	#(406 1 #reduceFor: 34899977 false) 
	#(404 1 #reduceFor: 34682885 false) 
	#(406 1 #reduceFor: 34899995 false) 
	#(406 1 #reduceFor: 34899994 false) 
	#(406 1 #reduceFor: 34899974 false) 
	#(139 1 #reduceFor: 6303746 false) 
	#(136 2 #reduceFor: 5904386 false) 
	#(139 1 #reduceFor: 6303745 false) 
	#(140 1 #reduceFor: 6360068 false) 
	#(405 1 #reduceFor: 34793473 false) 
	#(404 1 #reduceFor: 34682882 false) 
	#(404 1 #reduceFor: 34682881 false) 
	#(140 1 #reduceFor: 6360065 false) 
	#(140 1 #reduceFor: 6360066 false) 
	#(140 1 #reduceFor: 6360067 false) 
	#(138 3 #reduceFor: 6163458 false) 
	#(138 3 #reduceFor: 6163459 false) 
	#(207 5 #reduceFor: 12248067 false) 
	#(207 5 #reduceFor: 12248065 false) 
	#(172 5 #reduceFor: 9777168 false) 
	#(230 2 #reduceFor: 14216194 false) 
	#(228 3 #reduceFor: 14177282 false) 
	#(231 1 #reduceFor: 14294017 false) 
	#(231 1 #reduceFor: 14294018 false) 
	#(180 2 #reduceFor: 10182658 false) 
	#(202 2 #reduceFor: 11751425 false) 
	#(198 5 #reduceFor: 11532290 false) 
	#(199 2 #reduceFor: 11683841 false) 
	#(198 5 #reduceFor: 11532293 false) 
	#(198 5 #reduceFor: 11532291 false) 
	#(165 2 #reduceFor: 9228290 false) 
	#(165 2 #reduceFor: 9228289 false) 
	#(163 5 #reduceFor: 9069570 false) 
	#(218 5 #reduceFor: 13442049 false) 
	#(219 2 #reduceFor: 13545474 false) 
	#(360 4 #reduceFor: 31298567 false) 
	#(360 4 #reduceFor: 31298566 false) 
	#(335 4 #reduceFor: 29473795 false) 
	#(244 1 #reduceFor: 16070698 false) 
	#(244 1 #reduceFor: 16070717 false) 
	#(244 1 #reduceFor: 16070713 false) 
	#(244 1 #reduceFor: 16070721 false) 
	#(244 1 #reduceFor: 16070731 false) 
	#(243 1 #reduceFor: 15944705 false) 
	#(243 1 #reduceFor: 15944706 false) 
	#(244 1 #reduceFor: 16070658 false) 
	#(244 1 #reduceFor: 16070659 false) 
	#(245 1 #reduceFor: 21037058 false) 
	#(245 1 #reduceFor: 21037059 false) 
	#(245 1 #reduceFor: 21037060 false) 
	#(244 1 #reduceFor: 16070728 false) 
	#(260 1 #reduceFor: 22467585 false) 
	#(260 1 #reduceFor: 22467586 false) 
	#(244 1 #reduceFor: 16070729 false) 
	#(269 1 #reduceFor: 23189505 false) 
	#(244 1 #reduceFor: 16070730 false) 
	#(245 1 #reduceFor: 21037061 false) 
	#(282 1 #reduceFor: 24163329 false) 
	#(282 1 #reduceFor: 24163331 false) 
	#(282 1 #reduceFor: 24163333 false) 
	#(282 1 #reduceFor: 24163335 false) 
	#(245 1 #reduceFor: 21037062 false) 
	#(245 1 #reduceFor: 21037063 false) 
	#(245 1 #reduceFor: 21037064 false) 
	#(247 1 #reduceFor: 21702657 false) 
	#(371 0 #reduceFor: 31837185 false) 
	#(372 1 #reduceFor: 31879169 false) 
	#(247 1 #reduceFor: 21702658 false) 
	#(225 1 #reduceFor: 13921281 false) 
	#(224 2 #reduceFor: 13816833 false) 
	#(224 2 #reduceFor: 13816834 false) 
	#(224 2 #reduceFor: 13816835 false) 
	#(226 1 #reduceFor: 14013441 false) 
	#(222 2 #reduceFor: 13744129 false) 
	#(221 4 #reduceFor: 13713410 false) 
	#(340 4 #reduceFor: 29813764 false) 
	#(342 4 #reduceFor: 30032897 false) 
	#(345 1 #reduceFor: 30377985 false) 
	#(348 0 #reduceFor: 30550017 false) 
	#(345 1 #reduceFor: 30377986 false) 
	#(357 2 #reduceFor: 31214593 false) 
	#(400 2 #reduceFor: 33470465 false) 
	#(399 3 #reduceFor: 33378307 false) 
	#(378 2 #reduceFor: 32562179 false) 
	#(396 2 #reduceFor: 33240065 false) 
	#(149 0 #reduceFor: 7088129 false) 
	#(146 0 #reduceFor: 6937601 false) 
	#(401 5 #reduceFor: 33557509 false) 
	#(208 5 #reduceFor: 12371969 false) 
	#(189 5 #reduceFor: 10996737 false) 
	#(197 2 #reduceFor: 11445249 false) 
	#(194 2 #reduceFor: 11355137 false) 
	#(188 5 #reduceFor: 10814466 false) 
	#(190 2 #reduceFor: 11177985 false) 
	#(188 5 #reduceFor: 10814471 false) 
	#(188 5 #reduceFor: 10814476 false) 
	#(188 5 #reduceFor: 10814468 false) 
	#(213 2 #reduceFor: 12876802 false) 
	#(186 5 #reduceFor: 10603525 false) 
	#(186 5 #reduceFor: 10603522 false) 
	#(186 5 #reduceFor: 10603531 false) 
	#(206 5 #reduceFor: 12095489 false) 
	#(170 1 #reduceFor: 9448450 false) 
	#(169 2 #reduceFor: 9424898 false) 
	#(167 4 #reduceFor: 9357320 false) 
	#(176 1 #reduceFor: 10025985 false) 
	#(178 0 #reduceFor: 10119169 false) 
	#(137 5 #reduceFor: 5951489 false) 
	#(137 5 #reduceFor: 5951490 false) 
	#(135 5 #reduceFor: 5830657 false) 
	#(229 2 #reduceFor: 14216193 false) 
	#(233 2 #reduceFor: 14439425 false) 
	#(363 0 #reduceFor: 31436801 false) 
	#(202 3 #reduceFor: 11751429 false) 
	#(202 3 #reduceFor: 11751426 false) 
	#(202 3 #reduceFor: 11751427 false) 
	#(202 3 #reduceFor: 11751428 false) 
	#(199 3 #reduceFor: 11683842 false) 
	#(201 2 #reduceFor: 11708418 false) 
	#(198 6 #reduceFor: 11532294 false) 
	#(198 6 #reduceFor: 11532295 false) 
	#(198 6 #reduceFor: 11532292 false) 
	#(220 2 #reduceFor: 13582337 false) 
	#(220 2 #reduceFor: 13582339 false) 
	#(220 2 #reduceFor: 13582338 false) 
	#(218 6 #reduceFor: 13442050 false) 
	#(360 5 #reduceFor: 31298568 false) 
	#(244 2 #reduceFor: 16070675 false) 
	#(244 2 #reduceFor: 16070669 false) 
	#(244 2 #reduceFor: 16070671 false) 
	#(244 2 #reduceFor: 16070673 false) 
	#(244 2 #reduceFor: 16070674 false) 
	#(244 2 #reduceFor: 16070699 false) 
	#(244 2 #reduceFor: 16070700 false) 
	#(251 2 #reduceFor: 22017025 false) 
	#(244 2 #reduceFor: 16070732 false) 
	#(244 2 #reduceFor: 16070719 false) 
	#(244 2 #reduceFor: 16070718 false) 
	#(244 2 #reduceFor: 16070715 false) 
	#(244 2 #reduceFor: 16070714 false) 
	#(308 1 #reduceFor: 27293697 false) 
	#(307 1 #reduceFor: 27262977 false) 
	#(305 1 #reduceFor: 26870786 false) 
	#(305 1 #reduceFor: 26870785 false) 
	#(305 1 #reduceFor: 26870787 false) 
	#(311 1 #reduceFor: 27501569 false) 
	#(305 1 #reduceFor: 26870789 false) 
	#(305 1 #reduceFor: 26870791 false) 
	#(305 1 #reduceFor: 26870788 false) 
	#(311 1 #reduceFor: 27501570 false) 
	#(305 1 #reduceFor: 26870792 false) 
	#(305 1 #reduceFor: 26870793 false) 
	#(311 1 #reduceFor: 27501571 false) 
	#(305 1 #reduceFor: 26870795 false) 
	#(311 1 #reduceFor: 27501573 false) 
	#(304 1 #reduceFor: 26503181 false) 
	#(302 0 #reduceFor: 26414081 false) 
	#(303 1 #reduceFor: 26442753 false) 
	#(304 1 #reduceFor: 26503169 false) 
	#(304 1 #reduceFor: 26503170 false) 
	#(304 1 #reduceFor: 26503171 false) 
	#(304 1 #reduceFor: 26503172 false) 
	#(303 1 #reduceFor: 26442754 false) 
	#(304 1 #reduceFor: 26503173 false) 
	#(304 1 #reduceFor: 26503174 false) 
	#(304 1 #reduceFor: 26503175 false) 
	#(304 1 #reduceFor: 26503176 false) 
	#(304 1 #reduceFor: 26503177 false) 
	#(304 1 #reduceFor: 26503178 false) 
	#(304 1 #reduceFor: 26503179 false) 
	#(304 1 #reduceFor: 26503180 false) 
	#(330 1 #reduceFor: 28883969 false) 
	#(311 1 #reduceFor: 27501575 false) 
	#(330 1 #reduceFor: 28883970 false) 
	#(311 1 #reduceFor: 27501576 false) 
	#(306 1 #reduceFor: 27170817 false) 
	#(305 1 #reduceFor: 26870790 false) 
	#(298 0 #reduceFor: 26178561 false) 
	#(283 2 #reduceFor: 24441857 false) 
	#(244 2 #reduceFor: 16070722 false) 
	#(252 2 #reduceFor: 22125569 false) 
	#(280 0 #reduceFor: 24026113 false) 
	#(277 2 #reduceFor: 23759873 false) 
	#(287 2 #reduceFor: 24957953 false) 
	#(244 2 #reduceFor: 16070657 false) 
	#(245 2 #reduceFor: 21037057 false) 
	#(244 2 #reduceFor: 16070696 false) 
	#(244 2 #reduceFor: 16070668 false) 
	#(338 5 #reduceFor: 29587457 false) 
	#(282 2 #reduceFor: 24163330 false) 
	#(282 2 #reduceFor: 24163332 false) 
	#(282 2 #reduceFor: 24163334 false) 
	#(282 2 #reduceFor: 24163336 false) 
	#(369 2 #reduceFor: 31779841 false) 
	#(390 1 #reduceFor: 32985089 false) 
	#(389 2 #reduceFor: 32934913 false) 
	#(225 2 #reduceFor: 13921283 false) 
	#(226 2 #reduceFor: 14013447 false) 
	#(226 2 #reduceFor: 14013443 false) 
	#(221 5 #reduceFor: 13713411 false) 
	#(391 5 #reduceFor: 33027074 false) 
	#(342 5 #reduceFor: 30032901 false) 
	#(216 6 #reduceFor: 13017089 false) 
	#(212 2 #reduceFor: 12696578 false) 
	#(342 5 #reduceFor: 30032898 false) 
	#(349 2 #reduceFor: 30600193 false) 
	#(342 5 #reduceFor: 30032899 false) 
	#(346 2 #reduceFor: 30498817 false) 
	#(399 4 #reduceFor: 33378306 false) 
	#(400 3 #reduceFor: 33470466 false) 
	#(384 2 #reduceFor: 32758786 false) 
	#(240 1 #reduceFor: 15585281 false) 
	#(248 3 #reduceFor: 21786625 false) 
	#(240 1 #reduceFor: 15585285 false) 
	#(240 1 #reduceFor: 15585282 false) 
	#(250 1 #reduceFor: 21909505 false) 
	#(240 1 #reduceFor: 15585283 false) 
	#(240 1 #reduceFor: 15585284 false) 
	#(249 1 #reduceFor: 21893123 false) 
	#(242 1 #reduceFor: 15823874 false) 
	#(249 1 #reduceFor: 21893121 false) 
	#(374 4 #reduceFor: 32041986 false) 
	#(376 2 #reduceFor: 32405506 false) 
	#(388 3 #reduceFor: 32876545 false) 
	#(144 2 #reduceFor: 6903809 false) 
	#(143 3 #reduceFor: 6731779 false) 
	#(161 6 #reduceFor: 8914946 false) 
	#(208 6 #reduceFor: 12371971 false) 
	#(189 6 #reduceFor: 10996738 false) 
	#(197 3 #reduceFor: 11445250 false) 
	#(189 6 #reduceFor: 10996739 false) 
	#(194 3 #reduceFor: 11355138 false) 
	#(196 2 #reduceFor: 11392002 false) 
	#(190 3 #reduceFor: 11177986 false) 
	#(192 2 #reduceFor: 11216898 false) 
	#(189 6 #reduceFor: 10996741 false) 
	#(188 6 #reduceFor: 10814472 false) 
	#(188 6 #reduceFor: 10814474 false) 
	#(188 6 #reduceFor: 10814469 false) 
	#(209 6 #reduceFor: 12506129 false) 
	#(186 6 #reduceFor: 10603527 false) 
	#(186 6 #reduceFor: 10603533 false) 
	#(186 6 #reduceFor: 10603530 false) 
	#(186 6 #reduceFor: 10603524 false) 
	#(206 6 #reduceFor: 12095491 false) 
	#(206 6 #reduceFor: 12095490 false) 
	#(218 6 #reduceFor: 13442051 false) 
	#(168 2 #reduceFor: 9424897 false) 
	#(167 5 #reduceFor: 9357315 false) 
	#(171 6 #reduceFor: 9548802 false) 
	#(171 6 #reduceFor: 9548801 false) 
	#(176 2 #reduceFor: 10025986 false) 
	#(183 2 #reduceFor: 10395650 false) 
	#(181 1 #reduceFor: 10232833 false) 
	#(179 2 #reduceFor: 10167297 false) 
	#(179 2 #reduceFor: 10167298 false) 
	#(183 2 #reduceFor: 10395649 false) 
	#(183 2 #reduceFor: 10395651 false) 
	#(176 2 #reduceFor: 10025987 false) 
	#(209 7 #reduceFor: 12506133 false) 
	#(207 7 #reduceFor: 12248068 false) 
	#(207 7 #reduceFor: 12248066 false) 
	#(233 3 #reduceFor: 14439427 false) 
	#(233 3 #reduceFor: 14439426 false) 
	#(232 3 #reduceFor: 14375937 false) 
	#(361 1 #reduceFor: 31416321 false) 
	#(202 4 #reduceFor: 11751430 false) 
	#(202 4 #reduceFor: 11751431 false) 
	#(202 4 #reduceFor: 11751432 false) 
	#(203 2 #reduceFor: 11895809 false) 
	#(205 2 #reduceFor: 12041217 false) 
	#(204 2 #reduceFor: 11967489 false) 
	#(200 2 #reduceFor: 11708417 false) 
	#(198 7 #reduceFor: 11532296 false) 
	#(220 3 #reduceFor: 13582341 false) 
	#(220 3 #reduceFor: 13582340 false) 
	#(244 3 #reduceFor: 16070670 false) 
	#(244 3 #reduceFor: 16070672 false) 
	#(244 3 #reduceFor: 16070726 false) 
	#(258 1 #reduceFor: 22374401 false) 
	#(256 1 #reduceFor: 22354945 false) 
	#(369 3 #reduceFor: 31779842 false) 
	#(244 3 #reduceFor: 16070724 false) 
	#(255 0 #reduceFor: 22256641 false) 
	#(251 3 #reduceFor: 22017026 false) 
	#(244 3 #reduceFor: 16070720 false) 
	#(244 3 #reduceFor: 16070716 false) 
	#(312 2 #reduceFor: 27675651 false) 
	#(324 2 #reduceFor: 28468225 false) 
	#(325 1 #reduceFor: 28545026 false) 
	#(305 2 #reduceFor: 26870794 false) 
	#(311 2 #reduceFor: 27501572 false) 
	#(305 2 #reduceFor: 26870796 false) 
	#(311 2 #reduceFor: 27501574 false) 
	#(328 2 #reduceFor: 28729345 false) 
	#(323 0 #reduceFor: 28426241 false) 
	#(304 2 #reduceFor: 26503182 false) 
	#(306 2 #reduceFor: 27170819 false) 
	#(306 2 #reduceFor: 27170821 false) 
	#(312 2 #reduceFor: 27675649 false) 
	#(300 2 #reduceFor: 26379265 false) 
	#(309 2 #reduceFor: 27321346 false) 
	#(288 3 #reduceFor: 25029633 false) 
	#(296 2 #reduceFor: 26142721 false) 
	#(277 3 #reduceFor: 23759879 false) 
	#(284 3 #reduceFor: 24519681 false) 
	#(277 3 #reduceFor: 23759875 false) 
	#(281 2 #reduceFor: 24085505 false) 
	#(278 2 #reduceFor: 23976961 false) 
	#(244 3 #reduceFor: 16070689 false) 
	#(244 3 #reduceFor: 16070679 false) 
	#(244 3 #reduceFor: 16070707 false) 
	#(244 3 #reduceFor: 16070694 false) 
	#(244 3 #reduceFor: 16070708 false) 
	#(244 3 #reduceFor: 16070677 false) 
	#(244 3 #reduceFor: 16070705 false) 
	#(244 3 #reduceFor: 16070680 false) 
	#(244 3 #reduceFor: 16070703 false) 
	#(244 3 #reduceFor: 16070681 false) 
	#(244 3 #reduceFor: 16070704 false) 
	#(244 3 #reduceFor: 16070664 false) 
	#(259 1 #reduceFor: 22418433 false) 
	#(244 3 #reduceFor: 16070663 false) 
	#(244 3 #reduceFor: 16070662 false) 
	#(244 3 #reduceFor: 16070697 false) 
	#(244 3 #reduceFor: 16070701 false) 
	#(244 3 #reduceFor: 16070678 false) 
	#(244 3 #reduceFor: 16070706 false) 
	#(244 3 #reduceFor: 16070682 false) 
	#(244 3 #reduceFor: 16070711 false) 
	#(244 3 #reduceFor: 16070693 false) 
	#(244 3 #reduceFor: 16070702 false) 
	#(244 3 #reduceFor: 16070688 false) 
	#(244 3 #reduceFor: 16070692 false) 
	#(244 3 #reduceFor: 16070683 false) 
	#(244 3 #reduceFor: 16070712 false) 
	#(244 3 #reduceFor: 16070684 false) 
	#(244 3 #reduceFor: 16070686 false) 
	#(244 3 #reduceFor: 16070710 false) 
	#(244 3 #reduceFor: 16070676 false) 
	#(244 3 #reduceFor: 16070709 false) 
	#(244 3 #reduceFor: 16070695 false) 
	#(244 3 #reduceFor: 16070687 false) 
	#(244 3 #reduceFor: 16070665 false) 
	#(244 3 #reduceFor: 16070691 false) 
	#(244 3 #reduceFor: 16070690 false) 
	#(244 3 #reduceFor: 16070685 false) 
	#(267 3 #reduceFor: 23009281 false) 
	#(270 3 #reduceFor: 23350273 false) 
	#(273 0 #reduceFor: 23478273 false) 
	#(274 1 #reduceFor: 23526401 false) 
	#(371 2 #reduceFor: 31837186 false) 
	#(372 3 #reduceFor: 31879170 false) 
	#(370 2 #reduceFor: 31837185 false) 
	#(390 2 #reduceFor: 32985090 false) 
	#(225 3 #reduceFor: 13921282 false) 
	#(226 3 #reduceFor: 14013449 false) 
	#(226 3 #reduceFor: 14013445 false) 
	#(226 3 #reduceFor: 14013442 false) 
	#(216 7 #reduceFor: 13017091 false) 
	#(342 6 #reduceFor: 30032902 false) 
	#(342 6 #reduceFor: 30032903 false) 
	#(235 2 #reduceFor: 14586881 false) 
	#(235 2 #reduceFor: 14586884 false) 
	#(235 2 #reduceFor: 14586882 false) 
	#(235 2 #reduceFor: 14586883 false) 
	#(216 7 #reduceFor: 13017090 false) 
	#(344 2 #reduceFor: 30318593 false) 
	#(342 6 #reduceFor: 30032900 false) 
	#(346 3 #reduceFor: 30498818 false) 
	#(348 2 #reduceFor: 30550018 false) 
	#(383 2 #reduceFor: 32758785 false) 
	#(399 5 #reduceFor: 33378308 false) 
	#(242 2 #reduceFor: 15823873 false) 
	#(242 2 #reduceFor: 15823875 false) 
	#(248 4 #reduceFor: 21786626 false) 
	#(250 2 #reduceFor: 21909506 false) 
	#(249 2 #reduceFor: 21893122 false) 
	#(374 5 #reduceFor: 32041987 false) 
	#(375 2 #reduceFor: 32405505 false) 
	#(148 3 #reduceFor: 7058433 false) 
	#(150 1 #reduceFor: 7224322 false) 
	#(149 2 #reduceFor: 7088130 false) 
	#(150 1 #reduceFor: 7224321 false) 
	#(152 1 #reduceFor: 7451652 false) 
	#(152 1 #reduceFor: 7451649 false) 
	#(152 1 #reduceFor: 7451650 false) 
	#(152 1 #reduceFor: 7451651 false) 
	#(148 3 #reduceFor: 7058434 false) 
	#(148 3 #reduceFor: 7058435 false) 
	#(143 4 #reduceFor: 6731777 false) 
	#(144 3 #reduceFor: 6903810 false) 
	#(146 2 #reduceFor: 6937602 false) 
	#(156 1 #reduceFor: 7796737 false) 
	#(147 3 #reduceFor: 6996993 false) 
	#(143 4 #reduceFor: 6731778 false) 
	#(208 7 #reduceFor: 12371970 false) 
	#(189 7 #reduceFor: 10996740 false) 
	#(195 2 #reduceFor: 11392001 false) 
	#(193 4 #reduceFor: 11271169 false) 
	#(191 2 #reduceFor: 11216897 false) 
	#(189 7 #reduceFor: 10996742 false) 
	#(189 7 #reduceFor: 10996743 false) 
	#(188 7 #reduceFor: 10814475 false) 
	#(209 7 #reduceFor: 12506130 false) 
	#(209 7 #reduceFor: 12506113 false) 
	#(209 7 #reduceFor: 12506131 false) 
	#(186 7 #reduceFor: 10603526 false) 
	#(186 7 #reduceFor: 10603535 false) 
	#(186 7 #reduceFor: 10603532 false) 
	#(206 7 #reduceFor: 12095492 false) 
	#(218 7 #reduceFor: 13442052 false) 
	#(161 7 #reduceFor: 8914948 false) 
	#(209 7 #reduceFor: 12506137 false) 
	#(167 6 #reduceFor: 9357318 false) 
	#(185 2 #reduceFor: 10549249 false) 
	#(171 7 #reduceFor: 9548806 false) 
	#(171 7 #reduceFor: 9548805 false) 
	#(171 7 #reduceFor: 9548804 false) 
	#(171 7 #reduceFor: 9548803 false) 
	#(171 7 #reduceFor: 9548810 false) 
	#(171 7 #reduceFor: 9548809 false) 
	#(181 2 #reduceFor: 10232834 false) 
	#(181 2 #reduceFor: 10232835 false) 
	#(176 3 #reduceFor: 10025988 false) 
	#(178 2 #reduceFor: 10119170 false) 
	#(171 7 #reduceFor: 9548818 false) 
	#(171 7 #reduceFor: 9548817 false) 
	#(209 8 #reduceFor: 12506134 false) 
	#(209 8 #reduceFor: 12506117 false) 
	#(209 8 #reduceFor: 12506135 false) 
	#(233 4 #reduceFor: 14439428 false) 
	#(363 2 #reduceFor: 31436802 false) 
	#(361 2 #reduceFor: 31416322 false) 
	#(203 3 #reduceFor: 11895810 false) 
	#(204 3 #reduceFor: 11967490 false) 
	#(244 4 #reduceFor: 16070723 false) 
	#(257 2 #reduceFor: 22374401 false) 
	#(244 4 #reduceFor: 16070727 false) 
	#(256 2 #reduceFor: 22354946 false) 
	#(258 2 #reduceFor: 22374402 false) 
	#(253 2 #reduceFor: 22225921 false) 
	#(244 4 #reduceFor: 16070725 false) 
	#(312 3 #reduceFor: 27675652 false) 
	#(327 3 #reduceFor: 28661761 false) 
	#(325 2 #reduceFor: 28545025 false) 
	#(326 1 #reduceFor: 28619777 false) 
	#(325 2 #reduceFor: 28545027 false) 
	#(324 3 #reduceFor: 28468226 false) 
	#(329 2 #reduceFor: 28810241 false) 
	#(328 3 #reduceFor: 28729346 false) 
	#(306 3 #reduceFor: 27170823 false) 
	#(300 3 #reduceFor: 26379266 false) 
	#(312 3 #reduceFor: 27675650 false) 
	#(302 2 #reduceFor: 26414082 false) 
	#(310 3 #reduceFor: 27426817 false) 
	#(309 3 #reduceFor: 27321345 false) 
	#(320 3 #reduceFor: 28296193 false) 
	#(313 3 #reduceFor: 27763713 false) 
	#(314 1 #reduceFor: 27863041 false) 
	#(317 0 #reduceFor: 28027905 false) 
	#(314 1 #reduceFor: 27863044 false) 
	#(306 3 #reduceFor: 27170818 false) 
	#(296 3 #reduceFor: 26142722 false) 
	#(298 2 #reduceFor: 26178562 false) 
	#(293 0 #reduceFor: 25849857 false) 
	#(277 4 #reduceFor: 23759881 false) 
	#(277 4 #reduceFor: 23759877 false) 
	#(278 3 #reduceFor: 23976962 false) 
	#(280 2 #reduceFor: 24026114 false) 
	#(277 4 #reduceFor: 23759874 false) 
	#(276 2 #reduceFor: 23664641 false) 
	#(244 4 #reduceFor: 16070666 false) 
	#(244 4 #reduceFor: 16070667 false) 
	#(261 4 #reduceFor: 22588417 false) 
	#(264 0 #reduceFor: 22756353 false) 
	#(270 4 #reduceFor: 23350274 false) 
	#(271 2 #reduceFor: 23443457 false) 
	#(227 4 #reduceFor: 14105601 false) 
	#(225 4 #reduceFor: 13921284 false) 
	#(226 4 #reduceFor: 14013451 false) 
	#(226 4 #reduceFor: 14013448 false) 
	#(226 4 #reduceFor: 14013444 false) 
	#(216 8 #reduceFor: 13017092 false) 
	#(342 7 #reduceFor: 30032904 false) 
	#(235 3 #reduceFor: 14586887 false) 
	#(235 3 #reduceFor: 14586885 false) 
	#(235 3 #reduceFor: 14586886 false) 
	#(349 4 #reduceFor: 30600195 false) 
	#(349 4 #reduceFor: 30600194 false) 
	#(347 2 #reduceFor: 30550017 false) 
	#(145 2 #reduceFor: 6937601 false) 
	#(208 8 #reduceFor: 12371972 false) 
	#(193 5 #reduceFor: 11271170 false) 
	#(189 8 #reduceFor: 10996744 false) 
	#(209 8 #reduceFor: 12506132 false) 
	#(209 8 #reduceFor: 12506115 false) 
	#(186 8 #reduceFor: 10603528 false) 
	#(186 8 #reduceFor: 10603534 false) 
	#(209 8 #reduceFor: 12506141 false) 
	#(209 8 #reduceFor: 12506138 false) 
	#(209 8 #reduceFor: 12506121 false) 
	#(209 8 #reduceFor: 12506139 false) 
	#(167 7 #reduceFor: 9357321 false) 
	#(171 8 #reduceFor: 9548808 false) 
	#(171 8 #reduceFor: 9548807 false) 
	#(171 8 #reduceFor: 9548814 false) 
	#(171 8 #reduceFor: 9548813 false) 
	#(171 8 #reduceFor: 9548812 false) 
	#(171 8 #reduceFor: 9548811 false) 
	#(176 4 #reduceFor: 10025989 false) 
	#(182 3 #reduceFor: 10320897 false) 
	#(181 3 #reduceFor: 10232836 false) 
	#(181 3 #reduceFor: 10232837 false) 
	#(184 3 #reduceFor: 10482690 false) 
	#(184 3 #reduceFor: 10482689 false) 
	#(177 2 #reduceFor: 10119169 false) 
	#(171 8 #reduceFor: 9548822 false) 
	#(171 8 #reduceFor: 9548821 false) 
	#(171 8 #reduceFor: 9548820 false) 
	#(171 8 #reduceFor: 9548819 false) 
	#(171 8 #reduceFor: 9548826 false) 
	#(171 8 #reduceFor: 9548825 false) 
	#(209 9 #reduceFor: 12506136 false) 
	#(209 9 #reduceFor: 12506119 false) 
	#(362 2 #reduceFor: 31436801 false) 
	#(253 3 #reduceFor: 22225923 false) 
	#(253 3 #reduceFor: 22225922 false) 
	#(255 2 #reduceFor: 22256642 false) 
	#(322 2 #reduceFor: 28426241 false) 
	#(325 3 #reduceFor: 28545028 false) 
	#(326 2 #reduceFor: 28619778 false) 
	#(329 3 #reduceFor: 28810242 false) 
	#(323 2 #reduceFor: 28426242 false) 
	#(306 4 #reduceFor: 27170820 false) 
	#(306 4 #reduceFor: 27170822 false) 
	#(286 5 #reduceFor: 24828929 false) 
	#(301 2 #reduceFor: 26414081 false) 
	#(321 2 #reduceFor: 28395521 false) 
	#(320 4 #reduceFor: 28296194 false) 
	#(319 2 #reduceFor: 28241921 false) 
	#(318 2 #reduceFor: 28067843 false) 
	#(313 4 #reduceFor: 27763714 false) 
	#(314 2 #reduceFor: 27863042 false) 
	#(315 2 #reduceFor: 27982849 false) 
	#(288 5 #reduceFor: 25029634 false) 
	#(288 5 #reduceFor: 25029635 false) 
	#(288 5 #reduceFor: 25029636 false) 
	#(297 2 #reduceFor: 26178561 false) 
	#(290 5 #reduceFor: 25708545 false) 
	#(277 5 #reduceFor: 23759883 false) 
	#(277 5 #reduceFor: 23759880 false) 
	#(277 5 #reduceFor: 23759876 false) 
	#(281 4 #reduceFor: 24085506 false) 
	#(279 2 #reduceFor: 24026113 false) 
	#(244 5 #reduceFor: 16070660 false) 
	#(276 3 #reduceFor: 23664642 false) 
	#(267 5 #reduceFor: 23009282 false) 
	#(266 2 #reduceFor: 22971393 false) 
	#(265 2 #reduceFor: 22871041 false) 
	#(261 5 #reduceFor: 22588418 false) 
	#(262 2 #reduceFor: 22717442 false) 
	#(261 5 #reduceFor: 22588419 false) 
	#(274 3 #reduceFor: 23526403 false) 
	#(271 3 #reduceFor: 23443458 false) 
	#(273 2 #reduceFor: 23478274 false) 
	#(274 3 #reduceFor: 23526402 false) 
	#(226 5 #reduceFor: 14013450 false) 
	#(226 5 #reduceFor: 14013446 false) 
	#(350 5 #reduceFor: 30682113 false) 
	#(241 4 #reduceFor: 15703041 false) 
	#(217 9 #reduceFor: 13175809 false) 
	#(151 1 #reduceFor: 7384065 false) 
	#(209 9 #reduceFor: 12506114 false) 
	#(186 9 #reduceFor: 10603536 false) 
	#(209 9 #reduceFor: 12506142 false) 
	#(209 9 #reduceFor: 12506125 false) 
	#(209 9 #reduceFor: 12506143 false) 
	#(209 9 #reduceFor: 12506140 false) 
	#(209 9 #reduceFor: 12506123 false) 
	#(171 9 #reduceFor: 9548816 false) 
	#(171 9 #reduceFor: 9548815 false) 
	#(176 5 #reduceFor: 10025990 false) 
	#(182 4 #reduceFor: 10320898 false) 
	#(181 4 #reduceFor: 10232838 false) 
	#(171 9 #reduceFor: 9548824 false) 
	#(171 9 #reduceFor: 9548823 false) 
	#(171 9 #reduceFor: 9548830 false) 
	#(171 9 #reduceFor: 9548829 false) 
	#(171 9 #reduceFor: 9548828 false) 
	#(171 9 #reduceFor: 9548827 false) 
	#(209 10 #reduceFor: 12506118 false) 
	#(217 10 #reduceFor: 13175810 false) 
	#(254 2 #reduceFor: 22256641 false) 
	#(306 5 #reduceFor: 27170824 false) 
	#(321 3 #reduceFor: 28395522 false) 
	#(318 3 #reduceFor: 28067844 false) 
	#(318 3 #reduceFor: 28067845 false) 
	#(314 3 #reduceFor: 27863043 false) 
	#(317 2 #reduceFor: 28027906 false) 
	#(289 6 #reduceFor: 25253889 false) 
	#(289 6 #reduceFor: 25253893 false) 
	#(290 6 #reduceFor: 25708546 false) 
	#(293 2 #reduceFor: 25849858 false) 
	#(277 6 #reduceFor: 23759882 false) 
	#(285 6 #reduceFor: 24652801 false) 
	#(277 6 #reduceFor: 23759878 false) 
	#(244 6 #reduceFor: 16070661 false) 
	#(267 6 #reduceFor: 23009283 false) 
	#(262 3 #reduceFor: 22717443 false) 
	#(264 2 #reduceFor: 22756354 false) 
	#(272 2 #reduceFor: 23478273 false) 
	#(217 10 #reduceFor: 13175811 false) 
	#(226 6 #reduceFor: 14013452 false) 
	#(217 10 #reduceFor: 13175813 false) 
	#(151 2 #reduceFor: 7384066 false) 
	#(150 4 #reduceFor: 7224324 false) 
	#(153 1 #reduceFor: 7571457 false) 
	#(150 4 #reduceFor: 7224323 false) 
	#(209 10 #reduceFor: 12506116 false) 
	#(209 10 #reduceFor: 12506144 false) 
	#(209 10 #reduceFor: 12506127 false) 
	#(217 10 #reduceFor: 13175817 false) 
	#(209 10 #reduceFor: 12506122 false) 
	#(171 10 #reduceFor: 9548832 false) 
	#(171 10 #reduceFor: 9548831 false) 
	#(209 11 #reduceFor: 12506120 false) 
	#(318 4 #reduceFor: 28067846 false) 
	#(318 4 #reduceFor: 28067841 false) 
	#(318 4 #reduceFor: 28067842 false) 
	#(316 2 #reduceFor: 28027905 false) 
	#(295 2 #reduceFor: 26074113 false) 
	#(277 7 #reduceFor: 23759884 false) 
	#(265 4 #reduceFor: 22871043 false) 
	#(265 4 #reduceFor: 22871042 false) 
	#(263 2 #reduceFor: 22756353 false) 
	#(262 4 #reduceFor: 22717441 false) 
	#(217 11 #reduceFor: 13175812 false) 
	#(217 11 #reduceFor: 13175814 false) 
	#(217 11 #reduceFor: 13175815 false) 
	#(241 6 #reduceFor: 15703043 false) 
	#(241 6 #reduceFor: 15703042 false) 
	#(154 1 #reduceFor: 7644164 false) 
	#(150 5 #reduceFor: 7224325 false) 
	#(154 1 #reduceFor: 7644161 false) 
	#(154 1 #reduceFor: 7644162 false) 
	#(154 1 #reduceFor: 7644163 false) 
	#(209 11 #reduceFor: 12506126 false) 
	#(217 11 #reduceFor: 13175818 false) 
	#(217 11 #reduceFor: 13175819 false) 
	#(217 11 #reduceFor: 13175821 false) 
	#(209 11 #reduceFor: 12506124 false) 
	#(289 8 #reduceFor: 25253890 false) 
	#(289 8 #reduceFor: 25253891 false) 
	#(289 8 #reduceFor: 25253892 false) 
	#(295 3 #reduceFor: 26074114 false) 
	#(291 4 #reduceFor: 25834497 false) 
	#(294 1 #reduceFor: 25969666 false) 
	#(291 4 #reduceFor: 25834499 false) 
	#(292 3 #reduceFor: 25849857 false) 
	#(217 12 #reduceFor: 13175816 false) 
	#(150 6 #reduceFor: 7224326 false) 
	#(209 12 #reduceFor: 12506128 false) 
	#(217 12 #reduceFor: 13175820 false) 
	#(217 12 #reduceFor: 13175822 false) 
	#(217 12 #reduceFor: 13175823 false) 
	#(299 2 #reduceFor: 26199041 false) 
	#(294 2 #reduceFor: 25969665 false) 
	#(291 5 #reduceFor: 25834498 false) 
	#(294 2 #reduceFor: 25969667 false) 
	#(291 5 #reduceFor: 25834500 false) 
	#(241 8 #reduceFor: 15703044 false) 
	#(217 13 #reduceFor: 13175824 false) 
	#(299 5 #reduceFor: 26199042 false)
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
	^ #('"!"' '"!="' '"#"' '"$"' '"$crate"' '"%"' '"%="' '"&"' '"&&"' '"&="' '"''_"' '"''static"' '"("' '")"' '"*"' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '".."' '"..."' '"..="' '"/"' '"/="' '":"' '"::"' '";"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>"' '">>="' '">>>"' '"?"' '"@"' '"Self"' '"["' '"]"' '"^"' '"^="' '"_"' '"abstract"' '"as"' '"async"' '"auto"' '"await"' '"become"' '"box"' '"break"' '"const"' '"continue"' '"crate"' '"default"' '"do"' '"dyn"' '"else"' '"enum"' '"extern"' '"false"' '"final"' '"fn"' '"for"' '"if"' '"impl"' '"in"' '"let"' '"loop"' '"macro"' '"macro_rules"' '"match"' '"mod"' '"move"' '"mut"' '"override"' '"priv"' '"pub"' '"ref"' '"return"' '"self"' '"static"' '"struct"' '"super"' '"trait"' '"true"' '"try"' '"type"' '"typeof"' '"union"' '"unsafe"' '"unsized"' '"use"' '"virtual"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"}"' '<bar>' '<lparen>' '<lbracket>' '<NON_KEYWORD_IDENTIFIER>' '<RAW_IDENTIFIER>' '<comment>' '<SHEBANG>' '<whitespace>' '<CHAR_LITERAL>' '<STRING_LITERAL>' '<rawStringStart>' '<simpleRawString>' '<BYTE_LITERAL>' '<BYTE_STRING_LITERAL>' '<INTEGER_LITERAL>' '<potentialFloat>' '<FLOAT_LITERAL>' '<LIFETIME_OR_LABEL>' '<lt>' '<gt>' '<amp>' 'B e g i n' 'crate' 'innerAttribute ''attribute''*' 'item*' 'macroInvocation' 'macroInvocationWithBlock' 'tokenTree*' 'macroInvocationWithoutBlock' 'delimTokenTree' 'tokenTree' 'tokenTreeToken' 'macroInvocationSemi' 'macroRulesDefinition' 'macroRulesDef' 'macroRules' '(";" ''semicolon'' macroRule ''rule'')' '(";" ''semicolon'' macroRule ''rule'')*' 'macroRule' 'macroMatcher' 'macroMatch ''match''*' 'macroMatch' 'macroMatch ''match''+' 'macroMatchToken' 'macroFragSpec' 'macroRepSep' 'macroRepOp' 'macroTranscriber' 'item' 'outerAttribute ''attribute''*' 'visItem' 'macroItem' 'module' 'innerAttribute*' 'externCrate' 'crateRef' 'asClause' 'useDeclaration' 'useTree' '("," ''comma'' useTree)' '("," ''comma'' useTree)*' '"," ''comma''?' 'function' 'functionQualifiers' '("extern" ''externToken'' abi?)' '("extern" ''externToken'' abi?)?' 'abi' 'functionParameters' '("," ''comma'' functionParam)' '("," ''comma'' functionParam)*' 'selfParam' 'outerAttribute*' 'shorthandSelf' 'typedSelf' 'functionParam' 'functionParamPattern' 'functionReturnType' 'typeAlias' 'struct' 'structStruct' 'tupleStruct' 'structFields' '("," ''comma'' structField ''field'')' '("," ''comma'' structField ''field'')*' 'structField' 'tupleFields' '("," ''comma'' tupleField ''field'')' '("," ''comma'' tupleField ''field'')*' 'tupleField' 'enumeration' 'enumItems' '("," ''comma'' enumItem)' '("," ''comma'' enumItem)*' 'enumItem' 'enumItemTuple' 'enumItemStruct' 'enumItemDiscriminant' 'union' 'constantItem' 'staticItem' 'trait' 'typeParamBounds?' 'whereClause ''where''?' 'associatedItem*' '(":" typeParamBounds?)' '(":" typeParamBounds?)?' 'implementation' 'inherentImpl' 'traitImpl' 'externBlock' 'externalItem*' 'externalItem' 'genericParams' '(genericParam "," ''comma'')' '(genericParam "," ''comma'')*' 'genericParam' 'lifetimeParam' 'typeParam' 'constParam' 'whereClause' '(whereClauseItem ''clause'' "," ''comma'')' '(whereClauseItem ''clause'' "," ''comma'')*' 'whereClauseItem' 'lifetimeWhereClauseItem' 'typeBoundWhereClauseItem' 'forLifetimes' 'associatedItem' 'innerAttribute' 'outerAttribute' 'attr' 'attrInput' 'statement' 'letStatement' 'expressionStatement' 'expression' 'expressionWithoutBlock' 'expressionWithBlock' 'literalExpression' 'pathExpression' 'blockExpression' 'statements' 'statement ''statement''+' 'asyncBlockExpression' 'unsafeBlockExpression' 'arrayElements' '("," ''comma'' expression)' '("," ''comma'' expression)*' 'tupleElements' '(expression "," ''comma'')' '(expression "," ''comma'')+' 'tupleIndex' 'structExpression' 'structExprStruct' 'structExprFields' '("," ''comma'' structExprField)' '("," ''comma'' structExprField)*' 'structExprField' 'structBase' 'structExprTuple' 'structExprUnit' 'enumerationVariantExpression' 'enumExprStruct' 'enumExprFields' '("," ''comma'' enumExprField)' '("," ''comma'' enumExprField)*' 'enumExprField' 'enumExprFieldless' 'callParams' 'closureExpression' 'closureParameters' '("," ''comma'' closureParam ''parameter'')' '("," ''comma'' closureParam ''parameter'')*' 'closureParam' 'loopExpression' 'infiniteLoopExpression' 'predicateLoopExpression' 'predicatePatternLoopExpression' 'iteratorLoopExpression' 'loopLabel' 'ifExpression' 'ifLetExpression' 'matchExpression' 'matchArms' '(matchArm "=>" matchArmExpression)' '(matchArm "=>" matchArmExpression)*' 'matchArmExpression' 'matchArm' 'matchArmPatterns' '("|" pattern)' '("|" pattern)*' 'matchArmGuard' 'pattern' '("|" patternNoTopAlt)' '("|" patternNoTopAlt)*' 'patternNoTopAlt' 'patternWithoutRange' 'literalPattern' 'identifierPattern' 'wildcardPattern' 'restPattern' 'rangePattern' 'obsoleteRangePattern' 'rangePatternBound' 'referencePattern' 'structPattern' 'structPatternElements' 'structPatternFields' '("," ''comma'' structPatternField)' '("," ''comma'' structPatternField)*' 'structPatternField' 'structPatternEtCetera' 'tupleStructPattern' 'tupleStructItems' '("," ''comma'' pattern)' '("," ''comma'' pattern)*' 'tuplePattern' 'tuplePatternItems' '("," ''comma'' pattern)+' 'groupedPattern' 'slicePattern' 'slicePatternItems' 'pathPattern' 'type' 'typeNoBounds' 'parenthesizedType' 'neverType' 'tupleType' '(type ''type'' "," ''comma'')' '(type ''type'' "," ''comma'')+' 'arrayType' 'sliceType' 'referenceType' 'rawPointerType' 'bareFunctionType' 'functionTypeQualifiers' 'bareFunctionReturnType' 'functionParametersMaybeNamedVariadic' 'maybeNamedFunctionParameters' '("," ''comma'' maybeNamedParam)' '("," ''comma'' maybeNamedParam)*' 'maybeNamedParam' 'maybeNamedFunctionParametersVariadic' 'traitObjectType' 'traitObjectTypeOneBound' 'implTraitType' 'implTraitTypeOneBound' 'inferredType' 'typeParamBounds' '("+" typeParamBound)' '("+" typeParamBound)*' 'typeParamBound' 'traitBound' 'lifetimeBounds' '(lifetime "+")' '(lifetime "+")*' 'lifetime' 'simplePath' '("::" ''separator'' simplePathSegment)' '("::" ''separator'' simplePathSegment)*' 'simplePathSegment' 'pathInExpression' '("::" ''separator'' pathExprSegment)' '("::" ''separator'' pathExprSegment)*' 'pathExprSegment' 'pathIdentSegment' 'genericArgs' '("," ''comma'' genericArg ''arg'')' '("," ''comma'' genericArg ''arg'')*' 'genericArg' 'genericArgsConst' 'genericArgsLifetimes' '("," ''comma'' lifetime)' '("," ''comma'' lifetime)*' 'genericArgsTypes' '("," ''comma'' type ''type'')' '("," ''comma'' type ''type'')*' 'genericArgsBindings' '("," ''comma'' genericArgsBinding)' '("," ''comma'' genericArgsBinding)*' 'genericArgsBinding' 'qualifiedPathInExpression' '("::" ''separator'' pathExprSegment)+' 'qualifiedPathType' 'qualifiedPathInType' '("::" typePathSegment)' '("::" typePathSegment)+' 'typePath' '("::" ''separator'' typePathSegment)' '("::" ''separator'' typePathSegment)*' 'typePathSegment' 'typePathFn' 'typePathInputs' 'visibility' 'identifier' 'keyword' 'macroIdentifierLikeToken' 'macroLiteralToken' 'macroPunctuationToken' '<rawString>' 'E O F' 'error')
]

{ #category : #generated }
RustParser class >> transitionTable [
^#(
#[1 0 6 0 3 0 6 0 5 0 6 0 30 0 6 0 52 0 6 0 53 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 72 0 6 0 77 0 6 0 79 0 6 0 84 0 6 0 87 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 91 0 6 0 94 0 6 0 96 0 6 0 97 0 6 0 99 0 6 0 112 0 6 0 113 0 9 0 115 0 13 0 131 0 17 0 132 0 6 1 152] 
#[1 0 6 0 3 0 6 0 5 0 6 0 30 0 6 0 52 0 6 0 53 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 72 0 6 0 77 0 6 0 79 0 6 0 84 0 6 0 87 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 91 0 6 0 94 0 6 0 96 0 6 0 97 0 6 0 99 0 6 0 112 0 6 0 113 0 21 0 132 0 6 1 152] 
#[0 0 0 1 152] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 112 0 10 0 113 0 29 0 133 0 33 0 236 0 10 1 152] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 112 0 10 0 113 0 37 0 133 0 33 0 236 0 10 1 152] 
#[0 0 41 0 1] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158 0 18 1 152] 
#[0 0 22 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 65 0 66 0 69 0 72 0 77 0 79 0 84 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 1 152] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158 0 26 1 152] 
#[0 0 53 0 45] 
#[0 0 30 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 65 0 66 0 69 0 72 0 77 0 79 0 84 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 108 0 112 0 113 1 152] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 0 73 0 53 0 77 0 58 0 81 0 60 0 85 0 61 0 89 0 65 0 93 0 66 0 34 0 69 0 97 0 72 0 101 0 77 0 105 0 79 0 109 0 84 0 113 0 87 0 117 0 88 0 121 0 89 0 125 0 90 0 129 0 91 0 133 0 94 0 137 0 96 0 141 0 97 0 145 0 99 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 0 165 0 141 0 169 0 142 0 173 0 159 0 177 0 160 0 181 0 161 0 185 0 163 0 189 0 166 0 193 0 171 0 197 0 172 0 201 0 173 0 205 0 174 0 209 0 186 0 213 0 187 0 217 0 188 0 221 0 189 0 225 0 198 0 229 0 206 0 233 0 207 0 237 0 208 0 241 0 209 0 245 0 215 0 249 0 216 0 253 0 217 1 1 0 218 1 5 0 237 1 9 1 109 1 13 1 112 1 17 1 145 1 21 1 146] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 37 0 238 1 41 1 109 1 13 1 112 1 21 1 146] 
#[0 1 45 0 45] 
#[0 0 38 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 49 1 112 1 21 1 146] 
#[1 1 53 0 66 0 34 0 69 1 57 0 97 0 201 0 173 1 61 0 174] 
#[1 0 42 0 1 0 42 0 30 1 65 0 91] 
#[1 1 69 0 49 1 73 0 52 1 25 0 53 1 53 0 66 0 34 0 69 1 33 0 77 1 77 0 97 0 149 0 112 0 153 0 113 0 201 0 173 1 81 0 174 1 85 1 146] 
#[1 0 11 0 1 0 46 0 5 0 46 0 11 0 46 0 12 0 11 0 13 0 50 0 14 0 46 0 15 0 50 0 17 0 50 0 19 0 11 0 30 0 46 0 42 0 46 0 44 0 46 0 45 0 46 0 49 0 46 0 52 0 46 0 53 0 46 0 58 0 46 0 60 0 46 0 61 0 46 0 63 0 46 0 65 0 46 0 66 0 46 0 69 0 46 0 70 0 46 0 72 0 46 0 77 0 46 0 79 0 46 0 87 0 46 0 88 0 46 0 89 0 46 0 90 0 46 0 91 0 46 0 94 0 46 0 96 0 46 0 97 0 46 0 99 0 46 0 112 0 46 0 113 0 46 0 126 0 11 0 127 0 46 0 129] 
#[1 1 89 0 52 1 93 0 58 1 53 0 66 0 34 0 69 1 97 0 97 0 201 0 173 1 101 0 174] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 1 105 1 146] 
#[1 1 109 0 60 0 54 0 69 1 113 0 104 1 117 0 118 1 121 0 120 1 125 0 175 1 129 1 151] 
#[1 1 133 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 173 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 1 201 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 221 0 221 1 225 0 234 1 229 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 2 69 1 139 2 73 1 142 1 21 1 146] 
#[1 0 15 0 1 0 62 0 30] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 81 1 146] 
#[1 0 66 0 1 0 66 0 5 0 66 0 11 0 66 0 12 0 19 0 13 0 66 0 15 0 66 0 30 0 66 0 42 0 66 0 44 0 66 0 45 0 66 0 49 0 66 0 52 0 66 0 53 0 66 0 58 0 66 0 60 0 66 0 61 0 66 0 63 0 66 0 65 0 66 0 66 0 66 0 69 0 66 0 70 0 66 0 72 0 66 0 77 0 66 0 79 0 66 0 87 0 66 0 88 0 66 0 89 0 66 0 90 0 66 0 91 0 66 0 94 0 66 0 96 0 66 0 97 0 66 0 99 0 66 0 112 0 66 0 113 0 66 0 126 0 66 0 127 0 66 0 129] 
#[0 0 70 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 25 0 53 1 33 0 77 2 89 0 81 0 149 0 112 0 153 0 113 2 93 1 146] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 97 1 146] 
#[0 0 74 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 101 1 146] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 105 1 146] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 109 1 146] 
#[1 2 113 0 53 2 117 0 66 0 34 0 69 2 121 0 72 2 125 0 79 2 129 0 91 0 201 0 173 2 133 0 174] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 0 149 0 112 0 153 0 113 2 149 0 167 2 153 1 109 1 13 1 112 1 21 1 146] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 0 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 2 157 0 31] 
#[0 0 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 2 161 0 69] 
#[0 0 122 0 69] 
#[0 0 126 0 69] 
#[0 0 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 0 182 0 1 0 3 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 84 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 2 165 0 1] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 104 0 186 0 108 2 169 1 111] 
#[1 0 69 0 52 2 173 0 53 0 77 0 58 0 85 0 61 0 89 0 65 0 93 0 66 0 34 0 69 0 97 0 72 0 105 0 79 0 117 0 88 0 121 0 89 0 129 0 91 0 133 0 94 0 137 0 96 0 141 0 97 0 145 0 99 2 177 0 161 2 181 0 163 2 185 0 166 2 189 0 171 0 197 0 172 0 201 0 173 0 205 0 174 2 193 0 186 2 197 0 187 0 217 0 188 0 221 0 189 2 201 0 198 2 205 0 206 2 209 0 207 2 213 0 208 2 217 0 209 2 221 0 215 0 249 0 216 0 253 0 217 2 225 0 218] 
#[0 0 190 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 0 50 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 229 0 46] 
#[1 2 233 0 13 2 237 0 35 2 241 0 45 0 194 0 46 2 245 0 104 2 249 0 138 2 253 0 239] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 1 0 238 1 41 1 109 1 13 1 112 1 21 1 146] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 104 0 186 0 108 3 5 1 111] 
#[1 0 54 0 69 1 117 0 118 1 121 0 120 3 9 0 175 1 129 1 151] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 3 13 0 174] 
#[0 0 198 0 69] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 3 17 1 146] 
#[0 3 21 0 29] 
#[1 1 53 0 66 0 34 0 69 3 25 0 97 0 201 0 173 3 29 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 3 33 0 174] 
#[0 0 202 0 69] 
#[0 3 37 0 29] 
#[1 1 53 0 66 0 34 0 69 3 41 0 97 0 201 0 173 3 45 0 174] 
#[1 3 49 0 52 1 53 0 66 0 34 0 69 3 53 0 97 0 201 0 173 3 57 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 3 61 0 174] 
#[0 0 206 0 69] 
#[1 3 65 0 101 3 69 0 104 3 73 0 127 3 77 0 221 3 81 0 228] 
#[1 1 25 0 53 1 33 0 77 3 85 0 87 0 149 0 112 0 153 0 113 3 89 0 164 3 93 1 146] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 3 97 0 162] 
#[0 0 214 0 69 0 104] 
#[0 0 218 0 69 0 104] 
#[1 0 222 0 69 3 101 0 104] 
#[0 0 226 0 69 0 104] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 230 0 101 0 230 0 104 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 3 113 1 139 2 73 1 142 1 21 1 146] 
#[0 0 234 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 64 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[0 0 238 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 64 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 3 121 0 14 1 149 0 15 1 153 0 30 3 125 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 3 133 0 234 3 137 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 3 141 1 80 3 145 1 81 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 149 1 139 2 73 1 142 1 21 1 146] 
#[1 3 153 0 58 3 157 0 81] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 112 2 57 1 117 3 165 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 169 0 234 3 109 1 112 2 57 1 117 3 173 1 139 2 73 1 142 1 21 1 146] 
#[0 0 242 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 3 177 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 0 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 185 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 3 189 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 3 201 1 100 2 41 1 103 3 205 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 250 0 69 1 117 0 118 1 121 0 120 3 213 0 175 1 129 1 151] 
#[1 3 73 0 127 3 217 0 221] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 3 221 1 100 2 41 1 103 3 225 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 3 229 0 66 0 254 0 69] 
#[0 1 2 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 64 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[1 3 117 0 1 1 6 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 0 23 0 53 1 6 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 0 27 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 31 0 112 0 35 0 113 0 39 0 126 3 129 0 127 3 233 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 3 237 0 223 1 225 0 234 3 241 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 3 253 0 81 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 4 1 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 4 9 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 1 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 4 13 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 4 17 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 4 21 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 4 25 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 181 0 66 0 58 0 69 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 4 29 1 87 3 109 1 112 2 57 1 117 4 33 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 4 37 0 104 4 41 0 228] 
#[0 1 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 30 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 46 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 4 45 0 69] 
#[0 1 58 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 66 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 82 0 2 1 82 0 6 1 82 0 7 1 82 0 9 1 82 0 10 1 82 0 14 1 82 0 15 1 82 0 16 1 82 0 17 1 82 0 18 1 82 0 19 1 82 0 20 1 82 0 21 1 82 0 23 1 82 0 24 1 82 0 26 1 82 0 27 1 82 0 28 1 82 0 29 1 82 0 30 1 82 0 31 1 82 0 32 1 82 0 33 1 82 0 34 1 82 0 35 1 82 0 36 1 82 0 37 1 82 0 38 1 82 0 39 1 82 0 40 1 82 0 41 1 82 0 42 1 82 0 46 1 82 0 47 1 82 0 48 1 82 0 51 1 82 0 64 1 82 0 70 1 82 0 101 1 82 0 104 1 82 0 105 1 82 0 106 1 82 0 107 1 82 0 108 1 82 0 109 1 82 0 110 1 82 0 111 1 82 0 127 1 82 0 128 1 82 0 129 4 49 1 102] 
#[0 0 43 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 186 0 1 1 98 0 2 1 98 0 6 1 98 0 7 1 98 0 9 1 98 0 10 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 29 0 47 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 40 1 98 0 41 1 98 0 42 1 98 0 46 1 98 0 47 1 98 0 48 1 98 0 51 1 98 0 64 1 98 0 70 1 98 0 71 1 98 0 73 1 98 0 101 1 98 0 104 1 98 0 105 1 98 0 106 1 98 0 107 1 98 0 108 1 98 0 109 1 98 0 110 1 98 0 111 1 98 0 127 1 98 0 128 1 98 0 129 2 169 1 111] 
#[1 1 102 0 2 1 102 0 6 1 102 0 7 1 102 0 9 1 102 0 10 4 53 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 23 1 102 0 24 1 102 0 26 1 102 0 27 1 102 0 28 1 102 0 29 0 51 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 42 1 102 0 46 1 102 0 47 1 102 0 48 1 102 0 51 1 102 0 64 1 102 0 70 1 102 0 101 1 102 0 104 1 102 0 105 1 102 0 106 1 102 0 107 1 102 0 108 1 102 0 109 1 102 0 110 1 102 0 111 4 61 0 127 1 102 0 128 1 102 0 129 4 65 1 118 4 69 1 143] 
#[1 4 73 0 30 4 77 1 137 4 81 1 138] 
#[0 1 106 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 110 0 17 4 85 0 70 0 55 0 101 0 55 0 104] 
#[1 1 118 0 2 1 118 0 6 1 118 0 7 1 118 0 9 1 118 0 10 1 118 0 14 1 118 0 15 1 118 0 16 1 118 0 17 1 118 0 18 1 118 0 19 1 118 0 20 1 118 0 21 1 118 0 23 1 118 0 24 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 34 1 118 0 35 1 118 0 36 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 42 1 118 0 46 1 118 0 47 1 118 0 48 1 118 0 51 1 118 0 64 1 118 0 70 1 118 0 101 1 118 0 104 1 118 0 105 1 118 0 106 1 118 0 107 1 118 0 108 1 118 0 109 1 118 0 110 1 118 0 111 1 118 0 127 1 118 0 128 1 118 0 129 4 89 1 141] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 93 1 146] 
#[1 4 97 0 31 4 101 0 104] 
#[1 4 105 0 60 4 109 0 73 4 113 0 87 4 117 0 90] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 121 1 146] 
#[0 4 125 0 29] 
#[1 4 129 0 13 4 133 0 31 3 65 0 101 4 137 0 104 3 73 0 127 4 141 0 221 4 145 0 228] 
#[1 4 149 0 29 4 153 0 35 3 65 0 101 1 122 0 104 3 73 0 127 4 157 0 211 4 161 0 221 4 165 0 228] 
#[1 4 169 0 29 4 173 0 31 4 177 0 35 3 65 0 101 3 73 0 127 4 181 0 221 4 185 0 228] 
#[1 3 65 0 101 4 189 0 104 3 73 0 127 4 193 0 221 4 197 0 228] 
#[0 4 201 0 91] 
#[1 0 54 0 69 4 205 0 104 1 117 0 118 1 121 0 120 4 209 0 175 1 129 1 151] 
#[1 4 213 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 4 217 0 58 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 73 0 127 4 221 0 221 3 109 1 112 2 57 1 117 4 225 1 139 2 73 1 142 1 21 1 146] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 229 1 146] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 233 1 146] 
#[0 1 126 0 69] 
#[0 1 130 0 19 0 31 0 108] 
#[1 0 61 0 5 4 237 0 15 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 4 241 0 104 0 149 0 112 0 153 0 113 1 49 1 112 1 21 1 146] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 4 245 0 108 0 149 0 112 0 153 0 113 4 249 0 167 2 153 1 109 1 13 1 112 1 21 1 146] 
#[0 4 253 0 31] 
#[1 1 134 0 19 5 1 0 30 1 134 0 31 5 5 0 51 1 134 0 108] 
#[0 1 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 5 9 1 146] 
#[1 5 13 0 13 5 17 0 45 5 21 0 104] 
#[1 1 142 0 1 1 142 0 13 1 142 0 14 1 142 0 19 0 59 0 30 1 142 0 31 1 142 0 35 1 142 0 45 1 142 0 46 1 142 0 51 1 142 0 104 1 142 0 108 5 29 1 110] 
#[0 1 65 0 91] 
#[0 1 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 198 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 46 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 151 1 152] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 33 0 136 1 202 1 151] 
#[1 5 37 0 67 5 41 0 92 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 5 73 0 246 5 77 1 151] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 81 0 136 1 202 1 151] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 108 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 85 0 136 1 202 1 151] 
#[0 1 206 0 46] 
#[0 1 210 0 46] 
#[0 5 89 0 46] 
#[1 1 214 0 1 1 214 0 13 1 214 0 14 1 214 0 19 0 63 0 30 1 214 0 31 1 214 0 35 1 214 0 45 1 214 0 46 1 214 0 51 1 214 0 104 1 214 0 108 5 29 1 110] 
#[0 0 222 0 69] 
#[0 1 218 0 69] 
#[1 5 93 0 29 5 97 0 35 3 65 0 101 1 122 0 104 3 73 0 127 5 101 0 211 5 105 0 221 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 109 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 5 113 0 174] 
#[0 1 222 0 69] 
#[0 1 226 0 69] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 117 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 5 121 0 174] 
#[0 1 230 0 69] 
#[1 1 53 0 66 0 34 0 69 5 125 0 97 0 201 0 173 5 129 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 5 133 0 174] 
#[0 1 234 0 69] 
#[0 1 238 0 69] 
#[1 1 242 0 1 1 242 0 5 1 242 0 11 1 242 0 12 1 242 0 13 1 242 0 15 1 242 0 30 1 242 0 31 1 242 0 35 1 242 0 42 1 242 0 44 1 242 0 45 1 242 0 49 1 242 0 53 1 242 0 60 1 242 0 63 1 242 0 66 1 242 0 69 1 242 0 70 1 242 0 72 1 242 0 77 1 242 0 87 1 242 0 90 1 242 0 97 1 242 0 104 1 242 0 112 1 242 0 113 1 242 0 126 1 242 0 127 1 242 0 129 5 137 0 230] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 5 141 0 108 1 246 0 112 1 246 0 113 5 145 0 180 5 149 0 199 5 153 0 202] 
#[1 1 6 0 3 1 6 0 53 1 6 0 58 1 6 0 77 1 6 0 112 1 6 0 113 1 6 0 126 3 233 0 128 3 237 0 223] 
#[1 3 65 0 101 5 157 0 104 5 161 0 228] 
#[0 5 165 0 104] 
#[0 1 250 0 31 0 51] 
#[1 5 169 0 31 5 173 0 51 5 177 0 165] 
#[0 1 254 0 31 0 51] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 5 181 0 219 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 5 189 0 162] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 3 165 1 142 1 21 1 146] 
#[0 1 98 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 193 0 70] 
#[0 0 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 5 197 0 234 3 109 1 112 2 57 1 117 5 201 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 3 241 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 181 0 66 0 58 0 69 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 4 29 1 87 3 109 1 112 2 57 1 117 5 205 1 139 2 73 1 142 1 21 1 146] 
#[1 5 209 0 14 5 213 0 19] 
#[0 2 10 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 5 217 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 221 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 5 225 1 80 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 71 0 14 1 110 0 17 0 55 0 19] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 237 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 186 0 1 1 98 0 2 1 98 0 6 1 98 0 7 1 98 0 9 1 98 0 10 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 29 0 47 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 40 1 98 0 41 1 98 0 42 1 98 0 46 1 98 0 47 1 98 0 48 1 98 0 51 1 98 0 64 1 98 0 70 1 98 0 71 1 98 0 73 1 98 0 101 1 98 0 104 1 98 0 105 1 98 0 106 1 98 0 107 1 98 0 108 1 98 0 109 1 98 0 110 1 98 0 111 1 98 0 127 1 98 0 128 1 98 0 129 3 5 1 111] 
#[1 1 118 0 2 1 118 0 6 1 118 0 7 1 118 0 9 1 118 0 10 1 118 0 14 1 118 0 15 1 118 0 16 1 118 0 17 1 118 0 18 1 118 0 19 1 118 0 20 1 118 0 21 1 118 0 23 1 118 0 24 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 34 1 118 0 35 1 118 0 36 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 42 1 118 0 46 1 118 0 47 1 118 0 48 1 118 0 51 1 118 0 64 1 118 0 70 1 118 0 101 1 118 0 104 1 118 0 105 1 118 0 106 1 118 0 107 1 118 0 108 1 118 0 109 1 118 0 110 1 118 0 111 1 118 0 127 1 118 0 128 1 118 0 129 5 241 1 141] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 5 245 1 139 2 73 1 142 1 21 1 146] 
#[0 2 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 5 249 0 31 5 253 0 46] 
#[0 0 55 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 6 1 1 139 2 73 1 142 1 21 1 146] 
#[0 6 5 0 70] 
#[1 0 61 0 5 3 105 0 30 6 9 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 6 13 0 234 3 109 1 112 2 57 1 117 6 17 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 4 33 1 139 2 73 1 142 1 21 1 146] 
#[0 2 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 75 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 110 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 26 0 69] 
#[0 2 30 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[0 2 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 79 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 42 0 69 1 117 0 118 1 121 0 120 6 21 0 175 1 129 1 151] 
#[0 2 46 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[1 1 246 0 3 1 246 0 53 1 246 0 58 1 246 0 77 1 246 0 112 1 246 0 113 1 246 0 126 6 25 0 180 6 29 0 222 6 33 0 224] 
#[1 6 37 0 51 6 41 0 128] 
#[1 0 61 0 5 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 197 0 234 6 45 1 104 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 197 0 234 6 49 1 104 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 53 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 2 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 6 57 0 81 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 61 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 230 0 101 0 230 0 104 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 6 65 1 139 2 73 1 142 1 21 1 146] 
#[1 6 69 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 6 73 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 6 77 0 104 6 81 0 228] 
#[1 1 110 0 17 6 85 0 70 0 55 0 101 0 55 0 104] 
#[0 6 89 0 69] 
#[0 2 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 6 93 0 162] 
#[0 6 97 0 104] 
#[0 6 101 0 13] 
#[1 2 58 0 2 2 58 0 6 2 58 0 7 2 58 0 9 2 58 0 10 2 58 0 14 2 58 0 15 2 58 0 16 6 105 0 17 2 58 0 18 2 58 0 19 2 58 0 20 2 58 0 21 2 58 0 23 2 58 0 24 2 58 0 26 2 58 0 27 2 58 0 28 2 58 0 29 2 58 0 30 2 58 0 31 2 58 0 32 2 58 0 33 2 58 0 34 2 58 0 35 2 58 0 36 2 58 0 37 2 58 0 38 2 58 0 39 2 58 0 40 2 58 0 41 2 58 0 42 2 58 0 46 2 58 0 47 2 58 0 48 2 58 0 51 2 58 0 64 2 58 0 70 2 58 0 101 2 58 0 104 2 58 0 105 2 58 0 106 2 58 0 107 2 58 0 108 2 58 0 109 2 58 0 110 2 58 0 111 2 58 0 127 2 58 0 128 2 58 0 129 6 109 1 101] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 6 113 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 117 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 6 121 1 144 1 21 1 146] 
#[1 2 62 0 2 2 62 0 6 2 62 0 7 2 62 0 9 2 62 0 10 4 53 0 13 2 62 0 14 2 62 0 15 2 62 0 16 2 62 0 17 2 62 0 18 2 62 0 19 2 62 0 20 2 62 0 21 2 62 0 23 2 62 0 24 2 62 0 26 2 62 0 27 2 62 0 28 2 62 0 29 2 62 0 30 2 62 0 31 2 62 0 32 2 62 0 33 2 62 0 34 2 62 0 35 2 62 0 36 2 62 0 37 2 62 0 38 2 62 0 39 2 62 0 40 2 62 0 41 2 62 0 42 2 62 0 46 2 62 0 47 2 62 0 48 2 62 0 51 2 62 0 64 2 62 0 70 2 62 0 101 2 62 0 104 2 62 0 105 2 62 0 106 2 62 0 107 2 62 0 108 2 62 0 109 2 62 0 110 2 62 0 111 4 61 0 127 2 62 0 128 2 62 0 129 6 125 1 118 6 129 1 143] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 6 133 0 20 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 5 37 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 5 41 0 92 1 193 0 97 6 137 0 104 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 1 197 0 126 3 129 0 127 6 141 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 145 0 246 6 149 0 248 6 153 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 6 157 1 108 1 9 1 109 6 161 1 112 2 57 1 117 6 165 1 121 6 169 1 122 6 173 1 132 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 6 177 1 146 5 77 1 151] 
#[0 2 66 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 6 181 1 142 1 21 1 146] 
#[0 2 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 78 0 2 2 78 0 6 2 78 0 7 2 78 0 9 2 78 0 10 2 78 0 14 2 78 0 15 2 78 0 16 2 78 0 17 2 78 0 18 2 78 0 19 2 78 0 20 2 78 0 21 2 78 0 23 2 78 0 24 2 78 0 26 2 78 0 27 2 78 0 28 2 78 0 29 0 83 0 30 2 78 0 31 2 78 0 32 2 78 0 33 2 78 0 34 2 78 0 35 2 78 0 36 2 78 0 37 2 78 0 38 2 78 0 39 2 78 0 40 2 78 0 41 2 78 0 42 2 78 0 46 2 78 0 47 2 78 0 48 2 78 0 51 2 78 0 64 2 78 0 70 2 78 0 101 2 78 0 104 2 78 0 105 2 78 0 106 2 78 0 107 2 78 0 108 2 78 0 109 2 78 0 110 2 78 0 111 2 78 0 127 2 78 0 128 2 78 0 129 6 185 1 137] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 189 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 2 82 0 2 2 82 0 6 2 82 0 7 2 82 0 9 2 82 0 10 2 82 0 14 2 82 0 15 2 82 0 16 2 82 0 17 2 82 0 18 2 82 0 19 2 82 0 20 2 82 0 21 2 82 0 23 2 82 0 24 2 82 0 26 2 82 0 27 2 82 0 28 2 82 0 29 0 87 0 30 2 82 0 31 2 82 0 32 2 82 0 33 2 82 0 34 2 82 0 35 2 82 0 36 2 82 0 37 2 82 0 38 2 82 0 39 2 82 0 40 2 82 0 41 2 82 0 42 2 82 0 46 2 82 0 47 2 82 0 48 2 82 0 51 2 82 0 64 2 82 0 70 2 82 0 101 2 82 0 104 2 82 0 105 2 82 0 106 2 82 0 107 2 82 0 108 2 82 0 109 2 82 0 110 2 82 0 111 2 82 0 127 2 82 0 128 2 82 0 129 6 197 1 140] 
#[1 6 201 0 13 6 205 0 45 6 209 0 104 6 213 0 143] 
#[0 2 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 69 0 210 0 72 0 210 0 77 0 210 0 79 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 108 0 210 0 112 0 210 0 113 6 217 0 162] 
#[0 6 221 0 14] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 6 225 1 109 1 13 1 112 1 21 1 146] 
#[0 6 229 0 14] 
#[0 6 233 0 14] 
#[0 6 237 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 241 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 6 245 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 6 253 0 194 7 1 0 197] 
#[0 2 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 7 5 0 108 1 246 0 112 1 246 0 113 7 9 0 180 7 13 0 190 7 17 0 193] 
#[1 7 21 0 13 7 25 0 31 3 65 0 101 7 29 0 104 7 33 0 228] 
#[1 7 37 0 31 7 41 0 104] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 7 45 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 7 65 0 214 3 197 0 234 7 69 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 7 73 0 104] 
#[1 7 77 0 29 7 81 0 35 3 65 0 101 1 122 0 104 7 85 0 211 4 165 0 228] 
#[0 2 102 0 31 0 104] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 7 89 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 2 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 7 93 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 7 97 0 29 7 101 0 31 7 105 0 35 3 65 0 101 7 109 0 228] 
#[1 7 113 0 31 7 117 0 35] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 7 121 0 190 7 17 0 193] 
#[1 3 65 0 101 7 125 0 104 7 129 0 228] 
#[0 7 133 0 104] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 7 137 1 146] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 7 141 0 162] 
#[1 0 222 0 69 7 145 0 104] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 7 149 1 139 2 73 1 142 1 21 1 146] 
#[1 7 153 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 7 157 1 139 2 73 1 142 1 21 1 146] 
#[1 7 161 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 7 165 0 58 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 7 169 1 139 2 73 1 142 1 21 1 146] 
#[0 7 173 0 70] 
#[1 7 177 0 31 7 181 0 104] 
#[1 7 185 0 29 7 189 0 35 3 65 0 101 1 122 0 104 3 73 0 127 7 193 0 211 7 197 0 221 4 165 0 228] 
#[0 2 110 0 19 0 31 0 108] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 7 201 0 108 0 149 0 112 0 153 0 113 7 205 0 167 2 153 1 109 1 13 1 112 1 21 1 146] 
#[0 2 114 0 19 0 31 0 108] 
#[1 2 118 0 19 2 118 0 108 7 209 0 169] 
#[0 2 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 7 213 0 15 7 217 0 104] 
#[1 7 221 0 49 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 7 225 1 146] 
#[1 7 229 0 13 3 73 0 127 7 233 0 221] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 237 0 136 1 202 1 151] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 241 0 136 1 202 1 151] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 108 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 245 0 136 1 202 1 151] 
#[1 0 61 0 5 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 7 249 1 112 1 21 1 146] 
#[0 2 126 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 104 0 108] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 41 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 146 9 169 1 147 9 173 1 148 9 177 1 149 9 181 1 150 5 77 1 151] 
#[0 2 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 2 166 0 46] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 9 185 0 46 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 146 9 169 1 147 9 173 1 148 9 177 1 149 9 181 1 150 5 77 1 151] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 9 189 0 108 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 146 9 169 1 147 9 173 1 148 9 177 1 149 9 181 1 150 5 77 1 151] 
#[0 2 174 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 26 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 151] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 9 193 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 9 197 0 214 3 197 0 234 9 201 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 9 205 0 104] 
#[1 9 209 0 29 9 213 0 35 3 65 0 101 1 122 0 104 9 217 0 211 4 165 0 228] 
#[1 9 221 0 31 9 225 0 35] 
#[0 2 178 0 69] 
#[1 9 229 0 31 9 233 0 35] 
#[0 2 182 0 69] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 9 237 0 174] 
#[0 2 186 0 69] 
#[0 2 190 0 69] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 2 194 0 31 2 194 0 35 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 2 194 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 9 241 0 229 9 245 0 231 9 249 0 232 9 253 0 233 10 1 0 234 10 5 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 10 9 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 2 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 57 0 3 1 25 0 53 10 13 0 60 1 33 0 77 0 109 0 84 0 149 0 112 0 153 0 113 10 17 0 237 10 21 1 145 10 25 1 146] 
#[0 10 29 0 108] 
#[1 2 202 0 19 2 202 0 108 10 33 0 201] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 10 37 0 108 1 246 0 112 1 246 0 113 5 145 0 180 10 41 0 199 5 153 0 202] 
#[0 10 45 0 104] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 10 49 0 108 1 246 0 112 1 246 0 113 5 145 0 180 10 53 0 199 5 153 0 202] 
#[0 2 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 10 57 0 49 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 10 61 1 146] 
#[0 10 65 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 10 69 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[0 2 210 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 46 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 151] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 10 81 0 219 5 185 0 236] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 10 85 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 10 89 1 139 2 73 1 142 1 21 1 146] 
#[1 0 91 0 14 2 14 0 17 2 14 0 19] 
#[1 0 95 0 14 2 54 0 17 2 54 0 19] 
#[0 2 214 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 218 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[0 2 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 101 0 14 5 213 0 19] 
#[0 2 226 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[0 2 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 234 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 238 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 242 0 2 2 242 0 6 2 242 0 7 2 242 0 9 2 242 0 10 2 242 0 14 2 242 0 15 2 242 0 16 2 242 0 17 2 242 0 18 2 242 0 19 2 242 0 20 2 242 0 21 2 242 0 23 2 242 0 24 2 242 0 26 2 242 0 27 2 242 0 28 2 242 0 29 0 99 0 30 2 242 0 31 2 242 0 32 2 242 0 33 2 242 0 34 2 242 0 35 2 242 0 36 2 242 0 37 2 242 0 38 2 242 0 39 2 242 0 40 2 242 0 41 2 242 0 42 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 51 2 242 0 64 2 242 0 70 2 242 0 101 2 242 0 104 2 242 0 105 2 242 0 106 2 242 0 107 2 242 0 108 2 242 0 109 2 242 0 110 2 242 0 111 2 242 0 127 2 242 0 128 2 242 0 129 6 197 1 140] 
#[0 2 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 10 217 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 2 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 73 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 77 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 11 81 0 234 3 109 1 112 2 57 1 117 11 85 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 11 89 1 139 2 73 1 142 1 21 1 146] 
#[0 5 229 0 14] 
#[0 2 254 0 69] 
#[1 0 57 0 3 1 25 0 53 11 93 0 58 1 33 0 77 0 149 0 112 0 153 0 113 11 97 0 126 11 101 0 225 11 105 0 226 11 109 0 227 11 113 0 237 11 117 1 146] 
#[0 3 2 0 3 0 53 0 58 0 77 0 112 0 113 0 126] 
#[1 11 121 0 19 11 125 0 128] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 11 129 1 139 2 73 1 142 1 21 1 146] 
#[0 3 6 0 30] 
#[0 2 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 133 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 3 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 137 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 11 141 1 139 2 73 1 142 1 21 1 146] 
#[0 11 145 0 70] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 11 149 0 162] 
#[0 11 153 0 104] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 157 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 11 161 0 13] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 11 165 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 11 169 0 162] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 11 173 0 14 1 246 0 15 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 11 177 0 180 11 181 1 89 11 185 1 90 11 189 1 93 11 193 1 94] 
#[1 3 22 0 2 0 61 0 5 3 22 0 6 3 22 0 7 3 22 0 9 3 22 0 10 1 137 0 11 1 141 0 12 3 193 0 13 3 22 0 14 3 22 0 15 3 22 0 16 3 22 0 17 3 22 0 18 3 22 0 19 3 22 0 20 3 22 0 21 3 22 0 23 3 22 0 24 3 22 0 26 3 22 0 27 3 22 0 28 3 22 0 29 0 107 0 30 3 22 0 31 3 22 0 32 3 22 0 33 3 22 0 34 3 22 0 35 3 22 0 36 3 22 0 37 3 22 0 38 3 22 0 39 3 22 0 40 3 22 0 41 1 157 0 42 1 161 0 44 3 22 0 46 3 22 0 47 3 22 0 48 3 22 0 51 1 25 0 53 1 29 0 60 3 22 0 64 0 111 0 70 1 33 0 77 0 113 0 87 0 125 0 90 3 22 0 101 3 22 0 104 3 22 0 105 3 22 0 106 3 22 0 107 3 22 0 108 3 22 0 109 3 22 0 110 3 22 0 111 0 149 0 112 0 153 0 113 1 197 0 126 3 22 0 127 3 22 0 128 3 22 0 129 3 197 0 234 11 197 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 3 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 30 0 2 3 30 0 6 3 30 0 7 3 30 0 9 3 30 0 10 3 30 0 14 3 30 0 15 3 30 0 16 3 30 0 17 3 30 0 18 3 30 0 19 3 30 0 20 3 30 0 21 11 201 0 22 3 30 0 23 3 30 0 24 3 30 0 26 3 30 0 27 3 30 0 28 3 30 0 29 3 30 0 30 3 30 0 31 3 30 0 32 3 30 0 33 3 30 0 34 3 30 0 35 3 30 0 36 3 30 0 37 3 30 0 38 3 30 0 39 3 30 0 40 3 30 0 41 3 30 0 42 3 30 0 46 3 30 0 47 3 30 0 48 3 30 0 51 3 30 0 64 3 30 0 70 3 30 0 101 3 30 0 104 3 30 0 105 3 30 0 106 3 30 0 107 3 30 0 108 3 30 0 109 3 30 0 110 3 30 0 111 3 30 0 127 3 30 0 128 3 30 0 129] 
#[1 3 34 0 14 3 34 0 19 11 205 1 128] 
#[0 11 209 0 14] 
#[0 3 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 5 37 0 67 5 41 0 92 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 11 213 0 246 5 77 1 151] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 31 0 210 0 44 0 210 0 45 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 58 0 210 0 59 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 67 0 210 0 69 0 210 0 70 0 210 0 71 0 210 0 72 0 210 0 74 0 210 0 75 0 210 0 77 0 210 0 78 0 210 0 79 0 210 0 80 0 210 0 84 0 210 0 86 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 92 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 102 0 210 0 104 0 210 0 105 0 210 0 107 0 210 0 108 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 126 0 210 0 127 11 217 0 162 0 210 1 151] 
#[0 3 46 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 50 0 19 0 128] 
#[0 3 54 0 19 0 128] 
#[0 3 58 0 19 0 128] 
#[1 1 94 0 17 0 115 0 19 0 115 0 128] 
#[1 0 186 0 1 1 98 0 13 1 98 0 17 0 119 0 19 0 47 0 30 1 98 0 127 0 119 0 128 2 169 1 111] 
#[1 3 70 0 19 3 70 0 128 11 221 1 120] 
#[0 3 74 0 19 0 128] 
#[0 3 78 0 19 0 128] 
#[1 0 190 0 1 0 190 0 13 0 190 0 17 0 190 0 19 0 190 0 30 11 225 0 35 0 190 0 127 0 190 0 128] 
#[0 3 82 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 65 0 101 1 122 0 104 11 229 0 211 4 165 0 228] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 11 233 1 142 1 21 1 146] 
#[0 3 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 11 237 0 13 11 241 0 45 11 245 0 104 11 249 0 144 11 253 0 147 12 1 0 148] 
#[1 11 237 0 13 11 241 0 45 11 245 0 104 12 5 0 144 11 253 0 147 12 1 0 148] 
#[1 11 237 0 13 11 241 0 45 11 245 0 104 12 9 0 144 11 253 0 147 12 1 0 148] 
#[0 3 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 108 0 10 0 112 0 10 0 113 12 13 0 133 5 185 0 236] 
#[0 3 98 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 12 17 0 14] 
#[0 3 102 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 3 106 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 21 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 12 25 0 31 12 29 0 35] 
#[1 12 33 0 31 3 65 0 101 12 37 0 228] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 0 81 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 109 0 84 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 1 5 0 237 12 41 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 12 45 1 145 1 21 1 146] 
#[0 12 49 0 14] 
#[1 3 110 0 14 3 110 0 19 12 53 0 196] 
#[0 3 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 57 0 3 1 25 0 53 10 13 0 60 1 33 0 77 0 109 0 84 0 149 0 112 0 153 0 113 10 17 0 237 12 57 1 145 12 61 1 146] 
#[0 12 65 0 108] 
#[1 3 118 0 19 3 118 0 108 12 69 0 192] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 12 73 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 12 77 0 194 7 1 0 197] 
#[0 3 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 12 81 0 108 1 246 0 112 1 246 0 113 7 9 0 180 12 85 0 190 7 17 0 193] 
#[1 12 89 0 31 12 93 0 104] 
#[0 3 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 12 97 0 108 1 246 0 112 1 246 0 113 7 9 0 180 12 101 0 190 7 17 0 193] 
#[1 3 65 0 101 1 122 0 104 12 105 0 211 4 165 0 228] 
#[0 3 130 0 101 0 104] 
#[0 1 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 3 134 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 3 134 0 101 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 12 109 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 3 138 0 31 0 101] 
#[1 1 122 0 31 3 65 0 101 12 113 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 12 117 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 12 121 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 12 125 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 12 129 0 214 3 197 0 234 12 133 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 12 137 0 104] 
#[1 12 141 0 31 12 145 0 35 3 65 0 101 12 149 0 228] 
#[0 12 153 0 31] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 12 157 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 3 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 161 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 12 165 0 31 12 169 0 35] 
#[0 3 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 173 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 12 177 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 12 181 0 190 7 17 0 193] 
#[0 12 185 0 104] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 12 189 0 190 7 17 0 193] 
#[1 12 193 0 29 12 197 0 35 3 65 0 101 1 122 0 104 3 73 0 127 12 201 0 211 12 205 0 221 4 165 0 228] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 12 209 0 219 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 12 213 0 162] 
#[0 12 217 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 12 221 1 139 2 73 1 142 1 21 1 146] 
#[0 12 225 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 12 229 1 139 2 73 1 142 1 21 1 146] 
#[1 12 233 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 12 237 1 139 2 73 1 142 1 21 1 146] 
#[0 12 241 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 245 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 3 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 69 0 210 0 72 0 210 0 77 0 210 0 79 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 108 0 210 0 112 0 210 0 113 12 249 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 12 253 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 13 1 0 214 3 197 0 234 13 5 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 13 9 0 104] 
#[1 13 13 0 29 13 17 0 35 3 65 0 101 1 122 0 104 13 21 0 211 4 165 0 228] 
#[0 3 154 0 19 0 31 0 108] 
#[1 2 118 0 19 2 118 0 108 13 25 0 169] 
#[1 13 29 0 19 3 158 0 108 13 33 0 168 13 37 0 170] 
#[0 3 162 0 19 0 31 0 108] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 13 41 0 108 0 149 0 112 0 153 0 113 13 45 0 167 2 153 1 109 1 13 1 112 1 21 1 146] 
#[0 3 166 0 19 0 31 0 108] 
#[0 3 170 0 19 0 31 0 108] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 13 49 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 13 53 0 176 13 57 0 179 13 61 0 180 13 65 0 183 1 246 1 151] 
#[0 13 69 0 13] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 13 73 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 146 9 169 1 147 9 173 1 148 9 177 1 149 9 181 1 150 5 77 1 151] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 13 77 0 46 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 146 9 169 1 147 9 173 1 148 9 177 1 149 9 181 1 150 5 77 1 151] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 13 81 0 108 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 146 9 169 1 147 9 173 1 148 9 177 1 149 9 181 1 150 5 77 1 151] 
#[0 3 174 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 104 0 108] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 4 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 3 65 0 101 1 122 0 104 13 85 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 13 89 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 13 93 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 13 97 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 13 101 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 13 105 0 214 3 197 0 234 13 109 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 13 113 0 104] 
#[0 5 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 117 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 5 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 121 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 5 126 0 69] 
#[0 5 130 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 104 0 112 0 113 0 126 0 127 0 129] 
#[1 13 125 0 19 5 134 0 31 5 134 0 35 5 134 0 104] 
#[0 5 138 0 19 0 31 0 35 0 104] 
#[0 5 142 0 19 0 31 0 35 0 104] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 13 129 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 13 133 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 13 137 1 139 2 73 1 142 1 21 1 146] 
#[0 13 141 0 29] 
#[1 1 94 0 17 0 123 0 29] 
#[0 0 46 0 53 0 77 0 112 0 113] 
#[0 5 146 0 1 0 3 0 5 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 56 0 58 0 60 0 61 0 63 0 66 0 67 0 69 0 70 0 72 0 74 0 77 0 81 0 84 0 85 0 87 0 88 0 90 0 92 0 94 0 97 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 151] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 13 149 1 146] 
#[1 13 153 0 13 5 150 0 19 13 157 0 35 13 161 0 104 5 150 0 108 13 165 0 203 13 169 0 204 13 173 0 205] 
#[0 5 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 13 177 0 19 5 158 0 108 13 181 0 200] 
#[0 5 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 185 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 13 189 0 108 1 246 0 112 1 246 0 113 5 145 0 180 13 193 0 199 5 153 0 202] 
#[0 5 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 197 0 108] 
#[0 5 170 0 31] 
#[0 5 174 0 31] 
#[0 5 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 5 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 1 25 0 53 13 201 0 58 0 81 0 60 0 85 0 61 1 53 0 66 0 34 0 69 1 33 0 77 0 109 0 84 0 113 0 87 0 117 0 88 0 125 0 90 13 205 0 97 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 13 209 0 141 13 213 0 171 0 197 0 172 0 201 0 173 0 205 0 174 13 217 0 208 10 17 0 237 1 9 1 109 1 13 1 112 13 221 1 145 1 21 1 146] 
#[0 5 186 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 13 225 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[1 3 65 0 101 1 122 0 104 13 229 0 211 4 165 0 228] 
#[1 0 127 0 14 2 246 0 17 2 246 0 19] 
#[0 5 190 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 194 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 198 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 237 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 13 241 0 81 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 245 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 13 249 0 81 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 253 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 14 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 59 0 210 0 60 0 210 0 67 0 210 0 70 0 210 0 71 0 210 0 74 0 210 0 75 0 210 0 77 0 210 0 78 0 210 0 80 0 210 0 86 0 210 0 87 0 210 0 90 0 210 0 92 0 210 0 97 0 210 0 102 0 210 0 104 0 210 0 105 0 210 0 107 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 126 0 210 0 127 14 1 0 162 0 210 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 9 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 5 202 0 2 0 57 0 3 0 61 0 5 5 202 0 6 5 202 0 7 10 109 0 8 10 113 0 9 5 202 0 10 10 117 0 13 5 202 0 14 10 121 0 15 5 202 0 16 5 202 0 17 5 202 0 18 5 202 0 19 10 125 0 20 5 202 0 21 5 202 0 23 5 202 0 27 5 202 0 28 10 137 0 30 5 202 0 31 5 202 0 32 5 202 0 33 5 202 0 34 5 202 0 35 5 202 0 36 5 202 0 37 5 202 0 38 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 42 1 161 0 44 10 141 0 45 5 202 0 46 5 202 0 47 5 202 0 48 5 202 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 202 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 131 0 104 10 197 0 105 5 202 0 106 10 201 0 107 5 202 0 108 5 202 0 109 5 202 0 110 5 202 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 5 202 0 128 5 202 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 13 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 17 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 112 14 21 1 116 11 61 1 117 1 21 1 146] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 59 0 210 0 60 0 210 0 67 0 210 0 70 0 210 0 71 0 210 0 74 0 210 0 75 0 210 0 77 0 210 0 78 0 210 0 80 0 210 0 86 0 210 0 87 0 210 0 90 0 210 0 92 0 210 0 97 0 210 0 102 0 210 0 104 0 210 0 105 0 210 0 107 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 126 0 210 0 127 14 25 0 162 0 210 1 151] 
#[1 14 29 0 80 6 137 0 104 14 33 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 37 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 5 206 0 2 0 57 0 3 0 61 0 5 5 206 0 6 5 206 0 7 10 109 0 8 10 113 0 9 5 206 0 10 10 117 0 13 5 206 0 14 10 121 0 15 5 206 0 16 5 206 0 17 5 206 0 18 5 206 0 19 10 125 0 20 5 206 0 21 5 206 0 23 10 129 0 24 10 133 0 26 5 206 0 27 5 206 0 28 10 137 0 30 5 206 0 31 5 206 0 32 5 206 0 33 5 206 0 34 5 206 0 35 5 206 0 36 5 206 0 37 5 206 0 38 5 206 0 39 5 206 0 40 5 206 0 41 5 206 0 42 1 161 0 44 10 141 0 45 5 206 0 46 5 206 0 47 5 206 0 48 5 206 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 206 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 135 0 104 10 197 0 105 5 206 0 106 10 201 0 107 5 206 0 108 5 206 0 109 5 206 0 110 5 206 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 14 41 0 126 3 129 0 127 5 206 0 128 5 206 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 45 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 5 210 0 2 0 57 0 3 0 61 0 5 5 210 0 6 5 210 0 7 10 109 0 8 10 113 0 9 5 210 0 10 10 117 0 13 5 210 0 14 10 121 0 15 5 210 0 16 5 210 0 17 5 210 0 18 5 210 0 19 10 125 0 20 5 210 0 21 5 210 0 23 10 129 0 24 10 133 0 26 5 210 0 27 5 210 0 28 10 137 0 30 5 210 0 31 5 210 0 32 5 210 0 33 5 210 0 34 5 210 0 35 5 210 0 36 5 210 0 37 5 210 0 38 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 42 1 161 0 44 10 141 0 45 5 210 0 46 5 210 0 47 5 210 0 48 5 210 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 210 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 139 0 104 10 197 0 105 5 210 0 106 10 201 0 107 5 210 0 108 5 210 0 109 5 210 0 110 5 210 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 14 49 0 126 3 129 0 127 5 210 0 128 5 210 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 53 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 14 141 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 14 225 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 229 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 14 237 1 40 14 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 6 137 0 104 14 245 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 249 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 14 253 0 105 15 1 0 107] 
#[1 10 105 0 1 5 214 0 2 0 57 0 3 0 61 0 5 5 214 0 6 5 214 0 7 10 109 0 8 10 113 0 9 5 214 0 10 10 117 0 13 5 214 0 14 10 121 0 15 5 214 0 16 5 214 0 17 5 214 0 18 5 214 0 19 10 125 0 20 5 214 0 21 5 214 0 23 10 129 0 24 10 133 0 26 5 214 0 27 5 214 0 28 10 137 0 30 5 214 0 31 5 214 0 32 5 214 0 33 5 214 0 34 5 214 0 35 5 214 0 36 5 214 0 37 5 214 0 38 5 214 0 39 5 214 0 40 5 214 0 41 5 214 0 42 1 161 0 44 10 141 0 45 5 214 0 46 5 214 0 47 5 214 0 48 5 214 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 214 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 143 0 104 10 197 0 105 5 214 0 106 10 201 0 107 5 214 0 108 5 214 0 109 5 214 0 110 5 214 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 5 214 0 128 5 214 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 6 137 0 104 15 9 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 15 13 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 17 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 0 147 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 15 25 0 180 15 29 1 22 15 33 1 25 1 246 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 15 37 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 41 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 15 45 0 29] 
#[0 5 218 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 49 0 243 15 53 0 244 15 57 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 165 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 5 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 234 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 238 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 242 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 246 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 5 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 254 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 18 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 6 22 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 6 26 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 6 30 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 6 34 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 10 161 0 70 10 173 0 75 10 193 0 102 15 213 1 27 15 217 1 28 15 221 1 29 15 225 1 30] 
#[0 6 38 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 6 42 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 6 46 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 6 50 0 2 6 50 0 6 6 50 0 7 6 50 0 9 6 50 0 10 15 229 0 13 6 50 0 14 6 50 0 15 6 50 0 16 6 50 0 17 6 50 0 18 6 50 0 19 6 50 0 20 6 50 0 21 6 50 0 23 6 50 0 24 6 50 0 26 6 50 0 27 6 50 0 28 6 50 0 31 6 50 0 32 6 50 0 33 6 50 0 34 6 50 0 35 6 50 0 36 6 50 0 37 6 50 0 38 6 50 0 39 6 50 0 40 6 50 0 41 6 50 0 42 6 50 0 46 6 50 0 47 6 50 0 48 6 50 0 51 6 50 0 64 0 151 0 104 6 50 0 106 6 50 0 107 6 50 0 108 6 50 0 109 6 50 0 110 6 50 0 111 6 50 0 127 6 50 0 128 6 50 0 129] 
#[1 6 54 0 2 6 54 0 6 6 54 0 7 6 54 0 9 6 54 0 10 6 54 0 13 6 54 0 14 6 54 0 15 6 54 0 16 6 54 0 17 6 54 0 18 6 54 0 19 6 54 0 20 6 54 0 21 6 54 0 23 6 54 0 24 6 54 0 25 6 54 0 26 6 54 0 27 6 54 0 28 6 54 0 29 6 54 0 30 6 54 0 31 6 54 0 32 6 54 0 33 6 54 0 34 6 54 0 35 6 54 0 36 6 54 0 37 6 54 0 38 6 54 0 39 6 54 0 40 6 54 0 41 6 54 0 42 6 54 0 46 6 54 0 47 6 54 0 48 6 54 0 51 6 54 0 64 6 54 0 71 6 54 0 73 6 54 0 104 6 54 0 105 6 54 0 106 6 54 0 107 6 54 0 108 6 54 0 109 6 54 0 110 6 54 0 111 6 54 0 127 6 54 0 128 6 54 0 129 15 237 1 115] 
#[1 6 58 0 2 6 58 0 6 6 58 0 7 6 58 0 9 6 58 0 10 6 58 0 13 6 58 0 14 6 58 0 15 6 58 0 16 6 58 0 17 6 58 0 18 6 58 0 19 6 58 0 20 6 58 0 21 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 29 0 155 0 30 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 34 6 58 0 35 6 58 0 36 6 58 0 37 6 58 0 38 6 58 0 39 6 58 0 40 6 58 0 41 6 58 0 42 6 58 0 46 6 58 0 47 6 58 0 48 6 58 0 51 6 58 0 64 6 58 0 71 6 58 0 73 6 58 0 104 6 58 0 105 6 58 0 106 6 58 0 107 6 58 0 108 6 58 0 109 6 58 0 110 6 58 0 111 6 58 0 127 6 58 0 128 6 58 0 129] 
#[0 6 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 245 0 30 15 249 1 114 15 253 1 134] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 1 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 1 122 0 104 16 5 0 211 4 165 0 228] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 16 9 1 139 2 73 1 142 1 21 1 146] 
#[0 10 93 0 14] 
#[0 10 97 0 14] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 16 13 1 146] 
#[1 6 66 0 19 16 17 0 29 6 66 0 128] 
#[0 6 70 0 19 0 128] 
#[0 6 74 0 19 0 128] 
#[0 6 78 0 19 0 128] 
#[1 5 146 0 3 0 159 0 53 5 146 0 58 0 163 0 77 0 167 0 112 0 171 0 113 0 175 0 126 16 25 1 146] 
#[1 6 82 0 19 16 29 0 29 16 33 0 35 6 82 0 128] 
#[1 6 86 0 3 6 86 0 53 6 86 0 58 6 86 0 77 6 86 0 112 6 86 0 113 6 86 0 126 16 37 0 128] 
#[0 6 90 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 16 41 0 128] 
#[0 6 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 45 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 16 49 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 53 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 16 57 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 16 61 0 162] 
#[1 3 65 0 101 1 122 0 104 16 65 0 211 4 165 0 228] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 16 69 0 14 1 246 0 15 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 11 177 0 180 16 73 1 89 11 185 1 90 11 189 1 93 11 193 1 94] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 16 77 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 16 89 0 212 5 185 0 236] 
#[1 6 98 0 2 6 98 0 6 6 98 0 7 6 98 0 9 6 98 0 10 6 98 0 14 6 98 0 15 6 98 0 16 6 98 0 17 6 98 0 18 6 98 0 19 6 98 0 20 6 98 0 21 16 93 0 22 6 98 0 23 6 98 0 24 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 29 6 98 0 30 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 34 6 98 0 35 6 98 0 36 6 98 0 37 6 98 0 38 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 42 6 98 0 46 6 98 0 47 6 98 0 48 6 98 0 51 6 98 0 64 6 98 0 70 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 106 6 98 0 107 6 98 0 108 6 98 0 109 6 98 0 110 6 98 0 111 6 98 0 127 6 98 0 128 6 98 0 129 16 97 1 88] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 16 101 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 10 17 0 237 16 105 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 16 109 1 146] 
#[0 16 113 0 14] 
#[0 6 102 0 14] 
#[1 6 106 0 14 6 106 0 19 16 117 1 92] 
#[0 6 110 0 14] 
#[0 6 114 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 121 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 6 118 0 14 16 125 0 19 16 129 1 127] 
#[1 6 122 0 2 6 122 0 6 6 122 0 7 6 122 0 9 6 122 0 10 6 122 0 14 6 122 0 15 6 122 0 16 6 122 0 17 6 122 0 18 6 122 0 19 6 122 0 20 6 122 0 21 16 133 0 22 6 122 0 23 6 122 0 24 6 122 0 26 6 122 0 27 6 122 0 28 6 122 0 29 6 122 0 30 6 122 0 31 6 122 0 32 6 122 0 33 6 122 0 34 6 122 0 35 6 122 0 36 6 122 0 37 6 122 0 38 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 42 6 122 0 46 6 122 0 47 6 122 0 48 6 122 0 51 6 122 0 64 6 122 0 70 6 122 0 101 6 122 0 104 6 122 0 105 6 122 0 106 6 122 0 107 6 122 0 108 6 122 0 109 6 122 0 110 6 122 0 111 6 122 0 127 6 122 0 128 6 122 0 129] 
#[0 6 126 0 19 0 128] 
#[1 10 105 0 1 0 179 0 3 0 183 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 0 187 0 30 16 141 0 31 1 161 0 44 10 141 0 45 0 191 0 52 0 195 0 53 10 149 0 56 10 153 0 57 0 14 0 58 10 157 0 59 0 199 0 60 0 14 0 61 0 14 0 65 0 14 0 66 5 37 0 67 0 14 0 69 10 161 0 70 10 165 0 71 0 14 0 72 0 203 0 74 10 173 0 75 0 207 0 77 10 177 0 78 0 14 0 79 10 181 0 80 0 14 0 84 10 185 0 86 0 211 0 87 0 14 0 88 0 14 0 89 0 215 0 90 0 14 0 91 5 41 0 92 0 14 0 94 0 14 0 96 0 219 0 97 0 14 0 99 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 16 145 0 108 0 223 0 112 0 227 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 16 149 0 135 16 153 0 137 16 157 0 141 16 161 0 157 0 49 0 158 16 165 0 180 5 185 0 236 10 213 0 237 16 169 0 240 16 173 0 241 16 177 0 242 15 49 0 243 16 181 0 244 16 185 0 245 10 229 0 246 10 233 0 247 10 237 0 248 16 189 0 249 16 193 0 250 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 16 197 0 19 16 201 0 128 16 205 1 119] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 209 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 16 213 0 104] 
#[0 6 130 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 6 134 0 1 6 134 0 2 6 134 0 3 6 134 0 4 6 134 0 5 6 134 0 6 6 134 0 7 6 134 0 9 6 134 0 10 6 134 0 11 6 134 0 12 6 134 0 13 6 134 0 14 6 134 0 15 6 134 0 16 6 134 0 17 6 134 0 18 6 134 0 19 6 134 0 20 6 134 0 21 6 134 0 22 6 134 0 23 6 134 0 24 6 134 0 25 6 134 0 26 6 134 0 27 6 134 0 28 6 134 0 29 6 134 0 30 6 134 0 31 6 134 0 32 6 134 0 33 6 134 0 34 6 134 0 35 6 134 0 36 6 134 0 37 6 134 0 38 6 134 0 39 6 134 0 40 6 134 0 41 6 134 0 42 6 134 0 43 6 134 0 44 6 134 0 45 6 134 0 47 6 134 0 48 6 134 0 49 6 134 0 50 6 134 0 51 6 134 0 52 6 134 0 53 6 134 0 54 6 134 0 55 6 134 0 56 6 134 0 57 6 134 0 58 6 134 0 59 6 134 0 60 6 134 0 62 6 134 0 63 6 134 0 64 6 134 0 65 6 134 0 66 6 134 0 67 6 134 0 68 6 134 0 69 6 134 0 70 6 134 0 71 6 134 0 72 6 134 0 73 6 134 0 74 6 134 0 75 6 134 0 76 6 134 0 77 6 134 0 78 6 134 0 79 6 134 0 80 6 134 0 81 6 134 0 82 6 134 0 83 6 134 0 84 6 134 0 85 6 134 0 86 6 134 0 87 6 134 0 88 6 134 0 89 6 134 0 90 6 134 0 91 6 134 0 92 6 134 0 93 6 134 0 94 6 134 0 95 6 134 0 96 6 134 0 97 6 134 0 98 6 134 0 99 6 134 0 100 6 134 0 101 6 134 0 102 6 134 0 103 6 134 0 104 6 134 0 105 6 134 0 106 6 134 0 107 6 134 0 112 6 134 0 113 6 134 0 117 6 134 0 118 6 134 0 120 6 134 0 121 6 134 0 122 6 134 0 123 6 134 0 125 6 134 0 126 6 134 0 127 6 134 0 128 6 134 0 129 16 217 0 149 6 134 1 151] 
#[1 6 134 0 1 6 134 0 2 6 134 0 3 6 134 0 4 6 134 0 5 6 134 0 6 6 134 0 7 6 134 0 9 6 134 0 10 6 134 0 11 6 134 0 12 6 134 0 13 6 134 0 15 6 134 0 16 6 134 0 17 6 134 0 18 6 134 0 19 6 134 0 20 6 134 0 21 6 134 0 22 6 134 0 23 6 134 0 24 6 134 0 25 6 134 0 26 6 134 0 27 6 134 0 28 6 134 0 29 6 134 0 30 6 134 0 31 6 134 0 32 6 134 0 33 6 134 0 34 6 134 0 35 6 134 0 36 6 134 0 37 6 134 0 38 6 134 0 39 6 134 0 40 6 134 0 41 6 134 0 42 6 134 0 43 6 134 0 44 6 134 0 45 6 134 0 46 6 134 0 47 6 134 0 48 6 134 0 49 6 134 0 50 6 134 0 51 6 134 0 52 6 134 0 53 6 134 0 54 6 134 0 55 6 134 0 56 6 134 0 57 6 134 0 58 6 134 0 59 6 134 0 60 6 134 0 62 6 134 0 63 6 134 0 64 6 134 0 65 6 134 0 66 6 134 0 67 6 134 0 68 6 134 0 69 6 134 0 70 6 134 0 71 6 134 0 72 6 134 0 73 6 134 0 74 6 134 0 75 6 134 0 76 6 134 0 77 6 134 0 78 6 134 0 79 6 134 0 80 6 134 0 81 6 134 0 82 6 134 0 83 6 134 0 84 6 134 0 85 6 134 0 86 6 134 0 87 6 134 0 88 6 134 0 89 6 134 0 90 6 134 0 91 6 134 0 92 6 134 0 93 6 134 0 94 6 134 0 95 6 134 0 96 6 134 0 97 6 134 0 98 6 134 0 99 6 134 0 100 6 134 0 101 6 134 0 102 6 134 0 103 6 134 0 104 6 134 0 105 6 134 0 106 6 134 0 107 6 134 0 112 6 134 0 113 6 134 0 117 6 134 0 118 6 134 0 120 6 134 0 121 6 134 0 122 6 134 0 123 6 134 0 125 6 134 0 126 6 134 0 127 6 134 0 128 6 134 0 129 16 221 0 149 6 134 1 151] 
#[1 6 134 0 1 6 134 0 2 6 134 0 3 6 134 0 4 6 134 0 5 6 134 0 6 6 134 0 7 6 134 0 9 6 134 0 10 6 134 0 11 6 134 0 12 6 134 0 13 6 134 0 15 6 134 0 16 6 134 0 17 6 134 0 18 6 134 0 19 6 134 0 20 6 134 0 21 6 134 0 22 6 134 0 23 6 134 0 24 6 134 0 25 6 134 0 26 6 134 0 27 6 134 0 28 6 134 0 29 6 134 0 30 6 134 0 31 6 134 0 32 6 134 0 33 6 134 0 34 6 134 0 35 6 134 0 36 6 134 0 37 6 134 0 38 6 134 0 39 6 134 0 40 6 134 0 41 6 134 0 42 6 134 0 43 6 134 0 44 6 134 0 45 6 134 0 47 6 134 0 48 6 134 0 49 6 134 0 50 6 134 0 51 6 134 0 52 6 134 0 53 6 134 0 54 6 134 0 55 6 134 0 56 6 134 0 57 6 134 0 58 6 134 0 59 6 134 0 60 6 134 0 62 6 134 0 63 6 134 0 64 6 134 0 65 6 134 0 66 6 134 0 67 6 134 0 68 6 134 0 69 6 134 0 70 6 134 0 71 6 134 0 72 6 134 0 73 6 134 0 74 6 134 0 75 6 134 0 76 6 134 0 77 6 134 0 78 6 134 0 79 6 134 0 80 6 134 0 81 6 134 0 82 6 134 0 83 6 134 0 84 6 134 0 85 6 134 0 86 6 134 0 87 6 134 0 88 6 134 0 89 6 134 0 90 6 134 0 91 6 134 0 92 6 134 0 93 6 134 0 94 6 134 0 95 6 134 0 96 6 134 0 97 6 134 0 98 6 134 0 99 6 134 0 100 6 134 0 101 6 134 0 102 6 134 0 103 6 134 0 104 6 134 0 105 6 134 0 106 6 134 0 107 6 134 0 108 6 134 0 112 6 134 0 113 6 134 0 117 6 134 0 118 6 134 0 120 6 134 0 121 6 134 0 122 6 134 0 123 6 134 0 125 6 134 0 126 6 134 0 127 6 134 0 128 6 134 0 129 16 225 0 149 6 134 1 151] 
#[0 16 229 0 14] 
#[1 6 138 0 14 6 138 0 31 6 138 0 46 6 138 0 108 16 233 0 146] 
#[0 16 237 0 37] 
#[0 16 241 0 46] 
#[0 16 245 0 108] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 16 249 0 108 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158] 
#[0 6 142 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[1 16 253 0 31 17 1 0 35] 
#[0 6 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 17 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 6 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 17 9 0 31] 
#[0 6 154 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 13 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 17 17 0 31 3 65 0 101 17 21 0 228] 
#[1 6 158 0 14 17 25 0 19 17 29 0 195] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 17 33 1 146] 
#[0 17 37 0 29] 
#[0 6 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 17 41 0 19 6 166 0 108 17 45 0 191] 
#[1 17 49 0 31 3 65 0 101 17 53 0 228] 
#[0 17 57 0 14] 
#[0 6 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 17 61 0 108] 
#[0 6 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 17 65 0 108 1 246 0 112 1 246 0 113 7 9 0 180 17 69 0 190 7 17 0 193] 
#[0 6 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 17 73 0 108] 
#[0 17 77 0 104] 
#[0 6 182 0 31 0 101] 
#[0 17 81 0 31] 
#[1 1 122 0 31 3 65 0 101 17 85 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 17 89 0 212 5 185 0 236] 
#[1 3 65 0 101 1 122 0 104 17 93 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 17 97 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 17 101 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 17 105 0 162] 
#[0 6 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 109 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 17 113 0 31 17 117 0 35] 
#[0 6 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 17 121 0 31 17 125 0 35 3 65 0 101 17 129 0 228] 
#[0 17 133 0 31] 
#[0 6 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 137 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 17 141 0 31] 
#[0 6 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 17 145 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 17 149 0 190 7 17 0 193] 
#[0 17 153 0 108] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 17 157 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 17 161 0 214 3 197 0 234 17 165 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 17 169 0 104] 
#[1 17 173 0 29 17 177 0 35 3 65 0 101 1 122 0 104 17 181 0 211 4 165 0 228] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 17 185 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 17 189 0 219 5 185 0 236] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 193 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 17 197 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 201 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 17 205 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 2 57 1 117 17 209 1 139 2 73 1 142 1 21 1 146] 
#[0 17 213 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 217 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 1 122 0 104 17 221 0 211 4 165 0 228] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 108 0 10 0 112 0 10 0 113 17 225 0 133 5 185 0 236] 
#[1 3 65 0 101 1 122 0 104 17 229 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 17 233 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 17 237 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 17 241 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 17 245 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 17 249 0 214 3 197 0 234 17 253 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 18 1 0 104] 
#[1 13 29 0 19 3 158 0 108 13 33 0 168 18 5 0 170] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 6 202 0 108 0 149 0 112 0 153 0 113 18 9 0 167 2 153 1 109 1 13 1 112 1 21 1 146] 
#[0 6 206 0 19 0 108] 
#[0 18 13 0 108] 
#[0 6 210 0 19 0 31 0 108] 
#[1 2 118 0 19 2 118 0 108 18 17 0 169] 
#[1 18 21 0 22 18 25 0 31 3 65 0 101 6 137 0 104 18 29 0 185 18 33 0 228 18 37 0 248] 
#[0 18 41 0 14] 
#[1 6 214 0 14 18 45 0 19] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 53 0 25 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 18 69 0 81 14 93 0 85 18 73 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 18 77 0 129 18 81 0 134 1 213 0 135 1 217 0 137 18 85 0 181 18 89 0 182 18 93 0 184 1 225 0 234 10 17 0 237 18 97 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 18 101 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 181 1 139 2 73 1 142 14 217 1 146 14 221 1 151] 
#[1 6 218 0 14 6 218 0 19 18 113 0 178] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 18 117 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 18 121 0 176 13 57 0 179 13 61 0 180 13 65 0 183 1 246 1 151] 
#[0 6 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 230 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 101 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151 1 152] 
#[0 18 125 0 104] 
#[0 18 129 0 31] 
#[1 1 122 0 31 3 65 0 101 18 133 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 18 137 0 212 5 185 0 236] 
#[1 3 65 0 101 1 122 0 104 18 141 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 18 145 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 18 149 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 18 153 0 162] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 18 157 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 18 161 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 6 234 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 18 165 0 29] 
#[0 18 169 0 69] 
#[1 0 231 0 17 0 235 0 29] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 6 238 0 19 3 105 0 30 6 238 0 31 6 238 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 6 238 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 18 173 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 6 242 0 11 6 242 0 12 6 242 0 19 6 242 0 31 6 242 0 35 6 242 0 104 6 242 0 126 18 177 1 105 18 181 1 107] 
#[1 13 153 0 13 6 246 0 19 13 157 0 35 13 161 0 104 6 246 0 108 18 185 0 203 18 189 0 204 18 193 0 205] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 18 197 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 18 201 0 194 7 1 0 197] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 18 205 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 18 209 0 108 1 246 0 112 1 246 0 113 7 9 0 180 18 213 0 190 7 17 0 193] 
#[0 6 250 0 19 0 108] 
#[0 6 254 0 19 0 108] 
#[0 7 2 0 19 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 7 6 0 108 1 246 0 112 1 246 0 113 5 145 0 180 18 217 0 202] 
#[0 7 10 0 19 0 108] 
#[0 7 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 7 18 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 18 221 0 108] 
#[0 7 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 73 0 52 1 53 0 66 0 34 0 69 1 77 0 97 0 201 0 173 1 81 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 2 133 0 174] 
#[0 7 26 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 7 30 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 7 34 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 0 69 0 52 13 201 0 58 0 85 0 61 1 53 0 66 0 34 0 69 0 117 0 88 13 205 0 97 18 225 0 171 0 197 0 172 0 201 0 173 0 205 0 174 18 229 0 208] 
#[0 7 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 18 233 0 104] 
#[0 7 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 46 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 46 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 46 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 46 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 46 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 46 0 64 7 46 0 104 15 181 0 106 15 185 0 107 7 46 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 18 237 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 50 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 50 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 50 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 50 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 50 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 50 0 64 7 50 0 104 15 181 0 106 15 185 0 107 7 50 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 18 241 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 7 54 0 7 7 54 0 9 7 54 0 10 7 54 0 14 15 81 0 15 7 54 0 16 15 89 0 17 7 54 0 18 7 54 0 19 15 97 0 20 7 54 0 21 15 105 0 23 7 54 0 24 7 54 0 26 15 117 0 27 7 54 0 28 7 54 0 31 15 125 0 32 7 54 0 33 15 133 0 34 7 54 0 35 15 141 0 36 7 54 0 37 15 145 0 38 15 149 0 39 7 54 0 40 15 157 0 41 15 161 0 42 7 54 0 46 15 169 0 47 7 54 0 48 15 177 0 51 7 54 0 64 7 54 0 104 7 54 0 106 7 54 0 107 7 54 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 16 137 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 18 245 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 5 185 0 236 10 213 0 237 18 249 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 18 253 1 0 19 1 1 1 19 5 1 2 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 7 58 0 2 7 58 0 6 7 58 0 7 7 58 0 9 7 58 0 10 7 58 0 14 7 58 0 15 7 58 0 16 7 58 0 17 7 58 0 18 7 58 0 19 7 58 0 20 7 58 0 21 15 105 0 23 7 58 0 24 7 58 0 26 7 58 0 27 7 58 0 28 7 58 0 31 7 58 0 32 7 58 0 33 7 58 0 34 7 58 0 35 7 58 0 36 7 58 0 37 7 58 0 38 7 58 0 39 7 58 0 40 7 58 0 41 15 161 0 42 7 58 0 46 7 58 0 47 7 58 0 48 15 177 0 51 7 58 0 64 7 58 0 104 7 58 0 106 7 58 0 107 7 58 0 108 7 58 0 109 15 193 0 110 15 197 0 111 7 58 0 127 7 58 0 128 7 58 0 129] 
#[1 7 62 0 2 15 65 0 6 7 62 0 7 7 62 0 9 7 62 0 10 7 62 0 14 15 81 0 15 7 62 0 16 7 62 0 17 7 62 0 18 7 62 0 19 7 62 0 20 7 62 0 21 15 105 0 23 7 62 0 24 7 62 0 26 15 117 0 27 7 62 0 28 7 62 0 31 7 62 0 32 7 62 0 33 7 62 0 34 7 62 0 35 7 62 0 36 7 62 0 37 7 62 0 38 7 62 0 39 7 62 0 40 7 62 0 41 15 161 0 42 7 62 0 46 7 62 0 47 7 62 0 48 15 177 0 51 7 62 0 64 7 62 0 104 7 62 0 106 7 62 0 107 7 62 0 108 7 62 0 109 15 193 0 110 15 197 0 111 7 62 0 127 7 62 0 128 7 62 0 129] 
#[1 15 61 0 2 15 65 0 6 7 66 0 7 15 73 0 9 7 66 0 10 7 66 0 14 15 81 0 15 7 66 0 16 15 89 0 17 7 66 0 18 7 66 0 19 15 97 0 20 7 66 0 21 15 105 0 23 15 117 0 27 7 66 0 28 7 66 0 31 15 125 0 32 7 66 0 33 15 133 0 34 7 66 0 35 15 141 0 36 7 66 0 37 15 145 0 38 15 149 0 39 7 66 0 40 15 157 0 41 15 161 0 42 7 66 0 46 15 169 0 47 7 66 0 48 15 177 0 51 7 66 0 64 7 66 0 104 7 66 0 106 15 185 0 107 7 66 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 7 70 0 7 15 73 0 9 7 70 0 10 7 70 0 14 15 81 0 15 7 70 0 16 15 89 0 17 7 70 0 18 7 70 0 19 15 97 0 20 7 70 0 21 15 105 0 23 15 117 0 27 7 70 0 28 7 70 0 31 15 125 0 32 7 70 0 33 15 133 0 34 7 70 0 35 15 141 0 36 7 70 0 37 15 145 0 38 15 149 0 39 7 70 0 40 15 157 0 41 15 161 0 42 7 70 0 46 15 169 0 47 7 70 0 48 15 177 0 51 7 70 0 64 7 70 0 104 7 70 0 106 15 185 0 107 7 70 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 6 54 0 2 6 54 0 6 6 54 0 7 6 54 0 9 6 54 0 10 6 54 0 13 6 54 0 14 6 54 0 15 6 54 0 16 6 54 0 17 6 54 0 18 6 54 0 19 6 54 0 20 6 54 0 21 6 54 0 23 6 54 0 24 6 54 0 25 6 54 0 26 6 54 0 27 6 54 0 28 6 54 0 29 6 54 0 30 6 54 0 31 6 54 0 32 6 54 0 33 6 54 0 34 6 54 0 35 6 54 0 36 6 54 0 37 6 54 0 38 6 54 0 39 6 54 0 40 6 54 0 41 6 54 0 42 6 54 0 46 6 54 0 47 6 54 0 48 6 54 0 51 6 54 0 64 6 54 0 71 6 54 0 73 6 54 0 104 6 54 0 105 6 54 0 106 6 54 0 107 6 54 0 108 6 54 0 109 6 54 0 110 6 54 0 111 6 54 0 127 6 54 0 128 6 54 0 129 19 9 1 115] 
#[1 10 105 0 1 16 137 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 19 13 0 46 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 5 185 0 236 10 213 0 237 19 17 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 19 21 0 253 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 6 137 0 104 19 25 0 248] 
#[0 7 74 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 78 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 78 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 78 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 78 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 78 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 78 0 64 7 78 0 104 15 181 0 106 15 185 0 107 7 78 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 7 82 0 2 0 57 0 3 0 61 0 5 7 82 0 6 7 82 0 7 10 109 0 8 10 113 0 9 7 82 0 10 10 117 0 13 7 82 0 14 10 121 0 15 7 82 0 16 7 82 0 17 7 82 0 18 7 82 0 19 10 125 0 20 7 82 0 21 7 82 0 23 10 129 0 24 10 133 0 26 7 82 0 27 7 82 0 28 15 45 0 29 10 137 0 30 7 82 0 31 7 82 0 32 7 82 0 33 7 82 0 34 7 82 0 35 7 82 0 36 7 82 0 37 7 82 0 38 7 82 0 39 7 82 0 40 7 82 0 41 7 82 0 42 1 161 0 44 10 141 0 45 7 82 0 46 7 82 0 47 7 82 0 48 7 82 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 7 82 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 239 0 104 10 197 0 105 7 82 0 106 10 201 0 107 7 82 0 108 7 82 0 109 7 82 0 110 7 82 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 7 82 0 128 7 82 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 29 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 86 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 86 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 86 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 86 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 86 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 86 0 64 7 86 0 104 15 181 0 106 15 185 0 107 7 86 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 7 90 0 2 0 57 0 3 0 61 0 5 7 90 0 6 7 90 0 7 10 109 0 8 10 113 0 9 7 90 0 10 10 117 0 13 7 90 0 14 10 121 0 15 7 90 0 16 7 90 0 17 7 90 0 18 7 90 0 19 10 125 0 20 7 90 0 21 7 90 0 23 10 129 0 24 10 133 0 26 7 90 0 27 7 90 0 28 15 45 0 29 10 137 0 30 7 90 0 31 7 90 0 32 7 90 0 33 7 90 0 34 7 90 0 35 7 90 0 36 7 90 0 37 7 90 0 38 7 90 0 39 7 90 0 40 7 90 0 41 7 90 0 42 1 161 0 44 10 141 0 45 7 90 0 46 7 90 0 47 7 90 0 48 7 90 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 7 90 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 243 0 104 10 197 0 105 7 90 0 106 10 201 0 107 7 90 0 108 7 90 0 109 7 90 0 110 7 90 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 7 90 0 128 7 90 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 33 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 94 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 94 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 94 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 94 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 94 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 94 0 64 7 94 0 104 15 181 0 106 15 185 0 107 7 94 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 19 37 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 41 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 19 49 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 53 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 19 57 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 19 61 1 69 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 19 65 0 123 19 69 0 125] 
#[0 7 98 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 19 73 0 46 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 77 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 19 81 1 73 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 7 102 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 85 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 7 106 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 19 89 1 146] 
#[1 1 25 0 53 1 33 0 77 19 93 0 81 0 149 0 112 0 153 0 113 19 97 1 146] 
#[0 7 110 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 101 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 7 114 0 14 7 114 0 19 7 118 0 24 7 118 0 25 7 118 0 26 7 114 0 29 7 114 0 31 7 114 0 35 7 114 0 37 7 114 0 46 7 114 0 71 7 114 0 73 7 114 0 105 7 114 0 108] 
#[0 7 122 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 126 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 7 130 0 14 7 130 0 19 7 134 0 24 7 134 0 25 7 134 0 26 7 130 0 29 7 130 0 31 7 130 0 35 7 130 0 37 7 130 0 46 7 130 0 71 7 130 0 73 7 130 0 105 7 130 0 108] 
#[0 7 138 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 7 142 0 14 7 142 0 19 7 146 0 24 7 146 0 25 7 146 0 26 7 142 0 29 7 142 0 31 7 142 0 35 7 142 0 37 7 142 0 46 7 142 0 71 7 142 0 73 7 142 0 105 7 142 0 108] 
#[1 7 150 0 14 7 150 0 19 7 154 0 24 7 154 0 25 7 154 0 26 7 150 0 29 7 150 0 31 7 150 0 35 7 150 0 37 7 150 0 46 7 150 0 71 7 150 0 73 7 150 0 105 7 150 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 19 105 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 109 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 7 158 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 19 113 0 73] 
#[1 7 162 0 14 7 162 0 19 7 162 0 29 7 162 0 31 7 162 0 35 7 162 0 37 7 162 0 46 7 162 0 71 7 162 0 73 7 162 0 105 7 162 0 108 19 117 1 46] 
#[0 7 166 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 170 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 178 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 182 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 186 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 190 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 19 121 0 24 19 125 0 25 19 129 0 26] 
#[0 7 194 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 198 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 202 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 206 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 210 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 214 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 218 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 19 133 0 13 7 222 0 14 7 222 0 19 7 226 0 24 7 226 0 25 7 226 0 26 7 222 0 29 7 222 0 31 7 222 0 35 7 222 0 37 7 222 0 46 7 222 0 71 7 222 0 73 19 137 0 104 7 222 0 105 7 222 0 108] 
#[1 7 230 0 14 7 230 0 19 7 234 0 24 7 234 0 25 7 234 0 26 7 230 0 29 7 230 0 31 7 230 0 35 7 230 0 37 7 230 0 46 7 230 0 71 7 230 0 73 7 230 0 105 7 230 0 108] 
#[1 0 190 0 1 0 190 0 13 0 247 0 14 0 190 0 17 0 247 0 19 0 190 0 24 0 190 0 25 0 190 0 26 0 247 0 29 0 190 0 30 0 247 0 31 0 247 0 35 0 247 0 37 19 141 0 43 0 247 0 46 0 247 0 71 0 247 0 73 0 190 0 104 0 247 0 105 0 247 0 108 0 190 0 127] 
#[0 7 242 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 145 1 40 14 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 19 149 0 248] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 153 1 44 19 157 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 19 161 0 35] 
#[1 7 246 0 35 7 246 0 37 7 246 0 71 7 246 0 105 19 165 1 42] 
#[0 7 250 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 19 169 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 0 251 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 15 25 0 180 19 177 1 22 15 33 1 25 1 246 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 19 181 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 185 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 254 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 254 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 254 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 254 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 254 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 254 0 64 7 254 0 104 15 181 0 106 15 185 0 107 7 254 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 8 2 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 189 1 40 14 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 19 193 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 19 197 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 201 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 57 0 3 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 10 17 0 237 19 205 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 19 209 0 105] 
#[1 8 6 0 19 8 6 0 105 19 213 1 24] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 217 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 15 61 0 2 15 65 0 6 8 10 0 7 15 73 0 9 8 10 0 10 8 10 0 14 15 81 0 15 8 10 0 16 15 89 0 17 8 10 0 18 8 10 0 19 15 97 0 20 8 10 0 21 15 105 0 23 8 10 0 24 8 10 0 26 15 117 0 27 8 10 0 28 8 10 0 31 15 125 0 32 8 10 0 33 15 133 0 34 8 10 0 35 15 141 0 36 8 10 0 37 15 145 0 38 15 149 0 39 8 10 0 40 15 157 0 41 15 161 0 42 8 10 0 46 15 169 0 47 8 10 0 48 15 177 0 51 8 10 0 64 8 10 0 104 8 10 0 106 8 10 0 107 8 10 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 8 14 0 70 0 75 0 102] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 255 0 2 0 255 0 6 0 255 0 7 0 255 0 9 0 255 0 10 8 18 0 14 0 255 0 15 0 255 0 16 0 255 0 17 0 255 0 18 8 18 0 19 0 255 0 20 0 255 0 21 0 255 0 23 0 255 0 24 0 255 0 26 0 255 0 27 0 255 0 28 8 18 0 31 0 255 0 32 0 255 0 33 0 255 0 34 0 255 0 35 0 255 0 36 8 18 0 37 0 255 0 38 0 255 0 39 0 255 0 40 0 255 0 41 0 255 0 42 8 18 0 46 0 255 0 47 0 255 0 48 0 255 0 51 8 18 0 64 8 18 0 104 0 255 0 106 0 255 0 107 8 18 0 108 0 255 0 109 0 255 0 110 0 255 0 111 0 255 0 127 0 255 0 128 0 255 0 129] 
#[1 8 22 0 1 1 3 0 2 8 22 0 3 8 22 0 5 1 3 0 6 1 3 0 7 8 22 0 8 1 3 0 9 1 3 0 10 8 22 0 13 8 22 0 14 1 3 0 15 1 3 0 16 1 3 0 17 1 3 0 18 8 22 0 19 1 3 0 20 1 3 0 21 1 3 0 23 1 3 0 24 1 3 0 26 1 3 0 27 1 3 0 28 8 22 0 30 8 22 0 31 1 3 0 32 1 3 0 33 1 3 0 34 1 3 0 35 1 3 0 36 8 22 0 37 1 3 0 38 1 3 0 39 1 3 0 40 1 3 0 41 1 3 0 42 8 22 0 44 8 22 0 45 8 22 0 46 1 3 0 47 1 3 0 48 8 22 0 49 1 3 0 51 8 22 0 52 8 22 0 53 8 22 0 56 8 22 0 57 8 22 0 58 8 22 0 59 8 22 0 60 8 22 0 61 8 22 0 64 8 22 0 65 8 22 0 66 8 22 0 67 8 22 0 69 8 22 0 70 8 22 0 71 8 22 0 72 8 22 0 74 8 22 0 75 8 22 0 77 8 22 0 78 8 22 0 79 8 22 0 80 8 22 0 81 8 22 0 84 8 22 0 85 8 22 0 86 8 22 0 87 8 22 0 88 8 22 0 89 8 22 0 90 8 22 0 91 8 22 0 92 8 22 0 94 8 22 0 96 8 22 0 97 8 22 0 99 8 22 0 102 8 22 0 104 8 22 0 105 1 3 0 106 1 3 0 107 8 22 0 108 1 3 0 109 1 3 0 110 1 3 0 111 8 22 0 112 8 22 0 113 8 22 0 117 8 22 0 118 8 22 0 120 8 22 0 121 8 22 0 122 8 22 0 123 8 22 0 125 8 22 0 126 1 3 0 127 1 3 0 128 1 3 0 129 8 22 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 221 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 225 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 229 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 233 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 237 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 241 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 245 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 249 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 253 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 1 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 20 9 0 54 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 20 13 0 123 20 17 1 3 3 109 1 112 20 21 1 116 11 61 1 117 20 25 1 146] 
#[1 10 105 0 1 8 26 0 2 0 57 0 3 0 61 0 5 8 26 0 6 8 26 0 7 10 109 0 8 10 113 0 9 8 26 0 10 10 117 0 13 8 26 0 14 10 121 0 15 8 26 0 16 8 26 0 17 8 26 0 18 8 26 0 19 10 125 0 20 8 26 0 21 8 26 0 23 8 26 0 27 8 26 0 28 10 137 0 30 8 26 0 31 8 26 0 32 8 26 0 33 8 26 0 34 8 26 0 35 8 26 0 36 8 26 0 37 8 26 0 38 8 26 0 39 8 26 0 40 8 26 0 41 8 26 0 42 1 161 0 44 10 141 0 45 8 26 0 46 8 26 0 47 8 26 0 48 8 26 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 8 26 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 1 7 0 104 10 197 0 105 8 26 0 106 10 201 0 107 8 26 0 108 8 26 0 109 8 26 0 110 8 26 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 8 26 0 128 8 26 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 29 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 33 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 37 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 41 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 45 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 49 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 53 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 57 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 61 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 65 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 69 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 73 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 77 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 8 30 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 8 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 81 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 85 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 20 89 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 93 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 97 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 101 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 20 105 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 109 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 20 113 1 20 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 117 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 121 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 125 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 129 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 8 38 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 8 42 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 8 46 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 8 50 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 20 133 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 137 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 210 0 3 0 210 0 24 1 11 0 53 1 15 0 77 1 19 0 108 1 23 0 112 1 27 0 113 1 31 0 123 20 145 0 162 20 149 1 3 20 153 1 15 20 157 1 18 20 161 1 146] 
#[1 8 54 0 2 8 54 0 6 8 54 0 7 8 54 0 9 8 54 0 10 8 54 0 13 8 54 0 14 8 54 0 15 8 54 0 16 8 54 0 17 8 54 0 18 8 54 0 19 8 54 0 20 8 54 0 21 8 54 0 23 8 54 0 24 8 54 0 25 8 54 0 26 8 54 0 27 8 54 0 28 8 54 0 29 15 245 0 30 8 54 0 31 8 54 0 32 8 54 0 33 8 54 0 34 8 54 0 35 8 54 0 36 8 54 0 37 8 54 0 38 8 54 0 39 8 54 0 40 8 54 0 41 8 54 0 42 8 54 0 46 8 54 0 47 8 54 0 48 8 54 0 51 8 54 0 64 8 54 0 71 8 54 0 73 8 54 0 104 8 54 0 105 8 54 0 106 8 54 0 107 8 54 0 108 8 54 0 109 8 54 0 110 8 54 0 111 8 54 0 127 8 54 0 128 8 54 0 129 20 165 1 114] 
#[1 4 61 0 127 20 169 1 118] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 20 173 1 116 11 61 1 117 1 21 1 146] 
#[0 8 58 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 8 62 0 2 8 62 0 6 8 62 0 7 8 62 0 9 8 62 0 10 8 62 0 14 8 62 0 15 8 62 0 16 8 62 0 17 8 62 0 18 8 62 0 19 8 62 0 20 8 62 0 21 8 62 0 23 8 62 0 24 8 62 0 25 8 62 0 26 8 62 0 27 8 62 0 28 8 62 0 29 15 245 0 30 8 62 0 31 8 62 0 32 8 62 0 33 8 62 0 34 8 62 0 35 8 62 0 36 8 62 0 37 8 62 0 38 8 62 0 39 8 62 0 40 8 62 0 41 8 62 0 42 8 62 0 46 8 62 0 47 8 62 0 48 8 62 0 51 8 62 0 64 8 62 0 71 8 62 0 73 8 62 0 104 8 62 0 105 8 62 0 106 8 62 0 107 8 62 0 108 8 62 0 109 8 62 0 110 8 62 0 111 8 62 0 127 8 62 0 128 8 62 0 129 20 177 1 114] 
#[1 3 65 0 101 1 122 0 104 20 181 0 211 4 165 0 228] 
#[0 20 185 0 104] 
#[0 13 233 0 14] 
#[0 20 189 0 29] 
#[1 6 242 0 11 6 242 0 12 6 242 0 19 6 242 0 126 6 242 0 128 20 193 1 105 18 181 1 107] 
#[1 8 66 0 19 20 197 0 29 8 66 0 128] 
#[1 8 70 0 19 20 201 0 29 20 205 0 35 8 70 0 128] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 8 74 0 19 3 105 0 30 20 209 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 8 74 0 128 3 197 0 234 20 213 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 20 217 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 8 78 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 8 82 0 30] 
#[1 3 65 0 101 1 122 0 104 20 221 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 20 225 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 1 122 0 104 20 229 0 211 4 165 0 228] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 20 233 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 20 237 0 212 5 185 0 236] 
#[0 20 241 0 104] 
#[1 8 86 0 2 8 86 0 6 8 86 0 7 8 86 0 9 8 86 0 10 8 86 0 14 8 86 0 15 8 86 0 16 8 86 0 17 8 86 0 18 8 86 0 19 8 86 0 20 8 86 0 21 16 93 0 22 8 86 0 23 8 86 0 24 8 86 0 26 8 86 0 27 8 86 0 28 8 86 0 29 8 86 0 30 8 86 0 31 8 86 0 32 8 86 0 33 8 86 0 34 8 86 0 35 8 86 0 36 8 86 0 37 8 86 0 38 8 86 0 39 8 86 0 40 8 86 0 41 8 86 0 42 8 86 0 46 8 86 0 47 8 86 0 48 8 86 0 51 8 86 0 64 8 86 0 70 8 86 0 101 8 86 0 104 8 86 0 105 8 86 0 106 8 86 0 107 8 86 0 108 8 86 0 109 8 86 0 110 8 86 0 111 8 86 0 127 8 86 0 128 8 86 0 129 20 245 1 88] 
#[0 20 249 0 14] 
#[0 8 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 1 25 0 53 0 77 0 58 0 81 0 60 0 85 0 61 1 53 0 66 0 34 0 69 1 33 0 77 0 109 0 84 0 113 0 87 0 125 0 90 0 133 0 94 13 205 0 97 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 20 253 0 141 21 1 0 171 0 197 0 172 0 201 0 173 0 205 0 174 21 5 0 186 21 9 0 207 10 17 0 237 1 9 1 109 1 13 1 112 21 13 1 145 1 21 1 146] 
#[0 8 94 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 21 17 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 21 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 8 98 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 246 0 14 0 246 0 19 21 25 0 29] 
#[0 8 102 0 14 0 19] 
#[1 0 190 0 1 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 21 29 0 29 0 190 0 30 0 190 0 127] 
#[1 8 106 0 2 8 106 0 6 8 106 0 7 8 106 0 9 8 106 0 10 8 106 0 14 8 106 0 15 8 106 0 16 8 106 0 17 8 106 0 18 8 106 0 19 8 106 0 20 8 106 0 21 16 93 0 22 8 106 0 23 8 106 0 24 8 106 0 26 8 106 0 27 8 106 0 28 8 106 0 29 8 106 0 30 8 106 0 31 8 106 0 32 8 106 0 33 8 106 0 34 8 106 0 35 8 106 0 36 8 106 0 37 8 106 0 38 8 106 0 39 8 106 0 40 8 106 0 41 8 106 0 42 8 106 0 46 8 106 0 47 8 106 0 48 8 106 0 51 8 106 0 64 8 106 0 70 8 106 0 101 8 106 0 104 8 106 0 105 8 106 0 106 8 106 0 107 8 106 0 108 8 106 0 109 8 106 0 110 8 106 0 111 8 106 0 127 8 106 0 128 8 106 0 129 21 33 1 88] 
#[1 8 110 0 14 21 37 0 19 21 41 1 91] 
#[0 8 114 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 8 118 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 45 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 8 122 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 49 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 41 0 1 1 45 0 45] 
#[0 8 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 8 130 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151 1 152] 
#[1 0 86 0 1 1 14 0 2 0 86 0 3 0 86 0 5 1 14 0 6 1 14 0 7 0 86 0 8 1 35 0 9 1 14 0 10 0 86 0 13 1 35 0 15 1 14 0 16 1 14 0 17 1 14 0 18 1 35 0 20 1 14 0 21 1 14 0 23 1 35 0 24 1 35 0 26 1 14 0 27 1 14 0 28 0 86 0 30 1 35 0 31 1 14 0 32 1 14 0 33 1 14 0 34 1 14 0 35 1 14 0 36 1 14 0 38 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 42 0 86 0 44 0 86 0 45 1 14 0 47 1 14 0 48 1 14 0 51 0 86 0 52 0 86 0 53 0 86 0 56 0 86 0 57 0 86 0 58 0 86 0 59 0 86 0 60 0 86 0 61 0 86 0 65 0 86 0 66 0 86 0 67 0 86 0 69 0 86 0 70 0 86 0 71 0 86 0 72 0 86 0 74 0 86 0 75 0 86 0 77 0 86 0 78 0 86 0 79 0 86 0 80 0 86 0 84 0 86 0 86 0 86 0 87 0 86 0 88 0 86 0 89 0 86 0 90 0 86 0 91 0 86 0 92 0 86 0 94 0 86 0 96 0 86 0 97 0 86 0 99 0 86 0 102 0 86 0 104 0 86 0 105 1 14 0 106 1 35 0 107 1 35 0 108 1 14 0 109 1 14 0 110 1 14 0 111 0 86 0 112 0 86 0 113 0 86 0 117 0 86 0 118 0 86 0 120 0 86 0 121 0 86 0 122 0 86 0 123 0 86 0 125 0 86 0 126 1 35 0 127 1 14 0 128 1 14 0 129 0 86 1 151] 
#[1 1 18 0 2 1 18 0 6 1 18 0 7 1 18 0 9 1 18 0 10 1 18 0 15 1 18 0 16 1 18 0 17 1 18 0 18 1 18 0 20 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 39 0 31 1 18 0 32 1 18 0 33 1 18 0 34 1 18 0 35 1 18 0 36 1 18 0 38 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 42 1 18 0 47 1 18 0 48 1 18 0 51 1 18 0 106 1 18 0 107 1 18 0 108 1 18 0 109 1 18 0 110 1 18 0 111 1 18 0 127 1 18 0 128 1 18 0 129] 
#[0 8 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 8 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[1 0 57 0 3 21 53 0 74 10 17 0 237] 
#[0 8 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 8 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 8 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[1 5 222 0 2 5 222 0 6 5 222 0 7 5 222 0 9 5 222 0 10 5 222 0 15 5 222 0 16 5 222 0 17 5 222 0 18 5 222 0 20 5 222 0 21 5 222 0 23 5 222 0 24 5 222 0 26 5 222 0 27 5 222 0 28 21 57 0 31 5 222 0 32 5 222 0 33 5 222 0 34 5 222 0 35 5 222 0 36 5 222 0 38 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 42 5 222 0 47 5 222 0 48 5 222 0 51 5 222 0 106 5 222 0 107 8 154 0 108 5 222 0 109 5 222 0 110 5 222 0 111 5 222 0 127 5 222 0 128 5 222 0 129] 
#[1 8 158 0 1 5 226 0 2 8 158 0 3 8 158 0 5 5 226 0 6 5 226 0 7 8 158 0 8 1 43 0 9 5 226 0 10 8 158 0 13 1 43 0 15 5 226 0 16 5 226 0 17 5 226 0 18 1 43 0 20 5 226 0 21 5 226 0 23 1 43 0 24 1 43 0 26 5 226 0 27 5 226 0 28 8 158 0 30 1 47 0 31 5 226 0 32 5 226 0 33 5 226 0 34 5 226 0 35 5 226 0 36 5 226 0 38 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 42 8 158 0 44 8 158 0 45 5 226 0 47 5 226 0 48 5 226 0 51 8 158 0 52 8 158 0 53 8 158 0 56 8 158 0 57 8 158 0 58 8 158 0 59 8 158 0 60 8 158 0 61 8 158 0 65 8 158 0 66 8 158 0 67 8 158 0 69 8 158 0 70 8 158 0 71 8 158 0 72 8 158 0 74 8 158 0 75 8 158 0 77 8 158 0 78 8 158 0 79 8 158 0 80 8 158 0 84 8 158 0 86 8 158 0 87 8 158 0 88 8 158 0 89 8 158 0 90 8 158 0 91 8 158 0 92 8 158 0 94 8 158 0 96 8 158 0 97 8 158 0 99 8 158 0 102 8 158 0 104 8 158 0 105 5 226 0 106 1 43 0 107 8 158 0 108 5 226 0 109 5 226 0 110 5 226 0 111 8 158 0 112 8 158 0 113 8 158 0 117 8 158 0 118 8 158 0 120 8 158 0 121 8 158 0 122 8 158 0 123 8 158 0 125 8 158 0 126 1 43 0 127 5 226 0 128 5 226 0 129 8 158 1 151] 
#[0 21 65 0 108] 
#[1 10 105 0 1 1 51 0 3 0 183 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 0 187 0 30 16 141 0 31 1 161 0 44 10 141 0 45 0 191 0 52 0 195 0 53 10 149 0 56 10 153 0 57 0 14 0 58 10 157 0 59 0 199 0 60 0 14 0 61 0 14 0 65 0 14 0 66 5 37 0 67 0 14 0 69 10 161 0 70 10 165 0 71 0 14 0 72 0 203 0 74 10 173 0 75 0 207 0 77 10 177 0 78 0 14 0 79 10 181 0 80 0 14 0 84 10 185 0 86 0 211 0 87 0 14 0 88 0 14 0 89 0 215 0 90 0 14 0 91 5 41 0 92 0 14 0 94 0 14 0 96 0 219 0 97 0 14 0 99 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 8 162 0 108 0 223 0 112 0 227 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 16 149 0 135 16 153 0 137 16 157 0 141 16 161 0 157 0 49 0 158 16 165 0 180 10 213 0 237 21 69 0 240 16 173 0 241 16 177 0 242 15 49 0 243 21 73 0 244 16 185 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 6 133 0 20 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 5 37 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 5 41 0 92 1 193 0 97 6 137 0 104 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 1 197 0 126 3 129 0 127 21 77 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 145 0 246 6 149 0 248 6 153 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 6 157 1 108 1 9 1 109 6 161 1 112 2 57 1 117 21 81 1 121 6 169 1 122 6 173 1 132 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 6 177 1 146 5 77 1 151] 
#[0 8 166 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 8 170 0 19 0 128] 
#[0 8 174 0 19 0 128] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 85 0 162] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 21 93 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 21 101 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 146 9 169 1 147 21 113 1 148 21 117 1 149 21 121 1 150 5 77 1 151] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 21 125 0 46 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 21 101 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 146 9 169 1 147 21 113 1 148 21 117 1 149 21 121 1 150 5 77 1 151] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 21 129 0 108 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 21 101 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 146 9 169 1 147 21 113 1 148 21 117 1 149 21 121 1 150 5 77 1 151] 
#[0 21 133 0 31] 
#[1 8 178 0 14 21 137 0 31 8 178 0 46 8 178 0 108 21 141 0 145] 
#[1 2 233 0 13 2 241 0 45 2 245 0 104 21 145 0 138 21 149 0 156] 
#[0 21 153 0 31] 
#[0 8 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 8 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 8 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 21 157 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 21 161 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 8 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 8 198 0 14 0 19] 
#[0 8 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 21 165 0 31] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 8 206 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 21 169 0 197] 
#[0 8 210 0 14 0 19] 
#[0 21 173 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 177 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 8 214 0 108 1 246 0 112 1 246 0 113 7 9 0 180 21 181 0 193] 
#[0 8 218 0 19 0 108] 
#[0 8 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 21 185 0 31] 
#[1 21 189 0 31 3 65 0 101 21 193 0 228] 
#[0 8 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 8 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 21 197 0 108] 
#[0 8 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 201 0 162] 
#[0 8 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 21 205 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 21 209 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 21 213 0 104] 
#[0 21 217 0 31] 
#[1 1 122 0 31 3 65 0 101 21 221 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 21 225 0 212 5 185 0 236] 
#[0 21 229 0 31] 
#[0 8 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 233 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 8 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 237 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 21 241 0 31 21 245 0 35] 
#[0 8 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 21 249 0 31] 
#[0 8 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 9 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 21 253 0 108] 
#[0 9 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 65 0 101 1 122 0 104 22 1 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 22 5 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 22 9 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 22 13 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 22 17 0 210 3 197 0 234 7 49 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 22 21 0 214 3 197 0 234 22 25 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 22 29 0 104] 
#[0 9 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 22 33 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[1 3 65 0 101 1 122 0 104 22 37 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 41 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 1 122 0 104 22 45 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 49 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 22 53 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 57 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 1 122 0 104 22 61 0 211 4 165 0 228] 
#[0 22 65 0 104] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 22 69 0 108 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158] 
#[0 22 73 0 104] 
#[0 22 77 0 31] 
#[1 1 122 0 31 3 65 0 101 22 81 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 22 85 0 212 5 185 0 236] 
#[1 3 65 0 101 1 122 0 104 22 89 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 22 93 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 22 97 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 22 101 0 162] 
#[0 22 105 0 108] 
#[0 9 14 0 19 0 108] 
#[0 9 18 0 19 0 31 0 108] 
#[1 13 29 0 19 3 158 0 108 13 33 0 168 22 109 0 170] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 113 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 9 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 22 117 0 31 3 65 0 101 6 137 0 104 22 121 0 228 22 125 0 248] 
#[1 22 129 0 31 6 137 0 104 22 133 0 248] 
#[0 9 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 18 21 0 22 22 137 0 31 3 65 0 101 6 137 0 104 22 141 0 185 22 145 0 228 22 149 0 248] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 9 30 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 22 153 0 180 22 157 0 183 1 246 1 151] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 22 161 0 14 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 3 125 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 3 133 0 234 19 53 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 19 57 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 19 61 1 69 14 197 1 71 14 201 1 72 14 205 1 74 3 137 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 3 141 1 80 3 145 1 81 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 149 1 139 2 73 1 142 14 217 1 146 14 221 1 151] 
#[0 9 34 0 14 0 19] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 112 14 21 1 116 18 105 1 117 3 165 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 19 73 0 46 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 77 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 19 81 1 73 14 205 1 74 3 177 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 181 1 139 2 73 1 142 14 217 1 146 14 221 1 151] 
#[1 1 55 0 14 1 55 0 19 7 102 0 29 0 246 0 31 1 55 0 46 7 102 0 105] 
#[1 1 25 0 53 1 33 0 77 22 169 0 87 0 149 0 112 0 153 0 113 19 89 1 146] 
#[1 0 70 0 1 0 70 0 13 1 59 0 14 0 70 0 17 1 59 0 19 0 70 0 24 0 70 0 25 0 70 0 26 1 63 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 22 177 0 81 14 93 0 85 22 181 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 109 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 4 1 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 22 185 1 108 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 181 1 139 2 73 1 142 14 217 1 146 14 221 1 151] 
#[1 1 67 0 14 1 67 0 19 7 158 0 29 1 10 0 31 1 67 0 46 7 158 0 105] 
#[0 9 42 0 14 0 19] 
#[0 9 46 0 14 0 19] 
#[0 9 50 0 14 0 19] 
#[0 22 189 0 29] 
#[0 9 54 0 14 0 19] 
#[1 1 71 0 13 1 75 0 14 1 102 0 17 1 75 0 19 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 29 1 79 0 30 1 102 0 31 1 75 0 46 6 58 0 104 6 58 0 105 4 61 0 127 4 65 1 118 4 69 1 143] 
#[1 22 197 0 30 15 249 1 114 15 253 1 134 4 77 1 137 4 81 1 138] 
#[1 9 58 0 14 22 201 0 19 22 205 0 177] 
#[1 18 21 0 22 22 209 0 31 3 65 0 101 6 137 0 104 22 213 0 185 22 217 0 228 22 221 0 248] 
#[0 22 225 0 14] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 22 229 0 162] 
#[0 9 62 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 22 233 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 22 237 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 22 241 0 104] 
#[0 22 245 0 31] 
#[1 1 122 0 31 3 65 0 101 22 249 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 22 253 0 212 5 185 0 236] 
#[0 9 66 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 9 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 9 74 0 19 3 105 0 30 9 74 0 31 9 74 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 9 74 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 23 1 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[0 23 5 0 13] 
#[0 9 78 0 19 0 31 0 35 0 104] 
#[0 9 82 0 19 0 31 0 35 0 104] 
#[1 1 137 0 11 1 141 0 12 9 86 0 19 9 86 0 31 9 86 0 35 9 86 0 104 1 197 0 126 9 86 0 128 23 9 1 106 23 13 1 108] 
#[0 9 90 0 19 0 108] 
#[0 9 94 0 19 0 108] 
#[0 9 98 0 19 0 108] 
#[0 9 102 0 19 0 108] 
#[0 23 17 0 14] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 106 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 9 106 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 9 110 0 19 0 108] 
#[0 23 21 0 108] 
#[0 9 114 0 19 0 108] 
#[0 9 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 9 122 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 9 126 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 23 25 0 162] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 130 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 130 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 130 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 130 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 130 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 130 0 64 9 130 0 104 15 181 0 106 15 185 0 107 9 130 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 9 134 0 7 9 134 0 9 9 134 0 10 9 134 0 14 15 81 0 15 9 134 0 16 15 89 0 17 9 134 0 18 9 134 0 19 15 97 0 20 9 134 0 21 15 105 0 23 9 134 0 24 9 134 0 26 15 117 0 27 9 134 0 28 9 134 0 31 15 125 0 32 9 134 0 33 15 133 0 34 9 134 0 35 15 141 0 36 9 134 0 37 15 145 0 38 15 149 0 39 9 134 0 40 15 157 0 41 15 161 0 42 9 134 0 46 15 169 0 47 9 134 0 48 15 177 0 51 9 134 0 64 9 134 0 104 9 134 0 106 9 134 0 107 9 134 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 9 138 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 23 29 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 23 33 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 23 37 0 14] 
#[0 9 142 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 74 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 9 146 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 41 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 23 45 1 1 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 9 150 0 2 9 150 0 6 9 150 0 7 9 150 0 9 9 150 0 10 9 150 0 13 9 150 0 14 9 150 0 15 9 150 0 16 9 150 0 17 9 150 0 18 9 150 0 19 9 150 0 20 9 150 0 21 9 150 0 23 9 150 0 24 9 150 0 25 9 150 0 26 9 150 0 27 9 150 0 28 9 150 0 29 15 245 0 30 9 150 0 31 9 150 0 32 9 150 0 33 9 150 0 34 9 150 0 35 9 150 0 36 9 150 0 37 9 150 0 38 9 150 0 39 9 150 0 40 9 150 0 41 9 150 0 42 9 150 0 46 9 150 0 47 9 150 0 48 9 150 0 51 9 150 0 64 9 150 0 71 9 150 0 73 9 150 0 104 9 150 0 105 9 150 0 106 9 150 0 107 9 150 0 108 9 150 0 109 9 150 0 110 9 150 0 111 9 150 0 127 9 150 0 128 9 150 0 129 20 165 1 114] 
#[0 9 154 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 158 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 23 49 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 158 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 23 53 0 255] 
#[0 23 57 0 46] 
#[0 9 162 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 166 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 166 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 166 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 166 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 166 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 166 0 64 9 166 0 104 15 181 0 106 15 185 0 107 9 166 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 170 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 170 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 170 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 170 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 170 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 170 0 64 9 170 0 104 15 181 0 106 15 185 0 107 9 170 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 61 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 23 65 1 146 14 221 1 151] 
#[0 9 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 19 125 0 25] 
#[0 9 178 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 23 69 0 14 23 73 0 19 23 77 1 66 23 81 1 70] 
#[1 1 83 0 14 7 182 0 19 7 182 0 105] 
#[0 23 85 0 14] 
#[1 9 186 0 14 9 186 0 19 9 190 0 24 9 190 0 25 9 190 0 26 9 186 0 29 9 186 0 31 9 186 0 35 9 186 0 37 9 186 0 46 9 186 0 71 9 186 0 73 9 186 0 105 9 186 0 108] 
#[1 9 194 0 14 9 194 0 19 9 198 0 24 9 198 0 25 9 198 0 26 9 194 0 29 9 194 0 31 9 194 0 35 9 194 0 37 9 194 0 46 9 194 0 71 9 194 0 73 9 194 0 105 9 194 0 108] 
#[0 9 202 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 206 0 19 9 206 0 46 23 89 1 67] 
#[0 23 93 0 46] 
#[0 9 210 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 214 0 14 9 214 0 19 9 214 0 29 9 214 0 31 9 214 0 35 9 214 0 37 23 97 0 43 9 214 0 46 9 214 0 71 9 214 0 73 9 214 0 105 9 214 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 23 101 1 146] 
#[1 9 218 0 14 9 218 0 19 9 218 0 29 9 218 0 31 9 218 0 35 9 218 0 37 23 105 0 43 9 218 0 46 9 218 0 71 9 218 0 73 9 218 0 105 9 218 0 108] 
#[1 7 162 0 14 7 162 0 19 7 162 0 29 7 162 0 31 7 162 0 35 7 162 0 37 7 162 0 46 7 162 0 71 7 162 0 73 7 162 0 105 7 162 0 108 23 109 1 46] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 113 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 23 65 1 146 14 221 1 151] 
#[0 9 222 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 117 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 9 226 0 14 9 226 0 19 9 226 0 29 9 226 0 31 9 226 0 35 9 226 0 37 9 226 0 46 9 226 0 71 9 226 0 73 1 87 0 105 9 226 0 108 23 125 1 45] 
#[0 9 230 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 23 129 0 20 23 133 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 23 137 0 117 23 141 0 121 23 145 0 123 23 149 0 125 3 129 0 127 23 153 1 55 3 109 1 112 23 157 1 113 11 57 1 116 11 61 1 117 23 161 1 133 11 69 1 135 1 21 1 146] 
#[1 0 61 0 5 23 129 0 20 23 133 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 23 137 0 117 23 141 0 121 23 145 0 123 23 149 0 125 3 129 0 127 23 165 1 55 3 109 1 112 23 157 1 113 11 57 1 116 11 61 1 117 23 161 1 133 11 69 1 135 1 21 1 146] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 23 169 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 173 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 23 177 1 65 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 1 246 0 3 1 246 0 24 1 246 0 53 1 246 0 77 1 246 0 81 1 246 0 85 23 181 0 108 1 246 0 112 1 246 0 113 1 246 0 123 23 185 0 180 23 189 1 58 23 193 1 59 23 197 1 62 23 201 1 63] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 205 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 23 209 0 35] 
#[1 9 234 0 1 9 234 0 2 9 234 0 3 9 234 0 5 9 234 0 6 9 234 0 7 9 234 0 8 9 234 0 9 9 234 0 10 9 234 0 13 9 234 0 14 9 234 0 15 9 234 0 16 9 234 0 17 9 234 0 18 9 234 0 19 9 234 0 20 9 234 0 21 9 234 0 23 9 234 0 24 9 234 0 26 9 234 0 27 9 234 0 28 9 234 0 30 9 234 0 31 9 234 0 32 9 234 0 33 9 234 0 34 9 234 0 35 9 234 0 36 9 234 0 37 9 234 0 38 9 234 0 39 9 234 0 40 9 234 0 41 9 234 0 42 9 234 0 44 9 234 0 45 9 234 0 46 9 234 0 47 9 234 0 48 9 234 0 49 9 234 0 51 9 234 0 52 9 234 0 53 9 234 0 56 9 234 0 57 9 234 0 58 9 234 0 59 9 234 0 60 9 234 0 61 1 91 0 64 9 234 0 65 9 234 0 66 9 234 0 67 9 234 0 69 9 234 0 70 9 234 0 71 9 234 0 72 9 234 0 74 9 234 0 75 9 234 0 77 9 234 0 78 9 234 0 79 9 234 0 80 9 234 0 81 9 234 0 84 9 234 0 85 9 234 0 86 9 234 0 87 9 234 0 88 9 234 0 89 9 234 0 90 9 234 0 91 9 234 0 92 9 234 0 94 9 234 0 96 9 234 0 97 9 234 0 99 9 234 0 102 9 234 0 104 9 234 0 105 9 234 0 106 9 234 0 107 9 234 0 108 9 234 0 109 9 234 0 110 9 234 0 111 9 234 0 112 9 234 0 113 9 234 0 117 9 234 0 118 9 234 0 120 9 234 0 121 9 234 0 122 9 234 0 123 9 234 0 125 9 234 0 126 9 234 0 127 9 234 0 128 9 234 0 129 9 234 1 151] 
#[1 7 246 0 35 7 246 0 37 7 246 0 71 7 246 0 105 23 217 1 42] 
#[1 7 162 0 35 7 162 0 37 7 162 0 71 7 162 0 105 23 221 1 46] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 225 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 9 238 0 35 9 238 0 37 9 238 0 71 23 229 0 105 23 233 1 41] 
#[1 0 210 0 3 0 210 0 5 0 210 0 9 0 210 0 13 0 210 0 20 0 210 0 24 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 49 0 210 0 53 0 210 0 56 0 210 0 60 0 210 0 67 0 210 0 77 0 210 0 81 0 210 0 85 0 210 0 87 0 210 0 90 0 210 0 92 0 210 0 105 0 210 0 108 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 127 0 210 0 129 23 237 0 162 0 210 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 23 241 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 245 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 23 249 0 105] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 23 253 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 15 61 0 2 15 65 0 6 9 242 0 7 15 73 0 9 9 242 0 10 9 242 0 14 15 81 0 15 9 242 0 16 15 89 0 17 9 242 0 18 9 242 0 19 15 97 0 20 9 242 0 21 15 105 0 23 9 242 0 24 9 242 0 26 15 117 0 27 9 242 0 28 9 242 0 31 15 125 0 32 9 242 0 33 15 133 0 34 9 242 0 35 15 141 0 36 9 242 0 37 15 145 0 38 15 149 0 39 9 242 0 40 15 157 0 41 15 161 0 42 9 242 0 46 15 169 0 47 9 242 0 48 15 177 0 51 9 242 0 64 9 242 0 104 9 242 0 106 9 242 0 107 9 242 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 24 1 0 35] 
#[0 9 246 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 5 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 250 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 250 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 250 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 250 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 250 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 250 0 64 9 250 0 104 15 181 0 106 15 185 0 107 9 250 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 9 254 0 19 24 9 0 29 9 254 0 105] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 24 13 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 24 17 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 24 21 0 19 10 2 0 105 24 25 1 23] 
#[1 6 137 0 104 24 29 0 248] 
#[1 15 65 0 6 10 6 0 7 10 6 0 9 10 6 0 10 10 6 0 14 15 81 0 15 10 6 0 16 15 89 0 17 10 6 0 18 10 6 0 19 15 97 0 20 10 6 0 21 15 105 0 23 10 6 0 24 10 6 0 26 15 117 0 27 10 6 0 28 10 6 0 31 15 125 0 32 10 6 0 33 10 6 0 35 10 6 0 37 15 149 0 39 10 6 0 40 15 157 0 41 15 161 0 42 10 6 0 46 15 169 0 47 10 6 0 48 15 177 0 51 10 6 0 64 10 6 0 104 10 6 0 106 10 6 0 107 10 6 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 10 10 0 2 10 10 0 6 10 10 0 7 10 10 0 9 10 10 0 10 10 10 0 14 10 10 0 15 10 10 0 16 10 10 0 17 10 10 0 18 10 10 0 19 10 10 0 20 10 10 0 21 15 105 0 23 10 10 0 24 10 10 0 26 10 10 0 27 10 10 0 28 10 10 0 31 10 10 0 32 10 10 0 33 10 10 0 34 10 10 0 35 10 10 0 36 10 10 0 37 10 10 0 38 10 10 0 39 10 10 0 40 10 10 0 41 15 161 0 42 10 10 0 46 10 10 0 47 10 10 0 48 15 177 0 51 10 10 0 64 10 10 0 104 10 10 0 106 10 10 0 107 10 10 0 108 10 10 0 109 15 193 0 110 15 197 0 111 10 10 0 127 10 10 0 128 10 10 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 14 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 14 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 14 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 14 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 14 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 14 0 64 10 14 0 104 15 181 0 106 15 185 0 107 10 14 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 10 18 0 7 10 18 0 9 10 18 0 10 10 18 0 14 15 81 0 15 10 18 0 16 15 89 0 17 10 18 0 18 10 18 0 19 15 97 0 20 10 18 0 21 15 105 0 23 10 18 0 24 10 18 0 26 15 117 0 27 10 18 0 28 10 18 0 31 15 125 0 32 10 18 0 33 15 133 0 34 10 18 0 35 15 141 0 36 10 18 0 37 15 145 0 38 15 149 0 39 10 18 0 40 15 157 0 41 15 161 0 42 10 18 0 46 15 169 0 47 10 18 0 48 15 177 0 51 10 18 0 64 10 18 0 104 10 18 0 106 10 18 0 107 10 18 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 22 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 22 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 22 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 22 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 22 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 22 0 64 10 22 0 104 15 181 0 106 15 185 0 107 10 22 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 26 0 2 10 26 0 6 10 26 0 7 10 26 0 9 10 26 0 10 10 26 0 14 10 26 0 15 10 26 0 16 10 26 0 17 10 26 0 18 10 26 0 19 10 26 0 20 10 26 0 21 15 105 0 23 10 26 0 24 10 26 0 26 10 26 0 27 10 26 0 28 10 26 0 31 10 26 0 32 10 26 0 33 10 26 0 34 10 26 0 35 10 26 0 36 10 26 0 37 10 26 0 38 10 26 0 39 10 26 0 40 10 26 0 41 15 161 0 42 10 26 0 46 10 26 0 47 10 26 0 48 15 177 0 51 10 26 0 64 10 26 0 104 10 26 0 106 10 26 0 107 10 26 0 108 10 26 0 109 15 193 0 110 15 197 0 111 10 26 0 127 10 26 0 128 10 26 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 30 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 30 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 30 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 30 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 30 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 30 0 64 10 30 0 104 15 181 0 106 15 185 0 107 10 30 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 34 0 2 15 65 0 6 10 34 0 7 10 34 0 9 10 34 0 10 10 34 0 14 15 81 0 15 10 34 0 16 10 34 0 17 10 34 0 18 10 34 0 19 10 34 0 20 10 34 0 21 15 105 0 23 10 34 0 24 10 34 0 26 15 117 0 27 10 34 0 28 10 34 0 31 10 34 0 32 10 34 0 33 10 34 0 34 10 34 0 35 10 34 0 36 10 34 0 37 10 34 0 38 10 34 0 39 10 34 0 40 10 34 0 41 15 161 0 42 10 34 0 46 10 34 0 47 10 34 0 48 15 177 0 51 10 34 0 64 10 34 0 104 10 34 0 106 10 34 0 107 10 34 0 108 10 34 0 109 15 193 0 110 15 197 0 111 10 34 0 127 10 34 0 128 10 34 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 38 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 38 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 38 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 38 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 38 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 38 0 64 10 38 0 104 15 181 0 106 15 185 0 107 10 38 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 42 0 2 15 65 0 6 10 42 0 7 10 42 0 9 10 42 0 10 10 42 0 14 15 81 0 15 10 42 0 16 10 42 0 17 10 42 0 18 10 42 0 19 10 42 0 20 10 42 0 21 15 105 0 23 10 42 0 24 10 42 0 26 15 117 0 27 10 42 0 28 10 42 0 31 10 42 0 32 10 42 0 33 10 42 0 34 10 42 0 35 10 42 0 36 10 42 0 37 10 42 0 38 10 42 0 39 10 42 0 40 10 42 0 41 15 161 0 42 10 42 0 46 10 42 0 47 10 42 0 48 15 177 0 51 10 42 0 64 10 42 0 104 10 42 0 106 10 42 0 107 10 42 0 108 10 42 0 109 15 193 0 110 15 197 0 111 10 42 0 127 10 42 0 128 10 42 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 46 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 46 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 46 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 46 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 46 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 46 0 64 10 46 0 104 15 181 0 106 15 185 0 107 10 46 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 10 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 58 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 24 33 0 110] 
#[1 10 62 0 2 10 62 0 6 10 62 0 7 10 62 0 9 10 62 0 10 10 62 0 14 10 62 0 15 10 62 0 16 10 62 0 17 10 62 0 18 10 62 0 19 10 62 0 20 10 62 0 21 10 62 0 23 10 62 0 24 10 62 0 26 10 62 0 27 10 62 0 28 0 190 0 30 10 62 0 31 10 62 0 32 10 62 0 33 10 62 0 34 10 62 0 35 10 62 0 36 10 62 0 37 10 62 0 38 10 62 0 39 10 62 0 40 10 62 0 41 10 62 0 42 10 62 0 46 10 62 0 47 10 62 0 48 10 62 0 51 10 62 0 64 10 62 0 104 10 62 0 106 10 62 0 107 10 62 0 108 10 62 0 109 1 95 0 110 10 62 0 111 10 62 0 127 10 62 0 128 10 62 0 129] 
#[1 15 61 0 2 15 65 0 6 10 66 0 7 15 73 0 9 10 66 0 10 10 66 0 14 15 81 0 15 10 66 0 16 15 89 0 17 10 66 0 18 10 66 0 19 15 97 0 20 10 66 0 21 15 105 0 23 15 117 0 27 10 66 0 28 10 66 0 31 15 125 0 32 10 66 0 33 15 133 0 34 10 66 0 35 15 141 0 36 10 66 0 37 15 145 0 38 15 149 0 39 10 66 0 40 15 157 0 41 15 161 0 42 10 66 0 46 15 169 0 47 10 66 0 48 15 177 0 51 10 66 0 64 10 66 0 104 10 66 0 106 15 185 0 107 10 66 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 10 70 0 7 15 73 0 9 10 70 0 10 10 70 0 14 15 81 0 15 10 70 0 16 15 89 0 17 10 70 0 18 10 70 0 19 15 97 0 20 10 70 0 21 15 105 0 23 15 117 0 27 10 70 0 28 10 70 0 31 15 125 0 32 10 70 0 33 15 133 0 34 10 70 0 35 15 141 0 36 10 70 0 37 15 145 0 38 15 149 0 39 10 70 0 40 15 157 0 41 15 161 0 42 10 70 0 46 15 169 0 47 10 70 0 48 15 177 0 51 10 70 0 64 10 70 0 104 10 70 0 106 15 185 0 107 10 70 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 74 0 2 10 74 0 6 10 74 0 7 10 74 0 9 10 74 0 10 10 74 0 14 10 74 0 15 10 74 0 16 10 74 0 17 10 74 0 18 10 74 0 19 10 74 0 20 10 74 0 21 15 105 0 23 10 74 0 24 10 74 0 26 10 74 0 27 10 74 0 28 10 74 0 31 10 74 0 32 10 74 0 33 10 74 0 34 10 74 0 35 10 74 0 36 10 74 0 37 10 74 0 38 10 74 0 39 10 74 0 40 10 74 0 41 15 161 0 42 10 74 0 46 10 74 0 47 10 74 0 48 15 177 0 51 10 74 0 64 10 74 0 104 10 74 0 106 10 74 0 107 10 74 0 108 10 74 0 109 15 193 0 110 15 197 0 111 10 74 0 127 10 74 0 128 10 74 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 78 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 78 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 78 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 78 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 78 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 78 0 64 10 78 0 104 15 181 0 106 15 185 0 107 10 78 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 82 0 2 15 65 0 6 10 82 0 7 10 82 0 9 10 82 0 10 10 82 0 14 15 81 0 15 10 82 0 16 15 89 0 17 10 82 0 18 10 82 0 19 15 97 0 20 10 82 0 21 15 105 0 23 10 82 0 24 10 82 0 26 15 117 0 27 10 82 0 28 10 82 0 31 10 82 0 32 10 82 0 33 10 82 0 34 10 82 0 35 10 82 0 36 10 82 0 37 10 82 0 38 10 82 0 39 10 82 0 40 10 82 0 41 15 161 0 42 10 82 0 46 10 82 0 47 10 82 0 48 15 177 0 51 10 82 0 64 10 82 0 104 10 82 0 106 10 82 0 107 10 82 0 108 10 82 0 109 15 193 0 110 15 197 0 111 10 82 0 127 10 82 0 128 10 82 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 86 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 86 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 86 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 86 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 86 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 86 0 64 10 86 0 104 15 181 0 106 15 185 0 107 10 86 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 65 0 6 10 90 0 7 10 90 0 9 10 90 0 10 10 90 0 14 15 81 0 15 10 90 0 16 15 89 0 17 10 90 0 18 10 90 0 19 15 97 0 20 10 90 0 21 15 105 0 23 10 90 0 24 10 90 0 26 15 117 0 27 10 90 0 28 10 90 0 31 15 125 0 32 10 90 0 33 10 90 0 35 10 90 0 37 15 149 0 39 10 90 0 40 15 157 0 41 15 161 0 42 10 90 0 46 15 169 0 47 10 90 0 48 15 177 0 51 10 90 0 64 10 90 0 104 10 90 0 106 10 90 0 107 10 90 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 94 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 94 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 94 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 94 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 94 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 94 0 64 10 94 0 104 15 181 0 106 15 185 0 107 10 94 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 65 0 6 10 98 0 7 10 98 0 9 10 98 0 10 10 98 0 14 15 81 0 15 10 98 0 16 15 89 0 17 10 98 0 18 10 98 0 19 15 97 0 20 10 98 0 21 15 105 0 23 10 98 0 24 10 98 0 26 15 117 0 27 10 98 0 28 10 98 0 31 15 125 0 32 10 98 0 33 10 98 0 35 10 98 0 37 15 149 0 39 10 98 0 40 15 157 0 41 15 161 0 42 10 98 0 46 15 169 0 47 10 98 0 48 15 177 0 51 10 98 0 64 10 98 0 104 10 98 0 106 10 98 0 107 10 98 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 15 65 0 6 10 102 0 7 10 102 0 9 10 102 0 10 10 102 0 14 15 81 0 15 10 102 0 16 15 89 0 17 10 102 0 18 10 102 0 19 15 97 0 20 10 102 0 21 15 105 0 23 10 102 0 24 10 102 0 26 15 117 0 27 10 102 0 28 10 102 0 31 15 125 0 32 10 102 0 33 10 102 0 35 10 102 0 37 15 149 0 39 10 102 0 40 15 157 0 41 15 161 0 42 10 102 0 46 15 169 0 47 10 102 0 48 15 177 0 51 10 102 0 64 10 102 0 104 10 102 0 106 10 102 0 107 10 102 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 10 106 0 2 15 65 0 6 10 106 0 7 10 106 0 9 10 106 0 10 10 106 0 14 15 81 0 15 10 106 0 16 15 89 0 17 10 106 0 18 10 106 0 19 15 97 0 20 10 106 0 21 15 105 0 23 10 106 0 24 10 106 0 26 15 117 0 27 10 106 0 28 10 106 0 31 10 106 0 32 10 106 0 33 10 106 0 34 10 106 0 35 10 106 0 36 10 106 0 37 10 106 0 38 10 106 0 39 10 106 0 40 10 106 0 41 15 161 0 42 10 106 0 46 10 106 0 47 10 106 0 48 15 177 0 51 10 106 0 64 10 106 0 104 10 106 0 106 10 106 0 107 10 106 0 108 10 106 0 109 15 193 0 110 15 197 0 111 10 106 0 127 10 106 0 128 10 106 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 110 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 110 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 110 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 110 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 110 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 110 0 64 10 110 0 104 15 181 0 106 15 185 0 107 10 110 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 114 0 2 15 65 0 6 10 114 0 7 10 114 0 9 10 114 0 10 10 114 0 14 15 81 0 15 10 114 0 16 15 89 0 17 10 114 0 18 10 114 0 19 15 97 0 20 10 114 0 21 15 105 0 23 10 114 0 24 10 114 0 26 15 117 0 27 10 114 0 28 10 114 0 31 10 114 0 32 10 114 0 33 10 114 0 34 10 114 0 35 10 114 0 36 10 114 0 37 10 114 0 38 10 114 0 39 10 114 0 40 10 114 0 41 15 161 0 42 10 114 0 46 10 114 0 47 10 114 0 48 15 177 0 51 10 114 0 64 10 114 0 104 10 114 0 106 10 114 0 107 10 114 0 108 10 114 0 109 15 193 0 110 15 197 0 111 10 114 0 127 10 114 0 128 10 114 0 129] 
#[1 10 118 0 2 15 65 0 6 10 118 0 7 10 118 0 9 10 118 0 10 10 118 0 14 15 81 0 15 10 118 0 16 15 89 0 17 10 118 0 18 10 118 0 19 15 97 0 20 10 118 0 21 15 105 0 23 10 118 0 24 10 118 0 26 15 117 0 27 10 118 0 28 10 118 0 31 15 125 0 32 10 118 0 33 10 118 0 34 10 118 0 35 10 118 0 36 10 118 0 37 10 118 0 38 15 149 0 39 10 118 0 40 15 157 0 41 15 161 0 42 10 118 0 46 10 118 0 47 10 118 0 48 15 177 0 51 10 118 0 64 10 118 0 104 10 118 0 106 10 118 0 107 10 118 0 108 10 118 0 109 15 193 0 110 15 197 0 111 10 118 0 127 10 118 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 122 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 122 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 122 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 122 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 122 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 122 0 64 10 122 0 104 15 181 0 106 15 185 0 107 10 122 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 10 126 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 130 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 130 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 10 130 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 10 130 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 10 130 0 46 15 169 0 47 15 173 0 48 15 177 0 51 10 130 0 64 10 130 0 104 15 181 0 106 15 185 0 107 10 130 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 10 134 0 7 15 73 0 9 10 134 0 10 10 134 0 14 15 81 0 15 10 134 0 16 15 89 0 17 10 134 0 18 10 134 0 19 15 97 0 20 10 134 0 21 15 105 0 23 10 134 0 24 10 134 0 26 15 117 0 27 10 134 0 28 10 134 0 31 15 125 0 32 10 134 0 33 15 133 0 34 10 134 0 35 15 141 0 36 10 134 0 37 15 145 0 38 15 149 0 39 10 134 0 40 15 157 0 41 15 161 0 42 10 134 0 46 15 169 0 47 10 134 0 48 15 177 0 51 10 134 0 64 10 134 0 104 10 134 0 106 10 134 0 107 10 134 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 138 0 2 15 65 0 6 10 138 0 7 10 138 0 9 10 138 0 10 10 138 0 14 15 81 0 15 10 138 0 16 15 89 0 17 10 138 0 18 10 138 0 19 15 97 0 20 10 138 0 21 15 105 0 23 10 138 0 24 10 138 0 26 15 117 0 27 10 138 0 28 10 138 0 31 15 125 0 32 10 138 0 33 10 138 0 34 10 138 0 35 10 138 0 36 10 138 0 37 10 138 0 38 15 149 0 39 10 138 0 40 15 157 0 41 15 161 0 42 10 138 0 46 15 169 0 47 10 138 0 48 15 177 0 51 10 138 0 64 10 138 0 104 10 138 0 106 10 138 0 107 10 138 0 108 10 138 0 109 15 193 0 110 15 197 0 111 10 138 0 127 10 138 0 128 15 209 0 129] 
#[0 10 142 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 158 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 158 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 24 37 0 255] 
#[0 24 41 0 14] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 24 45 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 65 0 6 10 146 0 7 10 146 0 9 10 146 0 10 10 146 0 14 15 81 0 15 10 146 0 16 15 89 0 17 10 146 0 18 10 146 0 19 15 97 0 20 10 146 0 21 15 105 0 23 10 146 0 24 10 146 0 26 15 117 0 27 10 146 0 28 10 146 0 31 15 125 0 32 10 146 0 33 10 146 0 35 10 146 0 37 15 149 0 39 10 146 0 40 15 157 0 41 15 161 0 42 10 146 0 46 15 169 0 47 10 146 0 48 15 177 0 51 10 146 0 64 10 146 0 104 10 146 0 106 10 146 0 107 10 146 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 15 65 0 6 10 150 0 7 10 150 0 9 10 150 0 10 10 150 0 14 15 81 0 15 10 150 0 16 15 89 0 17 10 150 0 18 10 150 0 19 15 97 0 20 10 150 0 21 15 105 0 23 10 150 0 24 10 150 0 26 15 117 0 27 10 150 0 28 10 150 0 31 15 125 0 32 10 150 0 33 10 150 0 35 10 150 0 37 15 149 0 39 10 150 0 40 15 157 0 41 15 161 0 42 10 150 0 46 15 169 0 47 10 150 0 48 15 177 0 51 10 150 0 64 10 150 0 104 10 150 0 106 10 150 0 107 10 150 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 10 154 0 2 15 65 0 6 10 154 0 7 10 154 0 9 10 154 0 10 10 154 0 14 15 81 0 15 10 154 0 16 15 89 0 17 10 154 0 18 10 154 0 19 15 97 0 20 10 154 0 21 15 105 0 23 10 154 0 24 10 154 0 26 15 117 0 27 10 154 0 28 10 154 0 31 15 125 0 32 10 154 0 33 10 154 0 34 10 154 0 35 10 154 0 36 10 154 0 37 10 154 0 38 15 149 0 39 10 154 0 40 15 157 0 41 15 161 0 42 10 154 0 46 10 154 0 47 10 154 0 48 15 177 0 51 10 154 0 64 10 154 0 104 10 154 0 106 10 154 0 107 10 154 0 108 10 154 0 109 15 193 0 110 15 197 0 111 10 154 0 127 10 154 0 128 10 154 0 129] 
#[0 10 158 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 158 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 158 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 24 49 0 255] 
#[0 10 162 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 99 0 3 24 53 0 24 1 246 0 53 1 246 0 77 24 57 0 108 1 246 0 112 1 246 0 113 1 246 0 123 24 61 0 180 5 185 0 236 24 65 1 6 24 69 1 9 24 73 1 10] 
#[0 24 77 0 29] 
#[0 24 81 0 108] 
#[1 10 166 0 19 10 166 0 108 24 85 1 17] 
#[1 10 170 0 19 24 89 0 29 10 170 0 108] 
#[0 10 174 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 178 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 182 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 186 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 24 93 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 97 0 162] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 101 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 10 190 0 19 0 128] 
#[1 6 242 0 11 6 242 0 12 6 242 0 19 6 242 0 126 6 242 0 128 24 105 1 105 18 181 1 107] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 10 194 0 19 3 105 0 30 24 109 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 10 194 0 128 3 197 0 234 24 113 1 100 2 41 1 103 7 53 1 104 2 49 1 108 3 109 1 112 2 57 1 117 3 209 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 117 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 121 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 10 198 0 19 24 125 0 35 10 198 0 128] 
#[0 10 202 0 19 0 128] 
#[0 24 129 0 104] 
#[1 3 65 0 101 1 122 0 104 24 133 0 211 4 165 0 228] 
#[0 24 137 0 104] 
#[0 10 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 24 141 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 145 0 162] 
#[0 10 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 214 0 2 10 214 0 6 10 214 0 7 10 214 0 9 10 214 0 10 10 214 0 14 10 214 0 15 10 214 0 16 10 214 0 17 10 214 0 18 10 214 0 19 10 214 0 20 10 214 0 21 16 93 0 22 10 214 0 23 10 214 0 24 10 214 0 26 10 214 0 27 10 214 0 28 10 214 0 29 10 214 0 30 10 214 0 31 10 214 0 32 10 214 0 33 10 214 0 34 10 214 0 35 10 214 0 36 10 214 0 37 10 214 0 38 10 214 0 39 10 214 0 40 10 214 0 41 10 214 0 42 10 214 0 46 10 214 0 47 10 214 0 48 10 214 0 51 10 214 0 64 10 214 0 70 10 214 0 101 10 214 0 104 10 214 0 105 10 214 0 106 10 214 0 107 10 214 0 108 10 214 0 109 10 214 0 110 10 214 0 111 10 214 0 127 10 214 0 128 10 214 0 129 24 149 1 88] 
#[0 10 218 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 222 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 226 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 230 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[1 0 69 0 52 0 77 0 58 0 85 0 61 1 53 0 66 0 34 0 69 0 133 0 94 13 205 0 97 24 153 0 171 0 197 0 172 0 201 0 173 0 205 0 174 24 157 0 186 24 161 0 207] 
#[0 10 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 10 238 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 165 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 169 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 10 242 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 10 246 0 14 1 246 0 15 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 24 173 0 180 24 177 1 93] 
#[0 10 250 0 14 0 19] 
#[0 10 254 0 14 0 19] 
#[0 11 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 24 181 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 11 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 11 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 11 14 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151 1 152] 
#[0 11 18 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[1 5 222 0 2 5 222 0 6 5 222 0 7 5 222 0 9 5 222 0 10 5 222 0 15 5 222 0 16 5 222 0 17 5 222 0 18 5 222 0 20 5 222 0 21 5 222 0 23 5 222 0 24 5 222 0 26 5 222 0 27 5 222 0 28 21 57 0 31 5 222 0 32 5 222 0 33 5 222 0 34 5 222 0 35 5 222 0 36 5 222 0 38 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 42 5 222 0 47 5 222 0 48 5 222 0 51 5 222 0 106 5 222 0 107 11 22 0 108 5 222 0 109 5 222 0 110 5 222 0 111 5 222 0 127 5 222 0 128 5 222 0 129] 
#[0 11 26 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 30 0 19 0 128] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 24 185 0 212 5 185 0 236] 
#[1 24 189 0 13 1 25 0 53 1 33 0 77 24 193 0 87 0 149 0 112 0 153 0 113 24 197 1 146] 
#[0 11 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 11 74 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 11 237 0 13 11 78 0 14 11 241 0 45 11 78 0 46 11 245 0 104 11 78 0 108 24 201 0 147 12 1 0 148] 
#[0 11 82 0 14 0 31 0 46 0 108] 
#[0 11 86 0 14 0 31 0 46 0 108] 
#[0 11 90 0 14 0 31 0 46 0 108] 
#[0 11 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 24 205 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 11 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 106 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 209 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 11 110 0 19 0 108] 
#[0 11 114 0 19 0 108] 
#[0 11 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 24 213 0 31] 
#[0 11 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 24 217 0 212 5 185 0 236] 
#[0 11 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 221 0 162] 
#[0 11 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 24 225 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 24 229 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 11 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 24 233 0 31] 
#[0 24 237 0 31] 
#[0 11 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 241 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 11 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 24 245 0 104] 
#[0 24 249 0 31] 
#[1 1 122 0 31 3 65 0 101 24 253 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 1 0 212 5 185 0 236] 
#[1 3 65 0 101 1 122 0 104 25 5 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 25 9 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 25 13 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 17 0 162] 
#[0 11 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 25 21 0 104] 
#[1 3 65 0 101 1 122 0 104 25 25 0 211 4 165 0 228] 
#[0 25 29 0 104] 
#[1 3 65 0 101 1 122 0 104 25 33 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 25 37 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 65 0 101 1 122 0 104 25 41 0 211 4 165 0 228] 
#[0 25 45 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 49 0 162] 
#[0 11 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 53 0 162] 
#[0 11 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 25 57 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 25 61 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 25 65 0 104] 
#[0 25 69 0 31] 
#[1 1 122 0 31 3 65 0 101 25 73 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 77 0 212 5 185 0 236] 
#[0 11 170 0 19 0 31 0 108] 
#[0 25 81 0 108] 
#[0 11 174 0 31 0 101 0 104] 
#[0 11 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 25 85 0 31 6 137 0 104 25 89 0 248] 
#[0 11 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 25 93 0 31 3 65 0 101 6 137 0 104 25 97 0 228 25 101 0 248] 
#[1 25 105 0 31 6 137 0 104 25 109 0 248] 
#[0 11 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 53 0 25 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 18 93 0 184 1 225 0 234 10 17 0 237 18 97 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 18 101 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 181 1 139 2 73 1 142 14 217 1 146 14 221 1 151] 
#[1 6 218 0 14 6 218 0 19 25 113 0 178] 
#[1 1 103 0 14 1 103 0 19 9 178 0 29 2 6 0 31 1 103 0 46 9 178 0 105] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 25 117 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 109 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 4 1 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 4 9 1 108 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 181 1 139 2 73 1 142 14 217 1 146 14 221 1 151] 
#[1 11 202 0 14 11 202 0 19 25 121 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 25 125 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 14 89 0 81 14 93 0 85 25 129 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 23 113 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 6 53 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 181 1 139 2 73 1 142 23 65 1 146 14 221 1 151] 
#[1 0 70 0 1 0 70 0 13 1 107 0 14 1 107 0 19 0 70 0 25 0 70 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 25 133 0 81 25 137 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 61 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 25 141 0 25 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 25 145 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 4 53 0 13 2 62 0 14 2 62 0 17 2 62 0 19 2 62 0 30 2 62 0 31 2 62 0 46 4 61 0 127 25 149 1 118 6 129 1 143] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 20 173 1 116 18 105 1 117 6 181 1 142 1 21 1 146] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 11 210 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 22 153 0 180 25 153 0 183 1 246 1 151] 
#[0 11 214 0 14 0 19] 
#[0 11 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 25 157 0 31 3 65 0 101 6 137 0 104 25 161 0 228 25 165 0 248] 
#[1 25 169 0 31 6 137 0 104 25 173 0 248] 
#[0 11 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 18 21 0 22 25 177 0 31 3 65 0 101 6 137 0 104 25 181 0 185 25 185 0 228 25 189 0 248] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 193 0 212 5 185 0 236] 
#[0 11 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 11 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 197 0 162] 
#[0 11 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 25 201 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 25 205 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 11 238 0 19 0 31 0 35 0 104] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 11 1 246 0 12 1 246 0 13 25 209 0 14 1 246 0 15 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 87 1 246 0 90 1 246 0 97 1 246 0 112 1 246 0 113 1 246 0 126 1 246 0 127 1 246 0 129 11 177 0 180 25 213 1 89 11 185 1 90 11 189 1 93 11 193 1 94] 
#[0 11 242 0 11 0 12 0 19 0 31 0 35 0 104 0 126 0 128] 
#[1 25 217 0 17 11 246 0 19 11 246 0 31 11 246 0 35 11 246 0 104 11 246 0 128] 
#[0 11 250 0 19 0 108] 
#[0 11 254 0 19 0 108] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 221 0 212 5 185 0 236] 
#[0 12 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 6 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 74 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 12 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 12 14 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 23 33 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 12 18 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 74 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 25 225 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 25 229 0 19 12 22 0 46 25 233 0 254] 
#[0 12 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 30 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 190 0 1 0 190 0 13 1 111 0 14 1 111 0 19 0 190 0 25 1 111 0 29 0 190 0 30 1 111 0 31 1 111 0 35 1 111 0 37 25 237 0 43 1 111 0 46 1 111 0 71 1 111 0 73 0 190 0 104 1 111 0 105 1 111 0 108 0 190 0 127] 
#[0 12 34 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 12 38 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 12 42 0 14 0 19] 
#[1 12 46 0 14 25 245 0 19 25 249 1 66] 
#[0 12 50 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 25 253 0 19 12 54 0 46 26 1 1 66] 
#[0 12 58 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 5 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 12 62 0 14 12 62 0 19 12 62 0 29 12 62 0 31 12 62 0 35 12 62 0 37 26 9 0 43 12 62 0 46 12 62 0 71 12 62 0 73 12 62 0 105 12 62 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 13 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 12 66 0 14 12 66 0 19 12 66 0 29 12 66 0 31 12 66 0 35 12 66 0 37 12 66 0 46 12 66 0 71 12 66 0 73 1 115 0 105 12 66 0 108 23 125 1 45] 
#[0 12 70 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 26 17 0 248] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 21 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 12 74 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 26 25 0 123 26 29 0 125] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 112 14 21 1 116 11 61 1 117 1 21 1 146] 
#[0 7 118 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 134 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 146 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 154 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 78 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 226 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 234 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 82 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 86 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 206 0 14 9 206 0 19 26 33 1 67] 
#[0 26 37 0 14] 
#[0 12 90 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 57 0 3 26 41 0 24 1 25 0 53 1 33 0 77 26 45 0 81 26 49 0 85 0 149 0 112 0 153 0 113 20 13 0 123 10 17 0 237 26 53 1 3 26 57 1 146] 
#[0 26 61 0 108] 
#[1 26 65 0 19 12 94 0 108] 
#[1 12 98 0 19 12 98 0 108 26 69 1 61] 
#[0 12 102 0 108] 
#[0 12 106 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 73 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 165 0 71 10 169 0 74 6 137 0 104 26 77 0 248 26 81 1 32 26 85 1 33] 
#[1 12 110 0 35 12 110 0 37 12 110 0 71 23 229 0 105 23 233 1 41] 
#[1 1 119 0 35 1 119 0 37 1 119 0 71 1 123 0 105 23 125 1 45] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 89 0 64 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 93 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 12 114 0 35 0 37 0 71 0 105] 
#[1 1 127 0 3 12 118 0 5 12 118 0 9 12 118 0 13 12 118 0 20 12 118 0 24 12 118 0 30 12 118 0 44 12 118 0 45 12 118 0 49 12 118 0 53 12 118 0 56 12 118 0 60 12 118 0 67 12 118 0 77 12 118 0 81 12 118 0 85 12 118 0 87 12 118 0 90 12 118 0 92 12 118 0 105 26 97 0 108 12 118 0 112 12 118 0 113 12 118 0 117 12 118 0 118 12 118 0 120 12 118 0 121 12 118 0 122 12 118 0 123 12 118 0 125 12 118 0 127 12 118 0 129 5 185 0 236 26 101 1 35 26 105 1 37 12 118 1 151] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 109 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 12 122 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 12 122 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 12 122 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 12 122 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 12 122 0 46 15 169 0 47 15 173 0 48 15 177 0 51 12 122 0 64 12 122 0 104 15 181 0 106 15 185 0 107 12 122 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 26 113 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 117 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 6 137 0 104 26 121 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 125 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 6 137 0 104 26 129 0 248] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 133 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 137 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 12 126 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 12 126 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 12 126 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 12 126 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 12 126 0 46 15 169 0 47 15 173 0 48 15 177 0 51 12 126 0 64 12 126 0 104 15 181 0 106 15 185 0 107 12 126 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 131 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 15 25 0 180 26 141 1 25 1 246 1 151] 
#[0 12 134 0 19 0 105] 
#[0 12 138 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 26 145 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 109 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 26 149 1 20 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 12 142 0 14 26 153 0 19 25 233 0 254] 
#[0 12 146 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 150 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 26 157 0 14 26 161 0 19 25 233 0 254] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 165 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 12 154 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 57 0 3 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 20 13 0 123 10 17 0 237 26 169 1 3 26 173 1 146] 
#[0 26 177 0 108] 
#[1 12 158 0 19 12 158 0 108 26 181 1 8] 
#[0 26 185 0 108] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 189 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 12 162 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 26 193 0 19 12 166 0 108 26 197 1 16] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 201 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 205 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 26 209 0 212 5 185 0 236] 
#[0 12 170 0 19 0 128] 
#[0 12 174 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 213 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 12 178 0 19 26 217 0 35 12 178 0 128] 
#[0 12 182 0 19 0 128] 
#[0 12 186 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 221 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 225 0 162] 
#[0 26 229 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 233 0 162] 
#[0 12 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 26 237 0 212 5 185 0 236] 
#[0 12 194 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 198 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 202 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 206 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 210 0 14 0 19] 
#[0 12 214 0 14 0 19] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 26 241 0 25 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 16 101 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 10 17 0 237 16 105 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 16 109 1 146] 
#[0 12 218 0 14 0 19] 
#[1 26 245 0 29 26 249 0 31 26 253 0 35] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 1 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 27 5 0 150 27 9 0 151 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 146 9 169 1 147 21 113 1 148 21 117 1 149 21 121 1 150 5 77 1 151] 
#[0 27 13 0 29] 
#[0 27 17 0 29] 
#[0 12 222 0 14 0 31 0 46 0 108] 
#[0 12 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 12 230 0 19 0 108] 
#[0 12 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 21 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 25 0 212 5 185 0 236] 
#[0 12 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 12 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 12 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 12 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 27 29 0 31] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 33 0 162] 
#[0 12 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 27 37 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 41 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 27 45 0 104] 
#[0 27 49 0 31] 
#[1 1 122 0 31 3 65 0 101 27 53 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 57 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 61 0 162] 
#[0 27 65 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 69 0 162] 
#[0 27 73 0 104] 
#[1 3 65 0 101 1 122 0 104 27 77 0 211 4 165 0 228] 
#[0 27 81 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 85 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 89 0 212 5 185 0 236] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 93 0 212 5 185 0 236] 
#[0 13 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 97 0 162] 
#[0 13 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 27 101 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 105 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 13 14 0 19 0 31 0 108] 
#[0 13 18 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 27 109 0 31 6 137 0 104 27 113 0 248] 
#[0 13 30 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 34 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 13 42 0 14 27 117 0 19 22 205 0 177] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 23 113 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 173 1 54 19 45 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 6 53 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 18 105 1 117 14 213 1 133 18 109 1 135 2 65 1 136 3 181 1 139 2 73 1 142 23 65 1 146 14 221 1 151] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 27 121 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 13 46 0 14 0 19] 
#[1 0 70 0 1 0 70 0 13 1 135 0 14 1 135 0 19 0 70 0 25 0 70 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 27 125 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 133 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 0 70 0 1 0 70 0 13 1 139 0 14 1 139 0 19 0 70 0 30 0 70 0 127] 
#[0 13 58 0 14 0 19] 
#[0 13 62 0 14 0 19] 
#[1 10 178 0 13 1 143 0 14 3 38 0 17 1 143 0 19 10 178 0 24 10 178 0 25 10 178 0 26 10 178 0 29 1 143 0 30 3 38 0 31 1 143 0 46 10 178 0 104 10 178 0 105] 
#[0 13 66 0 14 0 19] 
#[0 13 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 27 129 0 31 6 137 0 104 27 133 0 248] 
#[0 13 74 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 82 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 27 137 0 31 3 65 0 101 6 137 0 104 27 141 0 228 27 145 0 248] 
#[1 27 149 0 31 6 137 0 104 27 153 0 248] 
#[0 13 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 157 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 161 0 212 5 185 0 236] 
#[0 13 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 13 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 16 93 0 22 1 147 0 29 27 165 1 88] 
#[0 27 169 0 14] 
#[0 13 102 0 11 0 12 0 19 0 31 0 35 0 104 0 126 0 128] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 173 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 13 106 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 13 110 0 46 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 27 177 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 13 114 0 14 0 19 0 46] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 27 181 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 13 118 0 14 0 19 0 46] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 13 122 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 13 126 0 14 0 19] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 13 130 0 46 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 13 134 0 14 0 19 0 46] 
#[0 13 138 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 27 185 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 13 142 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 13 146 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 13 150 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 9 190 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 9 198 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 13 154 0 14 27 189 0 19 26 1 1 66] 
#[0 13 158 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 13 162 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 27 193 1 146] 
#[1 1 25 0 53 1 33 0 77 27 197 0 81 0 149 0 112 0 153 0 113 27 201 1 146] 
#[0 27 205 0 29] 
#[1 13 166 0 19 27 209 0 29 13 166 0 108] 
#[0 13 170 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 1 246 0 3 1 246 0 24 13 174 0 108 27 213 0 180 27 217 1 63] 
#[1 1 151 0 19 13 178 0 108 27 225 1 60] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 89 0 64 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 27 229 0 248] 
#[0 13 182 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 13 186 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 13 190 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 6 137 0 104 27 233 0 248] 
#[0 13 194 0 35 0 37 0 71 0 105] 
#[0 13 198 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 27 237 0 108] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 27 241 0 180 27 245 1 36 27 249 1 39 1 246 1 151] 
#[1 6 137 0 104 27 253 0 248] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 28 1 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 21 1 96 2 29 1 98 2 33 1 99 4 5 1 104 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 13 202 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 13 202 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 13 202 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 13 202 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 13 202 0 46 15 169 0 47 15 173 0 48 15 177 0 51 13 202 0 64 13 202 0 104 15 181 0 106 15 185 0 107 13 202 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 13 206 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 89 0 64 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 28 5 0 248] 
#[0 13 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 13 214 0 19 0 105] 
#[1 6 137 0 104 28 9 0 248] 
#[0 13 218 0 19 0 105] 
#[0 13 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 28 13 0 14] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 13 226 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 27 177 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 13 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 28 17 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 27 177 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 13 234 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 28 21 0 29] 
#[1 13 238 0 19 28 25 0 29 13 238 0 108] 
#[0 13 242 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 28 29 0 19 13 246 0 108 28 33 1 7] 
#[0 13 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 13 254 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 13 254 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 1 25 0 53 1 33 0 77 14 2 0 108 0 149 0 112 0 153 0 113 20 13 0 123 20 149 1 3 28 37 1 18 20 161 1 146] 
#[0 14 6 0 19 0 108] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 14 10 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 14 10 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 41 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 45 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 14 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 28 49 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 14 18 0 19 0 128] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 53 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 57 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 61 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 65 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 22 0 14] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 28 69 1 75 1 233 1 76 1 237 1 77 1 241 1 78 1 245 1 79 1 249 1 82 1 253 1 83 2 1 1 84 2 5 1 85 2 9 1 86 2 13 1 87 2 17 1 95 2 21 1 96 2 25 1 97 2 29 1 98 2 33 1 99 2 37 1 100 2 41 1 103 2 45 1 104 2 49 1 108 1 9 1 109 2 53 1 112 2 57 1 117 2 61 1 135 2 65 1 136 3 181 1 139 2 73 1 142 1 21 1 146] 
#[0 14 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 73 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 14 30 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 28 77 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 28 81 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 146 9 169 1 147 21 113 1 148 21 117 1 149 21 121 1 150 5 77 1 151] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 28 85 0 153 28 89 1 146] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 28 93 0 153 28 89 1 146] 
#[0 14 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 97 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 42 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 101 0 212 5 185 0 236] 
#[0 14 46 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 50 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 105 0 162] 
#[0 14 54 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 28 109 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 113 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 117 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 121 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 125 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 129 0 162] 
#[0 28 133 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 137 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 141 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 145 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 149 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 153 0 212 5 185 0 236] 
#[0 14 58 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 62 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 66 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 14 74 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 22 153 0 180 25 153 0 183 1 246 1 151] 
#[0 14 78 0 14 0 19] 
#[1 0 70 0 1 0 70 0 13 1 155 0 14 1 155 0 19 0 70 0 30 0 70 0 127] 
#[0 14 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 28 157 0 31 6 137 0 104 28 161 0 248] 
#[0 14 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 165 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 1 159 0 29] 
#[1 16 93 0 22 1 163 0 29 28 169 1 88] 
#[0 14 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 14 118 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 14 118 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 14 118 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 1 167 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 14 122 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 126 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 14 130 0 19 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 28 173 1 146] 
#[0 14 134 0 19 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 28 177 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 28 181 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 0 57 0 3 26 41 0 24 10 17 0 237] 
#[0 14 138 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 112 1 246 0 113 1 246 0 123 28 185 0 180 28 189 1 62] 
#[0 14 142 0 19 0 108] 
#[1 14 146 0 1 14 146 0 2 14 146 0 3 14 146 0 5 14 146 0 6 14 146 0 7 14 146 0 8 14 146 0 9 14 146 0 10 14 146 0 13 14 146 0 14 14 146 0 15 14 146 0 16 14 146 0 17 14 146 0 18 14 146 0 19 14 146 0 20 14 146 0 21 14 146 0 23 14 146 0 24 14 146 0 26 14 146 0 27 14 146 0 28 14 146 0 30 14 146 0 31 14 146 0 32 14 146 0 33 14 146 0 34 14 146 0 35 14 146 0 36 14 146 0 37 14 146 0 38 14 146 0 39 14 146 0 40 14 146 0 41 14 146 0 42 14 146 0 44 14 146 0 45 14 146 0 46 14 146 0 47 14 146 0 48 14 146 0 49 14 146 0 51 14 146 0 52 14 146 0 53 14 146 0 56 14 146 0 57 14 146 0 58 14 146 0 59 14 146 0 60 14 146 0 61 1 171 0 64 14 146 0 65 14 146 0 66 14 146 0 67 14 146 0 69 14 146 0 70 14 146 0 71 14 146 0 72 14 146 0 74 14 146 0 75 14 146 0 77 14 146 0 78 14 146 0 79 14 146 0 80 14 146 0 81 14 146 0 84 14 146 0 85 14 146 0 86 14 146 0 87 14 146 0 88 14 146 0 89 14 146 0 90 14 146 0 91 14 146 0 92 14 146 0 94 14 146 0 96 14 146 0 97 14 146 0 99 14 146 0 102 14 146 0 104 14 146 0 105 14 146 0 106 14 146 0 107 14 146 0 108 14 146 0 109 14 146 0 110 14 146 0 111 14 146 0 112 14 146 0 113 14 146 0 117 14 146 0 118 14 146 0 120 14 146 0 121 14 146 0 122 14 146 0 123 14 146 0 125 14 146 0 126 14 146 0 127 14 146 0 128 14 146 0 129 14 146 1 151] 
#[0 14 150 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 14 154 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 0 57 0 3 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 10 17 0 237 28 197 1 40 14 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[0 14 158 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 56 0 60 0 67 0 77 0 81 0 85 0 87 0 90 0 92 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 127 0 129 1 151] 
#[0 28 201 0 37] 
#[0 14 162 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 6 137 0 104 28 205 0 248] 
#[0 14 166 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 14 170 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 14 174 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 14 178 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 209 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 213 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 1 246 0 3 24 53 0 24 1 246 0 53 1 246 0 77 14 182 0 108 1 246 0 112 1 246 0 113 1 246 0 123 24 61 0 180 28 217 1 9 28 221 1 10] 
#[0 14 186 0 19 0 108] 
#[0 14 190 0 19 0 108] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 225 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 198 0 19 0 128] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 229 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 233 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 237 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 28 241 0 31 28 245 0 35] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 28 249 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 28 253 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 29 1 0 154 29 5 0 155 9 161 0 246 9 165 1 146 9 169 1 147 29 9 1 148 29 13 1 149 29 17 1 150 5 77 1 151] 
#[0 14 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 14 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 14 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 14 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 14 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 21 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 25 0 212 5 185 0 236] 
#[0 14 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 29 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 33 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 37 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 41 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 29 45 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 49 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 53 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 57 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 14 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 1 175 0 29] 
#[0 14 254 0 19 0 108] 
#[0 15 2 0 19 0 108] 
#[0 15 6 0 19 0 108] 
#[1 0 57 0 3 1 25 0 53 1 33 0 77 26 45 0 81 26 49 0 85 0 149 0 112 0 153 0 113 20 13 0 123 10 17 0 237 26 53 1 3 26 57 1 146] 
#[0 15 10 0 19 0 108] 
#[1 10 165 0 71 10 169 0 74 6 137 0 104 29 61 0 248 29 65 1 32 29 69 1 33] 
#[1 15 14 0 37 29 73 0 71 29 77 1 43] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 49 0 243 29 81 0 244 29 85 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 29 89 1 38 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 15 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 22 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 22 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 26 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 26 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 15 30 0 19 0 108] 
#[0 15 34 0 108] 
#[0 15 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 15 42 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 93 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 46 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 15 50 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 29 97 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 15 54 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 15 58 0 15 0 17 0 42] 
#[1 8 45 0 15 8 53 0 17 8 153 0 42 29 101 0 155] 
#[0 15 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 15 66 0 15 0 17 0 42] 
#[0 15 70 0 15 0 17 0 42] 
#[0 15 74 0 15 0 17 0 42] 
#[0 15 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 105 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 82 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 109 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 113 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 117 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 121 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 15 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 15 98 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 15 102 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 15 106 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 29 125 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 29 129 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[0 15 110 0 37] 
#[1 5 222 0 2 5 222 0 6 5 222 0 7 5 222 0 9 5 222 0 10 5 222 0 15 5 222 0 16 5 222 0 17 5 222 0 18 29 133 0 19 5 222 0 20 5 222 0 21 5 222 0 23 5 222 0 24 5 222 0 26 5 222 0 27 5 222 0 28 5 222 0 32 5 222 0 33 5 222 0 34 5 222 0 35 5 222 0 36 5 222 0 38 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 42 5 222 0 47 5 222 0 48 5 222 0 51 5 222 0 106 5 222 0 107 15 114 0 108 5 222 0 109 5 222 0 110 5 222 0 111 5 222 0 127 5 222 0 128 5 222 0 129] 
#[1 5 226 0 2 15 118 0 3 15 118 0 5 5 226 0 6 5 226 0 7 1 179 0 9 5 226 0 10 15 118 0 13 5 226 0 15 5 226 0 16 5 226 0 17 5 226 0 18 29 137 0 19 1 179 0 20 5 226 0 21 5 226 0 23 1 179 0 24 5 226 0 26 5 226 0 27 5 226 0 28 15 118 0 30 5 226 0 32 5 226 0 33 5 226 0 34 5 226 0 35 5 226 0 36 5 226 0 38 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 42 15 118 0 44 15 118 0 45 5 226 0 47 5 226 0 48 15 118 0 49 5 226 0 51 15 118 0 53 15 118 0 56 15 118 0 60 15 118 0 67 15 118 0 77 15 118 0 81 15 118 0 85 15 118 0 87 15 118 0 90 15 118 0 92 15 118 0 105 5 226 0 106 5 226 0 107 15 122 0 108 5 226 0 109 5 226 0 110 5 226 0 111 15 118 0 112 15 118 0 113 15 118 0 117 15 118 0 118 15 118 0 120 15 118 0 121 15 118 0 122 15 118 0 123 15 118 0 125 1 179 0 127 5 226 0 128 1 179 0 129 15 118 1 151] 
#[0 15 126 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 56 0 60 0 67 0 77 0 81 0 85 0 87 0 90 0 92 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 127 0 129 1 151] 
#[0 15 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 29 141 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 15 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 151] 
#[0 15 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 15 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 15 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 145 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 29 149 1 40 14 241 1 44 14 145 1 47 14 149 1 48 14 153 1 49 14 157 1 50 14 161 1 51 14 165 1 52 14 169 1 53 14 173 1 54 14 177 1 55 14 181 1 56 14 185 1 57 14 189 1 64 14 193 1 68 14 197 1 71 14 201 1 72 14 205 1 74 1 9 1 109 2 53 1 112 14 209 1 113 11 57 1 116 11 61 1 117 14 213 1 133 11 69 1 135 14 217 1 146 14 221 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 154 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 158 0 3 15 158 0 5 15 158 0 9 15 158 0 13 15 158 0 20 15 158 0 24 15 158 0 30 15 158 0 44 15 158 0 45 15 158 0 49 15 158 0 53 15 158 0 56 15 158 0 60 15 158 0 67 15 158 0 77 15 158 0 81 15 158 0 85 15 158 0 87 15 158 0 90 15 158 0 92 15 158 0 105 15 162 0 108 15 158 0 112 15 158 0 113 15 158 0 117 15 158 0 118 15 158 0 120 15 158 0 121 15 158 0 122 15 158 0 123 15 158 0 125 15 158 0 127 15 158 0 129 15 158 1 151] 
#[1 15 166 0 3 15 166 0 5 15 166 0 9 15 166 0 13 15 166 0 20 15 166 0 24 15 166 0 30 15 166 0 44 15 166 0 45 15 166 0 49 15 166 0 53 15 166 0 56 15 166 0 60 15 166 0 67 15 166 0 77 15 166 0 81 15 166 0 85 15 166 0 87 15 166 0 90 15 166 0 92 15 166 0 105 15 170 0 108 15 166 0 112 15 166 0 113 15 166 0 117 15 166 0 118 15 166 0 120 15 166 0 121 15 166 0 122 15 166 0 123 15 166 0 125 15 166 0 127 15 166 0 129 15 166 1 151] 
#[0 15 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151] 
#[0 15 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 151 1 152] 
#[0 29 153 0 35] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 29 157 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 13 11 9 1 14 11 13 1 21 11 17 1 26 11 21 1 27 11 25 1 28 11 29 1 29 11 33 1 30 11 37 1 31 11 41 1 32 11 45 1 33 11 49 1 34 1 9 1 109 2 53 1 112 11 53 1 113 11 57 1 116 11 61 1 117 11 65 1 133 11 69 1 135 1 21 1 146 5 77 1 151] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 182 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 89 0 64 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129]
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
